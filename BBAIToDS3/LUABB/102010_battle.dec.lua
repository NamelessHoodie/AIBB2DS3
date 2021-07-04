local local0 = 0.35
local local1 = 0.35 - local0
local local2 = 3.45 - local0
local local3 = 0.35 - local0
local local4 = 0.35 - local0
local local5 = 0.35 - local0
local local6 = 0.35 - local0
local local7 = 0.35 - local0
function OnIf_102010(arg0, arg1, arg2)
    if arg2 == 0 then
        CrowdA_Torch_and_Shield102010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function CrowdA_Torch_and_Shield102010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    arg0:StartGuard(9910)
    if local4 == 100 then
        local0[12] = 100
    elseif local4 == 50 then
        arg0:EndGuard()
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_EVENT, 3, TARGET_SELF, false, -1)
    elseif arg0:GetNpcThinkParamID() == 102013 then
        if 6.5 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[11] = 100
        elseif 3.45 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 30
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[11] = 70
        else
            local0[1] = 10
            local0[2] = 40
            local0[3] = 40
            local0[5] = 0
            local0[6] = 5
            local0[7] = 5
            local0[11] = 0
        end
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[9] = 50
        local0[10] = 20
        local0[11] = 30
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[2] = 5
        local0[5] = 5
        local0[7] = 5
        local0[9] = 20
        local0[10] = 35
        local0[11] = 30
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif arg0:IsTargetGuard(TARGET_ENE_0) == true then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local3 <= 1 and local5 <= 40 then
            local0[2] = 80
            local0[6] = 20
        else
            local0[11] = 100
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local3 <= 1 and local5 <= 40 then
        local0[2] = 80
        local0[6] = 20
    elseif 4.5 <= local3 then
        local0[1] = 10
        local0[2] = 0
        local0[3] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[11] = 70
    elseif 2.5 <= local3 then
        local0[1] = 15
        local0[2] = 10
        local0[3] = 5
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[11] = 70
    elseif 1.5 <= local3 then
        local0[1] = 0
        local0[2] = 5
        local0[3] = 0
        local0[5] = 15
        local0[6] = 0
        local0[7] = 10
        local0[11] = 70
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[5] = 10
        local0[6] = 0
        local0[7] = 20
        local0[11] = 70
    end
    local1[1] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102010_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102010_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102010_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102010_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102010_Act12)
    local1[20] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102010_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
function CrowdA_Torch_and_Shield102010_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 2.2, 100, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.05 - local0
function CrowdA_Torch_and_Shield102010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 3.5, 100, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.35 - local0
function CrowdA_Torch_and_Shield102010_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0, 100, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.35 - local0
function CrowdA_Torch_and_Shield102010_Act05(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 3.3, 100, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.85 - local0
function CrowdA_Torch_and_Shield102010_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 100
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.45 - local0
function CrowdA_Torch_and_Shield102010_Act07(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 3.1, 100, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowdA_Torch_and_Shield102010_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_Torch_and_Shield102010_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_Torch_and_Shield102010_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, 9910)
    return 
end

function CrowdA_Torch_and_Shield102010_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Float(2, 3)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910, true)
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910, true)
    else
        if 4.5 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, arg0:GetRandam_Float(3, 4), TARGET_SELF, true)
        elseif local0 <= 1.5 and local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 9910)
        elseif local0 <= 0.5 and local1 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 9910)
        end
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Float(30, 50), true, true, 9910, true)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Float(30, 50), true, true, 9910, true)
    end
    return 
end

function CrowdA_Torch_and_Shield102010_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_Torch_and_Shield102010_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(0, 1)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local0 = 0
    else
        local0 = 1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0, local0, arg0:GetRandam_Int(45, 60), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_Torch_and_Shield102010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function CrowdA_Torch_and_Shield102010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2.5, 3)
    local local4 = arg0:GetRandam_Float(1.5, 2.5)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if arg0:IsTargetGuard(TARGET_ENE_0) == true then
            if local0 <= 1.5 then
                if local1 <= 80 then
                    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, 9910)
                end
            elseif local0 <= 2.5 then
                if local1 <= 70 then
                    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, 9910)
                end
            elseif local0 <= 3.5 then
                if local1 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, 9910, true)
                end
            elseif local0 <= 5.5 then
                if local1 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, 9910, true)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, 9910)
                end
            elseif local1 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5.5, TARGET_SELF, true, 9910)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, 9910, true)
            end
        elseif local0 <= 1.5 then
            if local1 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, 9910)
            end
        elseif local0 <= 2.5 then
            if local1 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, 9910)
            end
        elseif local0 <= 3.5 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, 9910, true)
            end
        elseif local0 <= 5.5 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, 9910, true)
            elseif local1 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, 9910)
            end
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5.5, TARGET_SELF, true, 9910)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, 9910, true)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 8, TARGET_ENE_0, true, 9910)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, 9910, true)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 8, TARGET_ENE_0, true, 9910)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, 9910, true)
        end
    end
    return 
end

function CrowdA_Torch_and_Shield102010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function CrowdA_Torch_and_Shield102010Battle_Terminate(arg0, arg1)
    return 
end

local0 = local2
function CrowdA_Torch_and_Shield102010Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetDist(TARGET_ENE_0)
        if arg0:IsInterupt(INTERUPT_SuccessGuard) and local2 <= 3.5 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, UPVAL0, 0)
            return true
        elseif arg0:IsInterupt(INTERUPT_GuardFinish) and local2 <= 3.5 and arg0:GetRandam_Int(1, 100) <= 10 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, UPVAL0, 0)
            return true
        elseif MissSwing_Attack(arg0, arg1, 2.4, 100, 3003) then
            return true
        else
            return false
        end
    end
end

return 
