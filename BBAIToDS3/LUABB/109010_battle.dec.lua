local local0 = 0.4
local local1 = 0.4 - local0
local local2 = 0.4 - local0
local local3 = 0.4 - local0
local local4 = 0.4 - local0
local local5 = 0.4 - local0
local local6 = 0.4 - local0
local local7 = 0.4 - local0
local local8 = true
function OnIf_109010(arg0, arg1, arg2)
    if arg2 == 0 then
        Deformed_Beast_Slow109010_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        Deformed_Beast_Slow109010_Reinforce(arg0, arg1)
    end
    return 
end

local0 = local8
function Deformed_Beast_Slow109010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest(0)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local7 = 1
    local local8 = 1
    local local9 = arg0:GetTeamRecordCount(COORDINATE_TYPE_Attack, TARGET_ENE_0, 20)
    local local10 = arg0:GetTeamRecordCount(COORDINATE_TYPE_AttackOrder, TARGET_ENE_0, 20)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5645) and arg0:GetRandam_Int(1, 100) <= 60 then
        local local11 = false
        SETUPVAL 15 0 0
        local7 = 0
    else
        local local11 = true
        SETUPVAL 15 0 0
        local7 = 1
    end
    if arg0:GetEventRequest(1) == 200 then
        local0[16] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5645) == false and arg0:GetNumber(0) == 1 then
        local0[17] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[20] = 100
    elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
        local0[24] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5645) then
        if 6 <= local3 then
            local0[1] = 20
            local0[2] = 10 * local7
            local0[3] = 10
            local0[4] = 10 * local7
            local0[5] = 20
            local0[6] = 10
            local0[7] = 20
        elseif 3 <= local3 then
            local0[1] = 20
            local0[2] = 10 * local7
            local0[3] = 30
            local0[4] = 10 * local7
            local0[5] = 20
            local0[6] = 0
            local0[7] = 10
        else
            local0[1] = 20
            local0[2] = 0 * local7
            local0[3] = 30
            local0[4] = 0 * local7
            local0[5] = 20
            local0[6] = 20
            local0[7] = 10
        end
    elseif 6 <= local3 then
        local0[1] = 30
        local0[2] = 15 * local7
        local0[3] = 0
        local0[4] = 15 * local7
        local0[5] = 20
        local0[6] = 10
        local0[7] = 10
    elseif 3 <= local3 then
        local0[1] = 30
        local0[2] = 10 * local7
        local0[3] = 10
        local0[4] = 10 * local7
        local0[5] = 20
        local0[6] = 10
        local0[7] = 10
    else
        local0[1] = 40
        local0[2] = 0 * local7
        local0[3] = 10
        local0[4] = 0 * local7
        local0[5] = 10
        local0[6] = 15
        local0[7] = 25
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Slow109010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Slow109010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Slow109010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Slow109010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Slow109010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Slow109010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Slow109010_Act07)
    local1[16] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Slow109010_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Slow109010_Act17)
    local1[20] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Slow109010_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Slow109010_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Slow109010_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Slow109010_Act24)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Deformed_Beast_Slow109010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.3 - local0
local0 = local8
function Deformed_Beast_Slow109010_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local0 = local0 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) and UPVAL1 == true then
        Approach_Act(arg0, arg1, local0, 9999, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TargetType, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TargetType, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TargetType, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.8 - local0
local0 = local8
function Deformed_Beast_Slow109010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) and UPVAL1 == true then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TargetType, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.4 - local0
local0 = local8
function Deformed_Beast_Slow109010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) and UPVAL1 == true then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TargetType, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
local0 = local8
function Deformed_Beast_Slow109010_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) and UPVAL1 == true then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TargetType, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.2 - local0
local0 = local8
function Deformed_Beast_Slow109010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) and UPVAL1 == true then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TargetType, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.1 - local0
local0 = local8
function Deformed_Beast_Slow109010_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) and UPVAL1 == true then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TargetType, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.9 - local0
local0 = local8
function Deformed_Beast_Slow109010_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) and UPVAL1 == true then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TargetType, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Deformed_Beast_Slow109010_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, -1)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5645)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast_Slow109010_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast_Slow109010_Reinforce(arg0, arg1)
    arg0:SetNumber(0, 0)
    return 
end

function Deformed_Beast_Slow109010_Act19(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Deformed_Beast_Slow109010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast_Slow109010_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast_Slow109010_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast_Slow109010_Act24(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast_Slow109010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Deformed_Beast_Slow109010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = arg0:GetRandam_Float(2, 3)
    local local6 = 0
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if local0 <= 2 then
            if local1 <= 0 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
            elseif local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
            elseif local1 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
            end
        elseif local0 <= 5 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
            end
        elseif local0 <= 10 and local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 4 then
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

function Deformed_Beast_Slow109010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Deformed_Beast_Slow109010Battle_Terminate(arg0, arg1)
    return 
end

function Deformed_Beast_Slow109010Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg0:IsInterupt(INTERUPT_FindEnemy) then
        arg1:ClearSubGoal()
        arg0:Replaning()
        return true
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        if arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) then
            if arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5645) then
                arg1:ClearSubGoal()
                arg0:SetNumber(0, 1)
                arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5645)
                arg0:Replaning()
            end
            return true
        else
            return false
        end
    end
end

return 
