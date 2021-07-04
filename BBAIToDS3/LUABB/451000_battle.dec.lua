local local0 = 2.4
local local1 = 1.6
local local2 = 8.8 - local0
local local3 = 6.4 - local0
local local4 = 8 - local0
local local5 = 11.6 - local0
local local6 = 5 - local0
local local7 = 10 - local0
local local8 = 0 - local0
local local9 = 4.8 - local0
local local10 = 0 - local0
local local11 = 0 - local0
local local12 = 0 - local0
local local13 = 16 - local0
local local14 = 5 - local0
local local15 = 0 - local0
local local16 = 0 - local0
local local17 = 26.8 - local0
local local18 = 0 - local0
local local19 = 26.8 - local0
local local20 = 0 - local0
local local21 = 0 - local1
local local22 = 0 - local1
local local23 = 0 - local1
local local24 = 0 - local1
local local25 = 0 - local1
local local26 = 0 - local1
local local27 = 0 - local1
local local28 = 0 - local1
local local29 = 0 - local1
local local30 = 0 - local1
local local31 = 0 - local1
local local32 = 8 - local1
local local33 = 0 - local1
local local34 = 0 - local1
local local35 = 0 - local1
local local36 = 0 - local1
local local37 = 0 - local1
local local38 = 0 - local1
local local39 = 0 - local1
local local40 = 0
function OnIf_451000(arg0, arg1, arg2)
    if arg2 == 0 then
        Ludwig451000_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        Ludwig451000_AddAttack(arg0, arg1)
    end
    return 
end

