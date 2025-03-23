# قالب MVVM فلاتر با Riverpod

این یک قالب پایه برای پروژه‌های Flutter با معماری MVVM و استفاده از Riverpod است. این قالب شامل ساختار پایه‌ای برای مدیریت خطا، شبکه، تنظیمات و ابزارهای مفید است.

## ویژگی‌ها

این پروژه یک معماری مدرن برای توسعه اپلیکیشن‌های Flutter است که شامل مجموعه‌ای از بهترین شیوه‌ها و تکنیک‌های توسعه، بهینه‌سازی و مدیریت وضعیت است.

## 🔹 اصول معماری و مدیریت پروژه در Flutter

1. 🏗️ **معماری MVVM**  
   - استفاده از الگوی معماری MVVM برای جداسازی منطق تجاری و نمایشی.
  
2. 📁 **ساختار پوشه‌بندی مدرن و مقیاس‌پذیر**  
   - ساختار پوشه‌بندی منطقی و قابل مقیاس که از پیچیدگی‌ها جلوگیری می‌کند.

3. 🎯 **مدیریت state با Riverpod**  
   - استفاده از Riverpod برای مدیریت وضعیت اپلیکیشن.

4. 📦 **تولید خودکار کد با Freezed**  
   - تولید خودکار کدهای مدل و کلاس‌ها با استفاده از پکیج Freezed برای کاهش زمان کدنویسی و افزایش پایداری.

5. 📜 **لاگینگ پیشرفته**  
   - استفاده از لاگینگ برای ثبت جزئیات و عیب‌یابی بهتر.

6. ⚙️ **تنظیمات قابل پیکربندی**  
   - امکان تنظیم پیکربندی‌های اپلیکیشن برای شخصی‌سازی و مقیاس‌پذیری.

## 🔹 مدیریت داده و شبکه

7. 🌐 **مدیریت درخواست‌های شبکه با Dio**  
   - استفاده از پکیج Dio برای انجام درخواست‌های HTTP و مدیریت پاسخ‌ها به‌طور مؤثر.

8. 📶 **مدیریت وضعیت اتصال به اینترنت**  
   - بررسی وضعیت اتصال به اینترنت و مدیریت تغییرات آن در اپلیکیشن.

9. 🔒 **ذخیره امن داده (FlutterSecureStorage)**  
   - ذخیره داده‌ها به‌صورت امن با استفاده از FlutterSecureStorage برای حفاظت از اطلاعات حساس.

10. 🔑 **مدیریت احراز هویت**  
   - پیاده‌سازی سیستم احراز هویت امن با استفاده از توکن‌ها و مدیریت ورود به اپلیکیشن.

11. 🔄 **مدیریت توکن و رفرش توکن**  
   - پیاده‌سازی سیستم مدیریت توکن و رفرش توکن برای حفظ وضعیت احراز هویت در اپلیکیشن.

## 🔹 بهبود تجربه توسعه

12. 📝 **اکستنشن‌های مفید برای Context و String**  
   - استفاده از اکستنشن‌ها برای راحت‌تر کردن استفاده از `BuildContext` و رشته‌ها.

13. 📌 **ثابت‌های برنامه**  
   - مدیریت ثابت‌های مختلف اپلیکیشن به‌صورت مرکزی برای استفاده آسان‌تر در سراسر کد.

## 🔹 بهینه‌سازی و قابلیت اطمینان

14. 🧪 **تست‌نویسی آسان**  
   - استفاده از تکنیک‌های تست‌نویسی برای اطمینان از عملکرد درست کد و جلوگیری از بروز مشکلات.

15. ⚠️ **مدیریت خطای پیشرفته با استفاده از Exceptions و Failures**  
   - پیاده‌سازی سیستم مدیریت خطا برای ارائه تجربه کاربری بهتر و شفاف‌تر.

16. 🌍 **پشتیبانی از RTL**  
   - پشتیبانی از زبان‌های راست به چپ (مثل فارسی و عربی) در اپلیکیشن.



## پیش‌نیازها

- Flutter SDK >= 3.0.0
- Dart SDK >= 3.0.0
- Mason CLI

## نصب Mason CLI

```bash
dart pub global activate mason_cli
```

---


## مراحل نصب و استفاده

### اضافه کردن قالب به پروژه
فایل `mason.yaml` را در ریشه پروژه ایجاد کنید و یکی از کدهای زیر را با توجه به نیاز پروژه در آن قرار دهید.

#### توجه : در صورت نیاز به Overwrite pubspec.yaml? (Yyna) گزینه Y رو انتخاب کنید تا کتابخانه های مورد نیاز به پروژه اضافه شود.
#### هشدار : در صورت Overwrite pubspec.yaml کردن pubspec جدید جایگزین pubspec قدیمی میشود.
```yaml
bricks:
  mvvm_feature:
    git:
      url: https://github.com/basicFlutter/mvvm_riverpod_mason.git
      path: bricks/mvvm_feature
  mvvm_riverpod_base:
    git:
      url: https://github.com/basicFlutter/mvvm_riverpod_mason.git
      path: bricks/mvvm_riverpod_base
```


