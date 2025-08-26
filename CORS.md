# إعدادات CORS - Royal Shield Backend

## النطاقات المدعومة

### 1. النطاقات الرئيسية للموقع
```
https://www.royalnanoceramic.com
https://royalnanoceramic.com
https://www.royalshieldworld.com
https://royalshieldworld.com
```

### 2. النطاقات الفرعية
```
https://*.royalnanoceramic.com
https://*.royalshieldworld.com
```

### 3. التطوير المحلي
```
http://localhost:3000
http://localhost:3001
http://localhost:4200
http://localhost:4201
http://localhost:4202
http://localhost:5173
```

### 4. نطاقات Vercel
```
https://*.vercel.app
https://*.netlify.app
```

## إعدادات CORS المفعلة

### Methods المدعومة
- `GET` - استرجاع البيانات
- `POST` - إنشاء بيانات جديدة
- `PUT` - تحديث البيانات
- `DELETE` - حذف البيانات
- `OPTIONS` - طلبات preflight
- `PATCH` - تحديث جزئي للبيانات

### Headers المدعومة
- `Content-Type` - نوع المحتوى
- `Authorization` - مصادقة المستخدم
- `X-Requested-With` - نوع الطلب
- `Accept` - نوع الاستجابة المقبول
- `Origin` - مصدر الطلب
- `Access-Control-Allow-Headers` - headers إضافية

### Headers المعروضة
- `Content-Range` - نطاق المحتوى
- `X-Content-Range` - نطاق محتوى مخصص

### إعدادات إضافية
- `credentials: true` - السماح بإرسال cookies
- `maxAge: 86400` - تخزين cache لمدة 24 ساعة

## كيفية إضافة نطاق جديد

لإضافة نطاق جديد، قم بتعديل ملف `app.js` في قسم CORS:

```javascript
app.use(cors({
  origin: [
    // أضف النطاق الجديد هنا
    "https://your-new-domain.com",
    // ... باقي النطاقات
  ],
  // ... باقي الإعدادات
}));
```

## اختبار CORS

يمكنك اختبار إعدادات CORS باستخدام:

```bash
# اختبار من نطاق مدعوم
curl -H "Origin: https://www.royalnanoceramic.com" \
     -H "Access-Control-Request-Method: POST" \
     -H "Access-Control-Request-Headers: Content-Type" \
     -X OPTIONS \
     https://your-backend.vercel.app/health
```

## ملاحظات مهمة

1. **الأمان**: تم تحديد النطاقات بدقة لمنع الوصول غير المصرح به
2. **الأداء**: تم تفعيل cache لـ CORS لتحسين الأداء
3. **المرونة**: يدعم النطاقات الفرعية باستخدام wildcards
4. **التطوير**: يدعم بيئات التطوير المحلية
5. **الإنتاج**: جاهز للعمل مع النطاقات الإنتاجية

## استكشاف مشاكل CORS

إذا واجهت مشاكل في CORS:

1. تأكد من أن النطاق مدرج في قائمة `origin`
2. تحقق من أن الطلب يستخدم method مدعوم
3. تأكد من أن headers المستخدمة مدعومة
4. تحقق من سجلات الخادم للأخطاء
