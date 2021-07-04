local local0 = 0.35
local local1 = 0.35 - local0
local local2 = 0.35 - local0
local local3 = 0.35 - local0
local local4 = 0.35 - local0
local local5 = 0.35 - local0
local local6 = 0.35 - local0
function OnIf_102012(arg0, arg1, arg2)
    if arg2 == 0 then
        CrowdA_Torch_and_Shield102012_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function CrowdA_Torch_and_Shield102012Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:GetEventRequest() == 100 then
        local0[12] = 100
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
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[9] = 50
        local0[10] = 20
        local0[11] = 30
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[2] = 5
        local0[5] = 5
        local0[7] = 5
        local0[9] = 20
        local0[10] = 35
        local0[11] = 30
    elseif local4 <= 50 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif arg0:IsTargetGuard(TARGET_ENE_0) == true and local4 <= 80 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local3 <= 1 and local4 <= 40 then
            local0[2] = 70
            local0[6] = 30
        else
            local0[11] = 100
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local3 <= 1 and local4 <= 40 then
        local0[2] = 70
        local0[6] = 30
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        if 4.5 <= local3 then
            local0[1] = 5
            local0[2] = 5
            local0[3] = 0
            local0[5] = 10
            local0[6] = 0
            local0[7] = 10
            local0[11] = 70
        elseif 2.5 <= local3 then
            local0[1] = 15
            local0[2] = 5
            local0[3] = 0
            local0[5] = 5
            local0[6] = 0
            local0[7] = 5
            local0[11] = 60
        elseif 1.5 <= local3 then
            local0[1] = 10
            local0[2] = 20
            local0[3] = 0
            local0[5] = 15
            local0[6] = 5
            local0[7] = 20
            local0[11] = 30
        else
            local0[1] = 10
            local0[2] = 15
            local0[3] = 0
            local0[5] = 25
            local0[6] = 20
            local0[7] = 20
            local0[11] = 10
        end
    else
        local0[20] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102012_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102012_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102012_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102012_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102012_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102012_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102012_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102012_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102012_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102012_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102012_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102012_Act12)
    local1[20] = REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102012_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, CrowdA_Torch_and_Shield102012_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.45 - local0
function CrowdA_Torch_and_Shield102012_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.05 - local0
function CrowdA_Torch_and_Shield102012_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.35 - local0
function CrowdA_Torch_and_Shield102012_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.35 - local0
function CrowdA_Torch_and_Shield102012_Act05(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.85 - local0
function CrowdA_Torch_and_Shield102012_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.45 - local0
function CrowdA_Torch_and_Shield102012_Act07(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowdA_Torch_and_Shield102012_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_Torch_and_Shield102012_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_Torch_and_Shield102012_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, 9910)
    return 
end

function CrowdA_Torch_and_Shield102012_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Float(1, 1.5)
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

function CrowdA_Torch_and_Shield102012_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_Torch_and_Shield102012_Act20(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, DIST_None, 0, 0)
    end
    return 
end

function CrowdA_Torch_and_Shield102012_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function CrowdA_Torch_and_Shield102012_ActAfter_RealTime(arg0, arg1)
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

function CrowdA_Torch_and_Shield102012Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function CrowdA_Torch_and_Shield102012Battle_Terminate(arg0, arg1)
    return 
end

function CrowdA_Torch_and_Shield102012Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        if arg0:IsInterupt(INTERUPT_SuccessGuard) and local3 <= 3.5 and local0 <= 50 then
            arg1:ClearSubGoal()
            if local3 <= 1 then
                arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            elseif local3 <= 2 then
                arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            elseif local0 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            end
            return true
        elseif arg0:IsInterupt(INTERUPT_GuardFinish) and local3 <= 3.5 and local0 <= 10 then
            arg1:ClearSubGoal()
            if local3 <= 1 then
                arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            elseif local3 <= 2 then
                arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            elseif local0 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            end
            return true
        elseif MissSwing_Attack(arg0, arg1, 2.4, 100, 3003) then
            return true
        else
            return false
        end
    end
end

return 
