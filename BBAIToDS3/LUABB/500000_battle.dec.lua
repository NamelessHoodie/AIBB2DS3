local local0 = 1.1
local local1 = 4.2 - local0
local local2 = 8.2 - local0
local local3 = 4.4 - local0
local local4 = 0 - local0
local local5 = 0 - local0
local local6 = 0 - local0
local local7 = 0 - local0
local local8 = 0 - local0
local local9 = 101.2 - local0
local local10 = 0 - local0
local local11 = 4.2 - local0
function OnIf_500000(arg0, arg1, arg2)
    if arg2 == 0 then
        Kyoukuchou500000_ActAfter(arg0, arg1)
    end
    return 
end

function Kyoukuchou500000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 480) and arg0:GetNumber(3) == 0 then
        arg0:SetNumber(3, 1)
    end
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
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = 1
    local local6 = 1
    local local7 = 1
    local local8 = 1
    if arg0:GetNumber(1) == 1 then
        local8 = 0.5
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
    if arg0:GetEventRequest(1) == 1 then
        if local4 <= 5 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3010, TARGET_ENE_0, Dist_None, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3016, TARGET_ENE_0, Dist_None, 0, 0)
        arg0:SetNumber(1, 1)
        arg0:SetNumber(2, 1)
        arg0:SetNumber(3, 1)
    elseif arg0:GetEventRequest(0) == 1 then
        local0[27] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 140) and arg0:GetRandam_Int(1, 100) <= 70 then
        local0[20] = 100
    elseif 15 <= local4 then
        local0[1] = 10 * local8
        local0[2] = 0
        local0[3] = 10 * local8
        local0[4] = 15 * local5
        local0[5] = 5 * local6
        local0[7] = 0
        local0[8] = 0
        if arg0:GetNumber(1) == 1 then
            local0[6] = 10
            local0[9] = 0
            local0[10] = 0 * local7
            local0[16] = 0
            local0[17] = 30
        end
        if arg0:GetNumber(3) == 1 then
            local0[12] = 60
            local0[13] = 40
            local0[14] = 60
            local0[15] = 0
        end
    elseif 10 <= local4 then
        local0[1] = 10 * local8
        local0[2] = 0
        local0[3] = 15 * local8
        local0[4] = 10 * local5
        local0[5] = 5 * local6
        local0[7] = 0
        local0[8] = 0
        if arg0:GetNumber(1) == 1 then
            local0[6] = 20
            local0[9] = 0
            local0[10] = 0 * local7
            local0[16] = 0
            local0[17] = 30
        end
        if arg0:GetNumber(3) == 1 then
            local0[12] = 50
            local0[13] = 30
            local0[14] = 50
            local0[15] = 0
        end
    elseif 6 <= local4 then
        local0[1] = 20 * local8
        local0[2] = 5
        local0[3] = 15 * local8
        local0[4] = 5 * local5
        local0[5] = 10 * local6
        local0[7] = 0
        local0[8] = 0
        if arg0:GetNumber(1) == 1 then
            local0[6] = 40
            local0[9] = 20
            local0[10] = 0 * local7
            local0[16] = 0
            local0[17] = 30
        end
        if arg0:GetNumber(3) == 1 then
            local0[12] = 0
            local0[13] = 40
            local0[14] = 20
            local0[15] = 0
        end
    elseif 3 <= local4 then
        local0[1] = 10 * local8
        local0[2] = 10
        local0[3] = 10 * local8
        local0[4] = 0 * local5
        local0[5] = 5 * local6
        local0[7] = 10
        local0[8] = 5
        if arg0:GetNumber(1) == 1 then
            local0[6] = 20
            local0[9] = 30
            local0[10] = 20 * local7
            local0[16] = 30
            local0[17] = 20
        end
        if arg0:GetNumber(3) == 1 then
            local0[12] = 0
            local0[13] = 30
            local0[14] = 0
            local0[15] = 20
        end
    else
        local0[1] = 10 * local8
        local0[2] = 15
        local0[3] = 0 * local8
        local0[4] = 0 * local5
        local0[5] = 0 * local6
        local0[7] = 15
        local0[8] = 10
        if arg0:GetNumber(1) == 1 then
            local0[6] = 0
            local0[9] = 50
            local0[10] = 100 * local7
            local0[16] = 50
            local0[17] = 0
        end
        if arg0:GetNumber(3) == 1 then
            local0[12] = 0
            local0[13] = 0
            local0[14] = 0
            local0[15] = 30
        end
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act17)
    local1[20] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act26)
    local1[27] = REGIST_FUNC(arg0, arg1, Kyoukuchou500000_Act27)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Kyoukuchou500000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 6.2 - local0
