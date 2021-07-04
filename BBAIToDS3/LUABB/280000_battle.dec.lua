local local0 = 0.5
local local1 = 0 - local0
local local2 = 3.4 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 0 - local0
local local6 = 4.1 - local0
local local7 = 0 - local0
local local8 = 0 - local0
local local9 = 0 - local0
local local10 = 0 - local0
local local11 = 8.4 - local0
local local12 = 0 - local0
local local13 = 0 - local0
local local14 = 3 - local0
local local15 = 0 - local0
local local16 = 8.2 - local0
local local17 = 0 - local0
local local18 = 1.3 - local0
local local19 = 0 - local0
local local20 = 0 - local0
local local21 = 4.5 - local0
local local22 = 0 - local0
local local23 = 0 - local0
function BurnedWarriorVariationPoison_SwordandShield280000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if local4 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[28] = 100
    elseif local4 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[29] = 100
    elseif arg0:GetRandam_Int(1, 100) <= 50 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[8] = 100
    elseif 8 <= local3 then
        local0[1] = 5
        local0[2] = 5
        local0[3] = 5
        local0[4] = 40
        local0[5] = 40
        local0[6] = 0
        local0[7] = 0
        local0[9] = 5
    elseif 5 <= local3 then
        local0[1] = 15
        local0[2] = 15
        local0[3] = 10
        local0[4] = 25
        local0[5] = 25
        local0[6] = 0
        local0[7] = 0
        local0[9] = 10
    elseif 2.5 <= local3 then
        local0[1] = 35
        local0[2] = 35
        local0[3] = 10
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[9] = 20
    else
        local0[1] = 15
        local0[2] = 15
        local0[3] = 5
        local0[4] = 0
        local0[5] = 0
        local0[6] = 20
        local0[7] = 20
        local0[9] = 25
    end
    local1[1] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act09)
    local1[28] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act29)
    local1[10] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act17)
    local1[18] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act18)
    local1[19] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act19)
    local1[20] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act26)
    local1[27] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_SwordandShield280000_Act27)
    local local5 = {0, 30, 30, 40, 0, 0, 0}
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, HumanCommon_ActAfter_AdjustSpace, local5), local2)
    return 
end

local0 = local2
function BurnedWarriorVariationPoison_SwordandShield280000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 70)
    if local1 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
        if arg0:GetRandam_Int(1, 100) <= 25 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2, 0)
        elseif local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local2, 0)
        elseif local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local2, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local2, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local2, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
function BurnedWarriorVariationPoison_SwordandShield280000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 30)
    if local1 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, -1)
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, -1)
        if local2 <= 25 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local3, 0)
        elseif local2 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local3, 0)
        elseif local2 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local3, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local14
function BurnedWarriorVariationPoison_SwordandShield280000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 50)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local11
function BurnedWarriorVariationPoison_SwordandShield280000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 - 1, 0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
function BurnedWarriorVariationPoison_SwordandShield280000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BurnedWarriorVariationPoison_SwordandShield280000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, AttDist, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, AttDist, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, AttDist, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local21
function BurnedWarriorVariationPoison_SwordandShield280000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 - 1, 0)
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3013, TARGET_ENE_0, local2, -1, 40)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local2, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BurnedWarriorVariationPoison_SwordandShield280000_Act08(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 2 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, AttDist, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, AttDist, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, AttDist, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
function BurnedWarriorVariationPoison_SwordandShield280000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
function BurnedWarriorVariationPoison_SwordandShield280000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4 - local0
function BurnedWarriorVariationPoison_SwordandShield280000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.2 - local0
function BurnedWarriorVariationPoison_SwordandShield280000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
function BurnedWarriorVariationPoison_SwordandShield280000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.2 - local0
function BurnedWarriorVariationPoison_SwordandShield280000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.1 - local0
function BurnedWarriorVariationPoison_SwordandShield280000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.7 - local0
function BurnedWarriorVariationPoison_SwordandShield280000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local11
function BurnedWarriorVariationPoison_SwordandShield280000_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.3 - local0
function BurnedWarriorVariationPoison_SwordandShield280000_Act18(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local14
function BurnedWarriorVariationPoison_SwordandShield280000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
function BurnedWarriorVariationPoison_SwordandShield280000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
function BurnedWarriorVariationPoison_SwordandShield280000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 0.7 - local0
function BurnedWarriorVariationPoison_SwordandShield280000_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local21
function BurnedWarriorVariationPoison_SwordandShield280000_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.1 - local0
function BurnedWarriorVariationPoison_SwordandShield280000_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.4 - local0
function BurnedWarriorVariationPoison_SwordandShield280000_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BurnedWarriorVariationPoison_SwordandShield280000_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3016_Dist_max, Att3016_Dist_max + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, Att3016_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
function BurnedWarriorVariationPoison_SwordandShield280000_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BurnedWarriorVariationPoison_SwordandShield280000_Act28(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BurnedWarriorVariationPoison_SwordandShield280000_Act29(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BurnedWarriorVariationPoison_SwordandShield280000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function BurnedWarriorVariationPoison_SwordandShield280000Battle_Terminate(arg0, arg1)
    return 
end

function BurnedWarriorVariationPoison_SwordandShield280000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        if SuccessGuard_Attack(arg0, arg1, 3.5, 80, 3000) then
            return true
        elseif GuardBreak_Attack(arg0, arg1, 3.5, 30, 3002) then
            return true
        elseif Damaged_Step_or_Guard(arg0, arg1, 3, 25, 10, 40, 30, 30, 4, 50, 4.5, 2.5) then
            return true
        elseif RebByOpGuard_Step(arg0, arg1, 10, 30, 35, 35, 4) then
            return true
        else
            return false
        end
    end
end

return 
