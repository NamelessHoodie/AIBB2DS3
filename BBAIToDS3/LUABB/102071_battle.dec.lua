local local0 = 0.3
local local1 = 0.3 - local0
local local2 = 0.3 - local0
local local3 = 0.3 - local0
local local4 = 0.3 - local0
local local5 = 0.3 - local0
local local6 = 0.3 - local0
function OnIf_102071(arg0, arg1, arg2)
    if arg2 == 0 then
        CrowdA_Spade102071_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function CrowdA_Spade102071Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_kankyaku then
        local0[10] = 30
        local0[11] = 30
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 5
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 5
        local0[6] = 0
        local0[10] = 45
        local0[11] = 45
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local3 <= 1 and arg0:GetRandam_Int(1, 100) <= 40 then
        local0[4] = 100
    elseif 5.5 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 0
        local0[4] = 0
        local0[5] = 20
        local0[6] = 60
    elseif 3.5 <= local3 then
        local0[1] = 30
        local0[2] = 20
        local0[3] = 5
        local0[4] = 5
        local0[5] = 20
        local0[6] = 10
    elseif 2.5 <= local3 then
        local0[1] = 20
        local0[2] = 30
        local0[3] = 10
        local0[4] = 5
        local0[5] = 35
        local0[6] = 0
    elseif 1.5 <= local3 then
        local0[1] = 10
        local0[2] = 20
        local0[3] = 30
        local0[4] = 35
        local0[5] = 5
        local0[6] = 0
    else
        local0[1] = 10
        local0[2] = 20
        local0[3] = 35
        local0[4] = 30
        local0[5] = 5
        local0[6] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, CrowdA_Spade102071_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, CrowdA_Spade102071_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, CrowdA_Spade102071_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, CrowdA_Spade102071_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, CrowdA_Spade102071_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, CrowdA_Spade102071_Act06)
    local1[10] = REGIST_FUNC(arg0, arg1, CrowdA_Spade102071_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, CrowdA_Spade102071_Act11)
    local1[20] = REGIST_FUNC(arg0, arg1, CrowdA_Spade102071_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, CrowdA_Spade102071_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 4.2 - local0
function CrowdA_Spade102071_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 - 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3 - local0
function CrowdA_Spade102071_Act02(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 - 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.3 - local0
function CrowdA_Spade102071_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 - 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.7 - local0
function CrowdA_Spade102071_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 - 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.5 - local0
function CrowdA_Spade102071_Act05(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 - 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.4 - local0
function CrowdA_Spade102071_Act06(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 - 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowdA_Spade102071_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    return 
end

function CrowdA_Spade102071_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(1, 1.5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function CrowdA_Spade102071_Act20(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, DIST_None, 0, 90)
    end
    return 
end

function CrowdA_Spade102071_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function CrowdA_Spade102071_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(1, 1.5)
    local local4 = arg0:GetRandam_Float(1.5, 2.5)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if local0 <= 1.5 then
            if local1 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            end
        elseif local0 <= 2.5 then
            if local1 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            end
        elseif local0 <= 3.5 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            end
        elseif local0 <= 5.5 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            elseif local1 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
            end
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5.5, TARGET_SELF, false, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    end
    return 
end

function CrowdA_Spade102071Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function CrowdA_Spade102071Battle_Terminate(arg0, arg1)
    return 
end

function CrowdA_Spade102071Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetDist(TARGET_ENE_0)
        return false
    end
end

return 
