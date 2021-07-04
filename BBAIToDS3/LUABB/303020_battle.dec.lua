local local0 = 0.3
local local1 = 0.3 - local0
local local2 = 0.3 - local0
local local3 = 0.3 - local0
local local4 = 0.3 - local0
local local5 = 3.4 - local0
local local6 = 0.3 - local0
local local7 = 4.2 - local0
local local8 = 0.3 - local0
local local9 = 0.3 - local0
local local10 = 0.3 - local0
local local11 = 6.6 - local0
local local12 = 0.3 - local0
local local13 = 0.3 - local0
function OnIf_303020(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_Madman_TwoSickle303020_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local11
function DungeonResident_Madman_TwoSickle303020Battle_Activate(arg0, arg1)
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
    local local9 = 1
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
    if arg0:IsFinishTimer(2) == false then
        local9 = 0
    else
        local9 = 1
    end
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, UPVAL0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 165) then
        local0[10] = 100
    elseif 9 <= local3 then
        local0[1] = 10
        local0[2] = 0
        local0[3] = 10
        local0[4] = 35
        local0[5] = 25 * local9
        local0[6] = 10
        local0[7] = 0 * local7
        local0[11] = 10 * local8
    elseif 4.5 <= local3 then
        local0[1] = 20
        local0[2] = 0
        local0[3] = 0
        local0[4] = 15
        local0[5] = 40 * local9
        local0[6] = 15
        local0[7] = 10 * local7
        local0[11] = 0 * local8
    else
        local0[1] = 5
        local0[2] = 25
        local0[3] = 5
        local0[4] = 0
        local0[5] = 35 * local9
        local0[6] = 15
        local0[7] = 15 * local7
        local0[11] = 0 * local8
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_TwoSickle303020_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_TwoSickle303020_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_TwoSickle303020_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_TwoSickle303020_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_TwoSickle303020_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_TwoSickle303020_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_TwoSickle303020_Act07)
    local1[9] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_TwoSickle303020_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_TwoSickle303020_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_TwoSickle303020_Act11)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Madman_TwoSickle303020_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.4 - local0
local0 = 4.1 - local0
local0 = 4.1 - local0
function DungeonResident_Madman_TwoSickle303020_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 5
    local local2 = UPVAL1 + 5
    local local3 = UPVAL2 + 0.5
    local local4 = UPVAL0 - 1
    if local4 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local4, 0, 0, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5734) == true then
        if local0 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 360)
        elseif local0 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 360)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 360)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, local2, 0, 360)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local3, 0)
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

local0 = local5
local0 = local7
function DungeonResident_Madman_TwoSickle303020_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 5, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, UPVAL1 + 0.5, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.9 - local0
function DungeonResident_Madman_TwoSickle303020_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.3 - local0
function DungeonResident_Madman_TwoSickle303020_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local11
function DungeonResident_Madman_TwoSickle303020_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 2
    local local2 = UPVAL0 - 1
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5734) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local1, 0, 0)
    end
    arg0:SetTimer(2, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4 - local0
function DungeonResident_Madman_TwoSickle303020_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 0.5
    local local2 = UPVAL0 - 2
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5734) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, local1, 0, 0)
    end
    arg0:SetTimer(0, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.5 - local0
function DungeonResident_Madman_TwoSickle303020_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 1.3
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Madman_TwoSickle303020_Act09(arg0, arg1, arg2)
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

function DungeonResident_Madman_TwoSickle303020_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Madman_TwoSickle303020_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(1.5, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(45, 60), true, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(1.5, 2), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(45, 60), true, true, -1)
    arg0:SetTimer(1, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Madman_TwoSickle303020_ActStep(arg0, arg1)
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
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, AttDist, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Madman_TwoSickle303020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

function DungeonResident_Madman_TwoSickle303020_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(1, 2)
    local local4 = arg0:GetRandam_Float(2, 4)
    if local0 <= 1.5 then
        if local1 <= 15 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5.5)
        end
    elseif local0 <= 2.5 then
        if local1 <= 15 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5.5)
        elseif local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
        elseif local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif local0 <= 4 then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
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
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8, TARGET_SELF, true, -1)
    end
    return 
end

function DungeonResident_Madman_TwoSickle303020Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Madman_TwoSickle303020Battle_Terminate(arg0, arg1)
    return 
end

local0 = local5
local0 = local7
function DungeonResident_Madman_TwoSickle303020Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if Damaged_Act(arg0, arg1, 3, 30) then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, UPVAL1, 0)
        else
            DungeonResident_Madman_TwoSickle303020_Act03(arg0, arg1, paramTbl)
        end
        return true
    elseif arg0:IsInterupt(INTERUPT_Inside_ObserveArea) and local0 <= 40 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        if arg0:IsInsideObserve(0) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(0)
            DungeonResident_Madman_TwoSickle303020_Act05(arg0, arg1, paramTbl)
            return true
        end
        arg0:Replaning()
    else
        return false
    end
end

return 
