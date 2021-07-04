function OnIf_710000(arg0, arg1, arg2)
    if arg2 == 0 then
        RuinsGatling710000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function RuinsGatling710000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    if not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2302022) or arg0:GetEventRequest(1) == 100 then
        local0[10] = 100
    elseif arg0:GetEventRequest() == 100 then
        local0[2] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[10] = 100
    else
        local0[1] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, RuinsGatling710000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, RuinsGatling710000_Act02)
    local1[10] = REGIST_FUNC(arg0, arg1, RuinsGatling710000_Act10)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, RuinsGatling710000_ActAfter_AdjustSpace), local2)
    return 
end

function RuinsGatling710000_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0)
    local local0 = 1
    for local1 = arg0:GetRandam_Int(2, 4) - local0, 5, local0 do
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_None, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_None, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function RuinsGatling710000_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_EVENT, DIST_None, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuinsGatling710000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_EVENT, DIST_None, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuinsGatling710000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function RuinsGatling710000_ActAfter_RealTime(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 5), TARGET_ENE_0, 0, 0, 0)
    return 
end

function RuinsGatling710000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function RuinsGatling710000Battle_Terminate(arg0, arg1)
    return 
end

function RuinsGatling710000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg0:IsInterupt(INTERUPT_EventRequest) then
        arg1:ClearSubGoal()
        arg0:Replaning()
        return true
    else
        return false
    end
end

return 
