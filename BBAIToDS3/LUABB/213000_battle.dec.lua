local local0 = 0.9
local local1 = 1.2 - local0
local local2 = 5.7 - local0
local local3 = 1.2 - local0
local local4 = 5.5 - local0
local local5 = 1.2 - local0
local local6 = 4.1 - local0
local local7 = 1.2 - local0
local local8 = 10.3 - local0
local local9 = 3.1 - local0
local local10 = 8.7 - local0 - 0.6
local local11 = 8 - local0
local local12 = 13 - local0 - 0.7
local local13 = 1.2 - local0
local local14 = 3.6 - local0
local local15 = 1.2 - local0
local local16 = 3.5 - local0
local local17 = 1.2 - local0
local local18 = 5.5 - local0
function OnIf_213000(arg0, arg1, arg2)
    if arg2 == 0 then
        Blood_Lapper213000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Blood_Lapper213000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = 1
    local local7 = 1
    if arg0:GetNpcThinkParamID() == 213000 then
        local6 = 1
        local7 = 1
    elseif arg0:GetNpcThinkParamID() == 213010 then
        local6 = 0
        local7 = 1
    elseif arg0:GetNpcThinkParamID() == 213020 then
        local6 = 0
        local7 = 0
    else
        local6 = 1
        local7 = 1
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 30) and local3 <= 4 and arg0:IsFinishTimer(0) == true then
        local0[8] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif 10.6 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 5
        local0[4] = 10
        local0[5] = 10 * local7
        local0[6] = 40 * local6
        local0[7] = 5
        local0[8] = 0
        local0[9] = 10
        local0[10] = 0
    elseif 8 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 5
        local0[4] = 10
        local0[5] = 30 * local7
        local0[6] = 20 * local6
        local0[7] = 5
        local0[8] = 0
        local0[9] = 10
        local0[10] = 0
    elseif 3.1 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 5
        local0[4] = 0
        local0[5] = 40 * local7
        local0[6] = 0 * local6
        local0[7] = 5
        local0[8] = 0
        local0[9] = 10
        local0[10] = 0
    else
        local0[1] = 30
        local0[2] = 30
        local0[3] = 10
        local0[4] = 0
        local0[5] = 0 * local7
        local0[6] = 0 * local6
        local0[7] = 10
        local0[8] = 0
        local0[9] = 20
        local0[10] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act23)
    local1[30] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, Blood_Lapper213000_Act42)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Blood_Lapper213000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
function Blood_Lapper213000_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    if 7 <= arg0:GetDist(TARGET_ENE_0) and arg0:GetNpcThinkParamID() ~= 213020 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 2, 700, TARGET_ENE_0, local0, 0)
    else
        Approach_Act(arg0, arg1, local0, UPVAL0 + 1, 0, 2)
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function Blood_Lapper213000_Act02(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    if 7 <= arg0:GetDist(TARGET_ENE_0) and arg0:GetNpcThinkParamID() ~= 213020 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 2, 700, TARGET_ENE_0, local0, 0)
    else
        Approach_Act(arg0, arg1, local0, UPVAL0 + 1, 0, 2)
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
function Blood_Lapper213000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    if 7 <= arg0:GetDist(TARGET_ENE_0) and arg0:GetNpcThinkParamID() ~= 213020 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 2, 700, TARGET_ENE_0, local1, 0)
    else
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function Blood_Lapper213000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    if 7 <= arg0:GetDist(TARGET_ENE_0) and arg0:GetNpcThinkParamID() ~= 213020 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 2, 700, TARGET_ENE_0, local1, 0)
    else
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Blood_Lapper213000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    if 7 <= arg0:GetDist(TARGET_ENE_0) and arg0:GetNpcThinkParamID() ~= 213020 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 2, 700, TARGET_ENE_0, local1, 0)
    else
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function Blood_Lapper213000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    if 7 <= arg0:GetDist(TARGET_ENE_0) and arg0:GetNpcThinkParamID() ~= 213020 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 2, 700, TARGET_ENE_0, local1, 0)
    else
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local14
local0 = local13
function Blood_Lapper213000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    if 7 <= arg0:GetDist(TARGET_ENE_0) and arg0:GetNpcThinkParamID() ~= 213020 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 2, 700, TARGET_ENE_0, local1, 0)
    else
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function Blood_Lapper213000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = 0
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3009, TARGET_ENE_0, UPVAL0 + 1)
    arg0:SetTimer(0, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local18
local0 = local17
function Blood_Lapper213000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    if 7 <= arg0:GetDist(TARGET_ENE_0) and arg0:GetNpcThinkParamID() ~= 213020 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 2, 700, TARGET_ENE_0, local1, 0)
    else
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Blood_Lapper213000_Act10(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Blood_Lapper213000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Blood_Lapper213000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Blood_Lapper213000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Blood_Lapper213000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6 - local0
local0 = 1.2 - local0
function Blood_Lapper213000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function Blood_Lapper213000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.8 - local0
local0 = 1.2 - local0
function Blood_Lapper213000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
function Blood_Lapper213000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function Blood_Lapper213000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Blood_Lapper213000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function Blood_Lapper213000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
local0 = local13
function Blood_Lapper213000_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function Blood_Lapper213000_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3009, TARGET_ENE_0, UPVAL0 + 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local18
local0 = local17
function Blood_Lapper213000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Blood_Lapper213000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function Blood_Lapper213000_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Blood_Lapper213000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(1.5, 3)
    local local5 = arg0:GetRandam_Float(2, 3)
    local local6 = 0
    if local0 <= 3.5 then
        if local1 <= 0 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
        elseif local1 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif local0 > 5 and local0 <= 10 and local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
    end
    return 
end

function Blood_Lapper213000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Blood_Lapper213000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Blood_Lapper213000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local10
local0 = local12
function Blood_Lapper213000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = 10
    if arg0:GetNpcThinkParamID() == 213020 then
        local4 = 0
    end
    if Damaged_Step(arg0, arg1, 3, local4, 40, 30, 30, 4) then
        return true
    end
    local local5 = 0
    local local6 = 0
    local local7 = arg0:GetRandam_Int(1, 100)
    local local8 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetNpcThinkParamID() == 213010 then
        local5 = 4
        local6 = UPVAL0
    elseif arg0:GetNpcThinkParamID() == 213000 then
        local5 = 6
        local6 = UPVAL1
    else
        local5 = 0
        local6 = 0
    end
    local local9 = Shoot_2dist(arg0, arg1, local5, local6, 40, 40)
    if local9 == 1 then
        if local7 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
        return true
    elseif local9 == 2 then
        if local7 <= 25 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        elseif local7 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        elseif arg0:GetNpcThinkParamID() == 213010 then
            Blood_Lapper213000_Act05(arg0, arg1, paramTbl)
        elseif arg0:GetNpcThinkParamID() == 213000 then
            Blood_Lapper213000_Act06(arg0, arg1, paramTbl)
        end
        return true
    else
        return false
    end
end

return 
