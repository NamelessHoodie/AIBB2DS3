local local0 = 0.3
local local1 = 0.3 - local0
local local2 = 0.3 - local0
local local3 = 2.9 - local0
local local4 = 0.3 - local0
local local5 = 2.6 - local0
local local6 = 0.3 - local0
local local7 = 3.1 - local0
local local8 = 0.3 - local0
local local9 = 0.3 - local0
local local10 = 2 - local0
local local11 = 0.3 - local0
function OnIf_102040(arg0, arg1, arg2)
    if arg2 == 0 then
        CrowdA_knife102040_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function CrowdA_knife102040Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_kankyaku then
        local0[10] = 50
        local0[11] = 50
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 0
        local0[2] = 10
        local0[3] = 0
        local0[4] = 0
        local0[10] = 45
        local0[11] = 45
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif 5.5 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 0
        local0[4] = 70
        local0[5] = 10
    elseif 3.5 <= local3 then
        local0[1] = 15
        local0[2] = 15
        local0[3] = 0
        local0[4] = 55
        local0[5] = 15
    elseif 2 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 40
        local0[4] = 0
        local0[5] = 20
    else
        local0[1] = 15
        local0[2] = 10
        local0[3] = 65
        local0[4] = 0
        local0[5] = 10
    end
    if arg0:IsFinishTimer(1) == false then
        local0[3] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, CrowdA_knife102040_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, CrowdA_knife102040_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, CrowdA_knife102040_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, CrowdA_knife102040_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, CrowdA_knife102040_Act05)
    local1[10] = REGIST_FUNC(arg0, arg1, CrowdA_knife102040_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, CrowdA_knife102040_Act11)
    local1[20] = REGIST_FUNC(arg0, arg1, CrowdA_knife102040_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, CrowdA_knife102040_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local3
local0 = local5
local0 = local7
function CrowdA_knife102040_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 0.5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, UPVAL1 + 0.5, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, UPVAL2 + 0.5, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.9 - local0
function CrowdA_knife102040_Act02(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 0.5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
function CrowdA_knife102040_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    arg0:SetTimer(1, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.3 - local0
local0 = local10
local0 = local3
local0 = local5
local0 = local7
function CrowdA_knife102040_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0 + 0.5
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3028, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, UPVAL1 + 0.5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3028, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, UPVAL2 + 0.5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, UPVAL3 + 0.5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, UPVAL4 + 0.5, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.1 - local0
function CrowdA_knife102040_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 0
    local local2 = UPVAL0
    local local3 = UPVAL0 + 0.5
    local local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_knife102040_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_knife102040_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_knife102040_Act20(arg0, arg1, arg2)
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

function CrowdA_knife102040_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function CrowdA_knife102040_ActAfter_RealTime(arg0, arg1)
    return 
end

function CrowdA_knife102040Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function CrowdA_knife102040Battle_Terminate(arg0, arg1)
    return 
end

function CrowdA_knife102040Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetDist(TARGET_ENE_0)
        return false
    end
end

return 
