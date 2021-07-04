local local0 = 0.6
local local1 = 0.6 - local0
local local2 = 0.6 - local0
local local3 = 0.6 - local0
local local4 = 0.6 - local0
local local5 = 0.6 - local0
local local6 = 0.6 - local0
local local7 = 4 - local0
function OnIf_126000(arg0, arg1, arg2)
    if arg2 == 0 then
        SnakeBall_Chaild_Small126000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function SnakeBall_Chaild_Small126000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local7 = arg0:GetDistYSigned(TARGET_ENE_0)
    local local8 = arg0:GetDistXZ(TARGET_ENE_0)
    if arg0:GetNpcThinkParamID() == 126001 then
        if local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            local0[11] = 100
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            if local3 <= 1.5 then
                local0[5] = 100
                local0[19] = 0
            else
                local0[5] = 0
                local0[19] = 100
            end
        elseif 5 <= local3 then
            local0[1] = 20
            local0[2] = 10
            local0[3] = 15
            local0[4] = 25
            local0[5] = 10
        elseif 3 <= local3 then
            local0[1] = 20
            local0[2] = 20
            local0[3] = 10
            local0[4] = 30
            local0[5] = 20
        elseif 1 <= local3 then
            local0[1] = 15
            local0[2] = 15
            local0[3] = 20
            local0[4] = 20
            local0[5] = 30
        else
            local0[1] = 10
            local0[2] = 20
            local0[3] = 20
            local0[4] = 10
            local0[5] = 40
        end
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[11] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[10] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        if local3 <= 1.5 then
            local0[5] = 100
            local0[19] = 0
        else
            local0[5] = 0
            local0[19] = 100
        end
    elseif 5 <= local3 then
        local0[1] = 35
        local0[2] = 30
        local0[3] = 25
        local0[4] = 0
        local0[5] = 10
    elseif 3 <= local3 then
        local0[1] = 25
        local0[2] = 25
        local0[3] = 30
        local0[4] = 0
        local0[5] = 20
    elseif 1 <= local3 then
        local0[1] = 20
        local0[2] = 25
        local0[3] = 25
        local0[4] = 0
        local0[5] = 30
    else
        local0[1] = 15
        local0[2] = 20
        local0[3] = 15
        local0[4] = 0
        local0[5] = 40
    end
    local1[1] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Small126000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Small126000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Small126000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Small126000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Small126000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Small126000_Act06)
    local1[11] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Small126000_Act11)
    local1[19] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Small126000_Act19)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Small126000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2 - local0
function SnakeBall_Chaild_Small126000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.1 - local0
function SnakeBall_Chaild_Small126000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.8 - local0
function SnakeBall_Chaild_Small126000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.1 - local0
function SnakeBall_Chaild_Small126000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.2 - local0
function SnakeBall_Chaild_Small126000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local7
function SnakeBall_Chaild_Small126000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeBall_Chaild_Small126000_Act11(arg0, arg1, arg2)
    if 4 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local7
function SnakeBall_Chaild_Small126000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = arg0:GetRandam_Float(1, 2)
    if 5 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeBall_Chaild_Small126000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function SnakeBall_Chaild_Small126000_ActAfter_RealTime(arg0, arg1)
    if 4 <= arg0:GetDist(TARGET_ENE_0) and arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3.5, TARGET_SELF, true, -1)
    end
    return 
end

function SnakeBall_Chaild_Small126000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function SnakeBall_Chaild_Small126000Battle_Terminate(arg0, arg1)
    return 
end

function SnakeBall_Chaild_Small126000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
