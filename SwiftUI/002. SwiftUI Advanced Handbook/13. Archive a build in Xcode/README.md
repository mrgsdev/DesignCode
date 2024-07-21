# Archive a Build in Xcode
### [Tutorial](https://designcode.io/swiftui-advanced-handbook-archive-a-build-in-xcode)
> Archive a build for beta testing or to release in the App Store

#### Archiving a build in Xcode is useful when you want users to test your beta app, or when you want to release a new version of your application.
## Make sure your build is successful
Before beginning to archive your build, you need to make sure that the build is successful not only for **Debug**, for also for **Release**. Remember to test thoroughly with different types of scenarios to make sure there's no crash or bug. See the **Test for production in the Simulator** section to learn how to test for production in the Simulator.

## Set your simulator
To start off, in Xcode, at the top, you need to set your simulator to **Any iOS device.**
![image](https://github.com/user-attachments/assets/7b60d09f-1681-4160-9fde-dc20edb1b158)

## Start your archive
Navigate to your project's settings. Under **iOS** (or the target you want to build your app for) **> Identity**, you'll want to increment the **Build** number. For example, if the Build number was 1, you'll want to set it to 2.
![image](https://github.com/user-attachments/assets/e61b942c-57df-4f23-9e9e-40b551153d5c)

Then, in the top menu, under **Product**, click on Archive.
![image](https://github.com/user-attachments/assets/4ac9e04b-9e9a-4a4a-be58-019dba71663c)

## Validate and distribute
After the archive is completed, a window will popup and you'll be able to **Validate App**. Once it's validated, you can **Distribute App** and it will upload it to [App Store Connect](https://appstoreconnect.apple.com/), where you'll be able to share it with Beta testers or upload it directly to the App Store.
![image](https://github.com/user-attachments/assets/a14f151c-2de7-4357-934c-eff44347aca7)


