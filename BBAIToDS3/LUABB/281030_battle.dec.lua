local local0 = 0.5
local local1 = 0 - local0
local local2 = 4.4 - local0
local local3 = 0 - local0
local local4 = 4.6 - local0
local local5 = 0 - local0
local local6 = 4.6 - local0
local local7 = 0 - local0
local local8 = 4 - local0
local local9 = 0 - local0
local local10 = 4.6 - local0
local local11 = 0 - local0
local local12 = 4.5 - local0
local local13 = 0 - local0
local local14 = 4.4 - local0
local local15 = 0 - local0
local local16 = 4.2 - local0
local local17 = 0 - local0
local local18 = 7.8 - local0
local local19 = 0 - local0
local local20 = 3.2 - local0
local local21 = 0 - local0
local local22 = 8 - local0
local local23 = 0 - local0
local local24 = 4.5 - local0
local local25 = 0 - local0
local local26 = 2.3 - local0
local local27 = 0
function OnIf_281030(arg0, arg1, arg2)
    if arg2 == 0 then
        BigBurnedWarrior_TwoHandedSword281030_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local27
function BigBurnedWarrior_TwoHandedSword281030Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 4671) then
        local local5 = 1
        SETUPVAL 7 0 0
    else
        local local5 = 0
        SETUPVAL 7 0 0
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        if local4 <= 50 then
            local0[20] = 100
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        if local4 <= 50 then
            local0[20] = 100
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif 10 <= local3 then
        local0[1] = 10
        local0[2] = 0
        local0[3] = 0
        local0[4] = 10
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 5
        local0[9] = 35
        local0[10] = 0
        local0[11] = 35
        local0[12] = 5
        local0[13] = 0
        local0[14] = 0
    elseif 7 <= local3 then
        local0[1] = 10
        local0[2] = 0
        local0[3] = 0
        local0[4] = 10
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 10
        local0[9] = 30
        local0[10] = 0
        local0[11] = 30
        local0[12] = 10
        local0[13] = 0
        local0[14] = 0
    elseif 4 <= local3 then
        local0[1] = 20
        local0[2] = 0
        local0[3] = 0
        local0[4] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 10
        local0[8] = 15
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 15
        local0[13] = 0
        local0[14] = 20
    elseif 0 <= local3 then
        local0[1] = 15
        local0[2] = 0
        local0[3] = 0
        local0[4] = 15
        local0[5] = 0
        local0[6] = 0
        local0[7] = 10
        local0[8] = 15
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 10
        local0[13] = 20
        local0[14] = 15
    end
    local1[1] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act14)
    local1[20] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act20)
    local1[30] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_Act44)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, BigBurnedWarrior_TwoHandedSword281030_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local4
local0 = local6
local0 = local27
function BigBurnedWarrior_TwoHandedSword281030_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1.5
    local local2 = UPVAL1 + 1.5
    local local3 = UPVAL0
    local local4 = 9999
    if UPVAL3 == 1 then
        local4 = 0
    end
    if local3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local3, local4, 0, 3)
    end
    if local0 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 180)
    elseif local0 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0)
    elseif local0 <= 100 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL2 + 1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
local0 = local27
function BigBurnedWarrior_TwoHandedSword281030_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 10
    if UPVAL1 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
local0 = local27
function BigBurnedWarrior_TwoHandedSword281030_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 10
    if UPVAL1 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = local10
local0 = local12
local0 = local27
function BigBurnedWarrior_TwoHandedSword281030_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL1 + 1
    local local3 = UPVAL0
    local local4 = 9999
    if UPVAL3 == 1 then
        local4 = 0
    end
    if local3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local3, local4, 0, 3)
    end
    if local0 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, 180)
    elseif local0 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local2, 0)
    elseif local0 <= 100 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local2, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, UPVAL2 - 0.2, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
local0 = local27
function BigBurnedWarrior_TwoHandedSword281030_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 10
    if UPVAL1 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1.5, 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
