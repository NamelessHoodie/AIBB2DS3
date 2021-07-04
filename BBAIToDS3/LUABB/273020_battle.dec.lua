local local0 = 2
local local1 = 0 - local0
local local2 = 6.5 - local0
local local3 = 0.5 - local0
local local4 = 2 - local0
local local5 = 11.5 - local0
local local6 = 2.5 - local0
local local7 = 2.5 - local0
local local8 = 0.3 - local0
local local9 = 7.8 - local0
function OnIf_273020(arg0, arg1, arg2)
    if arg2 == 0 then
        Franken_Mstar273020_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Franken_Mstar273020Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local5 = 0
    local local6 = arg0:GetEventRequest(0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            local0[1] = 100
        else
            local0[20] = 100
        end
    elseif local4 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local4 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif 11 <= local3 then
        local0[1] = 0
        local0[2] = 30
        local0[3] = 0
        local0[4] = 0
        local0[5] = 50
        local0[6] = 20
    elseif 8 <= local3 then
        local0[1] = 0
        local0[2] = 10
        local0[3] = 30
        local0[4] = 20
        local0[5] = 0
        local0[6] = 20
    elseif 4 <= local3 then
        local0[1] = 10
        local0[2] = 0
        local0[3] = 20
        local0[4] = 20
        local0[5] = 0
        local0[6] = 10
    else
        local0[1] = 10
        local0[2] = 0
        local0[3] = 10
        local0[4] = 20
        local0[5] = 0
        local0[6] = 5
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Franken_Mstar273020_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Franken_Mstar273020_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Franken_Mstar273020_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Franken_Mstar273020_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Franken_Mstar273020_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Franken_Mstar273020_Act06)
    local1[20] = REGIST_FUNC(arg0, arg1, Franken_Mstar273020_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, Franken_Mstar273020_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Franken_Mstar273020_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Franken_Mstar273020_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
local0 = 7 - local0
local0 = local5
function Franken_Mstar273020_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    if arg0:GetDist(TARGET_ENE_0) <= 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, local2, 0, 0)
        if arg0:GetRandam_Int(1, 100) <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, UPVAL2 + 1, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL3 + 1, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.8 - local0
local0 = 0 - local0
function Franken_Mstar273020_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.7 - local0
local0 = 2 - local0
function Franken_Mstar273020_Act03(arg0, arg1, arg2)
    local local0 = UPVAL1
    local local1 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    if arg0:GetDist(TARGET_ENE_0) <= 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local1, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3004, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.8 - local0
local0 = 3 - local0
function Franken_Mstar273020_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 16.3 - local0
local0 = 11 - local0
function Franken_Mstar273020_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
local0 = 9.3 - local0
local0 = local5
local0 = 9.5 - local0
function Franken_Mstar273020_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL1
    local local2 = UPVAL2 + 1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    if arg0:GetDist(TARGET_ENE_0) <= 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, AttDist, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3007, TARGET_ENE_0, local2, 0, 0)
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL3 + 1, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, UPVAL4 + 1, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Franken_Mstar273020_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Franken_Mstar273020_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Franken_Mstar273020_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Franken_Mstar273020_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = arg0:GetRandam_Float(2, 3)
    local local6 = 0
    return 
end

function Franken_Mstar273020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Franken_Mstar273020Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Franken_Mstar273020Battle_Terminate(arg0, arg1)
    return 
end

function Franken_Mstar273020Battle_Interupt(arg0, arg1)
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
