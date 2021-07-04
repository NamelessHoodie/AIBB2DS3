local local0 = 3
local local1 = 1.3 - local0
local local2 = 4.1 - local0
local local3 = 5 - local0
local local4 = 2 - local0
local local5 = 5.4 - local0
local local6 = 0.8 - local0
local local7 = 1.4 - local0
local local8 = 4.6 - local0
local local9 = 0 - local0
local local10 = 4.6 - local0
local local11 = 0 - local0
local local12 = 7.4 - local0
local local13 = 6.6 - local0
local local14 = 6.3 - local0
local local15 = 14.7 - local0
local local16 = 5.6 - local0
local local17 = 11.4 - local0
local local18 = 3.9 - local0
local local19 = 2 - local0
local local20 = 10.7 - local0
local local21 = 3.4 - local0
local local22 = 2.4 - local0
local local23 = 11.1 - local0
local local24 = 6.1 - local0
local local25 = 12.9 - local0
local local26 = 10 - local0
local local27 = 4.6 - local0
local local28 = 3.3 - local0
local local29 = 9.9 - local0
local local30 = 1.1 - local0
local local31 = 0 - local0
local local32 = 6.9 - local0
local local33 = 5.4 - local0
local local34 = 12 - local0
local local35 = 16 - local0
local local36 = 6.3 - local0
local local37 = 1.4 - local0
local local38 = 5.2 - local0
local local39 = 6 - local0
local local40 = 5.2 - local0
local local41 = 6 - local0
local local42 = 6.6 - local0
local local43 = 6.3 - local0
local local44 = 19.5 - local0
local local45 = 3.9 - local0
local local46 = 2 - local0
local local47 = 20 - local0
local local48 = 10 - local0
local local49 = 12 - local0
local local50 = 5.2 - local0
local local51 = 6 - local0
local local52 = 6 - local0
function OnIf_512000(arg0, arg1, arg2)
    if arg2 == 0 then
        FalseGod512000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function FalseGod512000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 480) and arg0:GetNumber(3) == 0 then
        arg0:SetNumber(3, 1)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 481) and arg0:GetNumber(1) == 0 then
        arg0:SetNumber(1, 1)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 482) and arg0:GetNumber(1) == 0 then
        arg0:SetNumber(1, 1)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 483) and arg0:GetNumber(2) == 0 then
        arg0:SetNumber(2, 1)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 484) and arg0:GetNumber(2) == 0 then
        arg0:SetNumber(2, 1)
    end
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetHpRate(TARGET_SELF)
    local local6 = 1
    local local7 = arg0:GetEventRequest(0)
    local local8 = arg0:GetNumber(5)
    if arg0:IsFinishTimer(3) == true then
        arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 5)
        arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 5)
        arg0:AddObserveArea(2, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 60, 5)
        arg0:AddObserveArea(3, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 60, 5)
    end
    if 0.7 <= local5 then
        local6 = 1
    elseif 0.6 <= local5 then
        local6 = 2
    elseif 0.5 <= local5 then
        local6 = 3
    elseif 0.4 <= local5 then
        local6 = 4
    else
        local6 = 5
    end
    if local7 == 100 then
        local0[21] = 100
    elseif local7 == 110 then
        local0[22] = 100
    elseif arg0:GetEventRequest(1) == 100 then
        local0[23] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[20] = 100
    elseif arg0:GetNumber(4) == 2 then
        if 16 <= local3 then
            local0[5] = 10
            local0[6] = 15
            local0[7] = 15
            local0[8] = 20
            local0[10] = 20
            local0[15] = 0
            local0[18] = 20
        elseif 12 <= local3 then
            local0[5] = 15
            local0[6] = 15
            local0[7] = 10
            local0[8] = 10
            local0[10] = 10
            local0[15] = 10
            local0[18] = 30
        elseif 8 <= local3 then
            local0[5] = 15
            local0[4] = 20
            local0[7] = 25
            local0[8] = 15
            local0[10] = 15
            local0[18] = 10
        elseif 4 <= local3 then
            local0[4] = 20
            local0[7] = 30
            local0[8] = 15
            local0[10] = 20
            local0[18] = 15
        else
            local0[3] = 60
            local0[15] = 30
            local0[18] = 10
        end
    elseif 16 <= local3 then
        local0[5] = 10
        local0[7] = 15
        local0[8] = 0
        local0[9] = 15
        local0[10] = 30
        local0[11] = 10
        local0[13] = 20
        if arg0:GetNumber(4) == 1 then
            local0[5] = 10
            local0[6] = 15
            local0[7] = 5
            local0[8] = 0
            local0[9] = 10
            local0[10] = 30
            local0[11] = 15
            local0[13] = 15
        end
    elseif 12 <= local3 then
        local0[5] = 10
        local0[7] = 20
        local0[8] = 0
        local0[9] = 20
        local0[10] = 10
        local0[11] = 10
        local0[13] = 20
        local0[15] = 10
        if arg0:GetNumber(4) == 1 then
            local0[5] = 10
            local0[6] = 10
            local0[7] = 10
            local0[8] = 0
            local0[9] = 10
            local0[10] = 20
            local0[11] = 20
            local0[13] = 15
            local0[15] = 5
        end
    elseif 8 <= local3 then
        local0[5] = 20
        local0[4] = 10
        local0[7] = 25
        local0[8] = 20
        local0[9] = 15
        local0[13] = 10
        if arg0:GetNumber(4) == 1 then
            local0[5] = 20
            local0[4] = 15
            local0[7] = 15
            local0[8] = 15
            local0[9] = 10
            local0[13] = 10
            local0[17] = 15 * local6
        end
    elseif 4 <= local3 then
        local0[1] = 20
        local0[2] = 10
        local0[4] = 20
        local0[7] = 15
        local0[8] = 20
        local0[9] = 15
        if arg0:GetNumber(4) == 1 then
            local0[1] = 0
            local0[2] = 25
            local0[4] = 20
            local0[7] = 20
            local0[8] = 20
            local0[9] = 0
            local0[17] = 15 * local6
        end
    else
        local0[1] = 20
        local0[2] = 10
        local0[3] = 10
        local0[12] = 20 * local6
        local0[14] = 20 * local6
        local0[15] = 20
        if arg0:GetNumber(4) == 1 then
            local0[1] = 10
            local0[2] = 25
            local0[3] = 15
            local0[12] = 10 * local6
            local0[14] = 10 * local6
            local0[15] = 20
        end
    end
    if arg0:IsFinishTimer(0) == false then
        local0[12] = 0
    end
    if arg0:IsFinishTimer(1) == false then
        local0[14] = 0
    end
    if arg0:IsFinishTimer(2) == false then
        local0[17] = 0
    end
    if local8 == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if local8 == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if local8 == 3 and 0 < local0[3] then
        local0[3] = 1
    end
    if local8 == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if local8 == 5 and 0 < local0[5] then
        local0[5] = 1
    end
    if local8 == 6 and 0 < local0[6] then
        local0[6] = 1
    end
    if local8 == 7 and 0 < local0[7] then
        local0[7] = 1
    end
    if local8 == 8 and 0 < local0[8] then
        local0[8] = 1
    end
    if local8 == 9 and 0 < local0[9] then
        local0[9] = 1
    end
    if local8 == 10 and 0 < local0[10] then
        local0[10] = 1
    end
    if local8 == 11 and 0 < local0[11] then
        local0[11] = 1
    end
    if local8 == 12 and 0 < local0[12] then
        local0[12] = 1
    end
    if local8 == 13 and 0 < local0[13] then
        local0[13] = 1
    end
    if local8 == 14 and 0 < local0[14] then
        local0[14] = 1
    end
    if local8 == 15 and 0 < local0[15] then
        local0[15] = 1
    end
    if local8 == 17 and 0 < local0[17] then
        local0[17] = 1
    end
    if local8 == 18 and 0 < local0[18] then
        local0[18] = 1
    end
    if local8 == 19 and 0 < local0[19] then
        local0[19] = 1
    end
    local1[1] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act15)
    local1[17] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act17)
    local1[18] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act18)
    local1[20] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, FalseGod512000_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, FalseGod512000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 10.2 - local0
