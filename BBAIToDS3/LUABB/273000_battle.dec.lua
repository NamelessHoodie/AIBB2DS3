local local0 = 2
local local1 = 0 - local0
local local2 = 8.7 - local0
local local3 = 2 - local0
local local4 = 8.5 - local0
local local5 = 1 - local0
local local6 = 5.6 - local0
local local7 = 1 - local0
local local8 = 4 - local0
function OnIf_273000(arg0, arg1, arg2)
    if arg2 == 0 then
        Franken_Axe273000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Franken_Axe273000Battle_Activate(arg0, arg1)
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
        if local4 <= 50 then
            local0[5] = 100
        else
            local0[20] = 100
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
        if local3 <= 3.5 then
            local0[5] = 100
        else
            local0[20] = 100
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
        if local4 <= 50 then
            local0[3] = 100
        else
            local0[20] = 100
        end
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif 11.5 <= local3 then
        local0[1] = 5
        local0[2] = 10
        local0[3] = 5
        local0[4] = 10
        local0[6] = 30
        local0[7] = 0
        local0[8] = 30
    elseif 7.2 <= local3 then
        local0[1] = 10
        local0[2] = 15
        local0[3] = 5
        local0[4] = 15
        local0[6] = 0
        local0[7] = 0
        local0[8] = 5
    elseif 4 <= local3 then
        local0[1] = 10
        local0[2] = 20
        local0[3] = 10
        local0[4] = 15
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
    else
        local0[1] = 10
        local0[2] = 15
        local0[3] = 5
        local0[4] = 10
        local0[5] = 10
        local0[6] = 0
        local0[7] = 20
        local0[8] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Franken_Axe273000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Franken_Axe273000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Franken_Axe273000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Franken_Axe273000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Franken_Axe273000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Franken_Axe273000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Franken_Axe273000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Franken_Axe273000_Act08)
    local1[20] = REGIST_FUNC(arg0, arg1, Franken_Axe273000_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, Franken_Axe273000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Franken_Axe273000_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Franken_Axe273000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 7.2 - local0
local0 = 0 - local0
local0 = 7.4 - local0
local0 = local2
local0 = 7.9 - local0
local0 = 9.2 - local0
function Franken_Axe273000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = UPVAL2 + 1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    if local1 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, 0)
    elseif local1 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, 0)
        if local2 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local5, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, UPVAL5 + 1, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local5, 0, 0)
        if local2 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, UPVAL4 + 1, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL3 + 1, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
local0 = 2 - local0
function Franken_Axe273000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.2 - local0
local0 = 1.5 - local0
function Franken_Axe273000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 9.4 - local0
local0 = 3 - local0
function Franken_Axe273000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.1 - local0
local0 = 0 - local0
function Franken_Axe273000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 16.3 - local0
local0 = 11.5 - local0
function Franken_Axe273000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.9 - local0
local0 = 0.3 - local0
function Franken_Axe273000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 13.6 - local0
local0 = 4.5 - local0
function Franken_Axe273000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Franken_Axe273000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Franken_Axe273000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Franken_Axe273000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Franken_Axe273000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = arg0:GetRandam_Float(2, 3)
    local local6 = 0
    return 
end

function Franken_Axe273000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Franken_Axe273000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Franken_Axe273000Battle_Terminate(arg0, arg1)
    return 
end

function Franken_Axe273000Battle_Interupt(arg0, arg1)
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
