VRCMultiAccountLocalTest
v1.0.0

---

This is a plugin that makes it easier to perform local testing of VRChat with multiple accounts.
You can enter the world created by LocalBuild with a different account.

Please use this plugin at your own risk. We are not responsible for any damage caused by this plugin.
We may stop the release of this plugin without notice. If you have any questions, please feel free to contact me.


Change the number of sub-accounts to use.
1. "Assets\Plugins\VRCMultiAccountLocalTest\VBS\VRCMultiAccountLocalTest.vbs" file in a text editor.
2. At the beginning, "subAccountCount" is defined as 2.
3. Copy the "Launcher1" method from "Assets\Plugins\VRCMultiAccountLocalTest\Editor\VRCMultiAccountTestLauncher.cs" and replace the numeric part with an additional number


Installation Procedure
1. From the UnityEditor menu, select "VRChat SDK > Show Controll Panel" to show the VRChat SDK view.
2. Press the "VRChat Client > Editor" button on the Settings tab.
3. Select "Assets/Plugins/VRCMultiAccountLocalTest/VBS/VRCMultiAccountLocalTest.vbs""
4. Press the "Local Testing > Build & Test (or Last Build)" button on the Builder tab.
5. The VRChat client is launched in the main account.
6. From the UnityEditor menu, select "Tools > VRCMultiAccountLocalTest > All-SubAccounts".
7. Launch the VRChat client for the number of accounts you just changed.
8. Log-in with a separate account for each.

You can start all accounts in step 6, but you can also start individual accounts by selecting the numbers in "Tools > VRCMultiAccountLocalTest > SubAccounts" in the UnityEditor menu.


Points to note when using multiple Unity projects
The path set in the VRChat SDK Settings tab "VRChat Client > Editor" is the same value as in other UnityProjects.
Therefore, if you want to use it commonly, you need to take the following steps.
1. Move the "VBS" folder to a non-Assets location.
2. Open "Assets/Plugins/VRCMultiAccountLocalTest/Editor/VRCMultiAccountTestLauncher.cs"
3. Set the modified path to the "pluginRootDir" variable in the "GetLauncherScriptsPath" method.


Operation check environment
- Unity2018.4.20f0
- VRChat World SDK Version Date 2021.03.09.13.57

There is a possibility that it will not work under the latest environment.