local0 = 0
local0 = 0
local0 = 0
local0 = 0
local0 = 0
local0 = 0
local0 = 0
local0 = 0
local0 = local40
function Ludwig451000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetNumber(0)
    local local7 = arg0:GetHpRate(TARGET_SELF)
    local local8 = 1
    local local9 = 1
    local local10 = 1
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025)
    if arg0:IsEventFlag(13400999) == true then
        if local7 < 0.5 then
            local local11 = 1
            SETUPVAL 13 0 0
        end
        if local7 < 0.7 then
            local local11 = 1
            SETUPVAL 13 1 0
            local11 = 1
            SETUPVAL 13 2 0
        end
        if local7 < 0.8 then
            local local11 = 1
            SETUPVAL 13 3 0
            local11 = 1
            SETUPVAL 13 4 0
        end
        if local7 < 0.9 then
            local local11 = 1
            SETUPVAL 13 5 0
            local11 = 1
            SETUPVAL 13 6 0
        end
    else
        if local7 < 0.75 then
            local local11 = 1
            SETUPVAL 13 0 0
        end
        if local7 < 0.8 then
            local local11 = 1
            SETUPVAL 13 1 0
            local11 = 1
            SETUPVAL 13 2 0
        end
        if local7 < 0.85 then
            local local11 = 1
            SETUPVAL 13 3 0
            local11 = 1
            SETUPVAL 13 4 0
        end
        if local7 < 0.9 then
            local local11 = 1
            SETUPVAL 13 5 0
            local11 = 1
            SETUPVAL 13 6 0
        end
        if local7 < 0.35 then
            local local11 = 1
            SETUPVAL 13 7 0
        end
    end
    if local4 == 100 then
        local local11 = 100
        SETUPVAL 13 6 0
    end
    if local4 == 101 then
        local local11 = 100
        SETUPVAL 13 4 0
    end
    if local4 == 102 then
        local local11 = 100
        SETUPVAL 13 2 0
    end
    if local4 == 103 then
        local local11 = 100
        SETUPVAL 13 0 0
    end
    if local4 == 110 then
        local local11 = 100
        SETUPVAL 13 7 0
    end
    if arg0:IsFinishTimer(0) == false then
        local local11 = 0
        SETUPVAL 13 5 0
    end
    if arg0:IsFinishTimer(1) == false then
        local8 = 0
    end
    if arg0:IsFinishTimer(2) == false then
        local local11 = 0
        SETUPVAL 13 1 0
    end
    if arg0:IsFinishTimer(3) == false then
        local local11 = 0
        SETUPVAL 13 2 0
    end
    if arg0:IsFinishTimer(4) == false then
        local local11 = 0
        SETUPVAL 13 3 0
    end
    if arg0:IsFinishTimer(5) == false then
        local local11 = 0
        SETUPVAL 13 4 0
    end
    if arg0:IsFinishTimer(6) == false then
        local local11 = 0
        SETUPVAL 13 0 0
    end
    if arg0:IsFinishTimer(7) == false then
        local local11 = 0
        SETUPVAL 13 6 0
    end
    if arg0:IsFinishTimer(8) == false then
        local9 = 0
    end
    if arg0:IsFinishTimer(9) == false then
        local10 = 0
    end
    if arg0:IsFinishTimer(10) == false then
        local local11 = 0
        SETUPVAL 13 7 0
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
            local0[41] = 100
        elseif arg0:GetNumber(1) == 0 then
            local0[4] = 10
        elseif 10 <= local3 then
            local0[1] = 10
            local0[3] = 10
            local0[4] = 20
            local0[6] = 20
            local0[7] = 40 * local8
            local0[11] = 160 * UPVAL3
            local0[15] = 40 * UPVAL2
            local0[10] = 80 * UPVAL6
        elseif 8 <= local3 then
            local0[1] = 10
            local0[3] = 10
            local0[4] = 20
            local0[6] = 20
            local0[7] = 80 * local8
            local0[11] = 80 * UPVAL3
            local0[12] = 80 * UPVAL4
            local0[15] = 20 * UPVAL2
        elseif 6 <= local3 then
            local0[1] = 20
            local0[3] = 20
            local0[12] = 160 * UPVAL4
            local0[15] = 20 * UPVAL2
        elseif 4 <= local3 then
            local0[1] = 20
            local0[5] = 20
            local0[15] = 80 * UPVAL2
            local0[16] = 80 * UPVAL0
        elseif 1.5 <= local3 then
            local0[5] = 20
            local0[9] = 20 * UPVAL5
            local0[13] = 20
            local0[15] = 20 * UPVAL2
            local0[16] = 80 * UPVAL0
            local0[42] = UPVAL8
        else
            local0[8] = UPVAL8 + 6
            local0[9] = 20 * UPVAL5
            local0[13] = 20
            local0[16] = 80 * UPVAL0
            local0[42] = UPVAL8
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
        local0[41] = 100
    elseif local4 == 110 then
        local0[32] = 10
    elseif 12 <= local3 then
        local0[28] = 10
        local0[29] = 10
        local0[32] = 160 * UPVAL7
        local0[33] = 20
        local0[34] = 40
    elseif 9 <= local3 then
        local0[21] = 10
        local0[27] = 40
        local0[28] = 80
        local0[29] = 80
        local0[32] = 320 * UPVAL7
        local0[33] = 80
        local0[34] = 40
    elseif 6 <= local3 then
        local0[21] = 80
        local0[22] = 10
        local0[27] = 160
        local0[29] = 80
        local0[32] = 320 * UPVAL7
        local0[33] = 40
        local0[34] = 40
    elseif 3 <= local3 then
        local0[21] = 40
        local0[22] = 10
        local0[24] = 20
        local0[25] = 10
        local0[31] = 80 * local10
        local0[32] = 160 * UPVAL7
    else
        local0[23] = 80
        local0[24] = 20
        local0[25] = 10
        local0[26] = 320 * local9
        local0[30] = 20
        local0[31] = 160 * local10
        local0[32] = 480 * UPVAL7
    end
    if local6 == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if local6 == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if local6 == 3 and 0 < local0[3] then
        local0[3] = 1
    end
    if local6 == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if local6 == 5 and 0 < local0[5] then
        local0[5] = 1
    end
    if local6 == 6 and 0 < local0[6] then
        local0[6] = 1
    end
    if local6 == 7 and 0 < local0[7] then
        local0[7] = 1
    end
    if local6 == 8 and 0 < local0[8] then
        local0[8] = 1
    end
    if local6 == 9 and 0 < local0[9] then
        local0[9] = 1
    end
    if local6 == 10 and 0 < local0[10] then
        local0[10] = 1
    end
    if local6 == 11 and 0 < local0[11] then
        local0[11] = 1
    end
    if local6 == 12 and 0 < local0[12] then
        local0[12] = 1
    end
    if local6 == 13 and 0 < local0[13] then
        local0[13] = 1
    end
    if local6 == 14 and 0 < local0[14] then
        local0[14] = 1
    end
    if local6 == 15 and 0 < local0[15] then
        local0[15] = 1
    end
    if local6 == 16 and 0 < local0[16] then
        local0[16] = 1
    end
    if local6 == 17 and 0 < local0[17] then
        local0[17] = 1
    end
    if local6 == 21 and 0 < local0[21] then
        local0[21] = 1
    end
    if local6 == 22 and 0 < local0[22] then
        local0[22] = 1
    end
    if local6 == 23 and 0 < local0[23] then
        local0[23] = 1
    end
    if local6 == 24 and 0 < local0[24] then
        local0[24] = 1
    end
    if local6 == 25 and 0 < local0[25] then
        local0[25] = 1
    end
    if local6 == 26 and 0 < local0[26] then
        local0[26] = 1
    end
    if local6 == 27 and 0 < local0[27] then
        local0[27] = 1
    end
    if local6 == 28 and 0 < local0[28] then
        local0[28] = 1
    end
    if local6 == 29 and 0 < local0[29] then
        local0[29] = 1
    end
    if local6 == 30 and 0 < local0[30] then
        local0[30] = 1
    end
    if local6 == 31 and 0 < local0[31] then
        local0[31] = 1
    end
    if local6 == 32 and 0 < local0[32] then
        local0[32] = 1
    end
    if local6 == 33 and 0 < local0[33] then
        local0[33] = 1
    end
    if local6 == 34 and 0 < local0[34] then
        local0[34] = 1
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act16)
    local1[21] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act26)
    local1[27] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act29)
    local1[30] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act34)
    local1[41] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, Ludwig451000_Act44)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Ludwig451000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 9.8 - local0
