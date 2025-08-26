# تعليمات النشر السريع على Vercel

## النطاقات المدعومة ✅

المشروع يدعم النطاقات التالية:

- **Royal Nano Ceramic**: `https://www.royalnanoceramic.com`
- **Royal Shield World**: `https://www.royalshieldworld.com`
- **النطاقات الفرعية**: `https://*.royalnanoceramic.com`, `https://*.royalshieldworld.com`
- **التطوير المحلي**: `http://localhost:4200`, `http://localhost:5173`
- **نطاقات Vercel**: `https://*.vercel.app`

## الخطوات:

### 1. رفع المشروع على GitHub

```bash
git add .
git commit -m "Ready for Vercel deployment"
git push origin main
```

### 2. النشر على Vercel

1. اذهب إلى [vercel.com](https://vercel.com)
2. اضغط "New Project"
3. اختر المستودع الخاص بك
4. أضف المتغيرات البيئية:

#### المتغيرات المطلوبة:

- `MONGO_URI` = رابط MongoDB Atlas
- `JWT_SECRET_KEY` = مفتاح سري عشوائي
- `GMAIL_USER` = بريد Gmail
- `GMAIL_PASS` = كلمة مرور تطبيق Gmail

### 3. بعد النشر

- سيتم إنشاء رابط مثل: `https://your-project.vercel.app`
- جميع الـ APIs ستعمل بنفس الطريقة
- CORS مفعل للنطاقات المذكورة أعلاه
- يدعم اللغتين العربية والإنجليزية

### 4. اختبار API

```bash
curl https://your-project.vercel.app/health
```

## ملاحظات:

- تأكد من أن MongoDB Atlas يسمح بالاتصال من أي مكان
- استخدم كلمة مرور تطبيق Gmail
- جميع الـ APIs محفوظة كما هي بدون تغيير
- المشروع جاهز للعمل مع النطاقات العربية والإنجليزية
