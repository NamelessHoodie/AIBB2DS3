local local0 = 0.5
function OnIf_513000(arg0, arg1, arg2)
    if arg2 == 0 then
        Professor513000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Professor513000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetEventRequest(0)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    local local7 = 4
    if arg0:IsEventFlag(13204675) == false then
        local7 = local7 - 1
    end
    if arg0:IsEventFlag(13204676) == false then
        local7 = local7 - 1
    end
    if arg0:IsEventFlag(13204677) == false then
        local7 = local7 - 1
    end
    if arg0:IsEventFlag(13204678) == false then
        local7 = local7 - 1
    end
    local local8 = 0
    if local6 < 0.25 then
        local8 = 4
    elseif local6 < 0.5 then
        local8 = 3
    else
        local8 = 2
    end
    if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        local0[20] = 100
    elseif arg0:GetNumber(0) == 0 then
        local0[5] = 100
    elseif arg0:IsEventFlag(13204675) == false and arg0:IsFinishTimer(0) == true and local7 < local8 then
        local0[1] = 100
    elseif arg0:IsEventFlag(13204676) == false and arg0:IsFinishTimer(1) == true and local7 < local8 then
        local0[2] = 100
    elseif arg0:IsEventFlag(13204677) == false and arg0:IsFinishTimer(2) == true and local7 < local8 then
        local0[3] = 100
    elseif arg0:IsEventFlag(13204678) == false and arg0:IsFinishTimer(3) == true and local7 < local8 then
        local0[4] = 100
    elseif local6 < 0.5 and arg0:IsFinishTimer(4) == true then
        local0[11] = 100
    elseif local4 < 1.5 then
        local0[10] = 10
        local0[12] = 10
        local0[13] = 10
        local0[20] = 10
        local0[30] = 0
    elseif local4 < 3 then
        local0[10] = 10
        local0[12] = 0
        local0[13] = 10
        local0[20] = 10
        local0[30] = 0
    else
        local0[10] = 10
        local0[12] = 0
        local0[13] = 0
        local0[20] = 0
        local0[30] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Professor513000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Professor513000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Professor513000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Professor513000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Professor513000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Professor513000_Act06)
    local1[10] = REGIST_FUNC(arg0, arg1, Professor513000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Professor513000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, Professor513000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, Professor513000_Act13)
    local1[20] = REGIST_FUNC(arg0, arg1, Professor513000_Act20)
    local1[30] = REGIST_FUNC(arg0, arg1, Professor513000_Act30)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Professor513000_ActAfter_AdjustSpace, atkAfterOddsTbl), local2)
    return 
end

function Professor513000_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, -1)
    arg0:SetTimer(0, 45)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Professor513000_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, DIST_None, 0, -1)
    arg0:SetTimer(1, 45)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Professor513000_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_None, 0, -1)
    arg0:SetTimer(2, 45)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Professor513000_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, DIST_None, 0, -1)
    arg0:SetTimer(3, 45)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Professor513000_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_None, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_None, 0)
    arg0:SetNumber(0, 1)
    arg0:SetTimer(2, 45)
    arg0:SetTimer(3, 45)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Professor513000_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_None, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_None, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_None, 0)
    arg0:SetTimer(0, 45)
    arg0:SetTimer(1, 45)
    arg0:SetTimer(2, 45)
    arg0:SetTimer(3, 45)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Professor513000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Professor513000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_EVENT, DIST_None, 0, -1)
    arg0:SetTimer(4, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Professor513000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Professor513000_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Professor513000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_None, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Professor513000_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Professor513000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Professor513000_ActAfter_RealTime(arg0, arg1, arg2)
    return 
end

function Professor513000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Professor513000Battle_Terminate(arg0, arg1)
    return 
end

function Professor513000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetNumber(7)
    if arg0:IsInterupt(INTERUPT_Damaged) then
        if local0 == 0 then
            local0 = 8
        end
        arg0:SetNumber(7, local0 * 2)
    end
    if 100 <= local0 then
        arg0:SetNumber(7, 100)
    end
    if arg0:IsInterupt(INTERUPT_Damaged) then
        if arg0:GetRandam_Int(1, 100) <= arg0:GetNumber(7) then
            arg0:SetNumber(7, 0)
            arg1:ClearSubGoal()
            Professor513000Battle_Activate(arg0, arg1)
            return true
        else
            return false
        end
    else
        return false
    end
end

return 
