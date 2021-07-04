local local0 = 0.5
local local1 = 0.4 - local0
local local2 = 6.2 - local0
local local3 = 0.4 - local0
local local4 = 5.1 - local0
local local5 = 0.4 - local0
local local6 = 2.9 - local0
local local7 = 0.4 - local0
local local8 = 9 - local0
local local9 = 0.4 - local0
local local10 = 9 - local0
local local11 = 0.4 - local0
local local12 = 8.7 - local0
local local13 = 0.4 - local0
local local14 = 6.4 - local0
local local15 = 0.4 - local0
local local16 = 3.6 - local0
local local17 = 0.4 - local0
local local18 = 4.2 - local0
local local19 = 0.4 - local0
local local20 = 999 - local0
local local21 = 0.4 - local0
local local22 = 5 - local0
local local23 = 0.4 - local0
local local24 = 5 - local0
local local25 = 0.4 - local0
local local26 = 5 - local0
local local27 = 0.4 - local0
local local28 = 4.5 - local0
local local29 = 0.4 - local0
local local30 = 4.1 - local0
local local31 = 0.4 - local0
local local32 = 7.8 - local0
local local33 = 0.4 - local0
local local34 = 9.1 - local0
local local35 = 0.4 - local0
local local36 = 9.5 - local0
local local37 = 0.4 - local0
local local38 = 5.6 - local0
function OnIf_218010(arg0, arg1, arg2)
    if arg2 == 0 then
        Devotee_of_SilverBeast_Parasite218010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Devotee_of_SilverBeast_Parasite218010Battle_Activate(arg0, arg1)
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
            local0[1] = 20
            local0[2] = 15
            local0[3] = 15
            local0[10] = 20
            local0[11] = 10
            local0[12] = 0
            local0[13] = 5
            local0[14] = 15
        elseif 4 <= local3 then
            local0[1] = 20
            local0[2] = 15
            local0[3] = 15
            local0[10] = 20
            local0[11] = 10
            local0[12] = 5
            local0[13] = 5
            local0[14] = 10
        elseif 2 <= local3 then
            local0[1] = 35
            local0[2] = 20
            local0[3] = 0
            local0[10] = 15
            local0[11] = 10
            local0[12] = 5
            local0[13] = 10
            local0[14] = 5
        else
            local0[1] = 40
            local0[2] = 25
            local0[3] = 0
            local0[10] = 0
            local0[11] = 10
            local0[12] = 5
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
            local0[6] = 20
            local0[7] = 20
            local0[8] = 25
            local0[9] = 10
            local0[15] = 0
            local0[16] = 10
            local0[17] = 15
        elseif 3.5 <= local3 then
            local0[6] = 25
            local0[7] = 20
            local0[8] = 15
            local0[9] = 5
            local0[15] = 5
            local0[16] = 15
            local0[17] = 5
        else
            local0[6] = 40
            local0[7] = 35
            local0[8] = 10
            local0[9] = 10
            local0[15] = 5
            local0[16] = 0
            local0[17] = 0
        end
    elseif 8 <= local3 then
        local0[1] = 20
        local0[2] = 15
        local0[3] = 15
        local0[10] = 20
        local0[11] = 10
        local0[12] = 0
        local0[13] = 5
        local0[14] = 15
    elseif 4 <= local3 then
        local0[1] = 20
        local0[2] = 15
        local0[3] = 15
        local0[10] = 20
        local0[11] = 10
        local0[12] = 5
        local0[13] = 5
        local0[14] = 10
    elseif 2 <= local3 then
        local0[1] = 35
        local0[2] = 20
        local0[3] = 0
        local0[10] = 15
        local0[11] = 10
        local0[12] = 5
        local0[13] = 10
        local0[14] = 5
    else
        local0[1] = 40
        local0[2] = 25
        local0[3] = 0
        local0[10] = 0
        local0[11] = 10
        local0[12] = 5
        local0[13] = 20
        local0[14] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act03)
    local1[5] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act17)
    local1[20] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act23)
    local1[25] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act26)
    local1[27] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act29)
    local1[30] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act47)
    local1[48] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act48)
    local1[49] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act49)
    local1[50] = REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_Act50)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Devotee_of_SilverBeast_Parasite218010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
local0 = local14
function Devotee_of_SilverBeast_Parasite218010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL2
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
        if local2 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local4, 0)
        elseif local2 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local4, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local4, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
        if local2 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, local4, 0)
        end
        if local1 <= 80 then
            if arg0:GetRandam_Int(1, 100) <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local4, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local4, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local4, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local4, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
local0 = local14
function Devotee_of_SilverBeast_Parasite218010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL2
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 4, 0, 2)
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, -1)
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, -1)
        if arg0:GetRandam_Int(1, 100) <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local3, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, local3, 0)
        if local1 <= 80 then
            if arg0:GetRandam_Int(1, 100) <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local3, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 12.9 - local0
local0 = 4.4 - local0
function Devotee_of_SilverBeast_Parasite218010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Devotee_of_SilverBeast_Parasite218010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, -1)
    arg0:SetTimer(0, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.9 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast_Parasite218010_Act06(arg0, arg1, arg2)
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
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local32
local0 = local31
function Devotee_of_SilverBeast_Parasite218010_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, -1)
    elseif local1 <= 80 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local3, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local32
local0 = local31
function Devotee_of_SilverBeast_Parasite218010_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 5
    local local5 = UPVAL0 - 6.5
    local local6 = 0
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local5, 0, -1)
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 10, 3003, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 10, 3003, TARGET_ENE_0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local5, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.3 - local0
local0 = 0.4 - local0
local0 = local32
function Devotee_of_SilverBeast_Parasite218010_Act09(arg0, arg1, arg2)
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
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.7 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast_Parasite218010_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.8 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast_Parasite218010_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.1 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast_Parasite218010_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.7 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast_Parasite218010_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9.8 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast_Parasite218010_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast_Parasite218010_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 7 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast_Parasite218010_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9.7 - local0
local0 = 0.4 - local0
function Devotee_of_SilverBeast_Parasite218010_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_SilverBeast_Parasite218010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_SilverBeast_Parasite218010_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_SilverBeast_Parasite218010_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Devotee_of_SilverBeast_Parasite218010_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local4, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local4, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Devotee_of_SilverBeast_Parasite218010_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local4, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Devotee_of_SilverBeast_Parasite218010_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local4, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function Devotee_of_SilverBeast_Parasite218010_Act28(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local4, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, local4, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local4, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function Devotee_of_SilverBeast_Parasite218010_Act29(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local4, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local4, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_SilverBeast_Parasite218010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = arg0:GetRandam_Float(2, 3)
    local local6 = 0
    return 
end

function Devotee_of_SilverBeast_Parasite218010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Devotee_of_SilverBeast_Parasite218010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Devotee_of_SilverBeast_Parasite218010Battle_Terminate(arg0, arg1)
    return 
end

function Devotee_of_SilverBeast_Parasite218010Battle_Interupt(arg0, arg1)
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
    if Counter_Act(arg0, arg1, 4, local3) then
        return true
    elseif UseItem_Act(arg0, arg1, 8, 20) then
        arg1:ClearSubGoal()
        if arg0:GetDist(TARGET_ENE_0) < 4 then
            Devotee_of_SilverBeast_Parasite218010_Act01(arg0, arg1, paramTbl)
        else
            Devotee_of_SilverBeast_Parasite218010_Act03(arg0, arg1, paramTbl)
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
