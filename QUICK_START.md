# ⚡ بدء سريع - رفع المشروع في 5 دقائق

## 🚀 الخطوات السريعة

### 1. إنشاء مستودع GitHub

```bash
# في مجلد المشروع
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/royal-shield-backend.git
git push -u origin main
```

### 2. النشر على Vercel

- اذهب إلى [vercel.com](https://vercel.com)
- اضغط "New Project"
- اختر المستودع
- أضف المتغيرات البيئية
- اضغط "Deploy"

### 3. المتغيرات البيئية المطلوبة

```
MONGO_URI=mongodb+srv://username:password@cluster.mongodb.net/database_name
JWT_SECRET_KEY=your_secret_key_here
GMAIL_USER=your.email@gmail.com
GMAIL_PASS=your_gmail_app_password
```

### 4. اختبار النشر

```bash
curl https://YOUR_PROJECT.vercel.app/health
```

## ✅ النتيجة

- المشروع يعمل على Vercel
- CORS مفعل لجميع النطاقات
- جاهز للربط مع النطاق الأمامي

**انتهى! 🎉**
