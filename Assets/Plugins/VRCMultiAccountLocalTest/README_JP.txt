VRCMultiAccountLocalTest
v1.0.0

---

VRChatのローカルテストをマルチアカウントで実施しやすくするプラグインです。
LocalBuildで作られたワールドへ別アカウントでも入る事が出来ます。

本プラグインは自己責任にてご利用ください。もし何か御座いましても責任は負いかねます。
予告なく公開を停止する事も御座います。その時はご理解いただければ幸いです。


使用するサブアカウント数を変更：
1. 「Assets\Plugins\VRCMultiAccountLocalTest\VBS\VRCMultiAccountLocalTest.vbs」 ファイルをテキストエディタで開く
2. 冒頭箇所に subAccountCount が 2 と定義されているので、必要なアカウント数に変更する
3. "Assets\Plugins\VRCMultiAccountLocalTest\Editor\VRCMultiAccountTestLauncher.cs" の Launcher1メソッドをコピーして数字部分を追加番号に書き換える


導入手順：
1. UnityEditorのメニューから「VRChat SDK > Show Controll Panel」で VRChat SDK ビューを表示
2. Settingsタブの「VRChat Client > Editor」ボタンを押下
3. Assets/Plugins/VRCMultiAccountLocalTest/VBS/VRCMultiAccountLocalTest.vbs を選択(選択時にファイル種類を exe から All files に変更すると選択可能)
4. Builderタブの「Local Testing > Build & Test (or Last Build)」ボタンを押下
5. メインアカウントでVRChatクライアントが起動
6. UnityEditorのメニューから「Tools > VRCMultiAccountLocalTest > All-SubAccounts」
7. 先程変更したアカウント数分のVRChatクライアントが起動
8. それぞれ別々のアカウントでログイン

なお、6の手順では全アカウント起動しますが、UnityEditorのメニューから「Tools > VRCMultiAccountLocalTest > SubAccounts」の子にある数字を選択する事で個別起動も可能です。


複数Unityプロジェクト利用時の注意点：
VRChat SDKのSettingsタブ「VRChat Client > Editor」に設定されているPathは他UnityProjectとも共通の値になります。
そのため共通利用したい場合は以下の手順を踏む必要があります。
1. VBSフォルダをAssets以外の場所へ移動
2. Assets/Plugins/VRCMultiAccountLocalTest/Editor/VRCMultiAccountTestLauncher.cs を開く
3. GetLauncherScriptsPathメソッド内のpluginRootDir変数へ、変更後のパスを設定


バージョン管理：
以下を対象外にしておくとよいです。
Assets/Plugins/VRCMultiAccountLocalTest/VBS/LauncherScripts
Assets/Plugins/VRCMultiAccountLocalTest/VBS/LauncherScripts.meta


動作確認環境：
・Unity2018.4.20f0
・VRChat World SDK Version Date 2021.03.09.13.57

最新環境下では動作しない可能性も御座います。