local local0 = 0.4
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 0 - local0
local local6 = 40 - local0
function OnIf_105810(arg0, arg1, arg2)
    if arg2 == 0 then
        WanderingWidow105810_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function WanderingWidow105810Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetDist(POINT_INITIAL)
    local local5 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNpcThinkParamID() == 105811 then
        local0[6] = 70
        local0[7] = 30
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[21] = 100
    elseif 4 <= arg0:GetDistY(TARGET_ENE_0) then
        if 1 <= local4 then
            local0[22] = 100
        elseif local3 < 40 then
            if 1 <= arg0:GetEventRequest(0) then
                local0[5] = 60
                local0[7] = 40
            else
                local0[11] = 80
                local0[7] = 20
            end
        else
            local0[11] = 80
            local0[7] = 20
        end
    elseif local3 < 6 then
        local0[1] = 25
        local0[2] = 25
        local0[3] = 25
        local0[4] = 25
    elseif local3 < 40 then
        if eventNo == 100 then
            local0[5] = 60
            local0[7] = 40
        else
            local0[11] = 80
            local0[7] = 20
        end
    elseif 1 <= local4 then
        local0[22] = 100
    else
        local0[11] = 80
        local0[7] = 20
    end
    local1[1] = REGIST_FUNC(arg0, arg1, WanderingWidow105810_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, WanderingWidow105810_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, WanderingWidow105810_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, WanderingWidow105810_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, WanderingWidow105810_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, WanderingWidow105810_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, WanderingWidow105810_Act07)
    local1[11] = REGIST_FUNC(arg0, arg1, WanderingWidow105810_Act11)
    local1[21] = REGIST_FUNC(arg0, arg1, WanderingWidow105810_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, WanderingWidow105810_Act22)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, WanderingWidow105810_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2 - local0
function WanderingWidow105810_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.4 - local0
function WanderingWidow105810_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 9999, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, AttDist2, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.4 - local0
function WanderingWidow105810_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.6 - local0
function WanderingWidow105810_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
function WanderingWidow105810_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(2.5, 4.5), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
function WanderingWidow105810_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_EVENT, Dist_None, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WanderingWidow105810_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 5), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WanderingWidow105810_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3020, TARGET_NONE, DIST_None)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WanderingWidow105810_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WanderingWidow105810_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_INITIAL, 0.5, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WanderingWidow105810_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function WanderingWidow105810_ActAfter_RealTime(arg0, arg1)
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

function WanderingWidow105810Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function WanderingWidow105810Battle_Terminate(arg0, arg1)
    return 
end

function WanderingWidow105810Battle_Interupt(arg0, arg1)
    return false
end

return 
