using System;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;

namespace AIBB2DS3
{
    class Program
    {
        public static readonly string bbFilesFolderName = "LUABB";
        public static readonly string ds3FilesFolderName = "LUADS3";


        static void Main(string[] args)
        {
            Console.WriteLine("BBtoDS3AI wrote by NamelessHoodie, on the behalf of KEZ");
            Console.WriteLine($"Usage: Copy decompiled Bloodborne LUA files inside the {bbFilesFolderName} directory adjacent to the executable and excute the program, or drag and drop them on the executable. The files will be converted to be compatible with DS3\n");

            Console.WriteLine("Below will be listed conversion results.");
            if (args.Length == 0)
            {
                Console.WriteLine($"No LUA files were dragged and dropped on the executable, proceeding with conversion of files in {bbFilesFolderName}.");
                Console.WriteLine("---------------------------------");

                foreach (var path in Directory.GetFiles(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, bbFilesFolderName), "*lua"))
                {
                    BBtoDS3AI(path);
                }
            }
            else
            {
                Console.WriteLine("Converting drag and dropped LUA files...");
                Console.WriteLine("---------------------------------");
                foreach (string arg in args)
                {
                    if (arg.EndsWith("lua"))
                    {
                        BBtoDS3AI(arg);
                    }
                    else
                    {
                        Console.WriteLine($"The file at path: {arg} is not a LUA file");
                    }
                }
            }

            Console.WriteLine("---------------------------------");
            Console.WriteLine("Press ENTER to exit the window.");
            Console.ReadLine();
        }

