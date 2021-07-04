local local0 = 0.4
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 2.2 - local0
local local4 = 0 - local0
local local5 = 20.6 - local0
local local6 = 0 - local0
local local7 = 4 - local0
local local8 = 0 - local0
local local9 = 20.6 - local0
local local10 = 0 - local0
local local11 = 0 - local0
function OnIf_210030(arg0, arg1, arg2)
    if arg2 == 0 then
        EyeCollector210030_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function EyeCollector210030Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = 0
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg0:GetEventRequest()
    if arg0:IsFinishTimer(0) == true and arg0:GetDistY(TARGET_ENE_0) < 0.1 then
        local4 = 1
    end
    if local6 == 10 then
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
    elseif local6 == 20 then
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif 2 <= arg0:GetDist(TARGET_ENE_0) then
        local0[1] = 1
        local0[2] = 0
        local0[3] = 0
        local0[4] = 100 * local4
    else
        local0[1] = 1
        local0[2] = 0
        local0[3] = 100 * local4
        local0[4] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, EyeCollector210030_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, EyeCollector210030_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, EyeCollector210030_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, EyeCollector210030_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, EyeCollector210030_Act05)
    local1[20] = REGIST_FUNC(arg0, arg1, EyeCollector210030_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, EyeCollector210030_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.4 - local0
function EyeCollector210030_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist0, 0, 120)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function EyeCollector210030_Act02(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.2 - local0
function EyeCollector210030_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetTimer(0, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.6 - local0
function EyeCollector210030_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetTimer(0, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function EyeCollector210030_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(5, 7)
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EyeCollector210030_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2.5, TARGET_ENE_0, 30, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EyeCollector210030_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 4)
    if local0 <= 3 then
        if local1 <= 33 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif local0 <= 6 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function EyeCollector210030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function EyeCollector210030Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function EyeCollector210030Battle_Terminate(arg0, arg1)
    return 
end

function EyeCollector210030Battle_Interupt(arg0, arg1)
    return false
end

return 
