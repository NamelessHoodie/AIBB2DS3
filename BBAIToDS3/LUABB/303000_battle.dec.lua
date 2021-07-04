local local0 = 0.3
local local1 = 1.8 - local0
local local2 = 1.8 - local0
local local3 = 2.9 - local0
local local4 = 1.8 - local0
local local5 = 2.5 - local0
local local6 = 2.5 - local0
local local7 = 1.8 - local0
local local8 = 2.3 - local0
local local9 = 2.5 - local0
local local10 = 5.9 - local0
local local11 = 4 - local0
local local12 = 1.8 - local0
local local13 = 1.8 - local0
local local14 = 1.8 - local0
function OnIf_303000(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_Madman_Sickle303000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DungeonResident_Madman_Sickle303000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    local local7 = 1
    local local8 = 1
    if arg0:IsFinishTimer(0) == false then
        local7 = 0
    else
        local7 = 1
    end
    if arg0:IsFinishTimer(1) == false then
        local8 = 0
    else
        local8 = 1
    end
    if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local3 <= 0.5 then
        local0[13] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 165) then
        local0[10] = 100
    elseif 9 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 5
        local0[4] = 15
        local0[5] = 15
        local0[6] = 0 * local7
        local0[7] = 10
        local0[9] = 20
        local0[11] = 35 * local8
        local0[12] = 0
    elseif 6 <= local3 then
        local0[1] = 0
        local0[2] = 5
        local0[3] = 5
        local0[4] = 10
        local0[5] = 5
        local0[6] = 5 * local7
        local0[7] = 5
        local0[9] = 30
        local0[11] = 25 * local8
        local0[12] = 10
    elseif 3.4 <= local3 then
        local0[1] = 15
        local0[2] = 10
        local0[3] = 0
        local0[4] = 10
        local0[5] = 0
        local0[6] = 5 * local7
        local0[7] = 0
        local0[9] = 15
        local0[11] = 0 * local8
        local0[12] = 10
        local0[13] = 35
    elseif 1.5 <= local3 then
        local0[1] = 5
        local0[2] = 15
        local0[3] = 5
        local0[4] = 0
        local0[5] = 0
        local0[6] = 15 * local7
        local0[7] = 15
        local0[9] = 0
        local0[11] = 0 * local8
        local0[12] = 15
        local0[13] = 30
    else
        local0[1] = 0
        local0[2] = 25
        local0[3] = 5
        local0[4] = 0
        local0[5] = 0
        local0[6] = 15 * local7
        local0[7] = 25
        local0[9] = 0
        local0[11] = 0 * local8
        local0[12] = 15
        local0[13] = 15
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Sickle303000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Sickle303000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Sickle303000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Sickle303000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Sickle303000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Sickle303000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Sickle303000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Sickle303000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Sickle303000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Sickle303000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Sickle303000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Sickle303000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Sickle303000_Act13)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Sickle303000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.4 - local0
local0 = local3
local0 = 3.4 - local0
function DungeonResident_Madman_Sickle303000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 5
    local local2 = UPVAL1 + 5
    local local3 = UPVAL2
    local local4 = UPVAL0 + 0.5
    if local4 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local4, UPVAL0 + 0.5, 0, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5732) == true then
        if local0 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, local1, 0, 360)
        elseif local0 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, local1, 0, 360)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, local1, 0, 360)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local2, 0, 360)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0)
        end
    elseif local0 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 360)
    elseif local0 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 360)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 360)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0, 360)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.1 - local0
