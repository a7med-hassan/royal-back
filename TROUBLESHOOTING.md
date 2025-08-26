# 🔧 حل مشاكل Vercel

## ❌ خطأ: Serverless Function has crashed

### الأسباب المحتملة:

1. **مشكلة في MongoDB connection**
2. **متغيرات بيئية مفقودة**
3. **مشكلة في dependencies**
4. **مشكلة في memory/timeout**

## 🚀 الحلول:

### 1. تحقق من المتغيرات البيئية:

```bash
# تأكد من وجود هذه المتغيرات في Vercel:
MONGO_URI=mongodb+srv://username:password@cluster.mongodb.net/database_name
JWT_SECRET_KEY=your_secret_key
GMAIL_USER=your.email@gmail.com
GMAIL_PASS=your_gmail_app_password
```

### 2. تحقق من MongoDB Atlas:

- تأكد من أن IP whitelist يحتوي على `0.0.0.0/0`
- تأكد من صحة username/password
- تأكد من أن cluster يعمل

### 3. إعادة النشر:

```bash
# في Vercel Dashboard:
1. اذهب إلى مشروعك
2. اضغط "Redeploy"
3. اختر "Redeploy with existing Build Cache"
```

### 4. تحقق من سجلات Vercel:

- اذهب إلى "Functions" في مشروعك
- انظر إلى "Runtime Logs"
- ابحث عن أخطاء محددة

### 5. اختبار محلي:

```bash
# تأكد من أن المشروع يعمل محلياً
npm install
npm start
```

### 6. إذا استمرت المشكلة:

```bash
# احذف المشروع من Vercel
# أعد إنشاءه من جديد
# تأكد من إعدادات vercel.json
```

## ✅ بعد الحل:

- اختبر `/health` endpoint
- تأكد من عمل MongoDB
- اختبر CORS من النطاقات المدعومة

## 📞 إذا لم تحل المشكلة:

1. تحقق من سجلات Vercel بالتفصيل
2. تأكد من صحة جميع المتغيرات البيئية
3. اختبر MongoDB connection محلياً
4. تأكد من أن جميع dependencies مثبتة
