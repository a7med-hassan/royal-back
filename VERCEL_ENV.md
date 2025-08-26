# 🌐 إعداد المتغيرات البيئية في Vercel

## 📋 المتغيرات المطلوبة:

### 1. **MongoDB URI:**

```
Name: MONGO_URI
Value: mongodb+srv://royalnanoceramicwep:a654321@cluster0.r871yo5.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0
Environments: Production, Preview, Development
```

### 2. **JWT Secret Key:**

```
Name: JWT_SECRET_KEY
Value: royal_shield_jwt_secret_key_2024_secure_12345
Environments: Production, Preview, Development
```

### 3. **Gmail User:**

```
Name: GMAIL_USER
Value: your.email@gmail.com
Environments: Production, Preview, Development
```

### 4. **Gmail App Password:**

```
Name: GMAIL_PASS
Value: your_gmail_app_password
Environments: Production, Preview, Development
```

## 🚀 خطوات الإعداد في Vercel:

### 1. **اذهب إلى مشروعك في Vercel:**

- [vercel.com/dashboard](https://vercel.com/dashboard)
- اختر مشروعك

### 2. **اضغط على "Settings":**

- ابحث عن "Environment Variables"
- اضغط "Add New"

### 3. **أضف كل متغير:**

- اكتب الاسم في "Name"
- اكتب القيمة في "Value"
- اختر جميع البيئات (Production, Preview, Development)
- اضغط "Save"

### 4. **أعد النشر:**

- اضغط "Redeploy"
- اختر "Redeploy with existing Build Cache"

## ✅ بعد الإعداد:

### **اختبار MongoDB:**

```bash
curl https://YOUR_PROJECT.vercel.app/health
```

### **اختبار API:**

```bash
# اختبار من Royal Nano Ceramic
curl -H "Origin: https://www.royalnanoceramic.com" \
     https://YOUR_PROJECT.vercel.app/health
```

## 🔍 ملاحظات مهمة:

- **MongoDB Atlas** يجب أن يسمح بالاتصال من أي مكان (0.0.0.0/0)
- **Gmail App Password** ليس كلمة المرور العادية
- **JWT Secret Key** يجب أن يكون قوياً وعشوائياً
- جميع المتغيرات يجب أن تكون في جميع البيئات

## 📞 إذا واجهت مشاكل:

1. تحقق من صحة رابط MongoDB
2. تأكد من أن cluster يعمل
3. تحقق من username/password
4. تأكد من IP whitelist في MongoDB Atlas

**الآن المشروع جاهز للعمل مع MongoDB Atlas! 🎉**