function FalseGod512000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    if (arg0:GetNumber(1) == 1 or arg0:GetNumber(2) == 1 or arg0:GetNumber(3) == 1 or arg0:GetNumber(4) == 1) and arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0)
    end
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.1 - local0
function FalseGod512000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    if (arg0:GetNumber(1) == 1 or arg0:GetNumber(2) == 1 or arg0:GetNumber(3) == 1 or arg0:GetNumber(4) == 1) and arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, 0)
    end
    arg0:SetNumber(5, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
function FalseGod512000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = 15
    local local4 = UPVAL0
    local local5 = UPVAL0 + 1
    local local6 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, AttDist1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, AttDist1, 0)
        end
    elseif local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_ENE_0, AttDist1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, AttDist1, 0)
    end
    arg0:SetNumber(5, 3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 10.4 - local0
local0 = 9.4 - local0
function FalseGod512000_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    if 1 <= arg0:GetNumber(4) then
        local0 = UPVAL1
    end
    if 1 <= arg0:GetNumber(4) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, local0, -1, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local0, 0, 0)
    end
    arg0:SetNumber(5, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 20 - local0
function FalseGod512000_Act05(arg0, arg1, arg2)
    local local0 = UPVAL0
    if arg0:GetNumber(4) == 0 or arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3037, TARGET_ENE_0, local0, 0, 0)
    end
    arg0:SetNumber(5, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 20 - local0
function FalseGod512000_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, UPVAL0, -1, -1)
    arg0:SetNumber(5, 6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 14.3 - local0
local0 = 19.5 - local0
function FalseGod512000_Act07(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    if arg0:GetNumber(4) == 2 then
        local0 = UPVAL1
        local1 = UPVAL1
        local2 = UPVAL1 + 1
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 1)
    end
    if arg0:GetNumber(4) == 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local0, 0)
    elseif (arg0:GetNumber(1) == 1 or arg0:GetNumber(2) == 1 or arg0:GetNumber(3) == 1 or arg0:GetNumber(4) == 1) and arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, local0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local0, 0)
    end
    arg0:SetNumber(5, 7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 11 - local0
local0 = 16 - local0
function FalseGod512000_Act08(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    if arg0:GetNumber(4) == 2 then
        local0 = UPVAL1
        local1 = UPVAL1
        local2 = UPVAL1 + 1
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 1)
    end
    if (arg0:GetNumber(1) == 1 or arg0:GetNumber(2) == 1 or arg0:GetNumber(3) == 1 or arg0:GetNumber(4) == 1) and arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, local0, 0, 0)
    end
    arg0:SetNumber(5, 8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 14.9 - local0
function FalseGod512000_Act09(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 1)
    end
    if (arg0:GetNumber(1) == 1 or arg0:GetNumber(2) == 1 or arg0:GetNumber(3) == 1 or arg0:GetNumber(4) == 1) and arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local0, 0)
    end
    arg0:SetNumber(5, 9)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 21 - local0
