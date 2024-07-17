# Debug Performance in a WebView
### [Tutorial](https://designcode.io/swiftui-advanced-handbook-debug-performance-in-a-webview)
> Enable Safari's WebInspector to debug the performance of a WebView in your application

#### Debugging the performance of a WebView can be quite tricky, because you don't know if it's the WebView that's affecting the CPU usage, or the SwiftUI code surrounding it. Apple created a lot of tools to help developers debug the performance issue in a WebView. Let's learn how to enable Web Inspector to debug the performance issues of your app.

## Enable Develop Menu
Open Safari and make sure the **Develop** menu is enabled.

If you don't see the Develop menu, click on **Safari > Preferences > Advanced > Show Develop Menu in menu bar**. A shortcut to access the Preferences menu in Safari is **[Command (⌘) + ,] .**
![image](https://github.com/user-attachments/assets/147eb0b3-3f84-41ed-a9d9-3ab567f3228b)

You can also do the same on your device by going into **Settings > Safari > Advanced > Enable Web Inspector**.

## Open your device
Open the device or the Simulator on which you want to debug the performance issues.

Go back to Safari and click on Develop in the top menu. There, you'll see all the available devices. Choose the one you're working with and select the **WebView** you wish to debug.
![Uploading image.png…]()

## Track your performance
The **Web Inspector** will open and you'll be able to record the performance of your **WebView**. All the events happening while you were using your app will be recorded, as well as all the frames per seconds rendered.
![Uploading image.png…]()
