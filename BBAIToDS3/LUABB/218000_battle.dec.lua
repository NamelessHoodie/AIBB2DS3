local local0 = 0.5
local local1 = 0.4 - local0
local local2 = 6.2 - local0
local local3 = 4.4 - local0
local local4 = 12.9 - local0
local local5 = 0.4 - local0
local local6 = 4.7 - local0
local local7 = 0.4 - local0
local local8 = 9.8 - local0
local local9 = 0.4 - local0
local local10 = 9 - local0
local local11 = 0.4 - local0
local local12 = 9 - local0
local local13 = 0.4 - local0
local local14 = 3.6 - local0
local local15 = 1.9 - local0
local local16 = 9.4 - local0
local local17 = 2.2 - local0
local local18 = 8.8 - local0
local local19 = 0.4 - local0
local local20 = 5.1 - local0
local local21 = 0.4 - local0
local local22 = 9 - local0
local local23 = 0.4 - local0
local local24 = 9 - local0
local local25 = 0.4 - local0
local local26 = 9 - local0
local local27 = 0.4 - local0
local local28 = 9 - local0
local local29 = 0.4 - local0
local local30 = 9 - local0
local local31 = 0.4 - local0
local local32 = 4.9 - local0
local local33 = 0.4 - local0
local local34 = 7.8 - local0
local local35 = 0.4 - local0
local local36 = 4.3 - local0
function OnIf_218000(arg0, arg1, arg2)
    if arg2 == 0 then
        Devotee_of_SilverBeast218000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Devotee_of_SilverBeast218000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if 218080 <= arg0:GetNpcThinkParamID() and arg0:GetNpcThinkParamID() <= 218085 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            local0[20] = 100
        elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            local0[22] = 100
        elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            local0[23] = 100
        elseif 8 <= local3 then
            local0[1] = 15
            local0[2] = 15
            local0[3] = 25
            local0[10] = 15
            local0[11] = 10
            local0[12] = 0
            local0[13] = 10
            local0[14] = 10
        elseif 4 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 25
            local0[10] = 20
            local0[11] = 15
            local0[12] = 5
            local0[13] = 5
            local0[14] = 10
        elseif 1 <= local3 then
            local0[1] = 15
            local0[2] = 10
            local0[3] = 0
            local0[10] = 20
            local0[11] = 25
            local0[12] = 5
            local0[13] = 10
            local0[14] = 5
        else
            local0[1] = 35
            local0[2] = 35
            local0[3] = 0
            local0[10] = 0
            local0[11] = 0
            local0[12] = 10
            local0[13] = 20
            local0[14] = 0
        end
    elseif arg0:GetHpRate(TARGET_SELF) <= 0.5 and arg0:HasSpecialEffectId(TARGET_SELF, 5402) == false then
        local0[5] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        if 7 <= local3 then
            local0[6] = 30
            local0[7] = 30
            local0[8] = 30
            local0[9] = 10
            local0[15] = 0
        elseif 3.5 <= local3 then
            local0[6] = 35
            local0[7] = 25
            local0[8] = 15
            local0[9] = 10
            local0[15] = 5
        else
            local0[6] = 40
            local0[7] = 35
            local0[8] = 10
            local0[9] = 10
            local0[15] = 5
        end
    elseif 8 <= local3 then
        local0[1] = 15
        local0[2] = 15
        local0[3] = 25
        local0[10] = 15
        local0[11] = 10
        local0[12] = 0
        local0[13] = 10
        local0[14] = 10
    elseif 4 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 25
        local0[10] = 20
        local0[11] = 15
        local0[12] = 5
        local0[13] = 5
        local0[14] = 10
    elseif 1 <= local3 then
        local0[1] = 15
        local0[2] = 10
        local0[3] = 0
        local0[10] = 20
        local0[11] = 25
        local0[12] = 5
        local0[13] = 10
        local0[14] = 5
    else
        local0[1] = 35
        local0[2] = 35
        local0[3] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 10
        local0[13] = 20
        local0[14] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act03)
    local1[5] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act15)
    local1[20] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act23)
    local1[27] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act29)
    local1[30] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act47)
    local1[48] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act48)
    local1[49] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act49)
    local1[50] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_Act50)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast218000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
