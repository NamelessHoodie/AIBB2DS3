function OnIf_514000(arg0, arg1, arg2)
    if arg2 == 0 then
        FalseGodBIG514000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function FalseGodBIG514000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetEventRequest()
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local5 = 64
        if not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2802740) or arg0:IsInsideTargetRegion(TARGET_ENE_0, 2802741) then
            local0[3] = 100
            local0[2] = 0
        else
            local0[10] = 100
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5403) then
        local5 = 99
        if arg0:IsInsideTargetRegion(TARGET_ENE_0, 2802620) and not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2802621) then
            local0[1] = 100
        else
            local0[10] = 100
        end
    elseif arg0:GetDist(TARGET_ENE_0) < 25 then
        local0[1] = 100
    else
        local0[10] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, FalseGodBIG514000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, FalseGodBIG514000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, FalseGodBIG514000_Act03)
    local1[10] = REGIST_FUNC(arg0, arg1, FalseGodBIG514000_Act10)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, FalseGodBIG514000_ActAfter_AdjustSpace), local2)
    return 
end

function FalseGodBIG514000_Act01(arg0, arg1, arg2)
    if arg0:GetEventRequest() == 100 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_EVENT, DIST_None, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FalseGodBIG514000_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 10, 3010, TARGET_ENE_0, DIST_None, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, DIST_None, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, DIST_None, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FalseGodBIG514000_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, -1)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FalseGodBIG514000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FalseGodBIG514000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function FalseGodBIG514000_ActAfter_RealTime(arg0, arg1)
    return 
end

function FalseGodBIG514000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function FalseGodBIG514000Battle_Terminate(arg0, arg1)
    return 
end

function FalseGodBIG514000Battle_Interupt(arg0, arg1)
    return false
end

return 
