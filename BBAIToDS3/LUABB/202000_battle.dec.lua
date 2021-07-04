local local0 = 0.4
local local1 = 3 - local0
local local2 = 4 - local0
local local3 = 9.5 - local0
local local4 = 0.4 - local0
local local5 = 999 - local0
local local6 = 4.7 - local0
local local7 = 7.5 - local0
local local8 = 2.4 - local0
local local9 = 3.7 - local0
local local10 = 2.5 - local0
local local11 = 3.8 - local0
local local12 = 2.5 - local0
function OnIf_202000(arg0, arg1, arg2)
    if arg2 == 0 then
        Abductor_202000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Abductor_202000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetEventRequest(0)
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetRandam_Int(1, 100)
    local local8 = 0
    local local9 = 0
    if arg0:GetNumber(0) == 2 then
        arg0:SetNumber(1, 1)
    else
        arg0:SetNumber(1, 0)
    end
    if arg0:IsFinishTimer(0) == false then
        local8 = 0
    else
        local8 = 1
    end
    if arg0:IsFinishTimer(0) == false then
        local9 = 0
    else
        local9 = 1
    end
    if arg0:GetNumber(0) ~= 2 and arg0:HasSpecialEffectId(TARGET_SELF, 5606) == true then
        arg0:SetNumber(0, 2)
        arg1:ClearSubGoal()
        arg0:Replaning()
    end
    if arg0:GetNumber(0) == 1 then
        local0[37] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    elseif arg0:GetNumber(0) == 0 then
        if 8 <= local4 then
            local0[30] = 30
            local0[31] = 10
            local0[32] = 0
            local0[33] = 35 * local9
            local0[34] = 0
            local0[35] = 0 * local8
            local0[36] = 25 * local8
            local0[43] = 0
        elseif 4 <= local4 then
            local0[30] = 30
            local0[31] = 10
            local0[32] = 0
            local0[33] = 20 * local9
            local0[34] = 0
            local0[35] = 30 * local8
            local0[36] = 10 * local8
            local0[43] = 0
        elseif 2.5 <= local4 then
            local0[30] = 30
            local0[31] = 10
            local0[32] = 10
            local0[33] = 0 * local9
            local0[34] = 10
            local0[35] = 20 * local8
            local0[36] = 0 * local8
            local0[43] = 20
        else
            local0[30] = 20
            local0[31] = 15
            local0[32] = 15
            local0[33] = 0 * local9
            local0[34] = 10
            local0[35] = 10 * local8
            local0[36] = 0 * local8
            local0[43] = 30
        end
    elseif 8 <= local4 then
        local0[30] = 30
        local0[31] = 0
        local0[33] = 20
        local0[34] = 0
        local0[38] = 0
        local0[39] = 10
        local0[40] = 30
        local0[41] = 0
        local0[43] = 10
        local0[44] = 0
    elseif 4 <= local4 then
        local0[30] = 30
        local0[31] = 0
        local0[33] = 20
        local0[34] = 0
        local0[38] = 0
        local0[39] = 10
        local0[40] = 20
        local0[41] = 0
        local0[43] = 20
        local0[44] = 0
    elseif 2.5 <= local4 then
        local0[30] = 40
        local0[31] = 0
        local0[33] = 0
        local0[34] = 0
        local0[38] = 10
        local0[39] = 10
        local0[40] = 0
        local0[41] = 10
        local0[43] = 30
        local0[44] = 0
    else
        local0[30] = 20
        local0[31] = 0
        local0[33] = 0
        local0[34] = 10
        local0[38] = 10
        local0[39] = 0
        local0[40] = 0
        local0[41] = 10
        local0[43] = 40
        local0[44] = 10
    end
    local1[20] = REGIST_FUNC(arg0, arg1, Abductor_202000_Act20)
    local1[30] = REGIST_FUNC(arg0, arg1, Abductor_202000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Abductor_202000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, Abductor_202000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, Abductor_202000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, Abductor_202000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, Abductor_202000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, Abductor_202000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, Abductor_202000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, Abductor_202000_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, Abductor_202000_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, Abductor_202000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, Abductor_202000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, Abductor_202000_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, Abductor_202000_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, Abductor_202000_Act44)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Abductor_202000_ActAfter_AdjustSpace), local2)
    return 
end

function Abductor_202000_Act20(arg0, arg1, arg2)
    if arg0:GetNumber(1) == 0 or arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.2 - local0
local0 = 0.4 - local0
local0 = local1
local0 = local2
local0 = local7
local0 = local9
local0 = local12
function Abductor_202000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    local local6 = UPVAL2 + 1
    local local7 = UPVAL3 + 1
    local local8 = UPVAL4 + 1
    local local9 = 0
    if arg0:GetNumber(1) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, false, -1)
    end
    if arg0:GetNumber(0) == 2 then
        if local1 <= 10 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, 180)
            if local2 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local6, 0, 180)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local6, 0, 180)
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, local8, 0, 180)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local7, 0, 180)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, 180)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local6, 0, 180)
            if local2 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, local5, 0, 180)
            end
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, UPVAL5 + 1, 0, 180)
            if arg0:GetRandam_Int(1, 100) <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, UPVAL6 + 1, 0, 180)
            end
            if arg0:GetRandam_Int(1, 100) <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local6, 0, 180)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local6, 0, 180)
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, local8, 0, 180)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local7, 0, 180)
            end
        end
    elseif local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
    elseif local1 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local6, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local6, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local7, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local1
