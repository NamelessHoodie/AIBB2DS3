local local0 = 0.4
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 0 - local0
local local6 = 4.1 - local0
local local7 = 0 - local0
local local8 = 0 - local0
local local9 = 0 - local0
local local10 = 0 - local0
local local11 = 5.4 - local0
local local12 = 0 - local0
local local13 = 3.8 - local0
local local14 = 0 - local0
local local15 = 0 - local0
local local16 = 0 - local0
local local17 = 3.4 - local0
function OnIf_260020(arg0, arg1, arg2)
    if arg2 == 0 then
        FierceCrowd_Hoe260020_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function FierceCrowd_Hoe260020Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif 8 <= local3 then
        local0[1] = 30
        local0[2] = 20
        local0[3] = 0
        local0[4] = 40
        local0[5] = 10
    elseif 4 <= local3 then
        local0[1] = 30
        local0[2] = 20
        local0[3] = 10
        local0[4] = 20
        local0[5] = 20
    else
        local0[1] = 30
        local0[2] = 20
        local0[3] = 30
        local0[4] = 0
        local0[5] = 20
    end
    local1[1] = REGIST_FUNC(arg0, arg1, FierceCrowd_Hoe260020_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, FierceCrowd_Hoe260020_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, FierceCrowd_Hoe260020_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, FierceCrowd_Hoe260020_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, FierceCrowd_Hoe260020_Act05)
    local1[20] = REGIST_FUNC(arg0, arg1, FierceCrowd_Hoe260020_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, FierceCrowd_Hoe260020_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, FierceCrowd_Hoe260020_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, FierceCrowd_Hoe260020_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.7 - local0
local0 = 4.7 - local0
local0 = 3.8 - local0
local0 = 3.8 - local0
local0 = local11
local0 = local13
function FierceCrowd_Hoe260020_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    local local3 = UPVAL1 + 1
    local local4 = UPVAL2 + 1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0, 0, 5)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        if local0 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, UPVAL3 + 1, 0)
        end
    elseif local0 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local4, 0)
    elseif local0 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, UPVAL4 + 1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, UPVAL5 + 1, 0)
    end
    GetWellSpace_Odds = 70
    return GetWellSpace_Odds
end

local0 = 4.7 - local0
local0 = local11
local0 = local13
function FierceCrowd_Hoe260020_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0, 0, 5)
    end
    if local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, local2, 0, 0)
    elseif local0 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, UPVAL1 + 1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, UPVAL2 + 1, 0)
    end
    GetWellSpace_Odds = 70
    return GetWellSpace_Odds
end

local0 = 4.2 - local0
local0 = 3.9 - local0
local0 = local17
function FierceCrowd_Hoe260020_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0, 0, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, UPVAL1 + 1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, UPVAL2 + 1, 0)
    GetWellSpace_Odds = 70
    return GetWellSpace_Odds
end

local0 = 6.2 - local0
local0 = local17
function FierceCrowd_Hoe260020_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0 + 1
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0, 0, 5)
    end
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3015, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, UPVAL1 + 1, 0)
    end
    GetWellSpace_Odds = 70
    return GetWellSpace_Odds
end

local0 = 3.4 - local0
local0 = local17
function FierceCrowd_Hoe260020_Act05(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0 + 1
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0, 0, 5)
    end
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3017, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, UPVAL1 + 1, 0)
    end
    GetWellSpace_Odds = 70
    return GetWellSpace_Odds
end

function FierceCrowd_Hoe260020_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2.5, TARGET_ENE_0, 30, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FierceCrowd_Hoe260020_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FierceCrowd_Hoe260020_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FierceCrowd_Hoe260020_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = arg0:GetRandam_Float(2, 3)
    local local6 = 0
    if local0 <= 3 then
        if local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
        elseif local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
        elseif local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), false, true, -1)
        end
    elseif local0 <= 6 then
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2.2, TARGET_SELF, false, -1)
        elseif local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
        elseif local1 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
        end
    elseif local0 <= 30 then
        if local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 4, TARGET_SELF, false, -1)
        end
    end
    return 
end

function FierceCrowd_Hoe260020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function FierceCrowd_Hoe260020Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function FierceCrowd_Hoe260020Battle_Terminate(arg0, arg1)
    return 
end

function FierceCrowd_Hoe260020Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        if arg0:GetDist(TARGET_ENE_0) <= 2 and arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) and (not not arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8) or arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3025, TARGET_ENE_0, DIST_None, 0, 0)
            arg0:DeleteObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8)
            arg0:DeleteObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)
            return true
        else
            return false
        end
    end
end

return 
