local local0 = 0.4
local local1 = 1.5
local local2 = 0 - local0 + local1
local local3 = 0 - local0 + local1
local local4 = 0 - local0 + local1
local local5 = 0 - local0 + local1
local local6 = 0 - local0 + local1
local local7 = 0
function OnIf_105001(arg0, arg1, arg2)
    if arg2 == 0 then
        WanderingWidow105001_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local7
function WanderingWidow105001Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[20] = 100
    elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 4652) == true then
        arg0:StartDash()
        local local3 = 0
        SETUPVAL 6 0 0
        if 4 <= arg0:GetDist(TARGET_ENE_0) then
            local0[1] = 20
            local0[2] = 20
            local0[3] = 20
            local0[5] = 20
            local0[9] = 20
        else
            local0[1] = 20
            local0[2] = 30
            local0[3] = 0
            local0[5] = 30
            local0[9] = 20
        end
    else
        arg0:EndDash()
        local local3 = 1
        SETUPVAL 6 0 0
        local0[1] = 45
        local0[2] = 40
        local0[3] = 0
        local0[5] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, WanderingWidow105001_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, WanderingWidow105001_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, WanderingWidow105001_Act03)
    local1[5] = REGIST_FUNC(arg0, arg1, WanderingWidow105001_Act05)
    local1[9] = REGIST_FUNC(arg0, arg1, WanderingWidow105000_Act09)
    local1[20] = REGIST_FUNC(arg0, arg1, WanderingWidow105001_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, WanderingWidow105001_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local7
local0 = 2 - local0 + local1
function WanderingWidow105001_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL1, 9999 * UPVAL0, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL1, 0, -1)
    GetWellSpace_Odds = 100 * UPVAL0
    return GetWellSpace_Odds
end

local0 = local7
local0 = 1.4 - local0 + local1
function WanderingWidow105001_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL1, 9999 * UPVAL0, 0, 3)
    if arg0:GetRandam_Int(1, 100) <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, AttDist2, 0, -1)
    end
    GetWellSpace_Odds = 100 * UPVAL0
    return GetWellSpace_Odds
end

local0 = 5.4 - local0 + local1
local0 = local7
function WanderingWidow105001_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 9999 * UPVAL1, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100 * UPVAL1
    return GetWellSpace_Odds
end

local0 = 1.6 - local0 + local1
local0 = local7
function WanderingWidow105001_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 9999 * UPVAL1, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100 * UPVAL1
    return GetWellSpace_Odds
end

local0 = 5 - local0 + local1
local0 = local7
function WanderingWidow105000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 9999 * UPVAL1, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WanderingWidow105001_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WanderingWidow105001_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function WanderingWidow105001_ActAfter_RealTime(arg0, arg1)
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

function WanderingWidow105001Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function WanderingWidow105001Battle_Terminate(arg0, arg1)
    return 
end

function WanderingWidow105001Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = Shoot_2dist(arg0, arg1, 6, 20, 20, 40)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(1.5, 2.5)
    if local1 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif local1 == 2 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
        return true
    end
    return false
end

return 
