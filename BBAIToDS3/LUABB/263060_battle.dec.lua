local local0 = 0.35
local local1 = 5.35 - local0
local local2 = 16.35 - local0
local local3 = 5.35 - local0
local local4 = 16.35 - local0
local local5 = 0.3 - local0
local local6 = 0.3 - local0
local local7 = 1
function OnIf_263060(arg0, arg1, arg2)
    if arg2 == 0 then
        CrowdA_HandAxe_and_Shield263060_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        arg0:SetNumber(0, 1)
    end
    return 
end

local0 = local7
function CrowdA_HandAxe_and_Shield263060Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5618) or arg0:HasSpecialEffectId(TARGET_SELF, 5619) then
        local local7 = 0
        SETUPVAL 9 0 0
    end
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5618) or arg0:HasSpecialEffectId(TARGET_SELF, 5619) then
        if arg0:GetNpcThinkParamID() == 263060 or arg0:GetNpcThinkParamID() == 263061 then
            local0[5] = 100
        elseif arg0:GetNpcThinkParamID() == 263065 or arg0:GetNpcThinkParamID() == 263066 then
            if 1 <= local3 then
                local0[6] = 100
            else
                local0[6] = 10
                local0[12] = 90
            end
        else
            local0[5] = 100
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif arg0:GetNpcThinkParamID() == 263060 or arg0:GetNpcThinkParamID() == 263061 or arg0:GetNpcThinkParamID() == 263860 then
        if 5 <= local3 then
            local0[5] = 60
            local0[11] = 40
            local0[12] = 0
        elseif 3 <= local3 then
            local0[5] = 35
            local0[11] = 40
            local0[12] = 25
        elseif 1.5 <= local3 then
            local0[5] = 10
            local0[11] = 20
            local0[12] = 70
        else
            local0[5] = 0
            local0[11] = 10
            local0[12] = 90
        end
    elseif 5 <= local3 then
        local0[6] = 60
        local0[11] = 40
        local0[12] = 0
    elseif 3 <= local3 then
        local0[6] = 35
        local0[11] = 40
        local0[12] = 25
    elseif 1.5 <= local3 then
        local0[6] = 10
        local0[11] = 20
        local0[12] = 70
    else
        local0[6] = 0
        local0[11] = 10
        local0[12] = 90
    end
    local1[5] = REGIST_FUNC(arg0, arg1, CrowdA_HandAxe_and_Shield263060_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, CrowdA_HandAxe_and_Shield263060_Act06)
    local1[10] = REGIST_FUNC(arg0, arg1, CrowdA_HandAxe_and_Shield263060_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, CrowdA_HandAxe_and_Shield263060_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, CrowdA_HandAxe_and_Shield263060_Act12)
    local1[20] = REGIST_FUNC(arg0, arg1, CrowdA_HandAxe_and_Shield263060_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, CrowdA_HandAxe_and_Shield263060_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
local0 = local7
function CrowdA_HandAxe_and_Shield263060_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    local local2 = 18
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = 50
    if arg0:HasSpecialEffectId(TARGET_SELF, 5618) then
        local1 = DIST_None
        local2 = 9999
        local5 = 100
    end
    if UPVAL2 == 0 and local2 <= local0 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5618) then
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
        end
    elseif UPVAL2 == 1 then
        if local0 <= UPVAL1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 1.5, TARGET_ENE_0, true, -1)
        else
            Approach_Act(arg0, arg1, local2, UPVAL0 + 2, 0, 3)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, local1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
local0 = local7
function CrowdA_HandAxe_and_Shield263060_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    local local2 = 18
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = 50
    if arg0:HasSpecialEffectId(TARGET_SELF, 5618) then
        local1 = DIST_None
        local2 = 9999
        local5 = 100
    end
    if UPVAL2 == 0 and local2 <= local0 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5618) then
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
        end
    elseif UPVAL2 == 1 then
        if local0 <= UPVAL1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 1.5, TARGET_ENE_0, true, -1)
        else
            Approach_Act(arg0, arg1, local2, UPVAL0 + 2, 0, 3)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, local1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_HandAxe_and_Shield263060_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 20
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 20, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    return 
end

function CrowdA_HandAxe_and_Shield263060_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(1, 1.5)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        if 4.5 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, arg0:GetRandam_Float(3, 4), TARGET_SELF, true, -1)
        elseif local0 <= 1.5 and local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, -1)
        elseif local0 <= 0.5 and local1 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, -1)
        end
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Float(30, 50), true, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Float(30, 50), true, true, -1)
    end
    return 
end

local0 = 2.2 - local0
local0 = 2.7 - local0
function CrowdA_HandAxe_and_Shield263060_Act12(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    if arg0:GetDist(TARGET_ENE_0) <= 1.8 then
        local0 = UPVAL1
    end
    Approach_Act(arg0, arg1, local0, 999, 0, 3)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3037, TARGET_ENE_0, UPVAL0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, UPVAL1, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_HandAxe_and_Shield263060_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_HandAxe_and_Shield263060_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function CrowdA_HandAxe_and_Shield263060_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2.5, 3)
    local local4 = arg0:GetRandam_Float(1.5, 2.5)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if arg0:IsTargetGuard(TARGET_ENE_0) == true then
            if local0 <= 1.5 then
                if local1 <= 80 then
                    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
                end
            elseif local0 <= 2.5 then
                if local1 <= 70 then
                    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
                end
            elseif local0 <= 3.5 then
                if local1 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
                end
            elseif local0 <= 5.5 then
                if local1 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
                end
            elseif local1 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5.5, TARGET_SELF, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            end
        elseif local0 <= 1.5 then
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
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5.5, TARGET_SELF, true, -1)
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

function CrowdA_HandAxe_and_Shield263060Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function CrowdA_HandAxe_and_Shield263060Battle_Terminate(arg0, arg1)
    return 
end

function CrowdA_HandAxe_and_Shield263060Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        return false
    end
end

return 
