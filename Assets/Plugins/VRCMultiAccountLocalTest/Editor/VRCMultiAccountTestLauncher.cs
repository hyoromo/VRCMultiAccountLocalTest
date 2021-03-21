/// Copyright (c) 2021 hyoromo
/// Released under the MIT license
/// https://opensource.org/licenses/mit-license.php

using UnityEditor;
using System.Diagnostics;
using System.IO;
using System.Linq;

namespace VRCMultiAccountLocalTest.Editor
{
    /// <summary>
    /// UnityEditorからVRChatクライアントをアカウント別に起動
    /// </summary>
    public class VRCMultiAccountLocalTestLauncher
    {
        /// <summary>
        /// LauncherScriptsフォルダまでのパスを返す
        /// </summary>
        /// <returns></returns>
        private static string GeLauncherScriptsPath()
        {
            var process = new Process();
            string dir = Directory.GetCurrentDirectory();

            var pluginRootDir = Directory.GetDirectories("Assets", "*", SearchOption.AllDirectories)
                                            .FirstOrDefault(path => Path.GetFileName(path) == "VRCMultiAccountLocalTest");

            return $"{pluginRootDir}\\VBS\\LauncherScripts";
        }

        /// <summary>
        /// 全サブアカウントを起動
        /// </summary>
        [MenuItem("Tools/VRCMultiAccountLocalTest/All-SubAccounts")]
        static void LauncherAll()
        {
            Process.Start($"{GeLauncherScriptsPath()}\\AllSubAccount.vbs");
        }

        /// <summary>
        /// サブアカウント1を起動
        /// </summary>
        [MenuItem("Tools/VRCMultiAccountLocalTest/SubAccounts/1")]
        static void Launcher1()
        {
            Process.Start($"{GeLauncherScriptsPath()}\\SubAccount1.vbs");
        }

        /// <summary>
        /// サブアカウント2を起動
        /// </summary>
        [MenuItem("Tools/VRCMultiAccountLocalTest/SubAccounts/2")]
        static void Launcher2()
        {
            Process.Start($"{GeLauncherScriptsPath()}\\SubAccount2.vbs");
        }
    }
}