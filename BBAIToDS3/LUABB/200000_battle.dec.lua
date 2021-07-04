local local0 = 0.7
local local1 = 0.7 - local0
local local2 = 3.9 - local0
local local3 = 0.7 - local0
local local4 = 6.1 - local0
local local5 = 0.7 - local0
local local6 = 0.7 - local0
local local7 = 0.7 - local0
local local8 = 3 - local0
local local9 = 0.7 - local0
local local10 = 3.6 - local0
local local11 = 0.7 - local0
local local12 = 4 - local0
local local13 = 0.7 - local0
local local14 = 12.1 - local0
local local15 = 0.7 - local0
local local16 = 2.2 - local0
local local17 = 0.7 - local0
local local18 = 9.1 - local0
local local19 = 7.1 - local0
local local20 = 11.1 - local0
local local21 = 9.1 - local0
local local22 = 14 - local0
local local23 = 0.7 - local0
local local24 = 2.5 - local0
local local25 = 6.3 - local0
function OnIf_200000(arg0, arg1, arg2)
    if arg2 == 0 then
        Executioner200000_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        Executioner200000_AddAttack(arg0, arg1)
    end
    return 
end

function Executioner200000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = 1
    arg0:StartGuard(9910)
    if arg0:GetNumber(1) == 1 then
        arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 10)
    end
    if arg0:IsFinishTimer(0) == false then
        local6 = 0
    end
    if 20 <= local3 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 15, TARGET_SELF, false, -1)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[20] = 100
    elseif 9 <= local3 then
        local0[1] = 5
        local0[2] = 5
        local0[3] = 0
        local0[4] = 0
        local0[5] = 25
        local0[6] = 25 * local6
        local0[7] = 0
        local0[8] = 35
        local0[9] = 0
    elseif 5 <= local3 then
        local0[1] = 19
        local0[2] = 19
        local0[3] = 0
        local0[4] = 0
        local0[5] = 10
        local0[6] = 22 * local6
        local0[7] = 0
        local0[8] = 25
        local0[9] = 5
    elseif 2 <= local3 then
        local0[1] = 13
        local0[2] = 15
        local0[3] = 7
        local0[4] = 7
        local0[5] = 15
        local0[6] = 15 * local6
        local0[7] = 0
        local0[8] = 0
        local0[9] = 13
        local0[11] = 15
    else
        local0[1] = 12
        local0[2] = 18
        local0[3] = 12
        local0[4] = 10
        local0[5] = 15
        local0[6] = 0 * local6
        local0[7] = 15
        local0[8] = 0
        local0[9] = 10
        local0[11] = 5
    end
    if 0.1 <= arg0:GetDistY(TARGET_ENE_0) then
        local0[9] = 0
    end
    if arg0:GetNumber(1) == 0 then
        local0[8] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Executioner200000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Executioner200000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Executioner200000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Executioner200000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Executioner200000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Executioner200000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Executioner200000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Executioner200000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Executioner200000_Act09)
    local1[11] = REGIST_FUNC(arg0, arg1, Executioner200000_Act11)
    local1[20] = REGIST_FUNC(arg0, arg1, Executioner200000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Executioner200000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
function Executioner200000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 10
    if arg0:GetNumber(1) == 0 then
        local2 = 9999
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 100, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
local0 = 5.8 - local0
local0 = 4.1 - local0
function Executioner200000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 10
    local local3 = 100
    if arg0:GetNumber(1) == 0 then
        local2 = 9999
        local3 = 100
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, local3, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, UPVAL1 + 1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, UPVAL2 + 1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = local14
function Executioner200000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 10
    if arg0:GetNumber(1) == 0 then
        local2 = 9999
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 100, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, 30)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, UPVAL1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
function Executioner200000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 10
    if arg0:GetNumber(1) == 0 then
        local2 = 9999
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 100, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
function Executioner200000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 10
    if arg0:GetNumber(1) == 0 then
        local3 = 9999
    end
    arg0:EndGuard()
    Approach_Act(arg0, arg1, UPVAL0, local3, 100, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 6.7, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
local0 = local18
local0 = local14
local0 = local10
local0 = local25
local0 = local8
local0 = local21
local0 = local22
local0 = local19
local0 = local20
function Executioner200000_AddAttack(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetDistY(TARGET_ENE_0)
    local local2 = UPVAL1
    local local3 = UPVAL2
    local local4 = UPVAL3
    local local5 = UPVAL4
    if UPVAL6 <= local0 then
        local2 = UPVAL7
    elseif UPVAL8 <= local0 then
        local2 = UPVAL9
    end
    if local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL5, 0, 0)
    elseif local0 <= 4.1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local3, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
        if UPVAL0 + 1 <= local0 then
            if UPVAL6 <= local0 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, local2, 0, -1)
            elseif UPVAL8 <= local0 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local2, 0, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, local2, 0, -1)
            end
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local3, 0, 0)
    end
    return 
