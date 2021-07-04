local local0 = 0.6
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 0 - local0
local local4 = 3.6 - local0
local local5 = 0 - local0
local local6 = 3 - local0
local local7 = 0 - local0
local local8 = 0 - local0
local local9 = 0 - local0
local local10 = 2.8 - local0
local local11 = 0 - local0
local local12 = 0
function OnIf_281020(arg0, arg1, arg2)
    if arg2 == 0 then
        BigBurnedWarrior_Axe281020_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local12
function BigBurnedWarrior_Axe281020Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 4671) then
        local local5 = 1
        SETUPVAL 7 0 0
    else
        local local5 = 0
        SETUPVAL 7 0 0
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        if local4 <= 50 then
            local0[20] = 100
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        if local4 <= 50 then
            local0[20] = 100
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif 6.5 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 0
        local0[4] = 0
        local0[5] = 40
        local0[6] = 40
        local0[7] = 0
        local0[8] = 0
    elseif 3 <= local3 then
        local0[1] = 40
        local0[2] = 30
        local0[3] = 10
        local0[4] = 10
        local0[5] = 0
        local0[6] = 0
        local0[7] = 10
        local0[8] = 0
    else
        local0[1] = 20
        local0[2] = 20
        local0[3] = 15
        local0[4] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 15
        local0[8] = 10
    end
    local1[1] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_Axe281020_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_Axe281020_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_Axe281020_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_Axe281020_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_Axe281020_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_Axe281020_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_Axe281020_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_Axe281020_Act08)
    local1[20] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_Axe281020_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, BigBurnedWarrior_Axe281020_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.4 - local0
local0 = local12
function BigBurnedWarrior_Axe281020_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0
    local local3 = 9999
    if UPVAL1 == 1 then
        local3 = 0
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local3, 0, 3)
    end
    if local0 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local1, 0, 120)
    elseif local0 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local1, 0, 120)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, AttDist1, 120)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local1, 0, 120)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, AttDist1, 120)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, AttDist2, 120)
    end
    GetWellSpace_Odds = 33
    return GetWellSpace_Odds
end

local0 = 3 - local0
local0 = local12
function BigBurnedWarrior_Axe281020_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0
    local local3 = 9999
    if UPVAL1 == 1 then
        local3 = 0
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local3, 0, 3)
    end
    if local0 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, local1, 0, 120)
    elseif local0 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, local1, 0, 120)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, AttDist1, 120)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, local1, 0, 120)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, AttDist1, 120)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, AttDist2, 120)
    end
    GetWellSpace_Odds = 67
    return GetWellSpace_Odds
end

local0 = local4
local0 = local12
function BigBurnedWarrior_Axe281020_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL0, 0, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
local0 = local12
function BigBurnedWarrior_Axe281020_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, UPVAL0, 0, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7 - local0
local0 = local12
function BigBurnedWarrior_Axe281020_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, UPVAL0, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 7 - local0
local0 = local12
function BigBurnedWarrior_Axe281020_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, UPVAL0, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
local0 = local12
function BigBurnedWarrior_Axe281020_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, UPVAL0, 0, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2 - local0
local0 = local4
local0 = local6
local0 = local10
local0 = local12
function BigBurnedWarrior_Axe281020_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if UPVAL4 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3015, TARGET_ENE_0, UPVAL0, -1, -1)
    if local0 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL1, 0, 120)
    elseif local0 <= 65 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3027, TARGET_ENE_0, UPVAL2, 0, 120)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3030, TARGET_ENE_0, UPVAL3, 0, 120)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigBurnedWarrior_Axe281020_Act20(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 50, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 50, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 50, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigBurnedWarrior_Axe281020_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 4)
    if local0 <= 3 then
        if local1 <= 33 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif local0 <= 6 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function BigBurnedWarrior_Axe281020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function BigBurnedWarrior_Axe281020Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function BigBurnedWarrior_Axe281020Battle_Terminate(arg0, arg1)
    return 
end

function BigBurnedWarrior_Axe281020Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    elseif Counter_Act(arg0, arg1, 4, 3035) then
        BigBurnedWarrior_Axe281020Battle_Activate(arg0, arg1)
        return true
    else
        return false
    end
end

return 