function Devotee_of_SilverBeast218000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
    elseif local1 <= 50 then
        if local2 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local4, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local4, 0)
        end
    elseif local2 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local4, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local4, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = local14
local0 = local13
function Devotee_of_SilverBeast218000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 4, 0, 2)
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, -1)
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function Devotee_of_SilverBeast218000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function Devotee_of_SilverBeast218000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, -1)
    arg0:SetTimer(0, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local32
local0 = local31
function Devotee_of_SilverBeast218000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0)
    elseif local1 <= 80 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local3, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = local34
local0 = local33
function Devotee_of_SilverBeast218000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0 - arg0:GetRandam_Int(0, 2), UPVAL0 + 5, 0, 2)
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local4, 0, -1)
    elseif local1 <= 80 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local4, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local4, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local4, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local4, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local4, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = local34
local0 = local33
function Devotee_of_SilverBeast218000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 - 6.5
    Approach_Act(arg0, arg1, UPVAL0 - arg0:GetRandam_Int(0, 2), UPVAL0 + 5, 0, 2)
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local4, 0, -1)
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 10, 3003, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local4, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 10, 3003, TARGET_ENE_0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local4, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = local36
local0 = local35
local0 = local34
function Devotee_of_SilverBeast218000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = UPVAL0
    Approach_Act(arg0, arg1, UPVAL2 - arg0:GetRandam_Int(0, 2), UPVAL0 + 5, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local3, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function Devotee_of_SilverBeast218000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = local18
local0 = local17
function Devotee_of_SilverBeast218000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = local20
local0 = local19
function Devotee_of_SilverBeast218000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
function Devotee_of_SilverBeast218000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function Devotee_of_SilverBeast218000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function Devotee_of_SilverBeast218000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function Devotee_of_SilverBeast218000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_SilverBeast218000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_SilverBeast218000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
local0 = local32
local0 = local31
function Devotee_of_SilverBeast218000_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local2 = UPVAL2
        local3 = UPVAL3
        local4 = UPVAL2 + 10
        local5 = UPVAL2 + 1
    end
    Approach_Act(arg0, arg1, local2, local4, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local5, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local5, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Devotee_of_SilverBeast218000_Act28(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
local0 = local13
function Devotee_of_SilverBeast218000_Act29(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
local0 = local32
local0 = local31
function Devotee_of_SilverBeast218000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local2 = UPVAL2
        local3 = UPVAL3
        local4 = UPVAL2 + 10
        local5 = UPVAL2 + 1
    end
    Approach_Act(arg0, arg1, local2, local4, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.1 - local0
local0 = 0.4 - local0
local0 = 4.5 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast218000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local2 = UPVAL2
        local3 = UPVAL3
        local4 = UPVAL2 + 10
        local5 = UPVAL2 + 1
    end
    Approach_Act(arg0, arg1, local2, local4, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local5, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.9 - local0
local0 = 0.4 - local0
local0 = 4.1 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast218000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local2 = UPVAL2
        local3 = UPVAL3
        local4 = UPVAL2 + 10
        local5 = UPVAL2 + 1
    end
    Approach_Act(arg0, arg1, local2, local4, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local5, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
local0 = local34
local0 = local33
function Devotee_of_SilverBeast218000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local2 = UPVAL2
        local3 = UPVAL3
        local4 = UPVAL2 + 10
        local5 = UPVAL2 + 1
    end
    Approach_Act(arg0, arg1, local2, local4, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local5, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9.1 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast218000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3004_Dist_max
    local local3 = Att3004_Dist_min
    local local4 = Att3004_Dist_max + 10
    local local5 = Att3004_Dist_max + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local2 = UPVAL0
        local3 = UPVAL1
        local4 = UPVAL0 + 10
        local5 = UPVAL0 + 1
    end
    Approach_Act(arg0, arg1, local2, local4, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local5, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
function Devotee_of_SilverBeast218000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local2 = Att2003005_Dist_max
        local3 = Att2003005_Dist_min
        local4 = Att2003005_Dist_max + 10
        local5 = Att2003005_Dist_max + 1
    end
    Approach_Act(arg0, arg1, local2, local4, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local5, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
local0 = 9.5 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast218000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local2 = UPVAL2
        local3 = UPVAL3
        local4 = UPVAL2 + 10
        local5 = UPVAL2 + 1
    end
    Approach_Act(arg0, arg1, local2, local4, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local5, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
local0 = local36
local0 = local35
function Devotee_of_SilverBeast218000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local2 = UPVAL2
        local3 = UPVAL3
        local4 = UPVAL2 + 10
        local5 = UPVAL2 + 1
    end
    Approach_Act(arg0, arg1, local2, local4, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local5, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
local0 = 5.6 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast218000_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local2 = UPVAL2
        local3 = UPVAL3
        local4 = UPVAL2 + 10
        local5 = UPVAL2 + 1
    end
    Approach_Act(arg0, arg1, local2, local4, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, local5, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast218000_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
local0 = local13
function Devotee_of_SilverBeast218000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.2 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast218000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function Devotee_of_SilverBeast218000_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local18
local0 = local17
function Devotee_of_SilverBeast218000_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
local0 = local19
function Devotee_of_SilverBeast218000_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 999 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast218000_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
local0 = local32
local0 = local31
function Devotee_of_SilverBeast218000_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local2 = UPVAL2
        local3 = UPVAL3
        local4 = UPVAL2 + 10
        local5 = UPVAL2 + 1
    end
    Approach_Act(arg0, arg1, local2, local4, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local5, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local5, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local5, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
local0 = local34
local0 = local33
function Devotee_of_SilverBeast218000_Act47(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local2 = UPVAL2
        local3 = UPVAL3
        local4 = UPVAL2 + 10
        local5 = UPVAL2 + 1
    end
    Approach_Act(arg0, arg1, local2, local4, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local5, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local5, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
local0 = local34
local0 = local33
function Devotee_of_SilverBeast218000_Act48(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local2 = UPVAL2
        local3 = UPVAL3
        local4 = UPVAL2 + 10
        local5 = UPVAL2 + 1
    end
    Approach_Act(arg0, arg1, local2, local4, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local5, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local5, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local5, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
local0 = local34
local0 = local33
function Devotee_of_SilverBeast218000_Act49(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local2 = UPVAL2
        local3 = UPVAL3
        local4 = UPVAL2 + 10
        local5 = UPVAL2 - 6.5
    end
    Approach_Act(arg0, arg1, local2, local4, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 10, 3003, TARGET_ENE_0, local5, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, local5, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local5, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
local0 = local36
local0 = local35
function Devotee_of_SilverBeast218000_Act50(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local2 = UPVAL2
        local3 = UPVAL3
        local4 = UPVAL2 + 10
        local5 = UPVAL2 + 1
    end
    Approach_Act(arg0, arg1, local2, local4, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local5, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local5, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_SilverBeast218000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(1, 2.5)
    local local5 = arg0:GetRandam_Float(1, 2)
    local local6 = 0
    if local0 <= 2 then
        if local1 <= 0 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
        elseif local1 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif local0 <= 5 then
        if local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif local0 <= 10 and local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
    end
    return 
end

function Devotee_of_SilverBeast218000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Devotee_of_SilverBeast218000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Devotee_of_SilverBeast218000Battle_Terminate(arg0, arg1)
    return 
end

function Devotee_of_SilverBeast218000Battle_Interupt(arg0, arg1)
    if arg0:IsFinishTimer(0) == false or arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 3024
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) == true then
        local3 = 3008
    end
    if Counter_Act(arg0, arg1, 2, local3) then
        return true
    elseif UseItem_Act(arg0, arg1, 8, 20) then
        arg1:ClearSubGoal()
        if arg0:GetDist(TARGET_ENE_0) < 4 then
            Devotee_of_SilverBeast218000_Act01(arg0, arg1, paramTbl)
        else
            Devotee_of_SilverBeast218000_Act03(arg0, arg1, paramTbl)
        end
        return true
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    local local6 = Shoot_2dist(arg0, arg1, 5, 20, 20, 40)
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
