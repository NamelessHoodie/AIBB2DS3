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
        EyeCollector210000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function EyeCollector210000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg0:GetNumber(0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        if local3 <= 3.2 then
            local0[3] = 50
            local0[20] = 50
        else
            local0[20] = 100
        end
    elseif 8 <= local3 then
        local0[4] = 20
        local0[15] = 80
    elseif 3.2 <= local3 then
        local0[1] = 0
        local0[2] = 35
        local0[3] = 0
        local0[4] = 35
        local0[15] = 30
    elseif 2.4 <= local3 then
        local0[1] = 0
        local0[2] = 20
        local0[3] = 30
        local0[4] = 20
        local0[11] = 30
        local0[15] = 10
    else
        local0[1] = 30
        local0[2] = 0
        local0[3] = 40
        local0[4] = 0
        local0[10] = 30
        local0[11] = 0
        local0[15] = 10
    end
    if local6 == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if local6 == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if local6 == 3 and 0 < local0[3] then
        local0[3] = 1
    end
    if local6 == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if local6 == 10 and 0 < local0[10] then
        local0[10] = 1
    end
    if local6 == 11 and 0 < local0[11] then
        local0[11] = 1
    end
    if 0.1 <= arg0:GetDistY(TARGET_ENE_0) then
        local0[4] = 0
    end
    if arg0:IsFinishTimer(0) == false then
        local0[2] = 0
    end
    if arg0:IsFinishTimer(1) == false then
        local0[4] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, EyeCollector210000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, EyeCollector210000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, EyeCollector210000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, EyeCollector210000_Act04)
    local1[10] = REGIST_FUNC(arg0, arg1, EyeCollector210000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, EyeCollector210000_Act11)
    local1[15] = REGIST_FUNC(arg0, arg1, EyeCollector210000_Act15)
    local1[20] = REGIST_FUNC(arg0, arg1, EyeCollector210000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, EyeCollector210000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.4 - local0
function EyeCollector210000_Act01(arg0, arg1, arg2)
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
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 20.6 - local0
function EyeCollector210000_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 0, 120)
    arg0:SetTimer(0, 20)
    arg0:SetNumber(0, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4 - local0
function EyeCollector210000_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, 120)
    arg0:SetNumber(0, 3)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 20.6 - local0
function EyeCollector210000_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetTimer(1, 30)
    arg0:SetNumber(0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.3 - local0
function EyeCollector210000_Act10(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(0, 10)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 4.6 - local0
function EyeCollector210000_Act11(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(0, 11)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function EyeCollector210000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EyeCollector210000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2.5, TARGET_ENE_0, 30, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EyeCollector210000_ActAfter_RealTime(arg0, arg1)
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

function EyeCollector210000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function EyeCollector210000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function EyeCollector210000Battle_Terminate(arg0, arg1)
    return 
end

function EyeCollector210000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
