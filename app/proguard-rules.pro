# 1. قواعد WebView و JavaScript (ضروري لنظام أندرويد 16)
# إذا كان تطبيقك يستخدم WebView، يجب حماية واجهات JavaScript من الحذف أو التشويه
-keepattributes JavascriptInterface
-keepattributes *Annotation*

# استبدل 'com.your.package.MyJSInterface' باسم الكلاس الخاص بك
-keepclassmembers class com.your.package.MyJSInterface {
    public *;
}

# 2. الحفاظ على أرقام الأسطر لتسهيل تتبع الأخطاء (Crashlytics)
# في أندرويد 16، هذا ضروري جداً لفك تشفير الـ Stack Traces
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile

# 3. قواعد عامة لـ R8 (أندرويد 16 يركز على تقليص الحجم)
# منع حذف الـ Enums لأنها تُستخدم غالباً في التصميم (Material You)
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
