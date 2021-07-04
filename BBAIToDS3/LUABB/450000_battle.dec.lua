local local0 = 1.1
local local1 = 4.2 - local0
local local2 = 6.2 - local0
local local3 = 9.2 - local0
local local4 = 13.2 - local0
local local5 = 4.4 - local0
local local6 = 3.7 - local0
local local7 = 3.5 - local0
local local8 = 0 - local0
local local9 = 0 - local0
local local10 = 0 - local0
local local11 = 101.2 - local0
local local12 = 2.2 - local0
local local13 = 5.5 - local0
local local14 = 0 - local0
local local15 = 6.2 - local0
local local16 = 3.2 - local0
local local17 = 6.2 - local0
local local18 = 0 - local0
local local19 = 5.2 - local0
local local20 = 0 - local0
local local21 = 6.2 - local0
local local22 = 0 - local0
local local23 = 4.2 - local0
local local24 = 0 - local0
local local25 = 3.7 - local0
local local26 = 0 - local0
local local27 = 5 - local0
local local28 = 0 - local0
local local29 = 5 - local0
local local30 = 0 - local0
local local31 = 5 - local0
local local32 = 0 - local0
local local33 = 5 - local0
local local34 = 0 - local0
local local35 = 5 - local0
local local36 = 0 - local0
local local37 = 5 - local0
local local38 = 0 - local0
local local39 = 5 - local0
local local40 = 0 - local0
local local41 = 5 - local0
local local42 = 0 - local0
local local43 = 9.8 - local0
local local44 = 0 - local0
local local45 = 7.2 - local0
local local46 = 0 - local0
local local47 = 8.4 - local0
local local48 = 15 - local0
local local49 = 21 - local0
local local50 = 0 - local0
local local51 = 5 - local0
local local52 = 0 - local0
local local53 = 5 - local0
local local54 = 0 - local0
local local55 = 4.5 - local0
local local56 = 0 - local0
local local57 = 18 - local0
function OnIf_450000(arg0, arg1, arg2)
    if arg2 == 0 then
        KyoukuchouOmega450000_ActAfter(arg0, arg1)
    end
    return 
end