end

local0 = local14
function Executioner200000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNumber(1) == 0 then
        local2 = 9999
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetTimer(0, 6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
local0 = local24
function Executioner200000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL1
    local local2 = UPVAL0
    local local3 = 10
    if arg0:GetNumber(1) == 0 then
        local3 = 9999
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local3, 100, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local18
local0 = local21
local0 = local22
local0 = local19
local0 = local20
function Executioner200000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL0
    local local3 = 0
    if arg0:GetNumber(1) == 0 then
        local3 = 9999
    end
    if UPVAL1 <= local0 then
        local2 = UPVAL2
        local1 = UPVAL2
    elseif UPVAL3 <= local0 then
        local2 = UPVAL4
        local1 = UPVAL4
    end
    Approach_Act(arg0, arg1, local2, local3, 0)
    if UPVAL1 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, local1, 0, -1)
    elseif UPVAL3 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, local1, 0, -1)
    end
    if arg0:GetRandam_Int(1, 100) <= 66 then
        arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local24
local0 = 2.6 - local0
local0 = local25
function Executioner200000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0
    local local4 = 10
    if arg0:GetNumber(1) == 0 then
        local4 = 9999
    end
    if UPVAL1 <= local0 then
        local3 = UPVAL2
        local2 = UPVAL2
        local4 = 0
    end
    Approach_Act(arg0, arg1, local3, local4, 100)
    if UPVAL1 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, local2, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Executioner200000_Act11(arg0, arg1, arg2)
    if 4 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local2
function Executioner200000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if local0 <= 3 and local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local2, 0, 0)
        else
            arg0:EndGuard()
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        if local0 <= 3 and local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local2, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif local0 <= 3 and local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL1 + 1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Executioner200000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

local0 = local10
function Executioner200000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(2.5, 3.5)
    local local3 = UPVAL0 + 1
    arg0:SetNumber(1, 1)
    arg0:SetNumber(0, 1)
    if local0 <= 3 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
            elseif local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local3, 0, 0)
            end
        end
    elseif local0 <= 6 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local3, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function Executioner200000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Executioner200000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local25
local0 = local22
local0 = local10
local0 = local16
local0 = local14
local0 = local4
local0 = local2
function Executioner200000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInterupt(INTERUPT_UseItem) and local0 <= 70 and arg0:GetDistY(TARGET_ENE_0) <= 0.1 then
        arg1:ClearSubGoal()
        Approach_Act(arg0, arg1, UPVAL0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
        return true
    elseif arg0:IsInterupt(INTERUPT_Outside_ObserveArea) then
        arg1:ClearSubGoal()
        Approach_Act(arg0, arg1, UPVAL1 - 4, 9999, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL1 + 2, 0, -1)
        return true
    elseif arg0:IsInterupt(INTERUPT_Damaged) and local0 <= 15 then
        local local4 = UPVAL6 + 1
        arg1:ClearSubGoal()
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            if local3 <= UPVAL3 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL3 + 1, 0, -1)
            elseif local3 <= UPVAL5 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL5 + 1, 0, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL4 + 1, 0, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
        end
        return true
    elseif arg0:IsInterupt(INTERUPT_GuardBreak) and local0 <= 60 then
        arg1:ClearSubGoal()
        if local3 <= UPVAL3 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL3 + 1, 0, -1)
        elseif local3 <= UPVAL5 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL5 + 1, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL4 + 1, 0, -1)
        end
        return true
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetDist(TARGET_ENE_0)
    local local7 = Shoot_2dist(arg0, arg1, 6, 20, 20, 40)
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
