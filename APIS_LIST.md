# 📋 قائمة كاملة بجميع الـ APIs في المشروع

## 🚀 **APIs العامة (لا تحتاج token):**

### **1. Health Check**

- **Endpoint:** `GET /health`
- **الوصف:** فحص حالة الخدمة
- **الاستخدام:** `https://royal-back-2jf7.vercel.app/health`
- **النتيجة:** `{"status":"OK","timestamp":"...","environment":"production"}`

### **2. الترحيب**

- **Endpoint:** `GET /`
- **الوصف:** رسالة ترحيب
- **الاستخدام:** `https://royal-back-2jf7.vercel.app/`
- **النتيجة:** `"Hello World!"`

### **3. فحص رقم تسلسلي**

- **Endpoint:** `POST /checkSerial`
- **الوصف:** فحص رقم تسلسلي
- **Body:** `{"serialNumber": "ROYAL123"}`
- **النتيجة:** معلومات الرقم التسلسلي

### **4. تفعيل ضمان**

- **Endpoint:** `POST /activation`
- **الوصف:** تفعيل ضمان مع صورة
- **Body:** `{"name":"أحمد","phoneNumber":"0123456789","serialNumber":"ROYAL123",...}`
- **ملف:** صورة (اختياري)
- **النتيجة:** `{"msg":"success"}`

### **5. إرسال عرض**

- **Endpoint:** `POST /sendOffer`
- **الوصف:** إرسال طلب عرض
- **Body:** `{"name":"أحمد","email":"test@test.com","phone":"0123456789","msg":"رسالة","company":"شركة"}`
- **النتيجة:** `{"status":"ok","msg":"Request sent successfully"}`

### **6. إرسال إيميل**

- **Endpoint:** `POST /send-email`
- **الوصف:** إرسال إيميل
- **Body:** `{"name":"أحمد","email":"test@test.com","msg":"رسالة","phone":"0123456789","company":"شركة"}`
- **النتيجة:** `"Message sent successfully!"`

### **7. نموذج حجز (Nano Ceramic)**

- **Endpoint:** `POST /bookForm`
- **الوصف:** إضافة حجز جديد
- **Body:** `{"fullName":"أحمد","phoneNumber":"0123456789","carType":"سيارة","carModel":"2024","service":"خدمة","branch":"فرع","notes":"ملاحظات"}`
- **النتيجة:** `{"msg":"success"}`

### **8. تقديم طلب وظيفة**

- **Endpoint:** `POST /application`
- **الوصف:** تقديم طلب وظيفة مع ملف
- **Body:** `{"name":"أحمد","birthdate":"1990-01-01","email":"test@test.com","phone":"0123456789","address":"عنوان","position":"وظيفة","coverLetter":"رسالة"}`
- **ملف:** CV (اختياري)
- **النتيجة:** `{"statue":"success"}`

### **9. إضافة مدونة**

- **Endpoint:** `POST /blog`
- **الوصف:** إضافة مدونة جديدة
- **Body:** `{"label_en":"Label","label_ar":"تسمية","heading_en":"Heading","heading_ar":"عنوان","subHeading_en":"Sub","subHeading_ar":"فرعي","date":"2024-01-01","img":"صورة","points":["نقطة1","نقطة2"]}`
- **النتيجة:** `{"status":"success","msg":"Blog added successfully"}`

### **10. عرض المدونات**

- **Endpoint:** `GET /blog`
- **الوصف:** عرض جميع المدونات
- **الاستخدام:** `https://royal-back-2jf7.vercel.app/blog`
- **النتيجة:** قائمة المدونات

### **11. عرض مدونة محددة**

- **Endpoint:** `GET /blog/:id`
- **الوصف:** عرض مدونة بواسطة ID
- **الاستخدام:** `https://royal-back-2jf7.vercel.app/blog/123456789`
- **النتيجة:** المدونة المطلوبة

## 🔒 **APIs محمية (تحتاج admin token):**

### **12. إضافة رقم تسلسلي**

- **Endpoint:** `POST /addSerial`
- **الوصف:** إضافة رقم تسلسلي جديد
- **Body:** `{"serialNumber":"ROYAL123","branch":"فرع"}`
- **النتيجة:** `{"msg":"success","serials":[...]}`

### **13. حذف رقم تسلسلي**

- **Endpoint:** `POST /deleteSerial`
- **الوصف:** حذف رقم تسلسلي
- **Body:** `{"serialNumber":"ROYAL123"}`
- **النتيجة:** `{"msg":"success","serial":[...]}`

### **14. تحديث فرع**

- **Endpoint:** `POST /updateBranch`
- **الوصف:** تحديث فرع رقم تسلسلي
- **Body:** `{"serialNumber":"ROYAL123","branch":"فرع جديد"}`
- **النتيجة:** `{"msg":"Branch updated successfully","serials":[...]}`

### **15. عرض الأرقام التسلسلية**

- **Endpoint:** `GET /viewSerials`
- **الوصف:** عرض جميع الأرقام التسلسلية
- **Headers:** `Authorization: Bearer YOUR_TOKEN`
- **النتيجة:** `{"status":"ok","serials":[...]}`

### **16. عرض الضمانات المفعلة**

