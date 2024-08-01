### Working polkawallet app build 2021-08-22

Original source (broken code) https://github.com/polkawallet-io/app

To make it work, firstly run:

```sh
flutter create polkawallet
```

Before publishing make sure you added `Push Notifications` and `Associated Domains` capabilities. Uncomment all **Firebase** sections. Change AppId and Scheme to build Release (iOS), add jks key to `app/build.gradle`.

[demo.mp4](https://github.com/user-attachments/assets/185bde15-4c90-465d-9736-5b55350120cb)

