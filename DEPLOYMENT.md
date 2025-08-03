# 🚀 Deployment Guide for Render

This guide will help you deploy your SAT Portal to Render hosting platform.

## 📋 Prerequisites

1. **GitHub Repository**: Your code should be pushed to GitHub
2. **Render Account**: Sign up at [render.com](https://render.com)
3. **Email Configuration**: Gmail App Password for OTP functionality

## 🔧 Render Deployment Steps

### 1. Create a New Web Service

1. Log in to Render Dashboard
2. Click "New +" → "Web Service"
3. Connect your GitHub repository
4. Select the repository containing your SAT Portal

### 2. Configure the Web Service

**Basic Settings:**
- **Name**: `sat-portal-backend` (or your preferred name)
- **Environment**: `Python 3`
- **Region**: Choose closest to your users
- **Branch**: `main` (or your default branch)

**Build & Deploy Settings:**
- **Build Command**: `chmod +x build.sh && ./build.sh`
- **Start Command**: `chmod +x start.sh && ./start.sh`

### 3. Environment Variables

Add these environment variables in Render Dashboard:

```
MAIL_USERNAME=anil172900@gmail.com
MAIL_PASSWORD=kfsa nvkp ntmj fgxh
SECRET_KEY=your-secret-key-here
FLASK_ENV=production
```

### 4. Database Configuration

For production, consider using:
- **PostgreSQL** (Render provides free PostgreSQL)
- **SQLite** (for simple deployments, but not recommended for production)

### 5. Frontend Deployment (Optional)

For the React frontend, you can:
1. Build the React app: `npm run build`
2. Serve static files from Flask
3. Or deploy separately as a Static Site on Render

## 🔒 Security Considerations

1. **Environment Variables**: Never commit `.env` files
2. **App Passwords**: Use Gmail App Passwords, not regular passwords
3. **HTTPS**: Render provides SSL certificates automatically
4. **CORS**: Update CORS settings for production domain

## 📧 Email Configuration for Production

1. **Gmail Setup**:
   - Enable 2-Step Verification
   - Generate App Password
   - Use App Password in `MAIL_PASSWORD`

2. **Alternative Email Providers**:
   - Outlook/Hotmail: Use app-specific passwords
   - Institutional emails: Contact IT department

## 🚨 Troubleshooting

### Common Issues:

1. **Build Failures**:
   - Check Python version compatibility
   - Verify all dependencies in `requirements.txt`

2. **Email Not Working**:
   - Verify App Password is correct
   - Check Gmail security settings
   - Ensure 2-Step Verification is enabled

3. **Database Issues**:
   - SQLite files are not persistent on Render
   - Consider PostgreSQL for production

### Logs and Debugging:

- Check Render logs in the dashboard
- Use `print()` statements for debugging
- Monitor application performance

## 🔄 Continuous Deployment

Render automatically deploys when you push to your main branch. To disable:
1. Go to your service settings
2. Toggle "Auto-Deploy" off

## 📞 Support

- Render Documentation: [docs.render.com](https://docs.render.com)
- Flask Documentation: [flask.palletsprojects.com](https://flask.palletsprojects.com)
- React Documentation: [reactjs.org](https://reactjs.org) 