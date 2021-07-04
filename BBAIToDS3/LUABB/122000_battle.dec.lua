local local0 = 0.7
local local1 = 1.6 - local0
local local2 = 1.6 - local0
local local3 = 3.6 - local0
local local4 = 1.6 - local0
local local5 = 3.5 - local0
local local6 = 1.6 - local0
local local7 = 4.1 - local0
local local8 = 1.6 - local0
local local9 = 4 - local0
local local10 = 1.6 - local0
local local11 = 1.6 - local0
local local12 = 4.2 - local0
local local13 = 1.6 - local0
local local14 = 1.6 - local0
local local15 = 1.6 - local0
local local16 = 1.6 - local0
local local17 = 6 - local0
local local18 = 1.6 - local0
local local19 = 1.6 - local0
local local20 = 4.9 - local0
local local21 = 5.5
function LarvaMegabat122000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif 8 <= local4 then
        local0[1] = 5
        local0[2] = 0
        local0[3] = 5
        local0[4] = 15
        local0[5] = 40
        local0[6] = 15
        local0[7] = 0
        local0[8] = 20
        local0[9] = 0
    elseif 6 <= local4 then
        if arg0:IsTargetGuard(TARGET_ENE_0) == true then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 5
            local0[4] = 25
            local0[5] = 5
            local0[6] = 15
            local0[7] = 0
            local0[8] = 25
            local0[9] = 5
        else
            local0[1] = 15
            local0[2] = 10
            local0[3] = 15
            local0[4] = 25
            local0[5] = 5
            local0[6] = 20
            local0[7] = 0
            local0[8] = 5
            local0[9] = 5
        end
    elseif arg0:IsTargetGuard(TARGET_ENE_0) == true then
        local0[1] = 15
        local0[2] = 15
        local0[3] = 5
        local0[4] = 5
        local0[5] = 0
        local0[6] = 15
        local0[7] = 25
        local0[8] = 0
        local0[9] = 20
    else
        local0[1] = 25
        local0[2] = 15
        local0[3] = 15
        local0[4] = 5
        local0[5] = 0
        local0[6] = 15
        local0[7] = 5
        local0[8] = 0
        local0[9] = 20
    end
    local1[1] = REGIST_FUNC(arg0, arg1, LarvaMegabat122000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, LarvaMegabat122000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, LarvaMegabat122000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, LarvaMegabat122000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, LarvaMegabat122000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, LarvaMegabat122000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, LarvaMegabat122000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, LarvaMegabat122000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, LarvaMegabat122000_Act09)
    local1[20] = REGIST_FUNC(arg0, arg1, LarvaMegabat122000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, LarvaMegabat122000_ActAfter_AdjustSpace, atkAfterOddsTbl), local2)
    return 
end

local0 = 3.8 - local0
function LarvaMegabat122000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL0 + 1
    Approach_Act(arg0, arg1, local3, UPVAL0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
    if local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    elseif local1 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local9
function LarvaMegabat122000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, local2, UPVAL0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4 - local0
function LarvaMegabat122000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, local1, UPVAL0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local1, 0, -1)
    if arg0:GetRandam_Int(1, 100) <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.5 - local0
local0 = local21
function LarvaMegabat122000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, local1, UPVAL0, 0)
    if arg0:GetDist(TARGET_ENE_0) <= 2 and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL1, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, UPVAL1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 999 - local0
function LarvaMegabat122000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, local2, UPVAL0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, local2, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.3 - local0
local0 = local21
function LarvaMegabat122000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, local1, UPVAL0, 0)
    if arg0:GetDist(TARGET_ENE_0) <= 2 and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL1, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, UPVAL1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.4 - local0
function LarvaMegabat122000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, local2, UPVAL0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local2, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.9 - local0
function LarvaMegabat122000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, local2, UPVAL0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, local2, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
function LarvaMegabat122000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, local1, UPVAL0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, local1, 0, -1)
    if arg0:GetRandam_Int(1, 100) <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local21
function LarvaMegabat122000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 3 then
        if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 5) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, UPVAL0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local21
function LarvaMegabat122000_Act30(arg0, arg1)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, UPVAL0, 5) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, UPVAL0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, UPVAL0)
        end
    elseif arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, UPVAL0, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, UPVAL0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, UPVAL0)
    end
    return true
end

local0 = local21
function LarvaMegabat122000_Act31(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) == false then
        if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 5) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, UPVAL0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, AppDist, 0, -1)
    return true
end

local0 = local21
function LarvaMegabat122000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    if local0 <= 0 then
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, UPVAL0)
        elseif local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, UPVAL0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, UPVAL0)
        end
    elseif local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 3), TARGET_ENE_0, arg0:GetRandam_Float(1, 3.4), TARGET_ENE_0, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function LarvaMegabat122000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function LarvaMegabat122000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local9
function LarvaMegabat122000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    if Damaged_Act(arg0, arg1, UPVAL0, 40) then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            return LarvaMegabat122000_Act08(arg0, arg1)
        else
            return LarvaMegabat122000_Act31(arg0, arg1)
        end
    else
        local local3 = Shoot_2dist(arg0, arg1, 5, 20, 20, 40)
        if local3 == 1 or local3 == 2 then
            arg1:ClearSubGoal()
            return LarvaMegabat122000_Act30(arg0, arg1)
        else
            return false
        end
    end
end

return 
