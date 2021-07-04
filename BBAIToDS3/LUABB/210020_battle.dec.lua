local local0 = 0.4
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 2.3 - local0
local local4 = 0 - local0
local local5 = 0 - local0
local local6 = 0 - local0
local local7 = 0 - local0
local local8 = 0 - local0
function OnIf_210000(arg0, arg1, arg2)
    if arg2 == 0 then
        EyeCollector_Boss210020_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        arg0:SetNumber(0, 1)
    end
    return 
end

function EyeCollector_Boss210020Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetDistY(TARGET_ENE_0)
    local local5 = arg0:GetEventRequest(2)
    arg0:SetNumber(0, 0)
    if arg0:GetEventRequest(0) == 100 then
        if local5 == 10 then
            local0[5] = 100
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            local0[20] = 100
        elseif not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            if local3 <= 3.2 then
                local0[3] = 100
                local0[20] = 100
            else
                local0[20] = 100
            end
        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 442) and arg0:GetRandam_Int(1, 100) <= 60 then
            if 2.3 <= local3 then
                local0[11] = 100
            else
                local0[10] = 100
            end
        elseif 8 <= local3 then
            local0[1] = 0
            local0[3] = 0
            local0[4] = 50
            local0[6] = 50
        elseif 3.2 <= local3 then
            local0[1] = 10
            local0[3] = 10
            local0[4] = 30
            local0[6] = 50
        elseif 2.4 <= local3 then
            local0[1] = 0
            local0[3] = 80
            local0[4] = 20
        else
            local0[1] = 40
            local0[3] = 50
            local0[4] = 10
        end
    elseif arg0:GetNpcThinkParamID() == 210020 then
        if local5 == 10 and arg0:IsFinishTimer(1) == true then
            local0[5] = 100
        elseif 12 <= local3 then
            local0[6] = 70
        elseif 6 <= local3 then
            local0[6] = 100
        elseif 3.5 <= local3 then
            local0[3] = 50
            local0[6] = 50
        else
            local0[1] = 50
            local0[3] = 50
        end
        if arg0:IsFinishTimer(0) == false and arg0:GetEventRequest(1) ~= 100 then
            local0[2] = 0
        end
    else
        local0[6] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, EyeCollector_Boss210020_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, EyeCollector_Boss210020_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, EyeCollector_Boss210020_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, EyeCollector_Boss210020_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, EyeCollector_Boss210020_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, EyeCollector_Boss210020_Act06)
    local1[10] = REGIST_FUNC(arg0, arg1, EyeCollector_Boss210020_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, EyeCollector_Boss210020_Act11)
    local1[15] = REGIST_FUNC(arg0, arg1, EyeCollector_Boss210020_Act15)
    local1[20] = REGIST_FUNC(arg0, arg1, EyeCollector_Boss210020_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, EyeCollector_Boss210020_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.4 - local0
function EyeCollector_Boss210020_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL0
    local local3 = 9999
    local local4 = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 120)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 20.6 - local0
function EyeCollector_Boss210020_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 0, 120)
    arg0:SetTimer(0, 30)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 4 - local0
function EyeCollector_Boss210020_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 9999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, 120)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 20.6 - local0
function EyeCollector_Boss210020_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EyeCollector_Boss210020_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:SetTimer(1, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EyeCollector_Boss210020_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_MOVE_POINT, 0.5, POINT_MOVE_POINT, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.3 - local0
function EyeCollector_Boss210020_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 4.6 - local0
function EyeCollector_Boss210020_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function EyeCollector_Boss210020_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EyeCollector_Boss210020_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2.5, TARGET_ENE_0, 30, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EyeCollector_Boss210020_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = arg0:GetRandam_Float(2, 3)
    local local6 = 0
    if local0 <= 3 then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif local0 <= 8 then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif local0 <= 30 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    end
    return 
end

function EyeCollector_Boss210020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function EyeCollector_Boss210020Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function EyeCollector_Boss210020Battle_Terminate(arg0, arg1)
    return 
end

function EyeCollector_Boss210020Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        local local4 = arg0:GetHpRate(TARGET_SELF)
        if arg0:IsInterupt(INTERUPT_Damaged) and arg0:GetNumber(0) == 0 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_NONE, DIST_None, 0, 0)
            arg0:SetNumber(0, 1)
            return true
        else
            return false
        end
    end
end

return 
