# قالب MVVM فلاتر

قالب پروژه فلاتر بر اساس معماری MVVM با استفاده از Riverpod و Freezed. این قالب شامل پوشه‌بندی مدرن، کدهای تکراری و مثال‌های کاربردی برای هر لایه از پروژه می‌باشد.

## ویژگی‌ها

- 🏗️ معماری MVVM
- 🎯 مدیریت state با Riverpod
- 📦 تولید خودکار کد با Freezed
- 🌐 مدیریت درخواست‌های شبکه با Dio
- 📁 ساختار پوشه‌بندی مدرن و مقیاس‌پذیر
- 🧪 تست‌نویسی آسان

## پیش‌نیازها

- Flutter SDK >= 3.0.0
- Dart SDK >= 3.0.0

## نصب و راه‌اندازی

1. ابتدا قالب را به پروژه خود اضافه کنید:
```bash
mason add mvvm_flutter_template
```

2. قالب را در پروژه خود اجرا کنید:
```bash
mason make mvvm_flutter_template
```

3. وابستگی‌های پروژه را نصب کنید:
```bash
flutter pub get
```

4. کدهای تولید شده را بسازید:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## ساختار پروژه

```
lib/
├── core/
│   ├── constants/
│   ├── errors/
│   ├── network/
│   └── utils/
├── features/
│   └── feature_name/
│       ├── data/
│       │   ├── datasources/
│       │   ├── models/
│       │   └── repositories/
│       ├── domain/
│       │   ├── entities/
│       │   ├── repositories/
│       │   └── usecases/
│       └── presentation/
│           ├── pages/
│           ├── viewmodels/
│           └── widgets/
└── main.dart
```

## وابستگی‌های اصلی

- `flutter_riverpod`: ^2.4.9 - مدیریت state
- `riverpod_annotation`: ^2.3.3 - تولید کد Riverpod
- `freezed_annotation`: ^2.4.1 - تولید کد Freezed
- `json_annotation`: ^4.8.1 - سریالایز JSON
- `dio`: ^5.4.0 - مدیریت درخواست‌های شبکه

## وابستگی‌های توسعه

- `build_runner`: ^2.4.7 - تولید کد
- `riverpod_generator`: ^2.3.9 - تولید کد Riverpod
- `freezed`: ^2.4.6 - تولید کد Freezed
- `json_serializable`: ^6.7.1 - سریالایز JSON

## نکات مهم

- قبل از اجرای برنامه، حتماً دستور `build_runner` را اجرا کنید
- در صورت تغییر در مدل‌ها یا کدهای تولید شده، مجدداً دستور `build_runner` را اجرا کنید
- برای استفاده از Riverpod، حتماً `ProviderScope` را در `main.dart` اضافه کنید

## مثال استفاده

```dart
class HomeViewModel extends StateNotifier<HomeState> {
  HomeViewModel() : super(HomeState.initial());

  Future<void> fetchData() async {
    state = state.copyWith(isLoading: true);
    try {
      // انجام عملیات
      state = state.copyWith(isLoading: false, data: result);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}
```

## پشتیبانی

در صورت بروز مشکل یا نیاز به راهنمایی، لطفاً یک issue در گیت‌هاب ایجاد کنید. 