local0 = 4.2 - local0
function Kyoukuchou500000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 2
    if arg0:GetNumber(1) == 1 then
        local local3 = 0
    elseif local0 <= UPVAL1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 701, TARGET_ENE_0, 5, 0, 90)
    else
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 2)
    end
    if arg0:GetNumber(2) == 1 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and 3 <= local0 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, local2, 0, 90)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local2, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 90)
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local2, 0)
            end
        elseif local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, local2, 0, 90)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local2, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 90)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local2, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.7 - local0
local0 = 0 - local0
function Kyoukuchou500000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 8
    if arg0:GetNumber(1) == 1 then
        local local3 = 0
    else
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 2)
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and 5 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_ENE_0, local2, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, local2, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.7 - local0
local0 = 5.2 - local0
function Kyoukuchou500000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 2
    if arg0:GetNumber(1) == 1 then
        local local2 = 0
    elseif arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 701, TARGET_ENE_0, 5, 0, 90)
    else
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 2)
    end
    if arg0:GetNumber(2) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, 0, 90)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 13.2 - local0
local0 = 9.2 - local0
function Kyoukuchou500000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    if arg0:GetNumber(1) == 1 then
        local local3 = 0
    else
        Approach_Act(arg0, arg1, UPVAL0 - 1, UPVAL0 + 0, 0, 2)
    end
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.7 - local0
function Kyoukuchou500000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNumber(1) == 1 then
        local local2 = 0
    else
        Approach_Act(arg0, arg1, UPVAL0 - 1, UPVAL0 + 0, 0, 2)
    end
    arg0:SetTimer(1, 10)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 10.2 - local0
local0 = 6.2 - local0
function Kyoukuchou500000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNumber(1) == 1 then
        local local1 = 0
    elseif arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 701, TARGET_ENE_0, 5, 0, 90)
    else
        Approach_Act(arg0, arg1, UPVAL0 - 1, UPVAL0 + 0, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.7 - local0
function Kyoukuchou500000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 2
    if arg0:GetNumber(1) == 1 then
        local local3 = 0
    else
        Approach_Act(arg0, arg1, UPVAL0 - 1, UPVAL0 + 0, 0, 2)
    end
    if arg0:GetNumber(2) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_ENE_0, local2, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, 90)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.5 - local0
function Kyoukuchou500000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNumber(1) == 1 then
        local local2 = 0
    else
        Approach_Act(arg0, arg1, UPVAL0 - 1, UPVAL0 + 0, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.2 - local0
function Kyoukuchou500000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNumber(1) == 1 then
        local local2 = 0
    else
        Approach_Act(arg0, arg1, UPVAL0 - 1, UPVAL0 + 0, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 2, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.5 - local0
function Kyoukuchou500000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNumber(1) == 1 then
        local local2 = 0
    else
        Approach_Act(arg0, arg1, UPVAL0 - 1, UPVAL0 + 0, 0, 2)
    end
    arg0:SetTimer(2, 30)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Kyoukuchou500000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3010, TARGET_ENE_0, 100, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 18.2 - local0
local0 = 11.2 - local0
function Kyoukuchou500000_Act12(arg0, arg1, arg2)
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
function Kyoukuchou500000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    if arg0:GetNumber(1) == 1 then
        local local3 = 0
    else
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 16.2 - local0
local0 = 9.2 - local0
function Kyoukuchou500000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    if arg0:GetNumber(1) == 1 then
        local local3 = 0
    else
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Kyoukuchou500000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, AttDist, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
local0 = 2.2 - local0
function Kyoukuchou500000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    if arg0:GetNumber(1) == 1 then
        local local3 = 0
    else
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 2, 0, 120)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.2 - local0
local0 = 4.2 - local0
function Kyoukuchou500000_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    if arg0:GetNumber(1) == 1 then
        local local3 = 0
    else
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 2, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Kyoukuchou500000_Act20(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        if arg0:GetNumber(1) == 1 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 90)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
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

local0 = 5.5 - local0
local0 = 2.2 - local0
function Kyoukuchou500000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6.2 - local0
local0 = 0 - local0
function Kyoukuchou500000_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6.2 - local0
local0 = 3.2 - local0
function Kyoukuchou500000_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6.2 - local0
local0 = 0 - local0
function Kyoukuchou500000_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.2 - local0
local0 = 0 - local0
function Kyoukuchou500000_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.7 - local0
local0 = 0 - local0
function Kyoukuchou500000_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    if arg0:GetNumber(1) == 1 then
        local local3 = 0
    else
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Kyoukuchou500000_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 701, TARGET_ENE_0, 100, 0, 90)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3027, TARGET_ENE_0, 100, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Kyoukuchou500000_ActAfter(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetNumber(1) == 1 then
        if local3 <= 3 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 90)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
            end
        elseif local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 701, TARGET_ENE_0, 5, 0, 60)
        end
    elseif local3 <= 2 then
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
    return 
end

function Kyoukuchou500000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Kyoukuchou500000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Kyoukuchou500000Battle_Terminate(arg0, arg1)
    return 
end

function Kyoukuchou500000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    return false
end

return 
