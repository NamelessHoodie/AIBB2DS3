local local0 = 1
local local1 = 0 - local0
local local2 = 4 - local0
local local3 = 0 - local0
local local4 = 4 - local0
local local5 = 0 - local0
local local6 = 4.9 - local0
local local7 = 0 - local0
local local8 = 6 - local0
local local9 = 0 - local0
local local10 = 5 - local0
local local11 = 0 - local0
local local12 = 6.4 - local0
local local13 = 0 - local0
local local14 = 5.8 - local0
local local15 = 0 - local0
local local16 = 6.4 - local0
local local17 = 0 - local0
local local18 = 14.3 - local0
local local19 = 0 - local0
local local20 = 7 - local0
local local21 = 0 - local0
local local22 = 10 - local0
local local23 = 0 - local0
local local24 = 10 - local0
local local25 = 0 - local0
local local26 = 10 - local0
local local27 = 0 - local0
local local28 = 6.8 - local0
local local29 = 0 - local0
local local30 = 5.4 - local0
local local31 = 0 - local0
local local32 = 5 - local0
local local33 = 0 - local0
local local34 = 11 - local0
local local35 = 0 - local0
local local36 = 10 - local0
function OnIf_551000(arg0, arg1, arg2)
    if arg2 == 0 then
        LesserDemon_Death_And_Darkness551000_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        LesserDemon_Death_And_Darkness551000_Act21(arg0, arg1, paramTbl)
    end
    return 
end

