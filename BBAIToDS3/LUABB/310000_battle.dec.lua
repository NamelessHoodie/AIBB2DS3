local local0 = 0.8
local local1 = 0.8 - local0
local local2 = 0.8 - local0
local local3 = 0.8 - local0
local local4 = 0.8 - local0
local local5 = 0.8 - local0
local local6 = 0.8 - local0
local local7 = 20 - local0
local local8 = 0.8 - local0
local local9 = 0.8 - local0
local local10 = 2.8 - local0
local local11 = 0.8 - local0
local local12 = 2.8 - local0
local local13 = 0.8 - local0
local local14 = 3 - local0
local local15 = 0.8 - local0
local local16 = 3 - local0
local local17 = 0.8 - local0
local local18 = 0.8 - local0
local local19 = 0.8 - local0
local local20 = 0.8 - local0
local local21 = 1
function OnIf_310000(arg0, arg1, arg2)
    if arg2 == 0 then
        Mimic310000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local21
function Mimic310000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetEventRequest()
    local local6 = 1
    local local7 = 1
    local local8 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5511) then
        local6 = 0
        local local9 = 0
        SETUPVAL 12 0 0
        local8 = 1
    else
        local6 = 1
        local local9 = 1
        SETUPVAL 12 0 0
        local8 = 0
    end
    if arg0:IsFinishTimer(1) == false then
        local7 = 0
    end
    if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        local0[20] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5623) then
        if 20 <= local4 then
            local0[10] = 100
        elseif arg0:GetRandam_Int(1, 100) <= 50 then
            local0[10] = 25
        else
            local0[11] = 75
        end
    elseif 6 <= local4 then
        local0[1] = 10 * local6
        local0[2] = 0 * local6
        local0[3] = 10
        local0[4] = 10
        local0[5] = 10
        local0[6] = 10
        local0[7] = 10 * local6 * local7
        local0[8] = 10 * local6 * local7
        local0[9] = 10
        local0[10] = 0
        local0[11] = 0
        local0[12] = 10 * local8
    elseif 4 <= local4 then
        local0[1] = 10 * local6
        local0[2] = 0 * local6
        local0[3] = 10
        local0[4] = 10
        local0[5] = 10
        local0[6] = 0
        local0[7] = 10 * local6 * local7
        local0[8] = 0 * local6 * local7
        local0[9] = 10
        local0[10] = 0
        local0[11] = 0
        local0[12] = 10 * local8
    elseif 1.4 <= local4 then
        local0[1] = 10 * local6
        local0[2] = 0 * local6
        local0[3] = 10
        local0[4] = 10
        local0[5] = 10
        local0[6] = 0
        local0[7] = 10 * local6 * local7
        local0[8] = 0 * local6 * local7
        local0[9] = 10
        local0[10] = 0
        local0[11] = 0
        local0[12] = 10 * local8
    else
        local0[1] = 0 * local6
        local0[2] = 10 * local6
        local0[3] = 10
        local0[4] = 10
        local0[5] = 10
        local0[6] = 0
        local0[7] = 10 * local6 * local7
        local0[8] = 0 * local6 * local7
        local0[9] = 10
        local0[10] = 0
        local0[11] = 0
        local0[12] = 10 * local8
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Mimic310000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Mimic310000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Mimic310000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Mimic310000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Mimic310000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Mimic310000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Mimic310000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Mimic310000_Act07)
    local1[9] = REGIST_FUNC(arg0, arg1, Mimic310000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Mimic310000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Mimic310000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, Mimic310000_Act12)
    local1[20] = REGIST_FUNC(arg0, arg1, Mimic310000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Mimic310000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.6 - local0
local0 = local21
function Mimic310000_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    local local2 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5511) then
        local0 = local0 - 0.8
    end
    if UPVAL1 == 0 then
        local2 = 9999
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local2, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.4 - local0
local0 = local21
function Mimic310000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = 0
    local local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5511) then
        local local4 = UPVAL0 - 0.8
    end
    if UPVAL1 == 0 then
        local2 = 9999
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
local0 = local21
function Mimic310000_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5511) then
        local0 = local0 - 0.8
    end
    if UPVAL1 == 0 then
        local1 = 9999
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
local0 = local21
function Mimic310000_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5511) then
        local0 = local0 - 0.8
    end
    if UPVAL1 == 0 then
        local1 = 9999
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
local0 = local21
function Mimic310000_Act05(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5511) then
        local0 = local0 - 0.8
    end
    if UPVAL1 == 0 then
        local1 = 9999
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.8 - local0
local0 = local21
function Mimic310000_Act06(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5511) then
        local0 = local0 - 0.8
    end
    if UPVAL1 == 0 then
        local1 = 9999
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
local0 = local21
function Mimic310000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5511) then
        local1 = local1 - 0.8
    end
    if UPVAL1 == 0 then
        local2 = 9999
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetTimer(1, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7 - local0
local0 = local21
function Mimic310000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5511) then
        local1 = local1 - 0.8
    end
    if UPVAL1 == 0 then
        local2 = 9999
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetTimer(1, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
local0 = local21
function Mimic310000_Act09(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 0
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5511) then
        local0 = local0 - 0.8
    end
    if UPVAL1 == 0 then
        local1 = 9999
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local7
local0 = local21
function Mimic310000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Float(2, 3)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5511) then
        local local5 = UPVAL0 - 0.8
    end
    if UPVAL1 == 0 then
        local2 = 9999
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, 0, 0, 0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5693) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 4), TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 2), TARGET_ENE_0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 20 - local0
local0 = local7
local0 = local21
function Mimic310000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    local local3 = 0
    local local4 = arg0:GetRandam_Float(2, 3)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5511) then
        local local5 = UPVAL0 - 0.8
    end
    if UPVAL2 == 0 then
        local2 = 9999
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL1, 0, 0, 0, 0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5693) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 4), TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 2), TARGET_ENE_0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Mimic310000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 2), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), false, true, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Mimic310000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Float(1, 2)
    local local4 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 4, 2)
    local local5 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 4, 2)
    local local6 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 4, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5693) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    elseif arg0:GetDist(TARGET_ENE_0) <= 2.5 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if local0 <= 30 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, AttDist, 0, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, AttDist, 0, 0)
                end
            elseif local6 == false and local4 == false then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), false, true, -1)
            elseif local6 == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        elseif local0 <= 30 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, AttDist, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, AttDist, 0, 0)
            end
        elseif local5 == false and local4 == false then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), false, true, -1)
        elseif local5 == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), false, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), false, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Mimic310000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Mimic310000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(0, 1)
    local local2 = arg0:GetRandam_Float(2, 3.5)
    local local3 = arg0:GetRandam_Float(2.5, 4)
    if arg0:GetDist(TARGET_ENE_0) <= 3.5 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local0 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local0 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function Mimic310000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Mimic310000Battle_Terminate(arg0, arg1)
    return 
end

function Mimic310000Battle_Interupt(arg0, arg1)
    return false
end

return 
