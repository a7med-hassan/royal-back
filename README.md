# Royal Shield Backend

## النشر على Vercel

### المتطلبات الأساسية

- حساب على [Vercel](https://vercel.com)
- حساب على [MongoDB Atlas](https://mongodb.com/atlas)

### النطاقات المدعومة (CORS)

المشروع يدعم النطاقات التالية:

#### النطاقات الرئيسية:

- **Royal Nano Ceramic**: `https://www.royalnanoceramic.com`
- **Royal Shield World**: `https://www.royalshieldworld.com`

#### النطاقات الفرعية:

- `https://*.royalnanoceramic.com`
- `https://*.royalshieldworld.com`

#### التطوير المحلي:

- `http://localhost:4200`
- `http://localhost:4201`
- `http://localhost:5173`

#### نطاقات Vercel:

- `https://*.vercel.app`
- `https://*.netlify.app`

### خطوات النشر

#### 1. إعداد المتغيرات البيئية

قم بإنشاء ملف `.env` في المجلد الجذر يحتوي على:

```env
# MongoDB Connection String
MONGO_URI=mongodb+srv://username:password@cluster.mongodb.net/database_name

# JWT Secret Key
JWT_SECRET_KEY=your_jwt_secret_key_here

# Gmail Configuration
GMAIL_USER=your_gmail@gmail.com
GMAIL_PASS=your_gmail_app_password
```

#### 2. رفع المشروع على GitHub

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/username/repository-name.git
git push -u origin main
```

#### 3. النشر على Vercel

1. اذهب إلى [Vercel Dashboard](https://vercel.com/dashboard)
2. اضغط على "New Project"
3. اختر المستودع الخاص بك
4. أضف المتغيرات البيئية في قسم "Environment Variables"
5. اضغط على "Deploy"

### المتغيرات البيئية المطلوبة في Vercel

| المتغير          | الوصف                 |
| ---------------- | --------------------- |
| `MONGO_URI`      | رابط اتصال MongoDB    |
| `JWT_SECRET_KEY` | مفتاح سري لـ JWT      |
| `GMAIL_USER`     | بريد Gmail            |
| `GMAIL_PASS`     | كلمة مرور تطبيق Gmail |

### ملاحظات مهمة

- تأكد من أن MongoDB Atlas يسمح بالاتصال من أي مكان (0.0.0.0/0)
- استخدم كلمة مرور تطبيق Gmail وليس كلمة المرور العادية
- تأكد من أن جميع المتغيرات البيئية مضبوطة في Vercel
- المشروع يدعم اللغتين العربية والإنجليزية
- جميع الـ APIs تعمل مع النطاقات المدعومة

### اختبار API

بعد النشر، يمكنك اختبار API باستخدام:

```
https://your-project.vercel.app/
https://your-project.vercel.app/health
```

### استكشاف الأخطاء

إذا واجهت مشاكل:

1. تحقق من سجلات Vercel
2. تأكد من صحة المتغيرات البيئية
3. تحقق من اتصال MongoDB
4. تأكد من أن جميع التبعيات مثبتة
5. تحقق من إعدادات CORS في النطاق الأمامي