local0 = local40
function Ludwig451000_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL0 - 1
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 100 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local0, 0)
    end
    arg0:SetNumber(0, 1)
    local local3 = UPVAL1 + 2
    SETUPVAL 10 1 0
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9 - local0
local0 = local40
function Ludwig451000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 1
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 2)
    local local3 = UPVAL1 + 2
    SETUPVAL 10 1 0
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 12 - local0
local0 = local40
function Ludwig451000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 1
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 3)
    local local3 = UPVAL1 + 2
    SETUPVAL 10 1 0
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 15 - local0
local0 = local40
function Ludwig451000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 1
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 4)
    arg0:SetNumber(1, 1)
    local local3 = UPVAL1 + 2
    SETUPVAL 10 1 0
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8 - local0
local0 = local40
function Ludwig451000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 2
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5026)
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 5)
    local local3 = UPVAL1 + 4
    SETUPVAL 10 1 0
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 19.6 - local0
local0 = 12.4 - local0
local0 = local40
function Ludwig451000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = arg0:GetHpRate(TARGET_SELF)
    if 17.1 <= local0 then
        local2 = UPVAL0
    else
        local2 = UPVAL1
    end
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local2 = 4
    end
    if local2 <= local0 then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, 0, -1)
    local local4 = UPVAL2 + 2
    SETUPVAL 10 2 0
    arg0:SetNumber(0, 6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 17 - local0
local0 = local40
function Ludwig451000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 2
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 9999, 0, -1)
    arg0:SetNumber(0, 7)
    arg0:SetTimer(1, 30)
    local local3 = UPVAL1 + 2
    SETUPVAL 10 1 0
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4 - local0
local0 = local40
function Ludwig451000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 8)
    local local2 = 0
    SETUPVAL 10 1 0
    GetWellSpace_Odds = 75 * arg0:GetHpRate(TARGET_SELF)
    return GetWellSpace_Odds
end

local0 = 13.8 - local0
local0 = local40
function Ludwig451000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 2
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 9999, 0, -1)
    arg0:SetNumber(0, 9)
    arg0:SetTimer(0, 30)
    local local3 = UPVAL1 + 2
    SETUPVAL 10 1 0
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9.4 - local0
function Ludwig451000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 10)
    arg0:SetTimer(7, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 22 - local0
function Ludwig451000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 11)
    arg0:SetTimer(4, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local13
function Ludwig451000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 12)
    arg0:SetTimer(5, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 7.2 - local0
local0 = local40
function Ludwig451000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 13)
    local local3 = UPVAL1 + 4
    SETUPVAL 10 1 0
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local17
function Ludwig451000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 9999, 0, -1)
    arg0:SetNumber(0, 14)
    arg0:SetTimer(2, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local13
local0 = local40
function Ludwig451000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 9999, 0, -1)
    arg0:SetNumber(0, 15)
    arg0:SetTimer(3, 15)
    local local3 = 0
    SETUPVAL 10 1 0
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8 - local0
local0 = local40
function Ludwig451000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 9999, 0, -1)
    arg0:SetNumber(0, 16)
    arg0:SetTimer(6, 45)
    local local3 = UPVAL1 + 16
    SETUPVAL 10 1 0
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 12.2 - local1
function Ludwig451000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    local local3 = UPVAL0
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local3 = 4
    end
    if local3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local3, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
    if local0 <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2, 0)
    elseif local0 <= 67 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local2, 0)
    end
    arg0:SetNumber(0, 21)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9.2 - local1
function Ludwig451000_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 22)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.8 - local1
function Ludwig451000_Act23(arg0, arg1, arg2)
    local local0 = UPVAL0 + 5
    local local1 = UPVAL0
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local0, 0, -1)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, local0, 0)
        if arg0:GetHpRate(TARGET_SELF) < 0.25 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, local0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local0, 0)
    end
    arg0:SetNumber(0, 23)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4 - local1
