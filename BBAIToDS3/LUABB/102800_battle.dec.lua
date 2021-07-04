local local0 = 0.3
local local1 = 0.3 - local0
local local2 = 0.3 - local0
local local3 = 0.3 - local0
local local4 = 2.8 - local0
local local5 = 0.3 - local0
local local6 = 0.3 - local0
local local7 = 0.3 - local0
local local8 = 0.3 - local0
local local9 = 0.3 - local0
function OnIf_102800(arg0, arg1, arg2)
    if arg2 == 0 then
        IkenieZako102800_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function IkenieZako102800Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if local5 <= 50 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local3 <= 1 and local5 <= 40 then
        local0[6] = 100
    elseif 5.5 <= local3 then
        local0[1] = 5
        local0[2] = 5
        local0[3] = 0
        local0[4] = 20
        local0[11] = 70
    elseif 3.5 <= local3 then
        local0[1] = 5
        local0[2] = 0
        local0[3] = 0
        local0[4] = 15
        local0[5] = 5
        local0[7] = 5
        local0[11] = 70
    elseif 2.5 <= local3 then
        local0[1] = 5
        local0[2] = 15
        local0[3] = 5
        local0[5] = 0
        local0[7] = 5
        local0[11] = 70
    elseif 1.5 <= local3 then
        local0[1] = 5
        local0[2] = 5
        local0[3] = 5
        local0[5] = 5
        local0[6] = 5
        local0[7] = 5
        local0[11] = 70
    else
        local0[1] = 5
        local0[2] = 0
        local0[3] = 0
        local0[5] = 5
        local0[6] = 10
        local0[7] = 10
        local0[11] = 70
    end
    local1[1] = REGIST_FUNC(arg0, arg1, IkenieZako102800_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, IkenieZako102800_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, IkenieZako102800_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, IkenieZako102800_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, IkenieZako102800_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, IkenieZako102800_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, IkenieZako102800_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, IkenieZako102800_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, IkenieZako102800_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, IkenieZako102800_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, IkenieZako102800_Act11)
    local1[20] = REGIST_FUNC(arg0, arg1, IkenieZako102800_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, IkenieZako102800_Act21)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, IkenieZako102800_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.1 - local0
function IkenieZako102800_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0 + 0.3
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.5 - local0
function IkenieZako102800_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0
    local local3 = UPVAL0 + 0.9
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.9 - local0
function IkenieZako102800_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0 + 0.8
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.7 - local0
function IkenieZako102800_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.9 - local0
function IkenieZako102800_Act05(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0 + 1.4
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.8 - local0
function IkenieZako102800_Act06(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0 + 1.5
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.3 - local0
function IkenieZako102800_Act07(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0 + 1
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function IkenieZako102800_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_None, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function IkenieZako102800_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_None, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function IkenieZako102800_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    return 
end

function IkenieZako102800_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function IkenieZako102800_Act20(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, DIST_None, 0, 90)
    end
    return 
end

function IkenieZako102800_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3010, TARGET_ENE_0, DIST_None, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function IkenieZako102800_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function IkenieZako102800_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = 0
    local local5 = 0
    if arg0:GetNpcThinkParamID() == 102003 then
        local4 = arg0:GetRandam_Float(2.5, 3)
        local5 = arg0:GetRandam_Float(3, 3.5)
    else
        local4 = arg0:GetRandam_Float(1, 1.5)
        local5 = arg0:GetRandam_Float(1.5, 2.5)
    end
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if local0 <= 1.5 then
            if local1 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            end
        elseif local0 <= 2.5 then
            if local1 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            end
        elseif local0 <= 3.5 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(45, 60), true, true, -1)
            end
        elseif local0 <= 5.5 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(45, 60), true, true, -1)
            elseif local1 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
            end
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5.5, TARGET_SELF, false, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    end
    return 
end

function IkenieZako102800Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function IkenieZako102800Battle_Terminate(arg0, arg1)
    return 
end

function IkenieZako102800Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg0:IsInsideObserve(1) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(1)
            arg0:Replaning()
            return true
        elseif arg0:IsInsideObserve(2) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(2)
            arg0:Replaning()
            return true
        end
        arg0:Replaning()
    elseif Damaged_Step(arg0, arg1, 3, 15, 40, 30, 30, 4) then
        return true
    elseif MissSwing_Attack(arg0, arg1, 6, 100, 3004) then
        return true
    elseif RebByOpGuard_Step(arg0, arg1, 10, 30, 35, 35, 4) then
        return true
    else
        return false
    end
end

return 
