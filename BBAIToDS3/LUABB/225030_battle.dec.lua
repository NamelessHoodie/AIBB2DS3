local local0 = 0.3
local local1 = 0 - local0
local local2 = 0 - local0
function OnIf_225030(arg0, arg1, arg2)
    if arg2 == 0 then
        WarderA_Sword225030_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function WarderA_Sword225030Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:GetEventRequest() == 10 then
        local0[24] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif 3.6 <= local3 then
        local0[1] = 17
        local0[2] = 0
        local0[5] = 0
        local0[8] = 17
        local0[9] = 49
        local0[10] = 17
        local0[11] = 0
    elseif 2.3 <= local3 then
        local0[1] = 25
        local0[2] = 15
        local0[5] = 15
        local0[8] = 15
        local0[9] = 0
        local0[10] = 15
        local0[11] = 15
    else
        local0[1] = 18
        local0[2] = 16
        local0[5] = 22
        local0[8] = 10
        local0[9] = 0
        local0[10] = 10
        local0[11] = 24
    end
    local1[1] = REGIST_FUNC(arg0, arg1, WarderA_Sword225030_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, WarderA_Sword225030_Act02)
    local1[5] = REGIST_FUNC(arg0, arg1, WarderA_Sword225030_Act05)
    local1[8] = REGIST_FUNC(arg0, arg1, WarderA_Sword225030_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, WarderA_Sword225030_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, WarderA_Sword225030_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, WarderA_Sword225030_Act11)
    local1[20] = REGIST_FUNC(arg0, arg1, WarderA_Sword225030_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, WarderA_Sword225030_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, WarderA_Sword225030_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, WarderA_Sword225030_Act24)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, WarderA_Sword225030_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.9 - local0
local0 = 0 - local0
function WarderA_Sword225030_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.1 - local0
local0 = 0 - local0
function WarderA_Sword225030_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.2 - local0
local0 = 0 - local0
function WarderA_Sword225030_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3027, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.6 - local0
local0 = 0 - local0
function WarderA_Sword225030_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.1 - local0
local0 = 0 - local0
function WarderA_Sword225030_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.8 - local0
local0 = 0 - local0
function WarderA_Sword225030_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 0.5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 1.8 - local0
local0 = 0 - local0
local0 = 2.7 - local0
local0 = 1.9 - local0
function WarderA_Sword225030_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    local local2 = UPVAL3 + 1
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        Approach_Act(arg0, arg1, UPVAL3, UPVAL3 + 0.5, local3, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, local2, 0, -1)
    else
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 0.5, local3, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, UPVAL2 + 1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WarderA_Sword225030_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_Sword225030_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_Sword225030_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_Sword225030_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_Sword225030_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 3)
    local local4 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_B, 120) then
            if local0 <= 50 then
                if local1 <= local4 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, 9910, true)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
                end
            elseif local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            end
        elseif local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(2, 3.5), TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
        elseif local0 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
        end
    elseif local1 <= local4 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, 9910, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function WarderA_Sword225030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function WarderA_Sword225030Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function WarderA_Sword225030Battle_Terminate(arg0, arg1)
    return 
end

function WarderA_Sword225030Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if Damaged_Step(arg0, arg1, 3, 15, 40, 30, 30, 4) then
        return true
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    if GuardBreak_Act(arg0, arg1, 4, 100) then
        if 2 <= arg0:GetDist(TARGET_ENE_0) then
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
        end
        return true
    end
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetDist(TARGET_ENE_0)
    local local7 = Shoot_2dist(arg0, arg1, 3, 20, 20, 40)
    if local7 == 1 then
        if local5 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local7 == 2 then
        if local5 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
        return true
    end
    return false
end

return 
