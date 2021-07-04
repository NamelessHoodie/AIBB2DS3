local local0 = 0.9
function OnIf_213030(arg0, arg1, arg2)
    if arg2 == 0 then
        Blood_Lapper_HugeStomach213030_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Blood_Lapper_HugeStomach213030Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[1] = 100
    else
        local0[20] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Blood_Lapper_HugeStomach213030_Act01)
    local1[20] = REGIST_FUNC(arg0, arg1, Blood_Lapper_HugeStomach213030_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Blood_Lapper_HugeStomach213030_ActAfter_AdjustSpace), local2)
    return 
end

function Blood_Lapper_HugeStomach213030_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 999, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Blood_Lapper_HugeStomach213030_Act20(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3010, TARGET_SELF, DIST_None, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3011, TARGET_SELF, DIST_None, 0, 90)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Blood_Lapper_HugeStomach213030_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Blood_Lapper_HugeStomach213030_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Blood_Lapper_HugeStomach213030_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = arg0:GetRandam_Float(2, 3)
    local local6 = 0
    return 
end

function Blood_Lapper_HugeStomach213030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Blood_Lapper_HugeStomach213030Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Blood_Lapper_HugeStomach213030Battle_Terminate(arg0, arg1)
    return 
end

function Blood_Lapper_HugeStomach213030Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        return false
    end
end

return 
