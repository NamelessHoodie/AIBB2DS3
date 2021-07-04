local local0 = 0.5
local local1 = 0 - local0
local local2 = 4.5 - local0
local local3 = 0 - local0
local local4 = 4.3 - local0
local local5 = 0 - local0
local local6 = 4.5 - local0
local local7 = 0 - local0
local local8 = 5.3 - local0
local local9 = 0 - local0
local local10 = 4.3 - local0
local local11 = 0 - local0
local local12 = 9.2 - local0
local local13 = 0 - local0
local local14 = 8.5 - local0
local local15 = 0 - local0
local local16 = 4.7 - local0
local local17 = 0 - local0
local local18 = 5.9 - local0
local local19 = 0 - local0
local local20 = 2.3 - local0
function OnIf_230000(arg0, arg1, arg2)
    if arg2 == 0 then
        KingGhost_LowClass_Lance230000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function KingGhost_LowClass_Lance230000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        if local4 <= 50 then
            local0[20] = 100
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        if local4 <= 50 then
            local0[20] = 100
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif 8 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 20
        local0[4] = 0
        local0[5] = 0
        local0[6] = 40
        local0[7] = 40
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
    elseif 5 <= local3 then
        local0[1] = 20
        local0[2] = 0
        local0[3] = 30
        local0[4] = 0
        local0[5] = 20
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 30
        local0[10] = 0
    elseif 2 <= local3 then
        local0[1] = 30
        local0[2] = 0
        local0[3] = 20
        local0[4] = 0
        local0[5] = 30
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 20
        local0[10] = 0
    else
        local0[1] = 25
        local0[2] = 0
        local0[3] = 20
        local0[4] = 0
        local0[5] = 20
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 20
        local0[10] = 15
    end
    local1[1] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act21)
    local1[30] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_Act44)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, KingGhost_LowClass_Lance230000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
function KingGhost_LowClass_Lance230000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL0 + 10, 0, 3)
    end
    if local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0)
    elseif local0 <= 100 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
function KingGhost_LowClass_Lance230000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0, 0.5, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
local0 = local8
function KingGhost_LowClass_Lance230000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = UPVAL0
    if local3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local3, UPVAL0 + 20, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
function KingGhost_LowClass_Lance230000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0.5, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
function KingGhost_LowClass_Lance230000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0.5, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
function KingGhost_LowClass_Lance230000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 20, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0.5, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local14
function KingGhost_LowClass_Lance230000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 20, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0.5, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
function KingGhost_LowClass_Lance230000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0.5, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local18
function KingGhost_LowClass_Lance230000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0, 0.5, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local20
function KingGhost_LowClass_Lance230000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL0 + 10, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3009, TARGET_ENE_0, local1, -1, 40)
    if local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1, 0)
    elseif local0 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingGhost_LowClass_Lance230000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingGhost_LowClass_Lance230000_Act20(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 50, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 50, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 50, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingGhost_LowClass_Lance230000_Act21(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, 2, 999, 0, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
function KingGhost_LowClass_Lance230000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
function KingGhost_LowClass_Lance230000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
function KingGhost_LowClass_Lance230000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
function KingGhost_LowClass_Lance230000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
function KingGhost_LowClass_Lance230000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
function KingGhost_LowClass_Lance230000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
function KingGhost_LowClass_Lance230000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
function KingGhost_LowClass_Lance230000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local18
function KingGhost_LowClass_Lance230000_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
function KingGhost_LowClass_Lance230000_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingGhost_LowClass_Lance230000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3010_Dist_max, Att3010_Dist_max + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, Att3010_Dist_max, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingGhost_LowClass_Lance230000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3011_Dist_max, Att3011_Dist_max + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, Att3011_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingGhost_LowClass_Lance230000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    if local0 <= 4 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            if local1 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
            elseif local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
            elseif local1 <= 100 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            if local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif local0 <= 8 then
        if local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
        elseif local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
        end
    elseif local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8, TARGET_SELF, true, -1)
    end
    return 
end

function KingGhost_LowClass_Lance230000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function KingGhost_LowClass_Lance230000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function KingGhost_LowClass_Lance230000Battle_Terminate(arg0, arg1)
    return 
end

function KingGhost_LowClass_Lance230000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        if RebByOpGuard_Step(arg0, arg1, 20, 50, 25, 25, 4) then
            return true
        else
            return false
        end
    end
end

return 
