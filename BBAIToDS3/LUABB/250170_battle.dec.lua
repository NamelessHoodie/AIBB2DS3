function OnIf_250170(arg0, arg1, arg2)
    if arg2 == 0 then
        FromMoonOnlyFeeler250170_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function FromMoonOnlyFeeler250170Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetEventRequest()
    local local6 = arg0:GetRandam_Int(1, 100)
    if arg0:IsFinishTimer(0) == true then
        arg0:SetNumber(0, 0)
    end
    if arg0:GetNumber(0) == 0 then
        arg0:SetTimer(0, arg0:GetRandam_Int(25, 35))
        arg0:SetNumber(0, 1)
    end
    local1[1] = REGIST_FUNC(arg0, arg1, FromMoonOnlyFeeler250170_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, FromMoonOnlyFeeler250170_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, FromMoonOnlyFeeler250170_Act03)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, FromMoonOnlyFeeler250170_ActAfter_AdjustSpace), local2)
    return 
end

function FromMoonOnlyFeeler250170_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5400) then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None)
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None)
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None)
        elseif local1 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None)
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None)
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None)
        elseif local1 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None)
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 5), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FromMoonOnlyFeeler250170_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5403) then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_None)
        elseif local1 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_None)
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_None)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_None)
        elseif local1 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_None)
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_None)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_None)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 5), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FromMoonOnlyFeeler250170_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(2, 5), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FromMoonOnlyFeeler250170_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

function FromMoonOnlyFeeler250170_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    return 
end

function FromMoonOnlyFeeler250170Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function FromMoonOnlyFeeler250170Battle_Terminate(arg0, arg1)
    return 
end

function FromMoonOnlyFeeler250170Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
