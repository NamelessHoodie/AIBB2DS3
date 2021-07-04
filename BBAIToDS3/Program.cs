using System;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;

namespace AIBB2DS3
{
    class Program
    {

        static void Main(string[] args)
        {
            Console.WriteLine("BBtoDS3AI wrote by NamelessHoodie, on the behalf of KEZ");
            Console.WriteLine("Usage: Copy decompiled Bloodborne LUA files inside the program folder and run it, or drag and drop them on the executable. The files will be converted to be compatible with DS3\n");

            Console.WriteLine("Below will be listed conversion results.");
            if (args.Length == 0)
            {
                Console.WriteLine("No LUA files were dragged and dropped on the executable, proceeding with conversion of files in the program folder.");
                Console.WriteLine("---------------------------------");
                foreach (var path in Directory.GetFiles(AppDomain.CurrentDomain.BaseDirectory, "*lua"))
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

                        if (Regex.Match(aiReadStr, $"function .*{aiCreatureID}Battle_Activate\\(.*, .*\\)").Success)
                        {
                            string strToAppend = $"\nGoal.Activate = function (arg0, arg1, arg2)\n    return {aiCreatureID}Battle_Activate(arg1, arg2)\nend\n";
                            aiReadStr = aiReadStr.Insert(i, strToAppend);
                            i += strToAppend.Length;
                        }
                        else
                        {
                            Console.WriteLine($"{aiCreatureID}Battle_Activate not found in: {fileName}");
                            isOk = false;
                        }

                        if (Regex.Match(aiReadStr, $"function .*{aiCreatureID}_ActAfter_RealTime\\(.*, .*\\)").Success)
                        {
                            string strToAppend = $"\nRegisterTableGoal(GOAL_{aiCreatureID}_AfterAttackAct, \"GOAL_{aiCreatureID}_AfterAttackAct\")\nREGISTER_GOAL_NO_SUB_GOAL(GOAL_{aiCreatureID}_AfterAttackAct, true)\nGoal.Activate = function (arg0, arg1, arg2)\n    return {aiCreatureID}_ActAfter_RealTime(arg1, arg2)\nend\n";
                            aiReadStr = aiReadStr.Insert(i, strToAppend);
                            i += strToAppend.Length;
                        }
                        else
                        {
                            Console.WriteLine($"{aiCreatureID}_ActAfter_RealTime not found in: {fileName}");
                            isOk = false;
                        }

                        if (Regex.Match(aiReadStr, $"function .*{aiCreatureID}Battle_Update\\(.*, .*\\)").Success)
                        {
                            string strToAppend = $"\nGoal.Update = function (arg0, arg1, arg2)\n    return {aiCreatureID}Battle_Update(arg1, arg2)\nend\n";
                            aiReadStr = aiReadStr.Insert(i, strToAppend);
                            i += strToAppend.Length;
                        }
                        else
                        {
                            Console.WriteLine($"{aiCreatureID}Battle_Update not found in: {fileName}");
                            isOk = false;
                        }

                        if (Regex.Match(aiReadStr, $"function .*{aiCreatureID}Battle_Terminate\\(.*, .*\\)").Success)
                        {
                            string strToAppend = $"\nGoal.Terminate = function (arg0, arg1, arg2)\n    return {aiCreatureID}Battle_Terminate(arg1, arg2)\nend\n";
                            aiReadStr = aiReadStr.Insert(i, strToAppend);
                            i += strToAppend.Length;
                        }
                        else
                        {
                            Console.WriteLine($"{aiCreatureID}Battle_Terminate not found in: {fileName}");
                            isOk = false;
                        }

                        if (Regex.Match(aiReadStr, $"function .*{aiCreatureID}Battle_Interupt\\(.*, .*\\)").Success)
                        {
                            string strToAppend = $"\nGoal.Interrupt = function (arg0, arg1, arg2)\n    return {aiCreatureID}Battle_Interupt(arg1, arg2)\nend";
                            aiReadStr = aiReadStr.Insert(i, strToAppend);
                            i += strToAppend.Length;
                        }
                        else
                        {
                            Console.WriteLine($"{aiCreatureID}Battle_Interupt not found in: {fileName}");
                            isOk = false;
                        }

                        aiReadStr = aiReadStr.Insert(i, "\n\n");

                        break;
                    }
                }
            }