local0 = 0.4 - local0
function Abductor_202000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = 0
    if arg0:GetNumber(1) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
local0 = 0.4 - local0
function Abductor_202000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = 0
    if arg0:GetNumber(1) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local3
local0 = 5.4 - local0
function Abductor_202000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = 0
    if arg0:GetNumber(1) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(1, 15)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.4 - local0
local0 = 0.4 - local0
function Abductor_202000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = 0
    if arg0:GetNumber(1) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.6 - local0
local0 = 0.4 - local0
local0 = local3
function Abductor_202000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    local local6 = 0
    if arg0:GetNumber(1) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, false, -1)
    end
    if arg0:GetNumber(0) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local5, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local5, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, UPVAL2 + 1, 0, 180)
    end
    arg0:SetTimer(0, 20)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 18 - local0
local0 = 0.4 - local0
function Abductor_202000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = 0
    if arg0:GetNumber(1) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(0, 20)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Abductor_202000_Act37(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, DIST_None)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.9 - local0
local0 = 1 - local0
function Abductor_202000_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = 0
    if arg0:GetNumber(1) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
local0 = 0.4 - local0
local0 = local3
function Abductor_202000_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = 0
    if arg0:GetNumber(1) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local2, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local2, TARGET_SELF, false, -1)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local4, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, UPVAL2 + 1, 0, 180)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local7
local0 = 5.4 - local0
local0 = local2
function Abductor_202000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = 0
    if arg0:GetNumber(1) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local2, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local2, TARGET_SELF, false, -1)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local4, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL2 + 1, 0, 180)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
local0 = 0.4 - local0
local0 = local11
function Abductor_202000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = 0
    if arg0:GetNumber(1) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local2, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local2, TARGET_SELF, false, -1)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, local4, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, UPVAL2 + 1, 0, 180)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local11
local0 = 0.4 - local0
function Abductor_202000_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = 0
    if arg0:GetNumber(1) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
local0 = 0.4 - local0
local0 = local3
local0 = local6
local0 = local9
local0 = local11
function Abductor_202000_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = UPVAL3 + 1
    local local6 = UPVAL4 + 1
    local local7 = UPVAL5 + 1
    local local8 = 0
    if arg0:GetNumber(1) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local2, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local2, TARGET_SELF, false, -1)
    end
    if arg0:GetNumber(0) == 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, local4, 0, 180)
        if local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local6, 0, 180)
        end
        if arg0:GetRandam_Int(1, 100) <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local7, 0, 180)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, local7, 0, 180)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, local5, 0, 180)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, UPVAL2 + 1, 0, 180)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, local4, 0, -1)
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, local6, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, local5, 0, -1)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.5 - local0
local0 = 0.4 - local0
function Abductor_202000_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Abductor_202000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Abductor_202000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 3.5)
    local local4 = arg0:GetRandam_Float(2, 3)
    if arg0:GetNumber(0) == 0 then
        if local0 <= 1.8 then
            if local1 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
            elseif local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
            end
        elseif local0 <= 2.8 then
            if local1 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
            elseif local1 <= 90 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
            end
        elseif local0 <= 5 then
            if local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
            elseif local1 <= 75 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
            elseif local1 <= 90 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
            end
        elseif local0 <= 6.5 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
            elseif local1 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
            end
        elseif local0 <= 10 then
            if local1 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
            elseif local1 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 6.5, TARGET_SELF, true, -1)
            end
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8, TARGET_SELF, true, -1)
        end
    elseif local0 <= 1.8 and local1 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, Dist_None, 0, 0)
    end
    return 
end

function Abductor_202000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Abductor_202000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local7
local0 = local10
local0 = local6
function Abductor_202000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:GetHpRate(TARGET_SELF) <= 0.8 and arg0:GetNumber(0) == 0 then
        arg0:SetNumber(0, 1)
        arg1:ClearSubGoal()
        arg0:Replaning()
        return true
    end
    local local3 = 4
    if arg0:GetNumber(0) == 2 then
        local3 = 4
    else
        local3 = 0
    end
    if Counter_Act(arg0, arg1, local3, 3016) then
        if 5 <= arg0:GetDist(TARGET_ENE_0) then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, UPVAL0, 0, 180)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_None, 0, 180)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, DIST_None, 0, 180)
            end
        else
            local local4 = 15
            local local5 = 25
            local local6 = 5
            local local7 = 10
            local local8 = 5
            local local9 = 0
            local local10 = 20
            local local11 = 20
            if local1 <= 15 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, DIST_None, 0, 180)
            elseif local1 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, UPVAL1, 0, 180)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, DIST_None, 0, 180)
            elseif local1 <= 45 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, DIST_None, 0, 180)
            elseif local1 <= 55 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_None, 0, 180)
            elseif local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_None, 0, 180)
            elseif local1 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, UPVAL0, 0, 180)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_None, 0, 180)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, UPVAL2, 0, 180)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_None, 0, 180)
            end
        end
        return true
    else
        return false
    end
end

return 