        public static void BBtoDS3AI(string path)
        {
            bool isOk = true;
            string fileName = Path.GetFileName(path);
            string aiReadStr = File.ReadAllText(path);
            string aiCreatureID = "";

            Console.WriteLine($"Converting: {fileName}");

            //Step 0
            {
                Match rgx = Regex.Match(aiReadStr, "function .*Battle_Activate");
                if (rgx.Success)
                {
                    aiCreatureID = rgx.Value;
                    aiCreatureID = aiCreatureID.Replace("function ", "");
                    aiCreatureID = aiCreatureID.Replace("Battle_Activate", "");
                }
                else
                {
                    Console.WriteLine("The Battle_Activate function is not present.");
                    isOk = false;
                }
            }

            //Step 1
            {

                for (int i = aiReadStr.Length; i > 0; i--)
                {
                    if (isStrAtIndexOfStr(aiReadStr, i, "return"))
                    {
                        {
                            string strToAppend = $"RegisterTableGoal(GOAL_{aiCreatureID}Battle, \"GOAL_{aiCreatureID}Battle\")\nREGISTER_GOAL_NO_SUB_GOAL(GOAL_{aiCreatureID}Battle, true)\nGoal.Initialize = function (arg0, arg1, arg2, arg3)\n    return \nend\n";
                            aiReadStr = aiReadStr.Insert(i, strToAppend);
                            i += strToAppend.Length;
                        }

                        if (Regex.Match(aiReadStr, $"function .*{aiCreatureID}Battle_Activate\\(.*, .*\\)", RegexOptions.IgnoreCase | RegexOptions.Compiled).Success)
                        {
                            string strToAppend = $"\nGoal.Activate = function (arg0, arg1, arg2)\n    return {aiCreatureID}Battle_Activate(arg1, arg2)\nend\n";
                            aiReadStr = aiReadStr.Insert(i, strToAppend);
                            i += strToAppend.Length;
                        }
                        else
                        {
                            Console.WriteLine($"Step 1: {aiCreatureID}Battle_Activate not found in: {fileName}");
                            isOk = false;
                        }

                        if (Regex.Match(aiReadStr, $"function .*{aiCreatureID}_ActAfter_RealTime\\(.*, .*\\)", RegexOptions.IgnoreCase | RegexOptions.Compiled).Success)
                        {
                            string strToAppend = $"\nRegisterTableGoal(GOAL_{aiCreatureID}_AfterAttackAct, \"GOAL_{aiCreatureID}_AfterAttackAct\")\nREGISTER_GOAL_NO_SUB_GOAL(GOAL_{aiCreatureID}_AfterAttackAct, true)\nGoal.Activate = function (arg0, arg1, arg2)\n    return {aiCreatureID}_ActAfter_RealTime(arg1, arg2)\nend\n";
                            aiReadStr = aiReadStr.Insert(i, strToAppend);
                            i += strToAppend.Length;
                        }
                        else if (Regex.Match(aiReadStr, $"function .*{aiCreatureID}_ActAfter\\(.*, .*\\)", RegexOptions.IgnoreCase | RegexOptions.Compiled).Success)
                        {
                            string strToAppend = $"\nRegisterTableGoal(GOAL_{aiCreatureID}_AfterAttackAct, \"GOAL_{aiCreatureID}_AfterAttackAct\")\nREGISTER_GOAL_NO_SUB_GOAL(GOAL_{aiCreatureID}_AfterAttackAct, true)\nGoal.Activate = function (arg0, arg1, arg2)\n    return {aiCreatureID}_ActAfter(arg1, arg2)\nend\n";
                            aiReadStr = aiReadStr.Insert(i, strToAppend);
                            i += strToAppend.Length;
                        }
                        else
                        {
                            Console.WriteLine($"Step 1: {aiCreatureID}_ActAfter_RealTime  or {aiCreatureID}_ActAfter not found in: {fileName}");
                        }

                        if (Regex.Match(aiReadStr, $"function .*{aiCreatureID}Battle_Update\\(.*, .*\\)", RegexOptions.IgnoreCase | RegexOptions.Compiled).Success)
                        {
                            string strToAppend = $"\nGoal.Update = function (arg0, arg1, arg2)\n    return {aiCreatureID}Battle_Update(arg1, arg2)\nend\n";
                            aiReadStr = aiReadStr.Insert(i, strToAppend);
                            i += strToAppend.Length;
                        }
                        else
                        {
                            Console.WriteLine($"Step 1: {aiCreatureID}Battle_Update not found in: {fileName}");
                            isOk = false;
                        }

                        if (Regex.Match(aiReadStr, $"function .*{aiCreatureID}Battle_Terminate\\(.*, .*\\)", RegexOptions.IgnoreCase | RegexOptions.Compiled).Success)
                        {
                            string strToAppend = $"\nGoal.Terminate = function (arg0, arg1, arg2)\n    return {aiCreatureID}Battle_Terminate(arg1, arg2)\nend\n";
                            aiReadStr = aiReadStr.Insert(i, strToAppend);
                            i += strToAppend.Length;
                        }
                        else
                        {
                            Console.WriteLine($"Step 1: {aiCreatureID}Battle_Terminate not found in: {fileName}");
                            isOk = false;
                        }

                        if (Regex.Match(aiReadStr, $"function .*{aiCreatureID}Battle_Interupt\\(.*, .*\\)", RegexOptions.IgnoreCase | RegexOptions.Compiled).Success)
                        {
                            string strToAppend = $"\nGoal.Interrupt = function (arg0, arg1, arg2)\n    return {aiCreatureID}Battle_Interupt(arg1, arg2)\nend";
                            aiReadStr = aiReadStr.Insert(i, strToAppend);
                            i += strToAppend.Length;
                        }
                        else
                        {
                            Console.WriteLine($"Step 1: {aiCreatureID}Battle_Interupt not found in: {fileName}");
                            isOk = false;
                        }

                        aiReadStr = aiReadStr.Insert(i, "\n\n");

                        break;
                    }
                }
            }

            //Step 2 - Main
            {
                Match rgx = Regex.Match(aiReadStr, $"function .*ActAfter_AdjustSpace\\(.*\\).*\n.*arg1:AddSubGoal\\(GOAL_COMMON_If, 10, 0\\)", RegexOptions.IgnoreCase | RegexOptions.Compiled);
                Match realTime = Regex.Match(aiReadStr, $"function .*{aiCreatureID}_ActAfter_RealTime\\(.*, .*\\)", RegexOptions.IgnoreCase | RegexOptions.Compiled);
                Match actAfter = Regex.Match(aiReadStr, $"function .*{aiCreatureID}_ActAfter\\(.*, .*\\)", RegexOptions.IgnoreCase | RegexOptions.Compiled);
                if (rgx.Success)
                {
                    if (realTime.Success || actAfter.Success)
                    {
                        String[] strArrWork = SplitByIndex(aiReadStr, rgx.Index, rgx.Index + rgx.Length);
                        strArrWork[1] = Regex.Replace(strArrWork[1], "arg1:AddSubGoal\\(GOAL_COMMON_If, 10, 0\\)", $"arg1:AddSubGoal(GOAL_{aiCreatureID}_AfterAttackAct, 10)");
                        aiReadStr = strArrWork[0] + strArrWork[1] + strArrWork[2];
                    }
                    else
                    {
                        Console.WriteLine($"Step 2: {aiCreatureID}_ActAfter_RealTime or {aiCreatureID}_ActAfter  not found in: {fileName}");
                    }
                }
                else
                {
                    Console.WriteLine($"Step 2: {aiCreatureID}_ActAfter_AdjustSpace not found in: {fileName}");
                }
            }

            //step 3 - A
            {
                aiReadStr = Regex.Replace(aiReadStr, "Kanshu_Act", "Kankyaku_Act", RegexOptions.IgnoreCase | RegexOptions.Compiled);
            }

            //step 3 - B
            {
                MatchCollection rgx = Regex.Matches(aiReadStr, ".*GOAL_COMMON_SpinStep.*", RegexOptions.IgnoreCase | RegexOptions.Compiled);
                foreach (Match match in rgx)
                {
                    string[] strEditArray = SplitByIndex(aiReadStr, match.Index, match.Index + match.Length);

                    strEditArray[1] = strEditArray[1].Replace("700", "6000");
                    strEditArray[1] = strEditArray[1].Replace("701", "6001");
                    strEditArray[1] = strEditArray[1].Replace("702", "6002");
                    strEditArray[1] = strEditArray[1].Replace("703", "6003");
                    
                    strEditArray[1] = strEditArray[1].Replace("710", "6000");
                    strEditArray[1] = strEditArray[1].Replace("711", "6001");
                    strEditArray[1] = strEditArray[1].Replace("712", "6002");
                    strEditArray[1] = strEditArray[1].Replace("713", "6003");

                    aiReadStr = strEditArray[0] + strEditArray[1] + strEditArray[2];
                }
            }

            if (isOk)
            {
                string directory = Path.GetDirectoryName(path);
                if (directory.EndsWith(bbFilesFolderName))
                {
                    directory = Directory.GetParent(directory).FullName;
                }
                directory = Path.Combine(directory, ds3FilesFolderName);
                string directoryAndFilename = Path.Combine(directory, fileName);

                Directory.CreateDirectory(directory);
                File.WriteAllText(directoryAndFilename, aiReadStr);
                Console.WriteLine($"Successfully converted: {directoryAndFilename}");
            }
            else
            {
                Console.WriteLine($"No converted file will be generated for: ({fileName}) due to conversion errors");
            }
        }

        public static string[] SplitByIndex(string input, int indexStart, int indexEnd) 
        {
            if (indexEnd < input.Length)
            {
                string[] strPortions = new string[3];
                strPortions[0] = input.Substring(0, indexStart);
                strPortions[1] = input.Substring(indexStart, indexEnd - indexStart);
                strPortions[2] = input.Substring(indexEnd, input.Length - indexEnd);
                return strPortions;
            }
            else
            {
                return null;
            }
        }

        public static bool isStrAtIndexOfStr(string parseStr, int index, string strToMatchAgainst)
        {
            if (parseStr.Length > (index + strToMatchAgainst.Length))
            {
                string subStr = parseStr.Substring(index, strToMatchAgainst.Length);
                return subStr == strToMatchAgainst;
            }
            return false;
        }
    }
}
