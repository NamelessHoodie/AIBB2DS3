local local0 = 0.5
local local1 = 0.5 - local0
local local2 = 3.4 - local0
local local3 = 4.2 - local0
local local4 = 0.5 - local0
local local5 = 3.5 - local0
local local6 = 0.5 - local0
local local7 = 2.9 - local0
local local8 = 0.5 - local0
local local9 = 3 - local0
local local10 = 0.5 - local0
local local11 = 3.9 - local0
local local12 = 0.5 - local0
local local13 = 4.4 - local0
local local14 = 5 - local0
local local15 = 11.6 - local0
local local16 = 5.7 - local0
local local17 = 9.2 - local0
local local18 = 3.7 - local0
local local19 = 6.5 - local0
local local20 = 5.7 - local0
local local21 = 17.6 - local0
local local22 = 7.5 - local0
local local23 = 19.6 - local0
local local24 = 15 - local0
local local25 = 0.5 - local0
local local26 = 4.7 - local0
local local27 = 0.5 - local0
local local28 = 3.8 - local0
local local29 = 0.5 - local0
local local30 = 3.3 - local0
local local31 = 0.5 - local0
local local32 = 3.3 - local0
local local33 = 5.7 - local0
local local34 = 9.5 - local0
local local35 = 3.5 - local0
local local36 = 6.5 - local0
local local37 = 5.4 - local0
local local38 = 17.1 - local0
local local39 = 7.2 - local0
local local40 = 19.2 - local0
function OnIf_240000(arg0, arg1, arg2)
    if arg2 == 0 then
        AbandonedGiant240000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function AbandonedGiant240000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = 1
    local local7 = 0
    local local8 = 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5669) == true then
        local6 = 0
    else
        local6 = 1
    end
    if arg0:IsFinishTimer(0) == false and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        local7 = 900
    else
        local7 = 0
    end
    if arg0:IsFinishTimer(1) == false then
        local8 = 0
    else
        local8 = 1
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif 12 <= local3 then
        local0[1] = 40
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[8] = 60 * local8
        local0[9] = 0 * local6
        local0[10] = 0 * local6
        local0[15] = 0 * (1 - local6)
    elseif 7 <= local3 then
        local0[1] = 25
        local0[2] = 5
        local0[3] = 20
        local0[4] = 20
        local0[8] = 30 * local7 * local8
        local0[9] = 0 * local6
        local0[10] = 0 * local6
        local0[15] = 0 * (1 - local6)
    elseif 3 <= local3 then
        local0[1] = 35
        local0[2] = 10
        local0[3] = 25
        local0[4] = 30
        local0[8] = 1 * local7
        local0[9] = 0 * local6
        local0[10] = 0 * local6
        local0[15] = 0 * (1 - local6)
    else
        local0[1] = 35
        local0[2] = 10
        local0[3] = 30
        local0[4] = 25
        local0[8] = 0 * local8
        local0[9] = 0 * local6
        local0[10] = 0 * local6
        local0[15] = 0 * (1 - local6)
    end
    local1[1] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act12)
    local1[15] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act15)
    local1[20] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act20)
    local1[30] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act47)
    local1[48] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act48)
    local1[49] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act49)
    local1[50] = REGIST_FUNC(arg0, arg1, AbandonedGiant240000_Act50)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, AbandonedGiant240000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local26
local0 = local25
local0 = local2
local0 = local1
function AbandonedGiant240000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local2 = UPVAL1
        local local3 = UPVAL0 + 1
        Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, 20)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0)
        end
    else
        local local2 = UPVAL3
        local local3 = UPVAL2 + 1
        Approach_Act(arg0, arg1, UPVAL2, 999, 0, 2)
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, 20)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local28
local0 = local27
local0 = local5
local0 = local4
function AbandonedGiant240000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, 12, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local30
local0 = local29
local0 = local7
local0 = local6
function AbandonedGiant240000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, 999, 0, 3.5)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, 12, 0, 3.5)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local32
local0 = local31
local0 = local9
local0 = local8
function AbandonedGiant240000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0, 0, -1)
    else
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, 999, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local11
local0 = local10
function AbandonedGiant240000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local13
local0 = local12
function AbandonedGiant240000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 1.5, 20)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local15
local0 = local14
function AbandonedGiant240000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(1, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local34
local0 = local33
local0 = local17
local0 = local16
function AbandonedGiant240000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local2 = UPVAL1
        if arg0:IsFinishTimer(0) ~= false then
            Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 5)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local2 = UPVAL3
        if arg0:IsFinishTimer(0) == false then
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.9, TARGET_ENE_0, 0, 0, 0)
        else
            Approach_Act(arg0, arg1, UPVAL2, UPVAL2, 0, 5)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    arg0:SetTimer(1, 7)
    arg0:SetTimer(0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local36
local0 = local35
local0 = local19
local0 = local18
function AbandonedGiant240000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, 999, 0, 3.5)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, UPVAL0 + 1, 1.5, 20)
    else
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, 999, 0, 3.5)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL2 + 1, 1.5, 20)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local38
local0 = local37
local0 = local21
local0 = local20
local0 = local40
local0 = local39
local0 = local23
local0 = local22
function AbandonedGiant240000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 10 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
            local local1 = UPVAL1
            Approach_Act(arg0, arg1, UPVAL0, 20, 0, 2)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, UPVAL0 + 1, 1.5, 20)
        else
            local local1 = UPVAL3
            Approach_Act(arg0, arg1, UPVAL2, 20, 0, 2)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL2 + 1, 1.5, 20)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local1 = UPVAL5
        Approach_Act(arg0, arg1, UPVAL4, 20, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, UPVAL4 + 1, 1.5, 20)
    else
        local local1 = UPVAL7
        Approach_Act(arg0, arg1, UPVAL6, 20, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL6 + 1, 1.5, 20)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 30 - local0
