local local0 = 0.3
local local1 = 2 - local0
local local2 = 2 - local0
local local3 = 2 - local0
local local4 = 2 - local0
local local5 = 3.7 - local0
local local6 = 2 - local0
local local7 = 2 - local0
local local8 = 2 - local0
local local9 = 2 - local0
local local10 = 2 - local0
local local11 = 2 - local0
local local12 = 2 - local0
local local13 = 3.5 - local0
local local14 = 1.5 - local0
local local15 = 3.3 - local0
function OnIf_303010(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_Madman_Corpse303010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DungeonResident_Madman_Corpse303010Battle_Activate(arg0, arg1)
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
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[10] = 100
    elseif 8 <= local3 then
        local0[1] = 10
        local0[2] = 5
        local0[3] = 10
        local0[4] = 35
        local0[5] = 25
        local0[6] = 15
        local0[7] = 0
        local0[8] = 0 * local7
        local0[9] = 200 * local8
    elseif 6 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 0
        local0[4] = 35
        local0[5] = 35
        local0[6] = 10
        local0[7] = 0
        local0[8] = 0 * local7
        local0[9] = 200 * local8
    elseif 4.5 <= local3 then
        local0[1] = 40
        local0[2] = 15
        local0[3] = 15
        local0[4] = 0
        local0[5] = 0
        local0[6] = 20
        local0[7] = 10
        local0[8] = 0 * local7
        local0[9] = 200 * local8
    elseif 3 <= local3 then
        local0[1] = 40
        local0[2] = 15
        local0[3] = 10
        local0[4] = 0
        local0[5] = 0
        local0[6] = 20
        local0[7] = 15
        local0[8] = 0 * local7
        local0[9] = 0 * local8
    elseif 1.5 <= local3 then
        local0[1] = 30
        local0[2] = 15
        local0[3] = 10
        local0[4] = 0
        local0[5] = 0
        local0[6] = 20
        local0[7] = 15
        local0[8] = 10 * local7
        local0[9] = 0 * local8
    else
        local0[1] = 25
        local0[2] = 10
        local0[3] = 15
        local0[4] = 0
        local0[5] = 0
        local0[6] = 15
        local0[7] = 20
        local0[8] = 15 * local7
        local0[9] = 0 * local8
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Corpse303010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Corpse303010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Corpse303010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Corpse303010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Corpse303010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Corpse303010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Corpse303010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Corpse303010_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Corpse303010_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Corpse303010_Act10)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Madman_Corpse303010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 4 - local0
local0 = 4.3 - local0
local0 = 4.2 - local0
function DungeonResident_Madman_Corpse303010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 5
    local local2 = UPVAL2
    local local3 = UPVAL0 - 1
    if local3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local3, UPVAL0 - 1, 0, 3)
    end
    if local0 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 360)
    elseif local0 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 360)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 360)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL1 + 5, 0, 360)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local5
local0 = 4 - local0
function DungeonResident_Madman_Corpse303010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 - 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 5, 0, 360)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, UPVAL1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
function DungeonResident_Madman_Corpse303010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 0.8
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 - 0.8, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.5 - local0
function DungeonResident_Madman_Corpse303010_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 7.3 - local0
function DungeonResident_Madman_Corpse303010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
function DungeonResident_Madman_Corpse303010_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 0.5
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 - 0.5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
function DungeonResident_Madman_Corpse303010_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 0.5
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 - 0.5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
local0 = local15
function DungeonResident_Madman_Corpse303010_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 0.5
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 - 0.5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 0.5, 0, 360)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, UPVAL1 + 0.5, 0)
    arg0:SetTimer(0, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Madman_Corpse303010_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(1.5, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(45, 60), true, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(1.5, 2), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(45, 60), true, true, -1)
    arg0:SetTimer(1, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local13
local0 = local15
function DungeonResident_Madman_Corpse303010_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    local local3 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 3 then
        if arg0:IsFinishTimer(0) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 0.5, 0, 360)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, UPVAL1 + 0.5, 0)
            arg0:SetTimer(0, 10)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, AttDist, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Madman_Corpse303010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_Madman_Corpse303010_ActAfter_RealTime(arg0, arg1, arg2)
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

function DungeonResident_Madman_Corpse303010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Madman_Corpse303010Battle_Terminate(arg0, arg1)
    return 
end

local0 = local5
function DungeonResident_Madman_Corpse303010Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        local local4 = arg0:GetHpRate(TARGET_SELF)
        if Damaged_Act(arg0, arg1, UPVAL0, 65) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 0, 360)
            return true
        else
            return false
        end
    end
end

return 
