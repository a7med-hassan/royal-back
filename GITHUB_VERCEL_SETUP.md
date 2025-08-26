# 🚀 رفع المشروع على GitHub و Vercel بدون أخطاء

## 📋 المتطلبات الأساسية

### 1. تأكد من وجود:

- [Git](https://git-scm.com/) مثبت على جهازك
- حساب على [GitHub](https://github.com)
- حساب على [Vercel](https://vercel.com)
- حساب على [MongoDB Atlas](https://mongodb.com/atlas)

### 2. تأكد من أن المشروع يحتوي على:

- ✅ `package.json`
- ✅ `vercel.json`
- ✅ `api/index.js`
- ✅ `app.js`
- ✅ `.gitignore`

## 🔧 الخطوة 1: إعداد Git

### افتح Terminal/PowerShell في مجلد المشروع:

```bash
# تأكد من أنك في المجلد الصحيح
cd "C:\Users\Ahmed Hassan\Documents\royal-shield-be-main\royal-shield-be-main"

# تحقق من حالة Git
git status
```

### إذا لم يكن Git مُهيأ:

```bash
# تهيئة Git
git init

# إعداد اسم المستخدم والبريد الإلكتروني
git config user.name "Your Name"
git config user.email "your.email@example.com"
```

## 📤 الخطوة 2: رفع المشروع على GitHub

### 1. إنشاء مستودع جديد على GitHub:

- اذهب إلى [github.com](https://github.com)
- اضغط على "New repository"
- اكتب اسم المستودع: `royal-shield-backend`
- اتركه public
- **لا** تضع checkmark على "Add a README file"
- اضغط "Create repository"

### 2. ربط المشروع المحلي بـ GitHub:

```bash
# إضافة جميع الملفات
git add .

# عمل commit أول
git commit -m "Initial commit: Royal Shield Backend ready for Vercel"

# تغيير اسم الفرع إلى main
git branch -M main

# إضافة remote origin (استبدل YOUR_USERNAME باسم المستخدم الخاص بك)
git remote add origin https://github.com/YOUR_USERNAME/royal-shield-backend.git

# رفع المشروع
git push -u origin main
```

## 🌐 الخطوة 3: النشر على Vercel

### 1. إنشاء مشروع جديد على Vercel:

- اذهب إلى [vercel.com](https://vercel.com)
- اضغط "Sign In" (سجل دخول بـ GitHub)
- اضغط "New Project"
- اختر المستودع `royal-shield-backend`
- اضغط "Import"

### 2. إعداد المشروع:

- **Project Name**: `royal-shield-backend` (أو أي اسم تريده)
- **Framework Preset**: اتركه `Other`
- **Root Directory**: اتركه فارغ
- **Build Command**: اتركه فارغ
- **Output Directory**: اتركه فارغ
- **Install Command**: `npm install`

### 3. إضافة المتغيرات البيئية:

اضغط على "Environment Variables" وأضف:

| **Name**         | **Value**                                                           | **Environments**                 |
| ---------------- | ------------------------------------------------------------------- | -------------------------------- |
| `MONGO_URI`      | `mongodb+srv://username:password@cluster.mongodb.net/database_name` | Production, Preview, Development |
| `JWT_SECRET_KEY` | `your_super_secret_jwt_key_here_12345`                              | Production, Preview, Development |
| `GMAIL_USER`     | `your.email@gmail.com`                                              | Production, Preview, Development |
| `GMAIL_PASS`     | `your_gmail_app_password`                                           | Production, Preview, Development |

### 4. النشر:

- اضغط "Deploy"
- انتظر حتى ينتهي النشر (سيأخذ 2-3 دقائق)

## ✅ الخطوة 4: اختبار النشر

### 1. اختبار Health Check:

```bash
# استبدل YOUR_PROJECT_NAME باسم المشروع الذي تم إنشاؤه
curl https://YOUR_PROJECT_NAME.vercel.app/health
```

### 2. اختبار CORS من النطاقات:

```bash
# اختبار من Royal Nano Ceramic
curl -H "Origin: https://www.royalnanoceramic.com" \
     -H "Access-Control-Request-Method: GET" \
     -X OPTIONS \
     https://YOUR_PROJECT_NAME.vercel.app/health
```

## 🔍 استكشاف الأخطاء الشائعة

### إذا واجهت خطأ في Git:

```bash
# إعادة تعيين Git
rm -rf .git
git init
git add .
git commit -m "Fresh start"
git remote add origin https://github.com/YOUR_USERNAME/royal-shield-backend.git
git push -u origin main --force
```

### إذا واجهت خطأ في Vercel:

1. تحقق من سجلات Build
2. تأكد من صحة المتغيرات البيئية
3. تأكد من أن MongoDB Atlas يسمح بالاتصال من أي مكان

### إذا واجهت خطأ في CORS:

1. تأكد من أن النطاق مدرج في `app.js`
2. تحقق من إعدادات النطاق الأمامي
3. اختبر باستخدام Postman أو curl

## 📱 تحديث النطاق الأمامي

### في النطاق الأمامي، غيّر:

```javascript
// من
const API_URL = "https://your-old-backend.com";

// إلى
const API_URL = "https://YOUR_PROJECT_NAME.vercel.app";
```

## 🎯 النتيجة النهائية

بعد اتباع هذه الخطوات:

- ✅ المشروع على GitHub
- ✅ المشروع على Vercel
- ✅ CORS مفعل لجميع النطاقات
- ✅ جميع الـ APIs تعمل
- ✅ يدعم اللغتين العربية والإنجليزية

## 📞 إذا احتجت مساعدة

1. تحقق من سجلات Vercel
2. تأكد من صحة المتغيرات البيئية
3. اختبر API endpoints واحداً تلو الآخر
4. تحقق من اتصال MongoDB

**مبروك! 🎉 المشروع جاهز للعمل على Vercel**