function KyoukuchouOmega450000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 481) and arg0:GetNumber(2) == 0 then
        arg0:SetNumber(2, 1)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 482) and arg0:GetNumber(2) == 0 then
        arg0:SetNumber(2, 1)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 483) and arg0:GetNumber(3) == 0 then
        arg0:SetNumber(3, 1)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 484) and arg0:GetNumber(3) == 0 then
        arg0:SetNumber(3, 1)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        arg0:SetNumber(4, 1)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == false and arg0:HasSpecialEffectId(TARGET_SELF, 5402) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3010, TARGET_ENE_0, Dist_None, 0, 0)
    end
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = 1
    local local6 = 1
    local local7 = 1
    local local8 = 1
    local local9 = 1.5
    local local10 = arg0:GetEventRequest(0)
    if arg0:GetNumber(1) == 1 then
        local9 = 0.5
    end
    if arg0:IsFinishTimer(0) == false then
        local5 = 0
    end
    if arg0:IsFinishTimer(1) == false then
        local6 = 0
    end
    if arg0:IsFinishTimer(2) == false then
        local7 = 0
    end
    if arg0:IsFinishTimer(3) == false then
        local8 = 0
    end
    if local3 < 0.8 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) == true and arg0:HasSpecialEffectId(TARGET_SELF, 5021) == false then
        arg0:SetNumber(1, 1)
        arg0:SetNumber(2, 1)
        arg0:SetNumber(3, 1)
    end
    if local3 <= 0.8 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) == false and arg0:HasSpecialEffectId(TARGET_SELF, 5021) == false then
        if local4 <= 5 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3010, TARGET_ENE_0, Dist_None, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3033, TARGET_ENE_0, Dist_None, 0, 0)
        arg0:SetNumber(1, 1)
        arg0:SetNumber(2, 1)
        arg0:SetNumber(3, 1)
    elseif local3 <= 0.4 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) == true and arg0:HasSpecialEffectId(TARGET_SELF, 5021) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3036, TARGET_ENE_0, Dist_None, 0, 0)
        arg0:SetNumber(4, 1)
    elseif arg0:GetEventRequest(1) == 100 then
        local0[21] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif arg0:GetNumber(4) == 1 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and arg0:GetRandam_Int(1, 100) <= 40 then
            local0[43] = 100
        elseif 15 <= local4 then
            local0[40] = 0
            local0[41] = 0
            local0[42] = 40
            local0[43] = 0
            local0[44] = 50 * local8
        elseif 10 <= local4 then
            local0[40] = 35
            local0[41] = 30
            local0[42] = 35
            local0[43] = 0
            local0[44] = 40 * local8
        elseif 6 <= local4 then
            local0[40] = 25
            local0[41] = 25
            local0[42] = 25
            local0[43] = 10
            local0[44] = 25 * local8
        else
            local0[40] = 12
            local0[41] = 22
            local0[42] = 30
            local0[43] = 10
            local0[44] = 20 * local8
        end
    elseif arg0:GetNumber(5) == 0 then
        local0[6] = 100
    elseif 15 <= local4 then
        local0[1] = 10 * local9
        local0[2] = 0
        local0[3] = 10 * local9
        local0[4] = 15 * local5
        local0[5] = 5 * local6
        local0[6] = 10
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0 * local7
        local0[16] = 0
        local0[17] = 30
        if arg0:GetNumber(3) == 1 then
            local0[12] = 60
            local0[13] = 0
            local0[14] = 0
            local0[15] = 0
        end
    elseif 10 <= local4 then
        local0[1] = 10 * local9
        local0[2] = 0
        local0[3] = 15 * local9
        local0[4] = 10 * local5
        local0[5] = 5 * local6
        local0[6] = 20
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0 * local7
        local0[16] = 0
        local0[17] = 30
        if arg0:GetNumber(3) == 1 then
            local0[12] = 40
            local0[13] = 0
            local0[14] = 40
            local0[15] = 0
        end
    elseif 6 <= local4 then
        local0[1] = 20 * local9
        local0[2] = 5
        local0[3] = 15 * local9
        local0[4] = 5 * local5
        local0[5] = 10 * local6
        local0[6] = 40
        local0[7] = 0
        local0[8] = 0
        local0[9] = 20
        local0[10] = 0 * local7
        local0[16] = 0
        local0[17] = 30
        if arg0:GetNumber(3) == 1 then
            local0[12] = 30
            local0[13] = 40
            local0[14] = 0
            local0[15] = 0
        end
    elseif 3 <= local4 then
        local0[1] = 10 * local9
        local0[2] = 10
        local0[3] = 10 * local9
        local0[4] = 0 * local5
        local0[5] = 5 * local6
        local0[6] = 20
        local0[7] = 10
        local0[8] = 5
        local0[9] = 30
        local0[10] = 20 * local7
        local0[16] = 30
        local0[17] = 20
        if arg0:GetNumber(3) == 1 then
            local0[12] = 0
            local0[13] = 30
            local0[14] = 0
            local0[15] = 20
        end
    else
        local0[1] = 10 * local9
        local0[2] = 15
        local0[3] = 0 * local9
        local0[4] = 0 * local5
        local0[5] = 0 * local6
        local0[6] = 0
        local0[7] = 15
        local0[8] = 10
        local0[9] = 50
        local0[10] = 100 * local7
        local0[16] = 50
        local0[17] = 0
        if arg0:GetNumber(3) == 1 then
            local0[12] = 0
            local0[13] = 0
            local0[14] = 0
            local0[15] = 30
        end
    end
    local1[1] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act17)
    local1[20] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act21)
    local1[40] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_Act44)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, KyoukuchouOmega450000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