local0 = 0.5 - local0
function AbandonedGiant240000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = UPVAL0 + 1
    local local6 = 0
    if 5 <= arg0:GetDistYSigned(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, local5, 0, -1)
    elseif 35 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, local5, 0, -1)
    elseif 25 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, local5, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, local5, 0, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local24
function AbandonedGiant240000_Act15(arg0, arg1, arg2)
    local local0 = UPVAL0 + 100
    local local1 = 0
    if arg0:GetRandam_Int(1, 100) <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, local0, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, local0, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AbandonedGiant240000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.7 - local0
local0 = 0.5 - local0
local0 = local2
local0 = local1
function AbandonedGiant240000_Act30(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, UPVAL2 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local26
local0 = local25
local0 = local3
local0 = 0.5 - local0
function AbandonedGiant240000_Act31(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, UPVAL2 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.7 - local0
local0 = 0.5 - local0
function AbandonedGiant240000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local28
local0 = local27
local0 = local5
local0 = local4
function AbandonedGiant240000_Act33(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, UPVAL2 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local30
local0 = local29
local0 = local7
local0 = local6
function AbandonedGiant240000_Act34(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, UPVAL2 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local32
local0 = local31
local0 = local9
local0 = local8
function AbandonedGiant240000_Act35(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, UPVAL2 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local11
local0 = local10
function AbandonedGiant240000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local13
local0 = local12
function AbandonedGiant240000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local15
local0 = local14
function AbandonedGiant240000_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local34
local0 = local33
local0 = local17
local0 = local16
function AbandonedGiant240000_Act39(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, UPVAL2 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.7 - local0
local0 = 0.5 - local0
local0 = 2.5 - local0
local0 = 0.5 - local0
function AbandonedGiant240000_Act40(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, UPVAL2 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.5 - local0
local0 = 0.5 - local0
function AbandonedGiant240000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local36
local0 = local35
local0 = local19
local0 = local18
function AbandonedGiant240000_Act42(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, UPVAL2 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local38
local0 = local37
local0 = local21
local0 = local20
function AbandonedGiant240000_Act43(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, UPVAL2 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local40
local0 = local39
local0 = local23
local0 = local22
function AbandonedGiant240000_Act44(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, UPVAL2 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local24
local0 = 0.5 - local0
function AbandonedGiant240000_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 15 - local0
local0 = 0.5 - local0
function AbandonedGiant240000_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local36
local0 = local35
local0 = local19
local0 = local18
function AbandonedGiant240000_Act47(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL0
        local local3 = UPVAL1
        local local4 = UPVAL0 + 10
        local local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL2
        local local3 = UPVAL3
        local local4 = UPVAL2 + 10
        local local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local26
local0 = local25
local0 = local2
local0 = local1
local0 = local3
function AbandonedGiant240000_Act48(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0)
    else
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, UPVAL2 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, UPVAL4 + 1, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local26
local0 = local25
local0 = local2
local0 = local1
function AbandonedGiant240000_Act49(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0)
    else
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, UPVAL2 + 10, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AbandonedGiant240000_Act50(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_NONE, 0, 90, true, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_NONE, 1, 90, true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AbandonedGiant240000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function AbandonedGiant240000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg0:SetTimer(0, 2)
    end
    return 
end

function AbandonedGiant240000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function AbandonedGiant240000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local2
local0 = local17
function AbandonedGiant240000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        if UseItem_Act(arg0, arg1, 10, 40) then
            arg1:ClearSubGoal()
            if arg0:GetDist(TARGET_ENE_0) < 5.2 then
                Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 3.5)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, -1)
            else
                Approach_Act(arg0, arg1, UPVAL1, UPVAL1, 0, 3.5)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL1, 0, -1)
            end
            return true
        else
            local local3 = arg0:GetRandam_Int(1, 100)
            local local4 = arg0:GetRandam_Int(1, 100)
            local local5 = arg0:GetDist(TARGET_ENE_0)
            local local6 = Shoot_2dist(arg0, arg1, 6, 20, 20, 40)
            if local6 == 1 then
                Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 3.5)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, -1)
                return true
            elseif local6 == 2 then
                Approach_Act(arg0, arg1, UPVAL1, UPVAL1, 0, 3.5)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL1, 0, -1)
                return true
            else
                return false
            end
        end
    end
end

return 
