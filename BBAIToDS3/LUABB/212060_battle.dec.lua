local local0 = 0.3
local local1 = 0.5 - local0
local local2 = 0.5 - local0
local local3 = 0.5 - local0
local local4 = 0.5 - local0
local local5 = 0.5 - local0
local local6 = 0.5 - local0
local local7 = 0.5 - local0
local local8 = 0.5 - local0
local local9 = 0.5 - local0
local local10 = 0.5 - local0
local local11 = 0.5 - local0
local local12 = 0.5 - local0
local local13 = 0.5 - local0
local local14 = 0.5 - local0
local local15 = 8.5 - local0
local local16 = 0.5 - local0
local local17 = 1.1 - local0
local local18 = 0.5 - local0
local local19 = 0.5 - local0
local local20 = 10 - local0
local local21 = 0.5 - local0
local local22 = 10 - local0
local local23 = 0.5 - local0
local local24 = 2.5
function OnIf_212060(arg0, arg1, arg2)
    if arg2 == 0 then
        DarkBrigade_SwordAndCandle_Boss212060_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DarkBrigade_SwordAndCandle_Boss212060Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest(0)
    local local5 = arg0:GetEventRequest(1)
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetHpRate(TARGET_SELF)
    local local8 = 1
    if local5 == 30 then
        local8 = 0
    else
        local8 = 1
    end
    arg0:DeleteObserve(0)
    arg0:AddObserveArea(0, TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 5)
    if local5 == 50 then
        local0[11] = 100
    elseif local5 == 20 then
        local0[20] = 100
    elseif local4 == 50 then
        local0[16] = 100
    elseif local4 == 40 then
        local0[3] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[10] = 100
    elseif local5 == 40 then
        if 8 <= local3 then
            local0[1] = 10
            local0[2] = 0
            local0[3] = 5
            local0[4] = 5
            local0[5] = 0
            local0[6] = 15
            local0[7] = 0
            local0[8] = 55
            local0[17] = 5
            local0[18] = 5
        elseif 5.5 <= local3 then
            local0[1] = 10
            local0[2] = 5
            local0[3] = 5
            local0[4] = 5
            local0[5] = 0
            local0[6] = 10
            local0[7] = 0
            local0[8] = 55
            local0[17] = 5
            local0[18] = 5
        elseif 3.5 <= local3 then
            local0[1] = 15
            local0[2] = 15
            local0[3] = 0
            local0[4] = 5
            local0[5] = 5
            local0[6] = 0
            local0[7] = 5
            local0[8] = 45
            local0[17] = 5
            local0[18] = 5
        elseif 1.5 <= local3 then
            local0[1] = 25
            local0[2] = 15
            local0[3] = 0
            local0[4] = 15
            local0[5] = 10
            local0[6] = 0
            local0[7] = 35
            local0[17] = 0
        else
            local0[1] = 25
            local0[2] = 15
            local0[3] = 0
            local0[4] = 15
            local0[5] = 10
            local0[6] = 0
            local0[7] = 35
            local0[17] = 0
        end
    elseif local5 == 10 or local5 == 30 then
        if 8 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 5
            local0[4] = 0
            local0[5] = 0
            local0[6] = 5
            local0[7] = 0
            local0[8] = 10
            local0[17] = 45
            local0[18] = 35
            local0[19] = 100 * local8
        elseif 5.5 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 5
            local0[4] = 0
            local0[5] = 0
            local0[6] = 10
            local0[7] = 0
            local0[8] = 15
            local0[17] = 40
            local0[18] = 30
            local0[19] = 100 * local8
        elseif 3.5 <= local3 then
            local0[1] = 15
            local0[2] = 15
            local0[3] = 0
            local0[4] = 5
            local0[5] = 10
            local0[6] = 0
            local0[7] = 5
            local0[8] = 15
            local0[17] = 15
            local0[18] = 20
            local0[19] = 100 * local8
        elseif 1.5 <= local3 then
            local0[1] = 25
            local0[2] = 15
            local0[3] = 0
            local0[4] = 15
            local0[5] = 10
            local0[6] = 0
            local0[7] = 35
            local0[17] = 0
            local0[19] = 0 * local8
        else
            local0[1] = 25
            local0[2] = 10
            local0[3] = 0
            local0[4] = 15
            local0[5] = 15
            local0[6] = 0
            local0[7] = 35
            local0[17] = 0
            local0[19] = 0 * local8
        end
    elseif 5 <= local3 then
        local0[1] = 15
        local0[2] = 8
        local0[4] = 13
        local0[5] = 4
        local0[8] = 60
    elseif 3.8 <= local3 then
        local0[1] = 15.5
        local0[2] = 15.5
        local0[4] = 13
        local0[5] = 6
        local0[8] = 50
    else
        local0[1] = 18.25
        local0[2] = 19.75
        local0[4] = 15
        local0[5] = 7
        local0[8] = 40
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212060_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212060_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212060_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212060_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212060_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212060_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212060_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212060_Act08)
    local1[10] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212060_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212060_Act11)
    local1[13] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212060_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212060_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212060_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212060_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212050_Act17)
    local1[18] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212050_Act18)
    local1[19] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212050_Act19)
    local1[20] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212050_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle_Boss212060_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 4.1 - local0