1. ابتدا فایل های مورد نیاز پروژه و ساختار پروژه رو اضافه کنید(فقط یکبار این دستور را اجرا کنید) :
```bash
mason make mvvm_riverpod_base --project_name="your project name"
```
2. وابستگی‌های پروژه را نصب کنید:
```bash
flutter pub get
```

3. کدهای تولید شده را بسازید :
```bash
dart run build_runner build --delete-conflicting-outputs
```

4. و با دستور زیر میتوانید یک فیچر جدید اضافه کنید :
```bash
mason make mvvm_feature --name="your feature name"    
```


5. کدهای تولید شده را بسازید(بعد از ایجاد هر فیچر باید این دستور اجرا شود):
```bash
dart run build_runner build --delete-conflicting-outputs
```
---


## وابستگی‌های اصلی

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_riverpod: ^2.4.9
  riverpod_annotation: ^2.3.3
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1
  dio: ^5.4.0
  internet_connection_checker: ^1.0.0+1
  logger: ^2.0.2+1
  equatable: ^2.0.5
  flutter_screenutil: ^5.9.0
  flutter_secure_storage: ^9.2.4

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^2.4.8
  riverpod_generator: ^2.3.9
  freezed: ^2.4.6
  json_serializable: ^6.7.1
```

---


## ساختار پروژه

```
lib/
├── core/
│   ├── config/
│   │   ├── app_config.dart
│   │   └── dio_config.dart
│   ├── error/
│   │   ├── exceptions.dart
│   │   ├── failures.dart
│   │   └── error_handler.dart
│   ├── network/
│   │   ├── api_client.dart
│   │   ├── network_info.dart
│   │   └── interceptors/
│   │       ├── auth_interceptor.dart
│   │       └── logging_interceptor.dart
│   ├── providers/
│   │   ├── api_client_provider.dart
│   │   ├── dio_provider.dart
│   │   └── network_info_provider.dart
│   └── utils/
│       ├── constants.dart
│       └── extensions/
│           ├── context_extensions.dart
│           └── string_extensions.dart
└── features/
    └──name/
        ├── models/
        ├── viewModels/
        └── view/
```

---


## نحوه استفاده از Provider ها

```dart
final apiClient = ref.watch(apiClientProvider);

// استفاده از NetworkInfo
final networkInfo = ref.watch(networkInfoProvider);

// استفاده از Dio
final dio = ref.watch(dioProvider);
```

---

## نحوه استفاده از Theme

این قالب از سیستم تم پیشرفته با پشتیبانی از حالت‌های روشن و تاریک استفاده می‌کند. برای استفاده از تم در برنامه:

```dart
ref.read(themeProvider.notifier).toggleTheme();

// دریافت وضعیت فعلی تم
final isDarkMode = ref.watch(themeProvider);

// استفاده از ThemeData
final themeData = ref.watch(themeDataProvider);

// استفاده از رنگ‌های سفارشی
final colors = ref.watch(colorThemeProvider);

// استفاده از استایل‌های متنی سفارشی
final textStyles = ref.watch(textThemeProvider);
```

---

## نحوه استفاده از مدیریت زبان

این قالب از سیستم مدیریت زبان چند زبانه با استفاده از Riverpod استفاده می‌کند. برای استفاده از سیستم زبان در برنامه:

```dart
ref.read(languageProvider.notifier).changeLanguage('en');

// دریافت زبان فعلی
final currentLocale = ref.watch(currentLocaleProvider);

