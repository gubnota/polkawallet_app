# Flutter Charting library

[![pub package](https://img.shields.io/pub/v/charts_flutter.svg)](https://pub.dartlang.org/packages/charts_flutter)

http://pub.dev/packages/charts_flutter/ from Google Inc.

The [GitHub repo](https://github.com/google/charts) contains a full Flutter app with many demo examples.

The only difference with original library in this piece of code:

```dart
color ??= Theme.of(context).textTheme.body1!.color;
//to
color ??= Theme.of(context).textTheme.bodyText1!.color;
```

In file `charts_flutter-0.11.0/lib/src/behaviors/legend/legend_entry_layout.dart`



