function OnIf_550100(arg0, arg1, arg2)
    if arg2 == 0 then
        LesserDemon_LHead550100_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function LesserDemon_LHead550100Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetEventRequest()
    local local6 = arg0:GetRandam_Int(1, 100)
    local0[1] = 70
    local0[2] = 10
    local0[3] = 20
    local1[1] = REGIST_FUNC(arg0, arg1, LesserDemon_LHead550100_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, LesserDemon_LHead550100_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, LesserDemon_LHead550100_Act03)
    local1[20] = REGIST_FUNC(arg0, arg1, LesserDemon_LHead550100_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, LesserDemon_LHead550100_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, LesserDemon_LHead550100_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, LesserDemon_LHead550100_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, LesserDemon_LHead550100_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, LesserDemon_LHead550100_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, LesserDemon_LHead550100_Act26)
    local1[27] = REGIST_FUNC(arg0, arg1, LesserDemon_LHead550100_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, LesserDemon_LHead550100_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, LesserDemon_LHead550100_Act29)
    local1[30] = REGIST_FUNC(arg0, arg1, LesserDemon_LHead550100_Act30)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, LesserDemon_LHead550100_ActAfter_AdjustSpace), local2)
    return 
end

function LesserDemon_LHead550100_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None)
    else
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None)
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 5), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LesserDemon_LHead550100_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_None)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 5), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LesserDemon_LHead550100_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_None)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 5), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LesserDemon_LHead550100_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3000_Dist_max, Att3000_Dist_max + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, Att3000_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LesserDemon_LHead550100_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3001_Dist_max, Att3001_Dist_max + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, Att3001_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LesserDemon_LHead550100_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3002_Dist_max, Att3002_Dist_max + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, Att3002_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LesserDemon_LHead550100_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3003_Dist_max, Att3003_Dist_max + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, Att3003_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LesserDemon_LHead550100_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3004_Dist_max, Att3004_Dist_max + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, Att3004_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LesserDemon_LHead550100_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3005_Dist_max, Att3005_Dist_max + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, Att3005_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LesserDemon_LHead550100_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3006_Dist_max, Att3006_Dist_max + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, Att3006_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LesserDemon_LHead550100_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3007_Dist_max, Att3007_Dist_max + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, Att3007_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LesserDemon_LHead550100_Act28(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3008_Dist_max, Att3008_Dist_max + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, Att3008_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LesserDemon_LHead550100_Act29(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3009_Dist_max, Att3009_Dist_max + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, Att3009_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LesserDemon_LHead550100_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3010_Dist_max, Att3010_Dist_max + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, Att3010_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LesserDemon_LHead550100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

function LesserDemon_LHead550100_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    return 
end

function LesserDemon_LHead550100Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function LesserDemon_LHead550100Battle_Terminate(arg0, arg1)
    return 
end

function LesserDemon_LHead550100Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
