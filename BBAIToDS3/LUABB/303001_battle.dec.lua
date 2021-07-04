local local0 = 0.3
local local1 = 2.5 - local0
local local2 = 2.5 - local0
local local3 = 1.5 - local0
local local4 = 2.5 - local0
local local5 = 4.5 - local0
local local6 = 2 - local0
local local7 = 1.5 - local0
function OnIf_303001(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_Madman_BrokenSword303001_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DungeonResident_Madman_BrokenSword303001Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 3)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[10] = 100
    elseif 8 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 5
        local0[4] = 30
        local0[5] = 30
        local0[6] = 5
        local0[7] = 0
        local0[8] = 30
    elseif 5 <= local3 then
        local0[1] = 5
        local0[2] = 5
        local0[3] = 5
        local0[4] = 25
        local0[5] = 25
        local0[6] = 5
        local0[7] = 5
        local0[8] = 25
    elseif 3 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 10
        local0[4] = 25
        local0[5] = 0
        local0[6] = 10
        local0[7] = 5
        local0[8] = 30
    elseif 1.5 <= local3 then
        local0[1] = 25
        local0[2] = 10
        local0[3] = 25
        local0[4] = 0
        local0[5] = 0
        local0[6] = 15
        local0[7] = 25
    else
        local0[1] = 25
        local0[2] = 0
        local0[3] = 30
        local0[4] = 0
        local0[5] = 0
        local0[6] = 15
        local0[7] = 30
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_BrokenSword303001_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_BrokenSword303001_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_BrokenSword303001_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_BrokenSword303001_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_BrokenSword303001_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_BrokenSword303001_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_BrokenSword303001_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_BrokenSword303001_Act08)
    local1[10] = REGIST_FUNC(arg0, arg1, DungeonResident_Madman_BrokenSword303001_Act10)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Madman_BrokenSword303001_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 5.2 - local0
local0 = 6 - local0
local0 = 5.6 - local0
local0 = 2.5 - local0
function DungeonResident_Madman_BrokenSword303001_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0.5
    local local3 = UPVAL1 + 0.5
    local local4 = UPVAL2 + 0.5
    local local5 = UPVAL0
    local local6 = 999
    if local1 <= 40 and 5 <= local0 then
        local5 = local0 - 1
        local2 = DIST_None
        local3 = DIST_None
        local4 = DIST_None
    elseif local1 <= 80 then
        local5 = UPVAL0
    else
        local5 = UPVAL3
        local6 = 0
    end
    if local5 <= local0 then
        Approach_Act(arg0, arg1, local5, local6, 0, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5733) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local4, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local4, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.8 - local0
local0 = 3.2 - local0
local0 = 2.5 - local0
function DungeonResident_Madman_BrokenSword303001_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 5
    local local3 = UPVAL1 + 5
    local local4 = UPVAL0
    local local5 = 999
    if local1 <= 40 and 5 <= local0 then
        local4 = local0 - 1
        local2 = DIST_None
        local3 = DIST_None
    elseif local1 <= 80 then
        local4 = UPVAL0
    else
        local4 = UPVAL2
        local5 = 0
    end
    if local4 <= local0 then
        Approach_Act(arg0, arg1, local4, local5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
local0 = 1.5 - local0
function DungeonResident_Madman_BrokenSword303001_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0.5
    local local3 = UPVAL0
    local local4 = 999
    if local1 <= 40 and 5 <= local0 then
        local3 = local0 - 1
        local2 = DIST_None
    elseif local1 <= 80 then
        local3 = UPVAL0
    else
        local3 = UPVAL1
        local4 = 0
    end
    if local3 <= local0 then
        Approach_Act(arg0, arg1, local3, local4, 0, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5733) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.1 - local0
local0 = 4 - local0
function DungeonResident_Madman_BrokenSword303001_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0.5
    local local3 = UPVAL0
    local local4 = 999
    if local1 <= 40 and 5 <= local0 then
        local3 = local0 - 1
        local2 = DIST_None
    elseif local1 <= 80 then
        local3 = UPVAL0
    else
        local3 = UPVAL1
        local4 = 0
    end
    if local3 <= local0 then
        Approach_Act(arg0, arg1, local3, local4, 0, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5733) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8 - local0
function DungeonResident_Madman_BrokenSword303001_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0.5
    local local3 = UPVAL0
    local local4 = 999
    if local1 <= 40 and 5 <= local0 then
        local3 = local0 - 1
        local2 = DIST_None
    elseif local1 <= 80 then
        local3 = UPVAL0
    else
        local3 = UPVAL0 - 1
        local4 = 0
    end
    if local3 <= local0 then
        Approach_Act(arg0, arg1, local3, local4, 0, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5733) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.5 - local0
local0 = 3.3 - local0
function DungeonResident_Madman_BrokenSword303001_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0.5
    local local3 = UPVAL1 + 0.5
    local local4 = UPVAL0
    local local5 = 999
    if local1 <= 40 and 5 <= local0 then
        local4 = local0 - 1
        local2 = DIST_None
        local3 = DIST_None
    elseif local1 <= 80 then
        local4 = UPVAL0
    else
        local4 = UPVAL0 - 1
        local5 = 0
    end
    if local4 <= local0 then
        Approach_Act(arg0, arg1, local4, local5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2 - local0
local0 = 2 - local0
function DungeonResident_Madman_BrokenSword303001_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0.5
    local local3 = UPVAL0
    local local4 = 999
    if local1 <= 40 and 5 <= local0 then
        local3 = local0 - 1
        local2 = DIST_None
    elseif local1 <= 80 then
        local3 = UPVAL0
    else
        local3 = UPVAL1
        local4 = 0
    end
    if local3 <= local0 then
        Approach_Act(arg0, arg1, local3, local4, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DungeonResident_Madman_BrokenSword303001_Act08(arg0, arg1, arg2)
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

function DungeonResident_Madman_BrokenSword303001_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(0.5, 1.5)
    local local3 = 0
    local local4 = AI_DIR_TYPE_L
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Madman_BrokenSword303001_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_Madman_BrokenSword303001_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(1.5, 2.5)
    local local3 = arg0:GetRandam_Float(0.5, 1)
    if local0 <= 3 then
        if local1 <= 85 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    elseif local0 <= 6 then
        if local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.5, 2.5), TARGET_NONE, 0, 0, 0)
    end
    return 
end

function DungeonResident_Madman_BrokenSword303001Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Madman_BrokenSword303001Battle_Terminate(arg0, arg1)
    return 
end

local0 = local4
function DungeonResident_Madman_BrokenSword303001Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if Damaged_Step(arg0, arg1, 3, 40, 100, 0, 0, 4) then
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
    if arg0:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg0:IsInsideObserve(0) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(0)
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            end
            return true
        end
        arg0:Replaning()
    else
        return false
    end
end

return 
