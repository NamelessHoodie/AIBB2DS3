local local0 = 0.3
local local1 = 0.3 - local0
local local2 = 999 - local0
function OnIf_274000(arg0, arg1, arg2)
    if arg2 == 0 then
        Student274000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Student274000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = 0
    local local7 = 1
    if 274010 <= arg0:GetNpcThinkParamID() then
        local6 = 1
        local7 = 0
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[21] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5619) then
        local0[9] = 10 * local6
        local0[10] = 10 * local6
    elseif 8 <= local3 then
        local0[1] = 10
        local0[2] = 10 * local7
        local0[3] = 10 * local7
        local0[4] = 10 * local7
        local0[5] = 10 * local6
        local0[6] = 10 * local6
        local0[7] = 10
        local0[8] = 10 * local7
        local0[9] = 10 * local6
        local0[10] = 10 * local6
        local0[11] = 10 * local6
    elseif 4 <= local3 then
        local0[1] = 10
        local0[2] = 10 * local7
        local0[3] = 10 * local7
        local0[4] = 0 * local7
        local0[5] = 10 * local6
        local0[6] = 10 * local6
        local0[7] = 10
        local0[8] = 10 * local7
        local0[9] = 0 * local6
        local0[10] = 0 * local6
        local0[11] = 10 * local6
    else
        local0[1] = 10
        local0[2] = 10 * local7
        local0[3] = 10 * local7
        local0[4] = 0 * local7
        local0[5] = 10 * local6
        local0[6] = 10 * local6
        local0[7] = 0
        local0[8] = 0 * local7
        local0[9] = 0 * local6
        local0[10] = 0 * local6
        local0[11] = 10 * local6
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Student274000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Student274000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Student274000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Student274000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Student274000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Student274000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Student274000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Student274000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Student274000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Student274000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Student274000_Act11)
    local1[21] = REGIST_FUNC(arg0, arg1, Student274000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, Student274000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Student274000_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Student274000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 4.3 - local0
local0 = 0.3 - local0
function Student274000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
local0 = 0.4 - local0
function Student274000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 5 - local0
local0 = 0.3 - local0
function Student274000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 7.6 - local0
local0 = 0.3 - local0
function Student274000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 4.8 - local0
local0 = 0.3 - local0
function Student274000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 6.5 - local0
local0 = 0.3 - local0
function Student274000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
local0 = 0.3 - local0
function Student274000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 7.3 - local0
local0 = 0.3 - local0
function Student274000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 15 - local0
local0 = 0.3 - local0
function Student274000_Act09(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    if 1 <= arg0:GetMp(TARGET_SELF) then
        if local0 <= arg0:GetDist(TARGET_ENE_0) and not arg0:HasSpecialEffectId(TARGET_SELF, 5619) then
            Approach_Act(arg0, arg1, local0, UPVAL0 + 1, 0, 2)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local2, 0, -1)
    else
        if arg0:GetRandam_Int(1, 100) <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 15 - local0
local0 = 0.3 - local0
function Student274000_Act10(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    if 1 <= arg0:GetMp(TARGET_SELF) then
        if local0 <= arg0:GetDist(TARGET_ENE_0) and not arg0:HasSpecialEffectId(TARGET_SELF, 5619) then
            Approach_Act(arg0, arg1, local0, UPVAL0 + 1, 0, 2)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, local2, 0, -1)
    else
        if arg0:GetRandam_Int(1, 100) <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 6 - local0
local0 = 0.3 - local0
function Student274000_Act11(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    if 1 <= arg0:GetMp(TARGET_SELF) then
        if local0 <= arg0:GetDist(TARGET_ENE_0) and not arg0:HasSpecialEffectId(TARGET_SELF, 5619) then
            Approach_Act(arg0, arg1, local0, UPVAL0 + 10, 0, 2)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, local2, 0, -1)
    else
        if arg0:GetRandam_Int(1, 100) <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function Student274000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Student274000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Student274000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Student274000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = arg0:GetRandam_Float(2, 3)
    local local6 = 0
    if local0 <= 2 then
        if local1 <= 0 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
        elseif local1 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif local0 <= 5 then
        if local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif local0 <= 10 and local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
    end
    return 
end

function Student274000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Student274000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Student274000Battle_Terminate(arg0, arg1)
    return 
end

function Student274000Battle_Interupt(arg0, arg1)
    return false
end

return 