local0 = 3.8 - local0
local0 = 3.8 - local0
local0 = 3.3 - local0
local0 = 4.3 - local0
local0 = 9.9 - local0
local0 = 3.8 - local0
local0 = 4.5 - local0
local0 = local20
function DarkBrigade_SwordAndCandle_Boss212060_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = 10
    local local5 = 0
    if 50 <= local1 then
        local3 = UPVAL4
    end
    if local1 <= 50 then
        Approach_Act(arg0, arg1, local3, local4, local5, 3)
        if arg0:GetRandam_Int(1, 100) <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 0.5, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL5 + 0.5, 0)
        end
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL1 + 0.5, 0, 0)
    else
        Approach_Act(arg0, arg1, local3, local4, local5, 3)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL4 + 0.5, 0)
    end
    if local2 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, UPVAL2 + 0.5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, UPVAL3 + 0.5, 0)
    elseif local2 <= 60 and eventNo1 == 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, UPVAL8 + 0.5, 0)
    elseif local2 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, UPVAL6 + 0.5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, UPVAL7 + 0.5, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.7 - local0
function DarkBrigade_SwordAndCandle_Boss212060_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 6, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.3 - local0
function DarkBrigade_SwordAndCandle_Boss212060_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.1 - local0
function DarkBrigade_SwordAndCandle_Boss212060_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 6, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
local0 = 3.6 - local0
function DarkBrigade_SwordAndCandle_Boss212060_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 6, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 65 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, UPVAL1 + 1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local15
function DarkBrigade_SwordAndCandle_Boss212060_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local15
function DarkBrigade_SwordAndCandle_Boss212060_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetTimer(2, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5 - local0
function DarkBrigade_SwordAndCandle_Boss212060_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 10, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkBrigade_SwordAndCandle_Boss212060_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(1, 2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), false, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), false, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkBrigade_SwordAndCandle_Boss212060_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkBrigade_SwordAndCandle_Boss212060_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), 360, true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 12 - local0
function DarkBrigade_SwordAndCandle_Boss212050_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 6) ~= false then
        if local1 <= arg0:GetDist(TARGET_ENE_0) then
            Approach_Act(arg0, arg1, local1, 0, 0, 3)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local20
function DarkBrigade_SwordAndCandle_Boss212050_Act18(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 6) ~= false then
        if local1 <= arg0:GetDist(TARGET_ENE_0) then
            Approach_Act(arg0, arg1, local1, 0, 0, 3)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkBrigade_SwordAndCandle_Boss212050_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, AttDist1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkBrigade_SwordAndCandle_Boss212050_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3037, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkBrigade_SwordAndCandle_Boss212060_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DarkBrigade_SwordAndCandle_Boss212060_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetDist(TARGET_FRI_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(0, 1)
    local local5 = arg0:GetRandam_Float(2.5, 3)
    local local6 = arg0:GetRandam_Float(5, 5.5)
    if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_B, 180) then
        if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    elseif local0 <= 1.5 then
        if local2 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 2.5 then
        if local2 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 3.5 then
        if local2 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, local4, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif local0 <= 5.5 then
        if local2 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, local4, arg0:GetRandam_Int(45, 60), true, true, -1)
        elseif local2 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
        end
    elseif local2 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5.5, TARGET_SELF, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, local4, arg0:GetRandam_Int(45, 60), true, true, -1)
    end
    return 
end

function DarkBrigade_SwordAndCandle_Boss212060Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DarkBrigade_SwordAndCandle_Boss212060Battle_Terminate(arg0, arg1)
    return 
end

function DarkBrigade_SwordAndCandle_Boss212060Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    if arg0:IsInterupt(INTERUPT_Inside_ObserveArea) and arg0:GetDist(TARGET_FRI_0) <= 2.5 then
        arg1:ClearSubGoal()
        if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
        return true
    elseif arg0:IsInterupt(INTERUPT_Damaged) and arg0:GetRandam_Int(1, 100) <= 40 and arg0:HasSpecialEffectId(TARGET_SELF, 5659) == false then
        arg1:ClearSubGoal()
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if right ~= false or back ~= false then
                if right == false then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                end
            end
        elseif left ~= false or back ~= false then
            if left == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        end
        return true
    end
    local local4 = Shoot_2dist(arg0, arg1, 4, 20, 50, 80)
    if local4 == 1 then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local4 == 2 then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
        return true
    end
    return false
end

return 
