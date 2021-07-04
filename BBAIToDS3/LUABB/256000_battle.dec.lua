local local0 = 0.3
local local1 = 0 - local0
local local2 = 4 - local0
local local3 = 0 - local0
local local4 = 5 - local0
local local5 = 0 - local0
local local6 = 5 - local0
local local7 = 0 - local0
local local8 = 5 - local0
local local9 = 1.8 - local0
local local10 = 5.2 - local0
function OnIf_256000(arg0, arg1, arg2)
    if arg2 == 0 then
        Hozuki256000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Hozuki256000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 0
        local0[8] = 100
    elseif 5 <= arg0:GetDist(TARGET_ENE_0) then
        local0[1] = 0
        local0[2] = 0
        local0[8] = 100
        local0[10] = 0
    else
        local0[1] = 0
        local0[2] = 0
        local0[8] = 0
        local0[10] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Hozuki256000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Hozuki256000_Act02)
    local1[8] = REGIST_FUNC(arg0, arg1, Hozuki256000_Act08)
    local1[10] = REGIST_FUNC(arg0, arg1, Hozuki256000_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, Hozuki256000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Hozuki256000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.3 - local0
local0 = 0 - local0
function Hozuki256000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, 9999, 0, 2)
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
    elseif local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3 - local0
local0 = 0 - local0
function Hozuki256000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, 9999, 0, 2)
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, -1)
    elseif local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Hozuki256000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 7
    Approach_Act(arg0, arg1, 6, 9999, 0, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.5 - local0
local0 = 0 - local0
function Hozuki256000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 1.5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3 - local0
local0 = 0 - local0
function Hozuki256000_Act20(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = 9999
    local local3 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 3.5 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Hozuki256000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    return 
end

function Hozuki256000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Hozuki256000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Hozuki256000Battle_Terminate(arg0, arg1)
    return 
end

function Hozuki256000Battle_Interupt(arg0, arg1)
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