function LesserDemon_Death_And_Darkness551000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetEventRequest()
    local local6 = 0
    local local7 = 1 - arg0:GetHpRate(TARGET_SELF)
    if local5 == 100 then
        local6 = 1
    end
    if arg0:GetNumber(0) == 0 and local5 == -1 then
        arg0:SetTimer(0, 30)
        arg0:SetNumber(0, 1)
    end
    if local5 == 100 then
        arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    elseif local4 <= 70 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[20] = 100
    elseif arg0:GetNumber(1) == 0 and arg0:IsFinishTimer(0) == true and local6 == false then
        local0[8] = 100
    elseif local4 <= 65 and (arg0:GetTeamRecordCount(COORDINATE_TYPE_Attack, TARGET_ENE_0, 20) == 1 or arg0:GetTeamRecordCount(COORDINATE_TYPE_AttackOrder, TARGET_ENE_0, 20) == 1) and 5 <= local3 then
        local0[10] = 100
    elseif 10 <= local3 then
        local0[1] = 0
        local0[2] = 5
        local0[3] = 0
        local0[4] = 5
        local0[5] = 25
        local0[6] = 15
        local0[7] = 10 * local6
        local0[8] = 15
        local0[9] = 20 * local7
        local0[11] = 0
        local0[12] = 35 * local6
    elseif 7.5 <= local3 then
        local0[1] = 5
        local0[2] = 5
        local0[3] = 5
        local0[4] = 20
        local0[5] = 10
        local0[6] = 25
        local0[7] = 10 * local6
        local0[8] = 15
        local0[9] = 20 * local7
        local0[11] = 0
        local0[12] = 20 * local6
    elseif 5 <= local3 then
        local0[1] = 5
        local0[2] = 20
        local0[3] = 10
        local0[4] = 15
        local0[5] = 0
        local0[6] = 30
        local0[7] = 10 * local6
        local0[8] = 20
        local0[9] = 20 * local7
        local0[11] = 0
        local0[12] = 5 * local6
    elseif 2.5 <= local3 then
        local0[1] = 20
        local0[2] = 5
        local0[3] = 25
        local0[4] = 15
        local0[5] = 0
        local0[6] = 15
        local0[7] = 10 * local6
        local0[8] = 20
        local0[9] = 20 * local7
        local0[11] = 0
        local0[12] = 0 * local6
    else
        local0[1] = 35
        local0[2] = 5
        local0[3] = 20
        local0[4] = 10
        local0[5] = 0
        local0[6] = 10
        local0[7] = 10 * local6
        local0[8] = 20
        local0[9] = 20 * local7
        local0[11] = 0
        local0[12] = 0 * local6
    end
    if arg0:IsFinishTimer(1) == false then
        local0[9] = 0
    end
    if arg0:IsFinishTimer(0) == false or arg0:IsFinishTimer(2) == false or local6 == true then
        local0[8] = 0
    end
    if arg0:GetNumber(1) == 0 then
        local0[11] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, LesserDemon_Death_And_Darkness551000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, LesserDemon_Death_And_Darkness551000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, LesserDemon_Death_And_Darkness551000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, LesserDemon_Death_And_Darkness551000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, LesserDemon_Death_And_Darkness551000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, LesserDemon_Death_And_Darkness551000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, LesserDemon_Death_And_Darkness551000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, LesserDemon_Death_And_Darkness551000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, LesserDemon_Death_And_Darkness551000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, LesserDemon_Death_And_Darkness551000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, LesserDemon_Death_And_Darkness551000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, LesserDemon_Death_And_Darkness551000_Act12)
    local1[20] = REGIST_FUNC(arg0, arg1, LesserDemon_Death_And_Darkness551000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, LesserDemon_Death_And_Darkness551000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
function LesserDemon_Death_And_Darkness551000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetHpRate(TARGET_SELF)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0 + 5
    local local4 = UPVAL0
    local local5 = arg0:GetEventRequest()
    if local4 <= local0 then
        Approach_Act(arg0, arg1, local4, 999, 0, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
    if local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
function LesserDemon_Death_And_Darkness551000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetHpRate(TARGET_SELF)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = arg0:GetEventRequest()
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 999, 0, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
function LesserDemon_Death_And_Darkness551000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetHpRate(TARGET_SELF)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = arg0:GetEventRequest()
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 999, 0, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
function LesserDemon_Death_And_Darkness551000_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1.5
    local local1 = UPVAL0
    local local2 = arg0:GetEventRequest()
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local0, 0, 0)
    if arg0:GetHpRate(TARGET_SELF) <= 0.5 and arg0:GetRandam_Int(1, 100) <= 70 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, local0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, local0, 0)
        end
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, local0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local18
function LesserDemon_Death_And_Darkness551000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetHpRate(TARGET_SELF)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = arg0:GetEventRequest()
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 999, 0, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local20
function LesserDemon_Death_And_Darkness551000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetHpRate(TARGET_SELF)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = arg0:GetEventRequest()
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 999, 0, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local28
function LesserDemon_Death_And_Darkness551000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LesserDemon_Death_And_Darkness551000_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, Dist_None, 0, 0)
    arg0:SetNumber(1, 1)
    arg0:SetTimer(2, 120)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LesserDemon_Death_And_Darkness551000_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, Dist_None, 0, 0)
    arg0:SetTimer(1, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LesserDemon_Death_And_Darkness551000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 4.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LesserDemon_Death_And_Darkness551000_Act11(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 710, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local34
local0 = local36
function LesserDemon_Death_And_Darkness551000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetHpRate(TARGET_SELF)
    local local1 = UPVAL0
    local local2 = arg0:GetEventRequest()
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 5)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LesserDemon_Death_And_Darkness551000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local10
local0 = local8
local0 = local12
local0 = local28
local0 = local20
local0 = local34
local0 = local36
local0 = local18
function LesserDemon_Death_And_Darkness551000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= 5 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, 0)
        elseif local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL1, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL2, 0, 0)
        end
    elseif local0 <= 7 then
        if local1 <= 33 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL3, 0, 0)
        elseif local1 <= 66 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL4, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL5, 0, 0)
        end
    elseif local1 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL6, 0, 0)
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL7, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL8, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LesserDemon_Death_And_Darkness551000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function LesserDemon_Death_And_Darkness551000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetTeamRecordCount(COORDINATE_TYPE_Attack, TARGET_ENE_0, 20)
    local local3 = arg0:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L, TARGET_ENE_0, 20)
    local local4 = arg0:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_R, TARGET_ENE_0, 20)
    local local5 = arg0:GetTeamRecordCount(COORDINATE_TYPE_AttackOrder, TARGET_ENE_0, 20)
    local local6 = arg0:GetRandam_Float(3, 4)
    local local7 = arg0:GetRandam_Float(4, 7)
    if local0 <= 1.5 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            if (local2 == 1 or local5 == 1) and local1 <= 75 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            if local2 == 1 or local5 == 1 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            end
        elseif local2 == 1 or local5 == 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
        end
    elseif local0 <= 3.5 then
        if local3 == 1 and local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local7, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif local4 == 1 and local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif not (local4 == 1 or local3 == 1) or local1 > 100 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                if local2 == 1 or local5 == 1 then
                    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local7, TARGET_ENE_0, true, -1)
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
                end
            elseif local2 == 1 or local5 == 1 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
        end
    elseif local0 <= 6 then
        if local2 == 1 or local5 == 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif local3 == 1 and local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, local7, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif local4 == 1 and local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif local3 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif local4 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function LesserDemon_Death_And_Darkness551000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function LesserDemon_Death_And_Darkness551000Battle_Terminate(arg0, arg1)
    return 
end

function LesserDemon_Death_And_Darkness551000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInterupt(INTERUPT_Damaged) and arg0:IsFinishTimer(1) == true and arg0:GetRandam_Int(1, 100) <= 20 and arg0:GetHpRate(TARGET_SELF) <= 0.5 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, Dist_None, 0, -1)
        arg0:SetTimer(1, 20)
        return true
    elseif GuardBreak_Attack(arg0, arg1, 8, 50, 3005) then
        return true
    end
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    local local6 = Shoot_2dist(arg0, arg1, 6, 20, 20, 30)
    if local6 == 1 then
        if local4 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local6 == 2 then
        if local4 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
        return true
    end
    return false
end

return 