function KyoukuchouOmega450000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 2
    local local3 = UPVAL0 + 2
    local local4 = UPVAL0 + 3
    if arg0:GetNumber(1) == 1 then
        local3 = 0
    end
    if arg0:GetNumber(1) == 0 and local0 <= UPVAL1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 701, TARGET_ENE_0, 5, 0, 90)
    elseif arg0:GetNumber(1) == 0 or local2 + 3 <= local0 then
        Approach_Act(arg0, arg1, local2, local3, 0, 2)
    end
    if arg0:GetNumber(2) == 1 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and 3 <= local0 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, local4, 0, 90)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local4, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, 90)
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local4, 0)
            end
        elseif local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, local4, 0, 90)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local4, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, 90)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local4, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local4, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.7 - local0
local0 = 0 - local0
function KyoukuchouOmega450000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 2
    local local3 = UPVAL1
    local local4 = UPVAL0 + 2
    local local5 = UPVAL0 + 8
    if arg0:GetNumber(1) == 1 then
        local4 = 0
    end
    if arg0:GetNumber(1) == 0 or local2 + 3 <= local0 then
        Approach_Act(arg0, arg1, local2, local4, 0, 2)
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and 5 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_ENE_0, local5, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, local5, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local5, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.7 - local0
local0 = 5.2 - local0
function KyoukuchouOmega450000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 2
    local local2 = UPVAL0 + 2
    local local3 = UPVAL0 + 3
    if arg0:GetNumber(1) == 1 then
        local2 = 0
    end
    if arg0:GetNumber(1) == 0 and local0 <= UPVAL1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 701, TARGET_ENE_0, 5, 0, 90)
    elseif arg0:GetNumber(1) == 0 or local1 + 3 <= local0 then
        Approach_Act(arg0, arg1, local1, local2, 0, 2)
    end
    if arg0:GetNumber(2) == 1 then
        if arg0:GetNumber(1) == 1 and arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3030, TARGET_ENE_0, local3, 0, 90)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3031, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local3, 0, 90)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0)
        end
    elseif arg0:GetNumber(1) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, local3, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local3, 0, 90)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function KyoukuchouOmega450000_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL1
    local local2 = UPVAL0 + 0
    local local3 = UPVAL0
    if arg0:GetNumber(1) == 1 then
        local2 = 0
    end
    if arg0:GetNumber(1) == 0 or local0 + 3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local2, 0, 2)
    end
    arg0:SetTimer(0, 10)
    if arg0:GetNumber(1) == 1 and arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, local3, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, 90)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.7 - local0
function KyoukuchouOmega450000_Act05(arg0, arg1, arg2)
    local local0 = UPVAL0 + 2
    local local1 = UPVAL0 + 0
    local local2 = UPVAL0
    if arg0:GetNumber(1) == 1 then
        local1 = 0
    end
    if arg0:GetNumber(1) == 0 or local0 + 3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 2)
    end
    arg0:SetTimer(1, 10)
    if arg0:GetNumber(1) == 1 and arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, local2, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, 90)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 10.2 - local0
local0 = 6.2 - local0
function KyoukuchouOmega450000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 2
    if arg0:GetNumber(5) == 0 then
        local1 = 20
    end
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 701, TARGET_ENE_0, 5, 0, 90)
    else
        Approach_Act(arg0, arg1, UPVAL0 + 2, UPVAL0 + 0, 0, local1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
function KyoukuchouOmega450000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 1
    local local2 = UPVAL0 + 0
    local local3 = UPVAL0 + 2
    if arg0:GetNumber(1) == 1 then
        local2 = 0
    end
    if arg0:GetNumber(1) == 0 or local1 + 3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 2)
    end
    if arg0:GetNumber(2) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_ENE_0, local3, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local3, 0, 90)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local7
function KyoukuchouOmega450000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 - 1
    local local3 = UPVAL0 + 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.2 - local0
function KyoukuchouOmega450000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0 + 0
    if arg0:GetNumber(1) == 1 then
        local2 = 0
    end
    if arg0:GetNumber(1) == 0 or local1 + 3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 2, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.5 - local0
