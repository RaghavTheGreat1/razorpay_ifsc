<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# IFSC Razorpay

Unofficial [Razorpay IFSC Toolkit](https://ifsc.razorpay.com/) to fetch bank & branch related details from the IFSC Code of Indian Banks 🇮🇳



## Getting started

In your flutter/dart project add the dependency:


```yaml
razorpay_ifsc:
```


Import the package

```dart
import 'package:razorpay_ifsc/razorpay_ifsc.dart';
```

## Usage

to `/example` folder.

```dart
final ifscRazorpay = IfscRazorpay();
final bankDetails = await ifscRazorpay.getBankDetails("KKBK0008077");
```

## Additional information

- This is an unofficial package developed to contribute to the Flutter Community. 

- Any bugs found? Feel free to create Issues & PRs
