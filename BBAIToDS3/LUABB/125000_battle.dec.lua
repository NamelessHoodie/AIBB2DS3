local local0 = 1.3
local local1 = 1.3 - local0
local local2 = 1.3 - local0
local local3 = 1.3 - local0
local local4 = 1.3 - local0
local local5 = 1.3 - local0
local local6 = 1.3 - local0
local local7 = 35 - local0
local local8 = 0 - local0
function OnIf_125000(arg0, arg1, arg2)
    if arg2 == 0 then
        SnakeBall_Chaild_Normal125000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function SnakeBall_Chaild_Normal125000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[11] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[6] = 20
        local0[11] = 80
    elseif arg0:GetDistYSigned(TARGET_ENE_0) <= -1 and 5 <= arg0:GetDistXZ(TARGET_ENE_0) then
        local0[6] = 100
    elseif arg0:GetNpcThinkParamID() == 125081 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            if local3 <= 3 then
                local0[7] = 100
            else
                local0[19] = 100
            end
        else
            local0[7] = 100
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        if local3 <= 2 then
            local0[5] = 100
            local0[19] = 0
        else
            local0[5] = 0
            local0[19] = 100
        end
    elseif 8.5 <= local3 then
        if arg0:GetNpcThinkParamID() == 125000 or arg0:GetNpcThinkParamID() == 125001 or arg0:GetNpcThinkParamID() == 125002 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 100
        else
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[4] = 0
            local0[5] = 70
            local0[6] = 0
        end
    elseif 6.5 <= local3 then
        if arg0:GetNpcThinkParamID() == 125000 or arg0:GetNpcThinkParamID() == 125001 or arg0:GetNpcThinkParamID() == 125002 then
            local0[1] = 5
            local0[2] = 5
            local0[3] = 5
            local0[4] = 5
            local0[5] = 10
            local0[6] = 70
        else
            local0[1] = 20
            local0[2] = 20
            local0[3] = 20
            local0[4] = 0
            local0[5] = 40
            local0[6] = 0
        end
    elseif 4.5 <= local3 then
        if arg0:GetNpcThinkParamID() == 125000 or arg0:GetNpcThinkParamID() == 125001 or arg0:GetNpcThinkParamID() == 125002 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[4] = 10
            local0[5] = 60
            local0[6] = 0
        else
            local0[1] = 20
            local0[2] = 20
            local0[3] = 20
            local0[4] = 0
            local0[5] = 40
            local0[6] = 0
        end
    elseif 2.5 <= local3 then
        if arg0:GetNpcThinkParamID() == 125000 or arg0:GetNpcThinkParamID() == 125001 or arg0:GetNpcThinkParamID() == 125002 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[4] = 5
            local0[5] = 65
            local0[6] = 0
        else
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[4] = 0
            local0[5] = 70
            local0[6] = 0
        end
    else
        local0[1] = 5
        local0[2] = 5
        local0[3] = 5
        local0[4] = 0
        local0[5] = 85
        local0[6] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Normal125000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Normal125000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Normal125000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Normal125000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Normal125000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Normal125000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Normal125000_Act07)
    local1[11] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Normal125000_Act11)
    local1[19] = REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Normal125000_Act19)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, SnakeBall_Chaild_Normal125000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 6.2 - local0
function SnakeBall_Chaild_Normal125000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 7.7 - local0
function SnakeBall_Chaild_Normal125000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.7 - local0
function SnakeBall_Chaild_Normal125000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6.9 - local0
function SnakeBall_Chaild_Normal125000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.5 - local0
function SnakeBall_Chaild_Normal125000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local7
function SnakeBall_Chaild_Normal125000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.3 - local0
function SnakeBall_Chaild_Normal125000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    local local3 = 999
    local local4 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 1, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeBall_Chaild_Normal125000_Act11(arg0, arg1, arg2)
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
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local7
function SnakeBall_Chaild_Normal125000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    if 5 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeBall_Chaild_Normal125000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function SnakeBall_Chaild_Normal125000_ActAfter_RealTime(arg0, arg1)
    return 
end

function SnakeBall_Chaild_Normal125000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function SnakeBall_Chaild_Normal125000Battle_Terminate(arg0, arg1)
    return 
end

function SnakeBall_Chaild_Normal125000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