function Ludwig451000_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local2 = 4
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3027, TARGET_ENE_0, local1, 0, -1)
    if arg0:GetHpRate(TARGET_SELF) < 0.25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0)
    end
    arg0:SetNumber(0, 25)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8.6 - local1
function Ludwig451000_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 26)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.2 - local1
function Ludwig451000_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 27)
    arg0:SetTimer(8, arg0:GetRandam_Int(15, 30))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 16.4 - local1
function Ludwig451000_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 27)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 18.4 - local1
function Ludwig451000_Act28(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, local0, 0, -1)
    if arg0:GetRandam_Int(1, 100) <= 67 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local0, 0)
    end
    arg0:SetNumber(0, 28)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 15 - local1
function Ludwig451000_Act29(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3019, TARGET_ENE_0, local0, 0, -1)
    if arg0:GetRandam_Int(1, 100) <= 67 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, local0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local0, 0)
    end
    arg0:SetNumber(0, 29)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.6 - local1
function Ludwig451000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8.2 - local1
function Ludwig451000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 31)
    arg0:SetTimer(9, arg0:GetRandam_Int(30, 45))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 99 - local1
function Ludwig451000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 9999
    local local4 = 0
    local local5 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local2 = 4
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 32)
    arg0:SetTimer(10, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 26.6 - local1
function Ludwig451000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 2
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 33)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 26.6 - local1
function Ludwig451000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if not (not arg0:IsInsideTargetRegion(TARGET_SELF, 3402810) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402811)) or arg0:IsInsideTargetRegion(TARGET_SELF, 3402811) and arg0:IsInsideTargetRegion(TARGET_ENE_0, 3402810) then
        local1 = 4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 34)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.4 - local0
local0 = 4 - local1
local0 = 4 - local1
local0 = 4 - local1
function Ludwig451000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    local local2 = arg0:GetHpRate(TARGET_SELF)
    local local3 = UPVAL1 + 1
    local local4 = UPVAL2 + 1
    local local5 = UPVAL3 + 1
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5027)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5028)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 45) and -0.5 <= local0 and local0 <= local1 and arg0:GetNumber(2) == 0 then
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 3, 3013, TARGET_ENE_0, local1)
            arg0:SetNumber(2, 1)
        else
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                if local0 <= 8 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
                end
            elseif local0 <= 8 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
            end
            arg0:SetNumber(2, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        if local0 <= local5 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, local5, 0, -1)
        elseif local0 <= 8 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        if local0 <= local3 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, local3, 0, -1)
        elseif local0 <= 8 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
        end
    elseif local0 <= local4 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local40
function Ludwig451000_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    local local1 = 0
    SETUPVAL 6 0 0
    GetWellSpace_Odds = 75 * arg0:GetHpRate(TARGET_SELF)
    return GetWellSpace_Odds
end

function Ludwig451000_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(2.5, 3.5)
    local local1 = arg0:GetHpRate(TARGET_SELF)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 0, arg0:GetRandam_Int(165, 195), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 1, arg0:GetRandam_Int(165, 195), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local17
function Ludwig451000_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = arg0:GetHpRate(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 9999, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Ludwig451000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Ludwig451000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(2.5, 3.5)
    local local3 = arg0:GetRandam_Float(2.5, 3.5)
    local local4 = arg0:GetHpRate(TARGET_SELF) * 100
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5401) and local0 > 3 then
        if local0 <= 6 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            if local1 <= local4 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        elseif local1 <= local4 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    end
    return 
end

function Ludwig451000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Ludwig451000Battle_Terminate(arg0, arg1)
    return 
end

function Ludwig451000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025) then
        arg1:ClearSubGoal()
        arg0:Replaning()
        return true
    elseif not arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        if arg0:IsInterupt(INTERUPT_UseItem) and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) and 7 <= local1 and local1 <= 11 and local0 <= 50 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3004, TARGET_ENE_0, DIST_None, 0, -1)
            return true
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5026) and 67 <= local0 then
            arg1:ClearSubGoal()
            if 3.2 <= local1 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3003, TARGET_ENE_0, DIST_None, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3012, TARGET_ENE_0, DIST_None, 0, 0)
            end
            return true
        end
    elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5027) then
        arg1:ClearSubGoal()
        if 4 <= local1 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, DIST_None, 0)
        end
        return true
    elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5028) then
        arg1:ClearSubGoal()
        if 4 <= local1 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3009, TARGET_ENE_0, DIST_None, 0, 0)
        end
        return true
    end
    return false
end

return 
