local local0 = 0.3
function OnIf_225040(arg0, arg1, arg2)
    if arg2 == 0 then
        WarderA_Empty225040_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function WarderA_Empty225040Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:GetEventRequest() == 100 then
        local0[10] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    else
        local0[1] = 50
        local0[2] = 50
    end
    local1[1] = REGIST_FUNC(arg0, arg1, WarderA_Empty225040_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, WarderA_Empty225040_Act02)
    local1[10] = REGIST_FUNC(arg0, arg1, WarderA_Empty225040_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, WarderA_Empty225040_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, WarderA_Empty225040_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, WarderA_Empty225040_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, WarderA_Empty225040_Act24)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, WarderA_Empty225040_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.2 - local0
local0 = 0 - local0
function WarderA_Empty225040_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3027, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.8 - local0
local0 = 0 - local0
function WarderA_Empty225040_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3028, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WarderA_Empty225040_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, 1, 1, 0, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WarderA_Empty225040_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_Empty225040_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_Empty225040_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_Empty225040_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 3)
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(2, 3.5), TARGET_NONE, 0, 0, 0)
    return 
end

function WarderA_Empty225040_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function WarderA_Empty225040Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function WarderA_Empty225040Battle_Terminate(arg0, arg1)
    return 
end

function WarderA_Empty225040Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
