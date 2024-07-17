# Debug a Crash Log
### [Tutorial](https://designcode.io/swiftui-advanced-handbook-debug-a-crash-log)
> Learn how to debug a crash log from App Store Connect in Xcode

#### After you upload your app to [App Store Connect](https://appstoreconnect.apple.com/), you can either do a beta testing or upload it to the [App Store](https://www.apple.com/app-store/). Either way, you can get the number of crashes for each of your builds and access the crash logs directly from Xcode

In Xcode, all the crash logs are logged under **Window > Organizer**, and under the **Crashes** tab.

Each crash log contains all the details you need to debug the crashes users encountered.

## Find the Version and Build
In the **Organizer**, at the top, next to the **Crashes** word, you can select the specific **Version** and **Build** of your app you wish to debug.
![image](https://github.com/user-attachments/assets/5614da11-e3f0-48f3-9e0f-16ff8fc1620e)
## Read the Crash report
Under this, you can find all the crashes the users encountered while using your app. On the right panel, you'll find the thread leading to the crash or the bug.

In the screenshot below, the crash was caused by **HomeView**.
![image](https://github.com/user-attachments/assets/764d04eb-ac25-440f-ae2b-5b3b0649c364)
## Going further
Sometimes, the **Thread** does not give enough information to help you debug. Therefore, you can dig deeper into the bug and read the raw Crash log. To do so, **Control (^) + Click**, then **Show in Finder** on a crash.
![image](https://github.com/user-attachments/assets/f063cf9c-6f6d-4cae-b8d7-296a3ab604d4)
It will open up all the Crash reports in Finder. On the selected crash report, **Control (^) + Click** again, and click on **Show Package Contents**
![image](https://github.com/user-attachments/assets/c6d2a236-3019-40ca-91a6-eba61e5bfe59)

Then, navigate into **DistributionInfos > all > Logs** and open the crash report you want to investigate. There, you'll be able to dig deeper into the crash and what caused it.