local0 = 3.7 - local0
function DungeonResident_Madman_Sickle303000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 5, 0, 360)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, UPVAL1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
function DungeonResident_Madman_Sickle303000_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0 + 0.5
    local local2 = UPVAL0 + 1.5
    if arg0:GetRandam_Int(1, 100) <= 70 then
        local1 = 999
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5732) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
function DungeonResident_Madman_Sickle303000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 2
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL0 + 1, 0, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5732) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 7.3 - local0
function DungeonResident_Madman_Sickle303000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 2
    local local2 = UPVAL0 + 0.5
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL0 + 1.5, 0, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5732) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.5 - local0
local0 = 3.3 - local0
function DungeonResident_Madman_Sickle303000_Act06(arg0, arg1, arg2)
    local local0 = UPVAL0 + 0.5
    local local1 = UPVAL0 + 1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 2, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, UPVAL1, 0)
    end
    arg0:SetTimer(0, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.4 - local0
function DungeonResident_Madman_Sickle303000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DungeonResident_Madman_Sickle303000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(2, 6)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    local local1 = 1
    for local2 = arg0:GetRandam_Int(1, 3) - local1, 3, local1 do
        local local3 = 0
        local local4 = AI_DIR_TYPE_L
        if arg0:GetRandam_Int(1, 100) <= 50 then
            local3 = 702
            local4 = AI_DIR_TYPE_L
        else
            local3 = 703
            local4 = AI_DIR_TYPE_R
        end
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local3, TARGET_ENE_0, 0, local4, 4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
function DungeonResident_Madman_Sickle303000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 10
    local local2 = UPVAL0 + 10
    local local3 = 999
    local local4 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(1, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(45, 60), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Madman_Sickle303000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(0.5, 1.5)
    local local3 = 0
    local local4 = AI_DIR_TYPE_L
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local3
local0 = local2
function DungeonResident_Madman_Sickle303000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 5
    local local3 = UPVAL0 + 3
    local local4 = 0
    local local5 = 5.5
    arg0:SetTimer(1, 5)
    if UPVAL0 + 0.5 + local5 - 1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local5, local5, 0, 3)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5.5)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5.5)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5732) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, AttDist0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, AttDist0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local3
local0 = local2
function DungeonResident_Madman_Sickle303000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 3, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
function DungeonResident_Madman_Sickle303000_Act13(arg0, arg1, arg2)
    local local0 = UPVAL0 + 2
    local local1 = UPVAL0 + 3
    local local2 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
    end
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL0 + 1 and arg0:GetRandam_Int(1, 100) <= 60 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5732) == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, local0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local0, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Madman_Sickle303000_ActStep(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 4
    local local2 = 4
    local local3 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, local1, 5)
    local local4 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, local2, 5)
    if local3 and local4 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local2)
        end
    elseif local3 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, local1)
    elseif local4 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Madman_Sickle303000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_Madman_Sickle303000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(1, 3.5)
    local local4 = arg0:GetRandam_Float(2, 4)
    if local0 <= 1.5 then
        if local1 <= 60 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
                end
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 2.5 then
        if local1 <= 40 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
        elseif local1 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif local0 <= 4.5 then
        if local1 <= 40 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
        elseif local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif local0 <= 6.5 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 4.5, TARGET_SELF, true, -1)
        end
    elseif local0 <= 10 then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 6.5, TARGET_SELF, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    return 
end

function DungeonResident_Madman_Sickle303000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Madman_Sickle303000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local8
function DungeonResident_Madman_Sickle303000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if FindAttack_Step(arg0, arg1, 3, 15, 20, 40, 40) then
        return true
    elseif Damaged_Step(arg0, arg1, 3, 30, 80, 10, 10, 5) then
        return true
    end
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetDist(TARGET_ENE_0)
    local local8 = Shoot_2dist(arg0, arg1, 6, 20, 50, 80)
    if local8 == 1 then
        if local6 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local8 == 2 then
        local local9 = UPVAL0 + 1
        local local10 = UPVAL0
        local local11 = 0
        local local12 = 0
        if local6 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            Approach_Act(arg0, arg1, local10, local11, local12)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local9, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            Approach_Act(arg0, arg1, local10, local11, local12)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local9, 0, -1)
        end
        return true
    end
    return false
end

return 