local0 = local27
function BigBurnedWarrior_TwoHandedSword281030_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 10
    if UPVAL1 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local14
local0 = local20
local0 = local27
function BigBurnedWarrior_TwoHandedSword281030_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if UPVAL2 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 - 0.2, 0, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, UPVAL1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
local0 = local27
function BigBurnedWarrior_TwoHandedSword281030_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1.5, 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local18
local0 = local20
local0 = local27
function BigBurnedWarrior_TwoHandedSword281030_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if UPVAL2 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 - 0.2, 0, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, UPVAL1 + 1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local20
local0 = local27
function BigBurnedWarrior_TwoHandedSword281030_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local22
local0 = local27
function BigBurnedWarrior_TwoHandedSword281030_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local24
local0 = local27
function BigBurnedWarrior_TwoHandedSword281030_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local26
local0 = local14
local0 = local16
local0 = local24
local0 = local20
local0 = local27
function BigBurnedWarrior_TwoHandedSword281030_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    local local3 = 9999
    if UPVAL5 == 1 then
        local3 = 0
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3012, TARGET_ENE_0, DIST_Middle, -1, 60)
    if local0 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL1 - 0.2, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, UPVAL4 + 1, 0)
    elseif local0 <= 65 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL2 + 1, 0, 180)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL3 + 1, 0, 180)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local22
local0 = local27
function BigBurnedWarrior_TwoHandedSword281030_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 10
    local local3 = UPVAL0
    local local4 = 0
    if UPVAL1 == 1 then
        local2 = 0
    end
    if local0 <= 4 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, 9910, true)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, 9910, true)
        end
    elseif local0 <= 8 then
        if arg0:GetRandam_Int(1, 100) <= 30 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, 9910, true)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, 9910, true)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 3.5, TARGET_SELF, true, 9910)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.8, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigBurnedWarrior_TwoHandedSword281030_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BigBurnedWarrior_TwoHandedSword281030_Act20(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 140) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 140) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
function BigBurnedWarrior_TwoHandedSword281030_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
function BigBurnedWarrior_TwoHandedSword281030_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
function BigBurnedWarrior_TwoHandedSword281030_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
function BigBurnedWarrior_TwoHandedSword281030_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
function BigBurnedWarrior_TwoHandedSword281030_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
function BigBurnedWarrior_TwoHandedSword281030_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
function BigBurnedWarrior_TwoHandedSword281030_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
function BigBurnedWarrior_TwoHandedSword281030_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local18
function BigBurnedWarrior_TwoHandedSword281030_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
function BigBurnedWarrior_TwoHandedSword281030_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local22
function BigBurnedWarrior_TwoHandedSword281030_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local24
function BigBurnedWarrior_TwoHandedSword281030_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local26
function BigBurnedWarrior_TwoHandedSword281030_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigBurnedWarrior_TwoHandedSword281030_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= 4 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        end
    elseif local0 <= 8 then
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(2.5, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 3.5, TARGET_SELF, true, -1)
        end
    elseif local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 4, TARGET_SELF, true, -1)
    end
    return 
end

function BigBurnedWarrior_TwoHandedSword281030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function BigBurnedWarrior_TwoHandedSword281030Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function BigBurnedWarrior_TwoHandedSword281030Battle_Terminate(arg0, arg1)
    return 
end

local0 = local14
local0 = local16
local0 = local18
local0 = local20
local0 = local22
local0 = local24
function BigBurnedWarrior_TwoHandedSword281030Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        local local4 = UPVAL0 - 0.2
        local local5 = UPVAL1
        local local6 = UPVAL2 - 0.2
        local local7 = UPVAL3
        local local8 = UPVAL4
        local local9 = UPVAL5
        if RebByOpGuard_Step(arg0, arg1, 20, 0, 0, 0, 4) then
            return true
        elseif Counter_Act(arg0, arg1, 4, 3035) then
            BigBurnedWarrior_TwoHandedSword281030Battle_Activate(arg0, arg1)
            return true
        else
            return false
        end
    end
end

return 
