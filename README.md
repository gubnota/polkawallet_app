### Working polkawallet app build 2021-08-22

To make it work, firstly run:

```sh
flutter create polkawallet
```

Before publishing make sure you added `Push Notifications` and `Associated Domains` capabilities. Uncomment all **Firebase** sections. Change AppId and Scheme to build Release (iOS), add jks key to `app/build.gradle`.