            //Step 2
            {
                Match rgx = Regex.Match(aiReadStr, $"function {aiCreatureID}_ActAfter_AdjustSpace\\(arg0, arg1, arg2\\)\n.*arg1:AddSubGoal\\(GOAL_COMMON_If, 10, 0\\)");
                if (rgx.Success)
                {
                    string fixstr = Regex.Replace(rgx.Value, "function .*ActAfter_AdjustSpace\\(.*\\)", "").TrimStart("\n"[0]).TrimStart();
                    aiReadStr = aiReadStr.Replace(fixstr, $"arg1:AddSubGoal(GOAL_{aiCreatureID}_AfterAttackAct, 10)");
                }
                else
                {
                    Console.WriteLine($"{aiCreatureID}_ActAfter_AdjustSpace not found in: {fileName}");
                    isOk = false;
                }
            }

            //step 3 - A
            {
                aiReadStr = Regex.Replace(aiReadStr, "Kanshu_Act", "Kankyaku_Act");
            }

            //step 3 - B
            {
                Match rgx = Regex.Match(aiReadStr, ".*GOAL_COMMON_SpinStep.*");
                for (int i = 0; i < rgx.Groups.Count; i++)
                {
                    Capture match = rgx.Groups[i];

                    string[] strEditArray = SplitByIndex(aiReadStr, match.Index, match.Index + match.Length);

                    strEditArray[1] = strEditArray[1].Replace("701", "6001");
                    strEditArray[1] = strEditArray[1].Replace("702", "6002");
                    strEditArray[1] = strEditArray[1].Replace("703", "`6003");

                    aiReadStr = strEditArray[0] + strEditArray[1] + strEditArray[2];
                }
            }

            if (isOk)
            {
                Directory.CreateDirectory(path.Replace(fileName, "") + "LUADS3");
                File.WriteAllText(path.Insert(path.IndexOf(fileName), @"LUADS3\"), aiReadStr);
                Console.WriteLine($"Successfully converted: {path.Replace(fileName, "") + "LUADS3" + $"\\{fileName}"}");
            }
            else
            {
                Console.WriteLine($"No converted files will be generated for: ({fileName}) due to conversion errors");
            }
        }

        public static IndexStartEnd DigFunction(string luaFileStr, int functionStartIndex)
        {
            int funLenght = 2;
            int endLayers = 0;
            int charSkipParseNum = 0;
            for (int funseek = functionStartIndex; funseek < luaFileStr.Length; funseek++)
            {
                if (isStrAtIndexOfStr(luaFileStr, funseek, "function"))
                {
                    charSkipParseNum += "function".Length;
                    endLayers++;
                    for (int i = funseek; i < luaFileStr.Length; i++)
                    {
                        funLenght++;

                        if (charSkipParseNum > 0)
                        {
                            charSkipParseNum--;
                        }
                        else
                        {
                            if (isStrAtIndexOfStr(luaFileStr, i, "elseif"))
                            {
                                if (Regex.Match(luaFileStr.Substring(funseek), "elseif.*then").Success)
                                    Debug.WriteLine("elseif");
                                {
                                    charSkipParseNum += "elseIf".Length;
                                    endLayers++;
                                }
                            }
                            else if (isStrAtIndexOfStr(luaFileStr, i, "if"))
                            {
                                if (Regex.Match(luaFileStr.Substring(funseek), "if.*then").Success)
                                {
                                    Debug.WriteLine("if");
                                    charSkipParseNum += "if".Length;
                                    endLayers++;
                                }
                            }
                            else if (isStrAtIndexOfStr(luaFileStr, i, "while"))
                            {
                                if (Regex.Match(luaFileStr.Substring(funseek), "while.*\\(.*\\)").Success)
                                {
                                    Debug.WriteLine("while");
                                    charSkipParseNum += "while".Length;
                                    endLayers++;
                                }
                            }
                            else if (isStrAtIndexOfStr(luaFileStr, i, "end\n"))
                            {
                                Debug.WriteLine("end");
                                charSkipParseNum += "end".Length;
                                endLayers--;
                            }
                        }


                        if (endLayers == 0)
                        {
                            return new IndexStartEnd(functionStartIndex, funLenght);
                        }
                    }
                    throw new Exception("There was an error parsing the LUA function.");
                }
                else
                {
                    funLenght++;
                }
            }

            throw new Exception("There is no LUA function after the provided index");

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

    public class IndexStartEnd
    {
        public int IndexStart { get; }
        public int IndexEnd { get; }

        public IndexStartEnd(int IndexStart, int IndexEnd)
        {
            this.IndexStart = IndexStart;
            this.IndexEnd = IndexEnd;
        }
    }
}
