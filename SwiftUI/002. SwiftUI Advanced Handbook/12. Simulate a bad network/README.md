# Simulate a Bad Network
### [Tutorial](https://designcode.io/swiftui-advanced-handbook-simulate-a-bad-network)
> Test your SwiftUI application by simulating a bad network connection with Network Link Conditionner

#### While developing your application, you will want to simulate a bad network connection to see what some of your users might experience on a bad network connection, and to pinpoint where you have to improve your app's performance.
Apple provided a Developer Tools Package where you can simulate a bad network connection on your Mac.

> [!NOTE]
> This affects your whole computer, not just the Simulator.

#### Download the package
Go on https://developer.apple.com/download/more/ and search and download the **Additional Tools for Xcode** for the Xcode version you have.
![image](https://github.com/user-attachments/assets/4cb84391-3e09-4a59-bbfa-099b4fbc44f9)

Once the package is downloaded on your computer, open the **Hardware** folder and click on **Network Link Conditioner.prefPane**.
![image](https://github.com/user-attachments/assets/d456cb04-95ab-4e4f-9577-4a7e57846bf8)
![image](https://github.com/user-attachments/assets/1192f8fe-0f3e-4b81-acd3-1fe9bd975fb5)
![image](https://github.com/user-attachments/assets/8365dc92-08a3-4866-81d8-8b8c88eca3b4)
## Install Network Link Conditioner on your Mac
You will be asked to install **Network Link Conditioner** on your Mac. Click **Install**.
![image](https://github.com/user-attachments/assets/d8062495-b8d6-4073-9eb4-af96cc3ef8a4)
## Simulate the network connection speed
Your **System Preferences** window will automatically close and open up again, and you'll see at the bottom **Network Link Conditioner**. Double click on it and under **Profile**, you'll be able to select the network speed you want to simulate. Don't forget to toggle the Network Link Conditioner **ON**.

Note that a bad network simulation will affect your whole computer, and not just your Simulator. ****Don't forget to turn it back off after you finished testing, or your Internet connection will be really slow.
> [!NOTE]
> A bad network simulation will affect your whole computer, and not just your Simulator. **Don't forget** to turn it back off after you finished testing, or your Internet connection will be really slow.

![image](https://github.com/user-attachments/assets/ea74f84a-ed58-4473-a979-d32353bf65d9)

## Can't install Network Link Conditioner
If you run into this message, you already have **Network Link Conditioner** installed on your Mac. You can either right-click on Network Link Conditioner in System Preferences and **Remove "Network LinkConditioner"** **Preference Pane** to be able to reinstall it, or simply use the one already installed on your Mac.
![image](https://github.com/user-attachments/assets/15676b22-0efb-45ef-b12b-d9aaf902bd0e)