local0 = 25.5 - local0
function FalseGod512000_Act10(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    if arg0:GetNumber(4) == 2 then
        local0 = UPVAL1
        local1 = UPVAL1
        local2 = UPVAL1 + 1
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local0, 0, 0)
    arg0:SetNumber(5, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 17.3 - local0
function FalseGod512000_Act11(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 1)
    end
    if (arg0:GetNumber(1) == 1 or arg0:GetNumber(2) == 1 or arg0:GetNumber(3) == 1 or arg0:GetNumber(4) == 1) and arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, local0, 0, 0)
    end
    arg0:SetNumber(5, 11)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local32
function FalseGod512000_Act12(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 1, 0, 1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0, -1, -1)
    arg0:SetTimer(0, 15)
    arg0:SetNumber(5, 12)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 17 - local0
function FalseGod512000_Act13(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 1, 0, 1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0, -1, -1)
    arg0:SetNumber(5, 13)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.8 - local0
function FalseGod512000_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetTimer(1, 15)
    arg0:SetNumber(5, 14)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local35
local0 = 16 - local0
function FalseGod512000_Act15(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    if arg0:GetNumber(4) == 2 then
        local0 = UPVAL1
        local1 = UPVAL1
        local2 = UPVAL1 + 1
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, local0, -1, -1)
    arg0:SetNumber(5, 15)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 12.8 - local0
function FalseGod512000_Act17(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 1, 0, 1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, UPVAL0, -1, -1)
    arg0:SetTimer(2, 15)
    arg0:SetNumber(5, 17)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 15.5 - local0
function FalseGod512000_Act18(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 1, 0, 1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, UPVAL0, -1, -1)
    arg0:SetNumber(5, 18)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FalseGod512000_Act19(arg0, arg1, arg2)
    if arg0:GetEventRequest(0) == 100 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, DIST_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, DIST_None, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 11.6 - local0
local0 = 13.5 - local0
local0 = 3.6 - local0
local0 = local10
local0 = local32
local0 = local35
local0 = 20 - local0
local0 = 20 - local0
function FalseGod512000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL2
    local local6 = UPVAL3
    local local7 = UPVAL4
    if arg0:GetNumber(4) == 2 then
        local3 = UPVAL6
        local4 = UPVAL7
    end
    if arg0:GetNumber(4) == 2 then
        if 20 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 20, 0, 0)
        elseif local1 <= 60 and 5 <= local0 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, local3, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, local4, 0, 0)
            end
        elseif local2 <= 50 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local5, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local6, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL5, -1, -1)
        end
    elseif arg0:GetNumber(4) == 1 then
        if 20 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 20, 0, 0)
        elseif local1 <= 60 and 5 <= local0 then
            if local2 <= 50 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, local3, 0, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, local4, 0, 0)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, local7, 0, 0)
            end
        elseif local2 <= 50 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local5, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local6, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, local7, 0, 0)
        end
    elseif 20 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 20, 0, 0)
    elseif local1 <= 60 and 5 <= local0 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, local3, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, local4, 0, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local6, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FalseGod512000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:SetNumber(4, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FalseGod512000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:SetNumber(4, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FalseGod512000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FalseGod512000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function FalseGod512000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    return 
end

function FalseGod512000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function FalseGod512000Battle_Terminate(arg0, arg1)
    return 
end

function FalseGod512000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg0:IsInsideObserve(0) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(0)
            if local0 <= 15 or arg0:GetNumber(4) == 2 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, DIST_None, 0, 0)
            end
            arg0:SetTimer(3, 5)
            return true
        elseif arg0:IsInsideObserve(1) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(1)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 0)
            arg0:SetTimer(3, 5)
            return true
        elseif arg0:IsInsideObserve(2) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(2)
            if local0 <= 20 or arg0:GetNumber(4) == 2 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_None, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 0)
            end
            arg0:SetTimer(3, 5)
            return true
        elseif arg0:IsInsideObserve(3) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(3)
            if local0 <= 20 or arg0:GetNumber(4) == 2 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 0)
            end
            arg0:SetTimer(3, 5)
            return true
        end
        arg0:Replaning()
    else
        return false
    end
end

return 