function KyoukuchouOmega450000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 - 1
    local local3 = UPVAL0 + 0
    local local4 = 0
    arg0:SetTimer(2, 30)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KyoukuchouOmega450000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3010, TARGET_ENE_0, 100, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 18.2 - local0
local0 = 11.2 - local0
function KyoukuchouOmega450000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNumber(1) == 1 then
        local local1 = 0
    elseif arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 701, TARGET_ENE_0, 5, 0, 90)
    else
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 1.5, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 9.2 - local0
local0 = 5.2 - local0
function KyoukuchouOmega450000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    if arg0:GetNumber(1) == 1 then
        local3 = 0
    end
    if arg0:GetNumber(1) == 0 or local1 + 3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local3, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 16.2 - local0
local0 = 9.2 - local0
function KyoukuchouOmega450000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    if arg0:GetNumber(1) == 1 then
        local3 = 0
    end
    if arg0:GetNumber(1) == 0 or local1 + 3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local3, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KyoukuchouOmega450000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, AttDist, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
local0 = 2.2 - local0
function KyoukuchouOmega450000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    if arg0:GetNumber(1) == 1 then
        local3 = 0
    end
    if arg0:GetNumber(1) == 0 or local1 + 3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local3, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 2, 0, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.2 - local0
local0 = 4.2 - local0
function KyoukuchouOmega450000_Act17(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL1
    local local2 = UPVAL0 + 2
    local local3 = UPVAL0 + 2
    if arg0:GetNumber(1) == 1 then
        local2 = 0
    end
    if arg0:GetNumber(1) == 0 or local0 + 3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local2, 0, 2)
    end
    if arg0:GetNumber(1) == 1 and arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, local3, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, local3, 0, 90)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KyoukuchouOmega450000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, 90)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0, 90)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_None, 0, 90)
        end
    elseif arg0:GetDist(TARGET_ENE_0) <= 4 then
        if arg0:GetNumber(1) == 1 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local0 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
            elseif local0 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 90)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, DIST_None, 0, 90)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 701, TARGET_ENE_0, 5, 0, 60)
        end
    elseif arg0:GetNumber(1) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KyoukuchouOmega450000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 701, TARGET_ENE_0, 100, 0, 90)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3027, TARGET_ENE_0, 100, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function KyoukuchouOmega450000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 100 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, local2, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 90)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8.2 - local0
local0 = 4.2 - local0
function KyoukuchouOmega450000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function KyoukuchouOmega450000_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = 999
    local local4 = 0
    local local5 = UPVAL0 + 2
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3003, TARGET_ENE_0, local5, 0, 90)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local5, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local5, 0, 90)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = 0 - local0
function KyoukuchouOmega450000_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local7
local0 = 0 - local0
function KyoukuchouOmega450000_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = 999
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 10, 0, 90)
    arg0:SetTimer(3, 8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KyoukuchouOmega450000_ActAfter(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetNumber(5) == 0 then
        arg0:SetNumber(5, 1)
    end
    if arg0:GetNumber(4) ~= 1 and arg0:GetNumber(1) ~= 1 then
        if local3 <= 2 then
            if local0 <= 80 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
                elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
                    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
                    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
                end
            elseif local0 <= 100 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
                elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 90)
                end
            end
        elseif local3 <= 5 then
            if local0 <= 60 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
                elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
                    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
                    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
                end
            elseif local0 <= 70 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
                elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 90)
                else
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
                end
            end
        elseif local3 <= 13 then
            if local0 <= 10 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
                elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
                    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
                    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
                end
            elseif local0 <= 70 then
                if local1 <= 100 then
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
                else
                    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
                end
            end
        elseif local0 <= 0 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            end
        elseif local0 <= 50 then
            if local1 <= 100 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 30, TARGET_ENE_0, true, -1)
            end
        end
    end
    return 
end

function KyoukuchouOmega450000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function KyoukuchouOmega450000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function KyoukuchouOmega450000Battle_Terminate(arg0, arg1)
    return 
end

function KyoukuchouOmega450000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    return false
end

return 
