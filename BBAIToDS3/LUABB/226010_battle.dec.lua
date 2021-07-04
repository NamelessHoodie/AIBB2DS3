local local0 = 0.5
local local1 = 0.5 - local0
local local2 = 0.5 - local0
local local3 = 0.5 - local0
local local4 = 0.5 - local0
local local5 = 0.5 - local0
local local6 = 2 - local0
local local7 = 0.5 - local0
local local8 = 0.5 - local0
local local9 = 3.7 - local0
local local10 = 0.5 - local0
local local11 = 0.5 - local0
local local12 = 0.5 - local0
function OnIf_226010(arg0, arg1, arg2)
    if arg2 == 0 then
        WarderB_Orb226010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function WarderB_Orb226010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[19] = 100
    elseif arg0:GetNumber(0) == 1 or arg0:GetNumber(0) == 2 then
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 441) then
            local0[2] = 100
        else
            local0[11] = 100
        end
    elseif 7 <= local3 then
        local0[1] = 10
        local0[2] = 50
        local0[3] = 0
        local0[4] = 20
        local0[5] = 0
        local0[6] = 30
        local0[7] = 50
        local0[11] = 20
    elseif 4 <= local3 then
        local0[1] = 20
        local0[2] = 35
        local0[3] = 0
        local0[4] = 15
        local0[5] = 0
        local0[6] = 10
        local0[7] = 10
        local0[11] = 10
    elseif 2 <= local3 then
        local0[1] = 25
        local0[2] = 10
        local0[3] = 10
        local0[4] = 25
        local0[5] = 30
        local0[6] = 0
        local0[7] = 0
    else
        local0[1] = 10
        local0[2] = 25
        local0[3] = 20
        local0[4] = 5
        local0[5] = 40
        local0[6] = 0
        local0[7] = 0
    end
    local0[6] = 0
    local0[7] = 0
    local1[1] = REGIST_FUNC(arg0, arg1, WarderB_Orb226010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, WarderB_Orb226010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, WarderB_Orb226010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, WarderB_Orb226010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, WarderB_Orb226010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, WarderB_Orb226010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, WarderB_Orb226010_Act07)
    local1[11] = REGIST_FUNC(arg0, arg1, WarderB_Orb226010_Act11)
    local1[19] = REGIST_FUNC(arg0, arg1, WarderB_Orb226010_Act19)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, WarderB_Orb226010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 4.2 - local0
local0 = 3.8 - local0
local0 = 4.2 - local0
function WarderB_Orb226010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL1 + 1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL2 + 1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.9 - local0
local0 = 3.9 - local0
local0 = 7.5 - local0
function WarderB_Orb226010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0
    local local4 = 0
    arg0:SetNumber(0, 0)
    if UPVAL1 <= local0 then
        local3 = UPVAL2
        local2 = UPVAL2
        local4 = 0
    end
    if local3 <= local0 then
        Approach_Act(arg0, arg1, local3, local4, 0, 3)
    end
    if UPVAL1 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
function WarderB_Orb226010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
function WarderB_Orb226010_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 20 - local0
function WarderB_Orb226010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 20 - local0
function WarderB_Orb226010_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    arg0:SetNumber(0, 1)
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 20 - local0
function WarderB_Orb226010_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WarderB_Orb226010_Act11(arg0, arg1, arg2)
    if arg0:GetNumber(0) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        arg0:SetNumber(0, 2)
    elseif arg0:GetNumber(0) == 2 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        arg0:SetNumber(0, 0)
    elseif 4 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 2), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 2), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
function WarderB_Orb226010_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = arg0:GetRandam_Float(2.5, 3.5)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        if local0 <= 4 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif local0 <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderB_Orb226010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

local0 = local6
function WarderB_Orb226010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(2.5, 3.5)
    local local3 = arg0:GetRandam_Float(1.5, 2.5)
    local local4 = UPVAL0 + 1
    if local0 <= 3 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        end
    elseif local0 <= 7 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            if local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local2, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local1 <= 35 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local1 <= 35 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local2, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    end
    return 
end

function WarderB_Orb226010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function WarderB_Orb226010Battle_Terminate(arg0, arg1)
    return 
end

function WarderB_Orb226010Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        if arg0:IsInterupt(INTERUPT_Damaged) and arg0:GetDist(TARGET_ENE_0) <= 3 and arg0:GetRandam_Int(1, 100) <= 20 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
            return true
        elseif FindAttack_Step(arg0, arg1, 3, 20, 100, 0, 0, 3.5) then
            return true
        else
            return false
        end
    end
end

return 