// استفاده در MaterialApp
MaterialApp(
  locale: ref.watch(currentLocaleProvider),
  localizationsDelegates: const [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: const [
    Locale('fa'),
    Locale('en'),
  ],
)
```

---

## نحوه استفاده از Error Handling

```dart
try {
  // کد مورد نظر
} catch (e) {
  final failure = ErrorHandler.handleError(e);
  final message = ErrorHandler.getErrorMessage(failure);
  // نمایش پیام خطا
}
```

---
## نحوه استفاده از Extensions

```dart
// Context Extensions
context.theme
context.textTheme
context.colorScheme
context.size
context.isMobile
context.isTablet
context.isDesktop

// String Extensions
"test".isEmail
"test".isPhoneNumber
"test".isURL
"test".capitalize
"test".titleCase
"test".camelCase
"test".toPersianNumber
"1000".toCurrency()
```

---
## نحوه استفاده از مدیریت توکن و Secure Storage

این قالب از سیستم مدیریت توکن با استفاده از Riverpod و Secure Storage استفاده می‌کند. برای استفاده از سیستم مدیریت توکن در برنامه:

```dart
//fetch token
final tokens = ref.watch(tokenProvider);

// ذخیره توکن‌های جدید
await ref.read(tokenProvider.notifier).setTokens(
  accessToken: 'new_access_token',
  refreshToken: 'new_refresh_token',
);

// پاک کردن توکن‌ها
await ref.read(tokenProvider.notifier).clearTokens();

// رفرش کردن توکن دسترسی
await ref.read(tokenProvider.notifier).refreshAccessToken('new_access_token');
```

### تنظیمات Auth Interceptor

برای تنظیم refresh token، باید کد مربوط به درخواست refresh token را در `auth_interceptor.dart` پیاده‌سازی کنید:

```dart
// in auth_interceptor.dart
if (err.response?.statusCode == 401) {
  try {
    final tokens = await ref.read(tokenProvider.future);
    if (tokens.refreshToken != null) {
      // ارسال درخواست refresh token به سرور
      final response = await dio.post('/refresh-token', 
        data: {'refresh_token': tokens.refreshToken}
      );
      
      // ذخیره توکن جدید
      await ref.read(tokenProvider.notifier).refreshAccessToken(
        response.data['access_token']
      );
      
      // تکرار درخواست اصلی
      final newTokens = await ref.read(tokenProvider.future);
      err.requestOptions.headers['Authorization'] = 'Bearer ${newTokens.accessToken}';
      final response = await Dio().fetch(err.requestOptions);
      return handler.resolve(response);
    }
  } catch (e) {
    // در صورت خطا در refresh token، کاربر را logout کنید
    await ref.read(tokenProvider.notifier).clearTokens();
    // TODO: Navigate to login screen
  }
}
```

### مزایای استفاده از Riverpod برای مدیریت توکن

1. **مدیریت State متمرکز**: تمام state مربوط به توکن‌ها در یک جا مدیریت می‌شود
2. **Reactive Updates**: هر تغییری در توکن‌ها به صورت خودکار به تمام قسمت‌های برنامه که از آن استفاده می‌کنند منتقل می‌شود
3. **Caching**: توکن‌ها در حافظه cache می‌شوند و نیازی به خواندن مکرر از storage نیست
4. **Testability**: تست کردن کد راحت‌تر می‌شود
5. **Type Safety**: با استفاده از Riverpod، type safety بیشتری داریم

### نکات مهم

- توکن‌ها به صورت امن در `flutter_secure_storage` ذخیره می‌شوند
- در صورت دریافت خطای 401 (Unauthorized)، سیستم به طور خودکار سعی می‌کند از refresh token استفاده کند
- اگر refresh token هم منقضی شده باشد، توکن‌ها پاک می‌شوند و کاربر باید دوباره لاگین کند
- تمام درخواست‌ها به طور خودکار با توکن دسترسی ارسال می‌شوند
- برای استفاده از این سیستم، حتماً باید `flutter_secure_storage` را به وابستگی‌های پروژه اضافه کنید
  

---

## تنظیمات

1. تنظیمات API را در `app_config.dart` انجام دهید:
```dart
static const String apiBaseUrl = 'YOUR_API_BASE_URL';
```

2. تنظیمات Dio را در `dio_config.dart` انجام دهید:
```dart
static Dio createDio({
  String? baseUrl,
  String? Function()? getToken,
  Duration? connectTimeout,
  Duration? receiveTimeout,
  Duration? sendTimeout,
})
```

3. تنظیمات احراز هویت را در `auth_interceptor.dart` انجام دهید:
```dart
class AuthInterceptor extends Interceptor {
  final String? Function()? getToken;
  // ...
}
```

## نکات مهم

- قبل از استفاده، حتماً تنظیمات API را در `app_config.dart` انجام دهید.
- برای استفاده از احراز هویت، توکن را در `auth_interceptor.dart` تنظیم کنید.
- برای تغییر پیام‌های خطا، می‌توانید از `constants.dart` استفاده کنید.
- برای اضافه کردن extension های جدید، می‌توانید در پوشه `extensions` فایل جدیدی ایجاد کنید.
- برای استفاده از Freezed، حتماً دستور `build_runner` را اجرا کنید.
- قبل از اجرای برنامه، حتماً دستور `build_runner` را اجرا کنید
- در صورت تغییر در مدل‌ها یا کدهای تولید شده، مجدداً دستور `build_runner` را اجرا کنید
- برای استفاده از Riverpod، حتماً `ProviderScope` را در `main.dart` اضافه کنید

## عیب‌یابی

اگر با خطای "Invalid constant value" مواجه شدید:
   - مطمئن شوید که از `const` در constructor های `Failure` استفاده کرده‌اید.
   - مطمئن شوید که لیست‌ها به صورت `const <dynamic>[]` تعریف شده‌اند.

 اگر با خطای "Abstract classes can't be instantiated" مواجه شدید:
   - مطمئن شوید که از `NetworkInfoImpl` به جای `NetworkInfo` استفاده می‌کنید.

 اگر با خطای "Missing concrete implementation" مواجه شدید:
   - مطمئن شوید که تمام متدهای abstract را پیاده‌سازی کرده‌اید.

## پشتیبانی

در صورت بروز مشکل یا نیاز به راهنمایی، لطفاً یک issue در گیت‌هاب ایجاد کنید.

## مشارکت

لطفاً برای بهبود این قالب، pull request ارسال کنید.

## مجوز

این پروژه تحت مجوز MIT منتشر شده است. 
