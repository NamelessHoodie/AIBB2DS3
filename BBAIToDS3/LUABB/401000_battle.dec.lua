local local0 = 0.7
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 6.6 - local0
local local4 = 0 - local0
local local5 = 0 - local0
local local6 = 0 - local0
local local7 = 0 - local0
local local8 = 0 - local0
local local9 = 0 - local0
local local10 = 0 - local0
local local11 = 0 - local0
local local12 = 0 - local0
local local13 = 0 - local0
local local14 = 0 - local0
local local15 = 0 - local0
local local16 = 6.8 - local0
local local17 = 0 - local0
function OnIf_401000(arg0, arg1, arg2)
    if arg2 == 0 then
        Executioner_Nightmare401000_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        Executioner_Nightmare401000_AddAttack(arg0, arg1)
    end
    return 
end

function Executioner_Nightmare401000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetDistY(TARGET_ENE_0)
    local local5 = arg0:GetEventRequest()
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = 0
    local local8 = 0
    local local9 = arg0:GetHpRate(TARGET_SELF)
    if arg0:GetNpcThinkParamID() == 401001 and arg0:GetNumber(4) == 0 then
        local0[2] = 100
    end
    if local9 < 0.67 and arg0:GetNumber(0) == 0 then
        local8 = 1
    end
    if local9 < 0.75 and arg0:IsFinishTimer(0) == true then
        local7 = 1
    end
    if arg0:GetEventRequest(2) == 100 and arg0:GetNumber(5) == 0 then
        local0[23] = 100
    elseif arg0:GetNpcThinkParamID() <= 401009 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 135) then
            local0[21] = 100
        elseif 13 <= local3 then
            local0[1] = 1000 * local8
            local0[2] = 20
            local0[3] = 10
            local0[4] = 40
            local0[5] = 40
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0 * local7
            local0[9] = 0 * local7
            local0[10] = 0
        elseif 11.2 <= local3 then
            local0[1] = 1000 * local8
            local0[2] = 20
            local0[3] = 10
            local0[4] = 40
            local0[5] = 40
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0 * local7
            local0[9] = 0 * local7
            local0[10] = 0
        elseif 4 <= local3 then
            local0[1] = 1000 * local8
            local0[2] = 20
            local0[3] = 10
            local0[4] = 40
            local0[5] = 40
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0 * local7
            local0[9] = 20 * local7
            local0[10] = 0
        elseif 2 <= local3 then
            local0[1] = 1000 * local8
            local0[2] = 20
            local0[3] = 10
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0 * local7
            local0[9] = 40 * local7
            local0[10] = 0
        else
            local0[1] = 1000 * local8
            local0[2] = 15
            local0[3] = 10
            local0[4] = 0
            local0[5] = 0
            local0[6] = 30
            local0[7] = 30
            local0[8] = 0 * local7
            local0[9] = 10 * local7
            local0[10] = 5
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 135) then
        local0[21] = 100
    elseif 28.4 <= local3 then
        if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
            local0[12] = 10
        else
            local0[22] = 10
        end
    elseif 19.6 <= local3 then
        local0[12] = 10
    elseif 5 <= local3 then
        local0[11] = 10
        local0[12] = 0
        local0[13] = 0
        local0[14] = 0
        local0[15] = 0
        local0[8] = 0 * local7
        local0[9] = 0 * local7
    else
        local0[11] = 0
        local0[12] = 0
        local0[13] = 25
        local0[14] = 10
        local0[15] = 10
        local0[8] = 0 * local7
        local0[9] = 60 * local7
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act15)
    local1[21] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Executioner_Nightmare401000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 9999 - local0
function Executioner_Nightmare401000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0 + 3
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, DIST_None, 0, -1)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local3
function Executioner_Nightmare401000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local2 + 3, 0, 3)
    end
    if local0 <= 33 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, local1, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, local1, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, local1, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, local1, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, local1, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, local1, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, local1, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1, 0)
        end
    elseif local0 <= 67 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, DIST_Middle, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, local1, 0)
    end
    arg0:SetNumber(4, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
function Executioner_Nightmare401000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0
    if local3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local3, local3 + 3, 0, 3)
    end
    if local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, AttDist1, 0, 0)
    elseif local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3022, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 10
    return GetWellSpace_Odds
end

local0 = 11.2 - local0
function Executioner_Nightmare401000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

local0 = 13 - local0
function Executioner_Nightmare401000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

local0 = 3 - local0
function Executioner_Nightmare401000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.4 - local0
function Executioner_Nightmare401000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 10 - local0
function Executioner_Nightmare401000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(0, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.2 - local0
function Executioner_Nightmare401000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(0, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.6 - local0
function Executioner_Nightmare401000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 19.6 - local0
function Executioner_Nightmare401000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) and local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        GetWellSpace_Odds = 30
    else
        GetWellSpace_Odds = 0
    end
    return GetWellSpace_Odds
end

local0 = 28.4 - local0
function Executioner_Nightmare401000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 17
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) and local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 18, 0, -1)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        GetWellSpace_Odds = 30
    else
        GetWellSpace_Odds = 0
    end
    return GetWellSpace_Odds
end

local0 = 8 - local0
function Executioner_Nightmare401000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) and local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 0
    end
    return GetWellSpace_Odds
end

local0 = local16
function Executioner_Nightmare401000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local2 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3035, TARGET_ENE_0, local1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, local1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, local1, 0)
    GetWellSpace_Odds = 10
    return GetWellSpace_Odds
end

local0 = 5.6 - local0
function Executioner_Nightmare401000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

local0 = local3
local0 = local16
function Executioner_Nightmare401000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL1 + 1
    local local3 = UPVAL1
    if arg0:GetNpcThinkParamID() <= 401009 then
        if local0 <= local1 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
                Executioner_Nightmare401000_Act10(arg0, arg1, arg2)
            else
                Executioner_Nightmare401000_Act02(arg0, arg1, arg2)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
        end
    elseif local0 <= local1 then
        Executioner_Nightmare401000_Act14(arg0, arg1, arg2)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Executioner_Nightmare401000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Executioner_Nightmare401000_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 0, TARGET_SELF, Walk, Guard)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Executioner_Nightmare401000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Executioner_Nightmare401000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(2.5, 3.5)
    if local0 <= 3 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif local0 <= 6 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function Executioner_Nightmare401000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Executioner_Nightmare401000Battle_Terminate(arg0, arg1)
    return 
end

function Executioner_Nightmare401000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        local local4 = arg0:GetDistY(TARGET_ENE_0)
        return false
    end
end

return 
