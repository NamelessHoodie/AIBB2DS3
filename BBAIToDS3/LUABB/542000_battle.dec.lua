local local0 = 4
local local1 = 16 - local0
local local2 = 18.5 - local0
local local3 = 4 - local0
local local4 = 4 - local0
local local5 = 17.5 - local0
local local6 = 4 - local0
local local7 = 4 - local0
local local8 = 16 - local0
local local9 = 4.5 - local0
local local10 = 10 - local0
local local11 = 4 - local0
local local12 = 19 - local0
local local13 = 4 - local0
local local14 = 12 - local0
local local15 = 4 - local0
local local16 = 12 - local0
local local17 = 8 - local0
local local18 = 4 - local0
function OnIf_542000(arg0, arg1, arg2)
    if arg2 == 0 then
        InheritTheNightmare_LastForm542000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function InheritTheNightmare_LastForm542000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetEventRequest(1)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[19] = 100
    elseif 0.5 <= arg0:GetHpRate(TARGET_SELF) then
        if 15 <= local3 then
            local0[2] = 45
            local0[5] = 10
            local0[6] = 45
        elseif 10 <= local3 then
            local0[2] = 10
            local0[3] = 25
            local0[4] = 25
            local0[5] = 30
            local0[6] = 10
        elseif 5 <= local3 then
            local0[3] = 50
            local0[4] = 0
            local0[5] = 30
        else
            local0[3] = 20
            local0[4] = 45
            local0[5] = 35
        end
    elseif 15 <= local3 then
        local0[1] = 65
        local0[2] = 15
        local0[5] = 5
        local0[6] = 15
    elseif 10 <= local3 then
        local0[1] = 15
        local0[2] = 5
        local0[3] = 10
        local0[4] = 10
        local0[5] = 15
        local0[6] = 5
        local0[7] = 40
    elseif 5 <= local3 then
        local0[3] = 15
        local0[4] = 0
        local0[5] = 35
        local0[7] = 20
        local0[8] = 30
    else
        local0[3] = 20
        local0[4] = 20
        local0[5] = 25
        local0[8] = 35
    end
    local1[1] = REGIST_FUNC(arg0, arg1, InheritTheNightmare_LastForm542000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, InheritTheNightmare_LastForm542000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, InheritTheNightmare_LastForm542000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, InheritTheNightmare_LastForm542000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, InheritTheNightmare_LastForm542000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, InheritTheNightmare_LastForm542000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, InheritTheNightmare_LastForm542000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, InheritTheNightmare_LastForm542000_Act08)
    local1[19] = REGIST_FUNC(arg0, arg1, InheritTheNightmare_LastForm542000_Act19)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, InheritTheNightmare_LastForm542000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 29.5 - local0
function InheritTheNightmare_LastForm542000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 32.5 - local0
function InheritTheNightmare_LastForm542000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 19 - local0
function InheritTheNightmare_LastForm542000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 16 - local0
function InheritTheNightmare_LastForm542000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 17.5 - local0
function InheritTheNightmare_LastForm542000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 32 - local0
function InheritTheNightmare_LastForm542000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 22.5 - local0
function InheritTheNightmare_LastForm542000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 15.5 - local0
function InheritTheNightmare_LastForm542000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function InheritTheNightmare_LastForm542000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    if local0 <= 10 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) then
            if local0 <= 4 and local1 <= 50 and local3 <= 0.5 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, 0)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            if local0 <= 4 and local1 <= 50 and local3 <= 0.5 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, DIST_None, 0, 0)
            end
        elseif local0 <= 4 and local1 <= 50 and local3 <= 0.5 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_None, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 5, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function InheritTheNightmare_LastForm542000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    if local1 <= 3 then
        if local0 <= 30 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
        end
    elseif local1 <= 6 then
        if local0 <= 40 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
        end
    elseif local1 <= 10 and local0 <= 10 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
        end
    end
    return 
end

function InheritTheNightmare_LastForm542000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function InheritTheNightmare_LastForm542000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function InheritTheNightmare_LastForm542000Battle_Terminate(arg0, arg1)
    return 
end

function InheritTheNightmare_LastForm542000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if Damaged_Step(arg0, arg1, 3, 10, 40, 30, 30, 4) then
        return true
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    local local6 = Shoot_2dist(arg0, arg1, 5, 20, 20, 40)
    if local6 == 1 then
        if local4 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local6 == 2 then
        if local4 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
        return true
    end
    return false
end

return 
