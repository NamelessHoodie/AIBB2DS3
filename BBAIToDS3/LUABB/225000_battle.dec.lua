local local0 = 0.3
local local1 = 0 - local0
local local2 = 2.7 - local0
local local3 = 0 - local0
local local4 = 2 - local0
function OnIf_225000(arg0, arg1, arg2)
    if arg2 == 0 then
        WarderA_SwordAndCrossbow225000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function WarderA_SwordAndCrossbow225000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetEventRequest()
    local local6 = 1
    if arg0:GetNpcThinkParamID() == 225040 or arg0:GetNpcThinkParamID() == 225000 then
        local6 = 0
    else
        fete2 = 1
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5612) then
        ObserveAreaForBackstab(arg0, arg1, 0, 5, 30)
    else
        arg0:DeleteObserve(0)
    end
    if local5 == 10 then
        local0[23] = 100
    elseif local5 == 25 then
        local0[1] = 100
    elseif local5 == 100 then
        local0[12] = 100
    elseif arg0:IsFinishTimer(1) == true and arg0:HasSpecialEffectId(TARGET_SELF, 5612) then
        WarderA_SwordAndCrossbow225000_Act06(arg0, arg1, paramTbl)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5612) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            local0[20] = 100
        elseif 4.7 <= local3 then
            local0[5] = 0
            local0[8] = 30
            local0[9] = 40
            local0[10] = 0
            local0[11] = 30
        elseif 2.8 <= local3 then
            local0[5] = 15
            local0[8] = 30
            local0[9] = 0
            local0[10] = 15
            local0[11] = 40
        else
            local0[5] = 15
            local0[8] = 10
            local0[9] = 0
            local0[10] = 25
            local0[11] = 50
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif 16 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 100
        local0[5] = 0
        local0[7] = 0 * local6
    elseif 5 <= local3 then
        local0[1] = 70
        local0[2] = 30
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[7] = 0 * local6
    elseif 3 <= local3 then
        local0[1] = 30
        local0[2] = 20
        local0[3] = 50
        local0[4] = 0
        local0[5] = 0
        local0[7] = 0 * local6
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 20
        local0[4] = 0
        local0[5] = 10
        local0[7] = 70 * local6
    end
    local1[1] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_Act12)
    local1[20] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, WarderA_SwordAndCrossbow225000_ActAfter_AdjustSpace), local2)
    return 
end

function WarderA_SwordAndCrossbow225000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Shoot_Act(arg0, arg1, 3020, 3021, arg0:GetRandam_Int(1, 2))
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 2), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_SwordAndCrossbow225000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Shoot_Act(arg0, arg1, 3020, 3021, arg0:GetRandam_Int(1, 2))
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 2), TARGET_ENE_0, 0, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_SwordAndCrossbow225000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Shoot_Act(arg0, arg1, 3020, 3021, arg0:GetRandam_Int(1, 2))
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 2), TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 7, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_SwordAndCrossbow225000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, 21, 21, 0, 2)
    Shoot_Act(arg0, arg1, 3022, 3022, 1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 2), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.2 - local0
local0 = 0 - local0
function WarderA_SwordAndCrossbow225000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3027, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5611) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 7, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_SwordAndCrossbow225000_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_SELF, DIST_None, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_SwordAndCrossbow225000_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_SELF, DIST_None, 0, -1)
    arg0:SetTimer(1, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.6 - local0
local0 = 0 - local0
function WarderA_SwordAndCrossbow225000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.7 - local0
local0 = 0 - local0
function WarderA_SwordAndCrossbow225000_Act09(arg0, arg1, arg2)
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
function WarderA_SwordAndCrossbow225000_Act10(arg0, arg1, arg2)
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
function WarderA_SwordAndCrossbow225000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 0.5, 0, 2)
    if local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local3, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local3, 0, -1)
        if local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local3, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WarderA_SwordAndCrossbow225000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNumber(0) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0, 0, 0, 0)
    else
        Shoot_Act(arg0, arg1, 3023, 3021, 1)
        arg0:SetNumber(0, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_SwordAndCrossbow225000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_SwordAndCrossbow225000_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_SwordAndCrossbow225000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 3.5)
    local local4 = arg0:GetRandam_Float(2, 3)
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
    arg0:SetTimer(1, 20)
    return 
end

function WarderA_SwordAndCrossbow225000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function WarderA_SwordAndCrossbow225000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function WarderA_SwordAndCrossbow225000Battle_Terminate(arg0, arg1)
    return 
end

function WarderA_SwordAndCrossbow225000Battle_Interupt(arg0, arg1)
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
    if arg0:HasSpecialEffectId(TARGET_SELF, 5612) and GuardBreak_Act(arg0, arg1, 4, 100) then
        if 2 <= arg0:GetDist(TARGET_ENE_0) then
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
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
    if Backstab_Act(arg0, arg1, 0, 1, 0, 20) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
        return true
    else
        return false
    end
end

return 
