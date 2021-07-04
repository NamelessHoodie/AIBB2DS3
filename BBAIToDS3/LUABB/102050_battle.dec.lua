local local0 = 0.3
local local1 = 0.3 - local0
local local2 = 1.9 - local0
local local3 = 0.3 - local0
local local4 = 2.9 - local0
local local5 = 0.3 - local0
local local6 = 2.6 - local0
local local7 = 0.3 - local0
local local8 = 3.1 - local0
local local9 = 0.3 - local0
local local10 = 2.9 - local0
local local11 = 0.3 - local0
local local12 = 0.3 - local0
local local13 = 0.3 - local0
local local14 = 0.3 - local0
function OnIf_102050(arg0, arg1, arg2)
    if arg2 == 0 then
        CrowdA_Sickle102050_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        CrowdA_Sickle102050_StepAttack(arg0, arg1)
    end
    return 
end

function CrowdA_Sickle102050Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if (arg0:GetNpcThinkParamID() == 102056 or arg0:GetNpcThinkParamID() == 102451) and arg0:GetNumber(0) == 0 then
        local0[4] = 100
    elseif arg0:GetNpcThinkParamID() == 102098 or arg0:GetNpcThinkParamID() == 102498 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsFinishTimer(0) == true and arg0:GetNumber(1) == 1 then
            local0[9] = 30
            local0[12] = 70
        else
            local0[9] = 100
        end
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_kankyaku then
        local0[10] = 50
        local0[11] = 50
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 5
        local0[2] = 5
        local0[3] = 0
        local0[4] = 0
        local0[10] = 45
        local0[11] = 45
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif 5.5 <= local3 then
        local0[1] = 15
        local0[2] = 25
        local0[3] = 0
        local0[4] = 0
        local0[5] = 10
        local0[6] = 50
    elseif 3.5 <= local3 then
        local0[1] = 10
        local0[2] = 20
        local0[3] = 0
        local0[4] = 0
        local0[5] = 20
        local0[6] = 50
    elseif 2 <= local3 then
        local0[1] = 30
        local0[2] = 20
        local0[3] = 10
        local0[4] = 0
        local0[5] = 20
        local0[6] = 20
    else
        local0[1] = 15
        local0[2] = 10
        local0[3] = 20
        local0[4] = 0
        local0[5] = 25
        local0[6] = 30
    end
    local1[1] = REGIST_FUNC(arg0, arg1, CrowdA_Sickle102050_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, CrowdA_Sickle102050_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, CrowdA_Sickle102050_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, CrowdA_Sickle102050_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, CrowdA_Sickle102050_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, CrowdA_Sickle102050_Act06)
    local1[9] = REGIST_FUNC(arg0, arg1, CrowdA_Sickle102050_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, CrowdA_Sickle102050_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, CrowdA_Sickle102050_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, CrowdA_Sickle102050_Act12)
    local1[20] = REGIST_FUNC(arg0, arg1, CrowdA_Sickle102050_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, CrowdA_Sickle102050_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local4
local0 = local6
local0 = local8
function CrowdA_Sickle102050_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 0.5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, UPVAL1 + 0.5, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, UPVAL2 + 0.5, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
function CrowdA_Sickle102050_Act02(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 0.5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2 - local0
function CrowdA_Sickle102050_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 0.5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.3 - local0
function CrowdA_Sickle102050_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
function CrowdA_Sickle102050_Act05(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 0.5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowdA_Sickle102050_Act06(arg0, arg1, arg2)
    local local0 = 2
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local4
local0 = local6
local0 = local8
local0 = local10
function CrowdA_Sickle102050_StepAttack(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1 + 0.5
    local local2 = UPVAL2 + 0.5
    local local3 = UPVAL3 + 0.5
    local local4 = arg0:GetRandam_Int(1, 100)
    if local0 <= 1.5 then
        if local4 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, local1, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, local2, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, local3, 0)
        end
    elseif local0 <= 2.5 then
        if local4 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, local1, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, local2, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL4 + 0.5, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
    end
    return 
end

function CrowdA_Sickle102050_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 0.7, TARGET_ENE_0, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 2, TARGET_ENE_0, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    arg0:SetNumber(1, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_Sickle102050_Act10(arg0, arg1, arg2)
    local local0 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_Sickle102050_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.2 - local0
local0 = 2.7 - local0
function CrowdA_Sickle102050_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL0
    local local3 = arg0:GetRandam_Int(1, 100)
    if local0 <= 1.8 then
        local1 = UPVAL1
    end
    Approach_Act(arg0, arg1, local1, 999, 0, 3)
    if 1.8 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3037, TARGET_ENE_0, UPVAL0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, UPVAL1, 0, 0)
    end
    arg0:SetTimer(0, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_Sickle102050_Act20(arg0, arg1, arg2)
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

function CrowdA_Sickle102050_StepToEscape(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 3, 2) ~= false or arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 2, 2) ~= false or arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 2, 2) ~= false then
            if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 3, 2) == false then
                if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 2, 2) == false and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 6, 2) == true then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                elseif arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 2, 2) == false and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 6, 2) == true then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                elseif arg0:GetRandam_Int(1, 100) <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            end
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 2, 2) ~= false or arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 3, 2) ~= false then
            if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 2, 2) == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        end
    elseif arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 2, 2) ~= false or arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 3, 2) ~= false then
        if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 2, 2) == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    end
    return 
end

function CrowdA_Sickle102050_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function CrowdA_Sickle102050_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(1.5, 2.5)
    if arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer) == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if local0 <= 2 then
            CrowdA_Sickle102050_StepToEscape(arg0, arg1)
        elseif local0 <= 3.5 then
            if local1 <= 40 then
                CrowdA_Sickle102050_StepToEscape(arg0, arg1)
            end
        elseif local0 <= 5.5 then
            if local1 <= 50 then
                CrowdA_Sickle102050_StepToEscape(arg0, arg1)
            end
        elseif local0 <= 5.5 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            end
        elseif local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif local0 <= 6 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
    end
    return 
end

function CrowdA_Sickle102050Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function CrowdA_Sickle102050Battle_Terminate(arg0, arg1)
    return 
end

function CrowdA_Sickle102050Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetDist(TARGET_ENE_0)
        if arg0:IsInterupt(INTERUPT_Damaged) and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 270) and arg0:GetRandam_Int(1, 100) <= 70 and arg0:GetNpcThinkParamID() ~= 102098 then
            arg1:ClearSubGoal()
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
            return true
        else
            return false
        end
    end
end

return 
