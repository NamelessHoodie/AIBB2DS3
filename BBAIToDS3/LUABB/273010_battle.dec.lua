local local0 = 2
local local1 = 3.2 - local0
local local2 = 2.6 - local0
local local3 = 4 - local0
local local4 = 2.6 - local0
local local5 = 5.5 - local0
local local6 = 5 - local0
function OnIf_273010(arg0, arg1, arg2)
    if arg2 == 0 then
        Franken_Knucks273010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Franken_Knucks273010_Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = 0
    local local7 = arg0:GetEventRequest(0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        if local3 <= 3 then
            if arg0:GetRandam_Int(1, 100) <= 50 then
                local0[9] = 50
                local0[7] = 50
            else
                local0[20] = 100
            end
        else
            local0[20] = 100
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
        if local3 <= 3 then
            local0[9] = 100
        else
            local0[20] = 100
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
        if local3 <= 3 then
            local0[7] = 100
        else
            local0[20] = 100
        end
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif 5.5 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[4] = 50
        local0[5] = 50
        local0[6] = 0
        local0[8] = 0
    elseif 5.1 <= local3 then
        local0[1] = 20
        local0[2] = 30
        local0[4] = 0
        local0[5] = 50
        local0[6] = 0
        local0[8] = 0
    elseif 2.5 <= local3 then
        local0[1] = 30
        local0[2] = 50
        local0[4] = 0
        local0[5] = 0
        local0[6] = 10
        local0[8] = 10
    else
        local0[1] = 50
        local0[2] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 30
        local0[8] = 20
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Franken_Knucks273010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Franken_Knucks273010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Franken_Knucks273010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Franken_Knucks273010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Franken_Knucks273010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Franken_Knucks273010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Franken_Knucks273010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Franken_Knucks273010_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Franken_Knucks273010_Act09)
    local1[20] = REGIST_FUNC(arg0, arg1, Franken_Knucks273010_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, Franken_Knucks273010_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Franken_Knucks273010_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Franken_Knucks273010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 5.4 - local0
local0 = 2.4 - local0
local0 = 5.5 - local0
local0 = 4.9 - local0
local0 = 5.7 - local0
function Franken_Knucks273010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    local local4 = UPVAL2 + 1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    if local1 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, 0)
    elseif local1 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, local4, 0, 0)
        if arg0:GetRandam_Int(1, 100) <= 55 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, UPVAL3 + 1, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, UPVAL4 + 1, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.4 - local0
local0 = 4.2 - local0
local0 = 5.5 - local0
local0 = 6.5 - local0
local0 = 6.3 - local0
function Franken_Knucks273010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    local local4 = UPVAL2 + 1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    if local1 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, local3, 0, 0)
    elseif local1 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3031, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3031, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3032, TARGET_ENE_0, local4, 0, 0)
        if arg0:GetRandam_Int(1, 100) <= 55 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3033, TARGET_ENE_0, UPVAL3 + 1, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3034, TARGET_ENE_0, UPVAL4 + 1, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.5 - local0
local0 = 3 - local0
function Franken_Knucks273010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 14 - local0
local0 = 11.3 - local0
function Franken_Knucks273010_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.4 - local0
local0 = 5 - local0
function Franken_Knucks273010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.2 - local0
local0 = 2 - local0
function Franken_Knucks273010_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3 - local0
local0 = 2 - local0
function Franken_Knucks273010_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.2 - local0
local0 = 2.1 - local0
function Franken_Knucks273010_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3 - local0
local0 = 2 - local0
function Franken_Knucks273010_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Franken_Knucks273010_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Franken_Knucks273010_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Franken_Knucks273010_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Franken_Knucks273010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = arg0:GetRandam_Float(2, 3)
    local local6 = 0
    return 
end

function Franken_Knucks273010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Franken_Knucks273010_Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Franken_Knucks273010_Battle_Terminate(arg0, arg1)
    return 
end

function Franken_Knucks273010_Battle_Interupt(arg0, arg1)
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
