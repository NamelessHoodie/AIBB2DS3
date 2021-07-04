local local0 = 0.3
local local1 = 0 - local0
local local2 = 2.9 - local0
local local3 = 0 - local0
local local4 = 3.1 - local0
local local5 = 2.6 - local0
local local6 = 4.7 - local0
local local7 = 0 - local0
local local8 = 2.7 - local0
local local9 = 0 - local0
local local10 = 2 - local0
local local11 = 0 - local0
local local12 = 1.9 - local0
function OnIf_225010(arg0, arg1, arg2)
    if arg2 == 0 then
        WarderA_SwordAndShield225010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function WarderA_SwordAndShield225010Battle_Activate(arg0, arg1)
    ObserveAreaForBackstab(arg0, arg1, 0, 5, 30)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = 1
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if 2 <= arg0:GetNumFriend(6) then
        local5 = 0
    else
        local5 = 1
    end
    if local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    else
        local0[1] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndShield225010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndShield225010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndShield225010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndShield225010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndShield225010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndShield225010_Act06)
    local1[20] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndShield225010_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndShield225010_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndShield225010_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, WarderA_SwordAndShield225010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.8 - local0
local0 = 0 - local0
function WarderA_SwordAndShield225010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = UPVAL0
    local local6 = UPVAL1
    local local7 = UPVAL0 + 0.5
    local local8 = UPVAL0 + 1.5
    local local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local5
local0 = 0 - local0
function WarderA_SwordAndShield225010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
local0 = 0 - local0
function WarderA_SwordAndShield225010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.8 - local0
local0 = 0 - local0
function WarderA_SwordAndShield225010_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 0.5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.8 - local0
local0 = 0 - local0
function WarderA_SwordAndShield225010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 0.5, 0, 2)
    if local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local3, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local3, 0, -1)
        if local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local3, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.2 - local0
local0 = 0 - local0
function WarderA_SwordAndShield225010_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3027, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WarderA_SwordAndShield225010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_SwordAndShield225010_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_SwordAndShield225010_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_SwordAndShield225010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 3.5)
    local local4 = arg0:GetRandam_Float(2, 4)
    local local5 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_B, 120) then
            if local0 <= 50 then
                if local1 <= local5 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, 9910, true)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
                end
            elseif local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            end
        elseif local0 <= 30 then
            if local1 <= local5 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 4, TARGET_ENE_0, true, 9910)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, 9910, true)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        elseif local0 <= 80 then
            if local1 <= local5 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, 9910, true)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        end
    elseif local1 <= local5 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, 9910, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function WarderA_SwordAndShield225010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function WarderA_SwordAndShield225010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function WarderA_SwordAndShield225010Battle_Terminate(arg0, arg1)
    return 
end

local0 = local6
local0 = local5
function WarderA_SwordAndShield225010Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if Damaged_Step(arg0, arg1, 3, 100, 100, 0, 0, 4) then
        return true
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    if GuardBreak_Act(arg0, arg1, 4, 40) then
        if 2 <= arg0:GetDist(TARGET_ENE_0) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL1, 0, -1)
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
    if Parry_Act(arg0, arg1, 3, 60, 4, 60) then
        return true
    else
        return false
    end
end

return 