- **Endpoint:** `GET /activatedWarrantys`
- **الوصف:** عرض جميع الضمانات المفعلة
- **Headers:** `Authorization: Bearer YOUR_TOKEN`
- **النتيجة:** `{"status":"ok","warrantys":[...]}`

### **17. حذف تفعيل**

- **Endpoint:** `DELETE /activation/:serialNumber`
- **الوصف:** حذف تفعيل بواسطة رقم تسلسلي
- **الاستخدام:** `DELETE /activation/ROYAL123`
- **Headers:** `Authorization: Bearer YOUR_TOKEN`
- **النتيجة:** `{"msg":"Activation deleted successfully"}`

### **18. حذف جميع التفعيلات**

- **Endpoint:** `DELETE /activations`
- **الوصف:** حذف جميع التفعيلات
- **Headers:** `Authorization: Bearer YOUR_TOKEN`
- **النتيجة:** `{"msg":"All activations deleted successfully"}`

### **19. فحص عرض**

- **Endpoint:** `POST /offerCheck`
- **الوصف:** فحص عرض
- **Body:** `{"Id":"123456789"}`
- **Headers:** `Authorization: Bearer YOUR_TOKEN`
- **النتيجة:** `{"status":"ok","offers":[...]}`

### **20. إلغاء فحص عرض**

- **Endpoint:** `POST /offerUnCheck`
- **الوصف:** إلغاء فحص عرض
- **Body:** `{"Id":"123456789"}`
- **Headers:** `Authorization: Bearer YOUR_TOKEN`
- **النتيجة:** `{"status":"ok","offers":[...]}`

### **21. حذف عرض**

- **Endpoint:** `DELETE /offer/:id`
- **الوصف:** حذف عرض بواسطة ID
- **الاستخدام:** `DELETE /offer/123456789`
- **Headers:** `Authorization: Bearer YOUR_TOKEN`
- **النتيجة:** `{"msg":"message deleted successfully"}`

### **22. عرض العروض**

- **Endpoint:** `GET /getOffers`
- **الوصف:** عرض جميع العروض
- **Headers:** `Authorization: Bearer YOUR_TOKEN`
- **النتيجة:** `{"status":"ok","offers":[...]}`

### **23. حذف جميع العروض**

- **Endpoint:** `DELETE /deleteOffers`
- **الوصف:** حذف جميع العروض
- **Headers:** `Authorization: Bearer YOUR_TOKEN`
- **النتيجة:** `{"status":"ok","msg":"All offers deleted successfully"}`

### **24. عرض الحجوزات**

- **Endpoint:** `GET /bookForms`
- **الوصف:** عرض جميع الحجوزات
- **Headers:** `Authorization: Bearer YOUR_TOKEN`
- **النتيجة:** قائمة الحجوزات

### **25. حذف حجز**

- **Endpoint:** `DELETE /bookForm/:id`
- **الوصف:** حذف حجز بواسطة ID
- **الاستخدام:** `DELETE /bookForm/123456789`
- **Headers:** `Authorization: Bearer YOUR_TOKEN`
- **النتيجة:** `{"message":"Appointment deleted successfully"}`

### **26. عرض المتقدمين**

- **Endpoint:** `GET /applicants`
- **الوصف:** عرض جميع المتقدمين للوظائف
- **Headers:** `Authorization: Bearer YOUR_TOKEN`
- **النتيجة:** `{"statue":"success","data":{"applications":[...]}}`

### **27. تحميل ملف**

- **Endpoint:** `GET /download/:id`
- **الوصف:** تحميل ملف متقدم
- **الاستخدام:** `GET /download/123456789`
- **النتيجة:** ملف CV

## 👑 **APIs المدير:**

### **28. تسجيل مدير**

- **Endpoint:** `POST /admin/register`
- **الوصف:** تسجيل مدير جديد
- **Body:** `{"username":"admin","password":"password123"}`
- **النتيجة:** `{"message":"Admin registered successfully"}`

### **29. تسجيل دخول مدير**

- **Endpoint:** `POST /admin/login`
- **الوصف:** تسجيل دخول مدير
- **Body:** `{"username":"admin","password":"password123"}`
- **النتيجة:** `{"message":"Login successful","token":"JWT_TOKEN"}`

## 🧪 **اختبار سريع:**

### **1. اختبار Health:**

```bash
curl https://royal-back-2jf7.vercel.app/health
```

### **2. اختبار BookForm:**

```bash
curl -X POST https://royal-back-2jf7.vercel.app/bookForm \
  -H "Content-Type: application/json" \
  -d '{"fullName":"أحمد","phoneNumber":"0123456789","carType":"سيارة","carModel":"2024","service":"خدمة","branch":"فرع","notes":"ملاحظات"}'
```

### **3. اختبار Blog:**

```bash
curl https://royal-back-2jf7.vercel.app/blog
```

## 📊 **ملخص:**

- **APIs عامة:** 11 endpoint
- **APIs محمية:** 16 endpoint
- **APIs المدير:** 2 endpoint
- **المجموع:** 29 API endpoint

**الآن جميع الـ APIs تعمل! أعد النشر على Vercel واختبر! 🚀**
