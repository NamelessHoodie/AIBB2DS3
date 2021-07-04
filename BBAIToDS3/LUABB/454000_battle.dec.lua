local local0 = 0.3
local local1 = 6.8 - local0
local local2 = 3.9 - local0
local local3 = 6.1 - local0
local local4 = 6.4 - local0
local local5 = 7.4 - local0
local local6 = 5.8 - local0
local local7 = 6.5 - local0
local local8 = 0.6 - local0
local local9 = 5 - local0
local local10 = 8.8 - local0
local local11 = 3.6 - local0
local local12 = 6.4 - local0
local local13 = 3.4 - local0
local local14 = 4.8 - local0
local local15 = 11.3 - local0
local local16 = 0 - local0
local local17 = 5 - local0
local local18 = 0 - local0
local local19 = 5.1 - local0
local local20 = 0 - local0
local local21 = 3.5 - local0
local local22 = 0 - local0
local local23 = 6.2 - local0
local local24 = 0 - local0
local local25 = 0 - local0
local local26 = 3.4 - local0
local local27 = 5 - local0
local local28 = 6 - local0
local local29 = 0 - local0
local local30 = 12.8 - local0
local local31 = 0 - local0
local local32 = 20.8 - local0
local local33 = 5 - local0
local local34 = 7.2 - local0
local local35 = 0.6 - local0
local local36 = 7.3 - local0
local local37 = 5.6 - local0
local local38 = 5.5 - local0
local local39 = 0
local local40 = 0
local local41 = 0
local local42 = 0
local local43 = 0
local local44 = 1
local local45 = 0
local local46 = 1
local local47 = 1
local local48 = 0
function OnIf_454000(arg0, arg1, arg2)
    if arg2 == 0 then
        LastBoss454000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function LastBoss454000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5027)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5028)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5029)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5030)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5031)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5032)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8050)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetHpRate(TARGET_SELF)
    local local6 = arg0:GetNumber(0)
    if arg0:GetEventRequest() == 100 then
        local0[42] = 10
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        if local3 <= 2 then
            local0[3] = 10
            local0[4] = 10
            local0[20] = 0
            local0[43] = 10
        else
            local0[43] = 10
            local0[21] = 1
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) then
        if local3 <= 2 then
            local0[3] = 20
            local0[20] = 0
            local0[43] = 10
        else
            local0[43] = 10
            local0[21] = 1
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 60) then
        if local3 <= 2 then
            local0[4] = 20
            local0[20] = 0
            local0[43] = 10
        else
            local0[43] = 10
            local0[21] = 1
        end
    elseif 12 <= local3 then
        local0[5] = 10
        local0[7] = 10
        local0[21] = 20
    elseif 5.5 <= local3 then
        local0[1] = 10
        local0[2] = 15
        local0[6] = 10
        local0[7] = 20
        local0[9] = 20
        local0[13] = 10
        local0[21] = 10
    elseif 2 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[8] = 20
        local0[9] = 30
        local0[10] = 10
        local0[13] = 10
        local0[21] = 10
        local0[22] = 40
    else
        local0[1] = 20
        local0[3] = 10
        local0[4] = 10
        local0[8] = 50
        local0[10] = 10
        local0[11] = 10
        local0[13] = 10
        local0[20] = 10
        local0[22] = 10
    end
    if 0.9 <= local5 then
        local0[22] = local0[22] - 30
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5020) == false and local5 <= 0.9 then
        local0[22] = local0[22] + 100
    end
    if arg0:GetNumber(4) == 1 or arg0:HasSpecialEffectId(TARGET_ENE_0, 8051) then
        arg0:SetNumber(4, 0)
        if local5 <= 0.85 then
            local0[20] = local0[20] + 30
        end
        if local5 <= 0.75 then
            local0[11] = local0[11] + 50
            local0[20] = local0[20] + 20
        end
    end
    if arg0:GetNumber(3) == 0 then
        local0[21] = 0
        local0[22] = 0
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
    if local6 == 13 and 0 < local0[13] then
        local0[13] = 1
    end
    if local6 == 21 and 0 < local0[21] then
        local0[21] = 1
    end
    if local6 == 22 and 0 < local0[22] then
        local0[22] = 1
    end
    local1[1] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act11)
    local1[13] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act13)
    local1[15] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act17)
    local1[18] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act18)
    local1[20] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act22)
    local1[30] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act30)
    local1[42] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, LastBoss454000_Act44)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, LastBoss454000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local1
local0 = local3
local0 = local38
function LastBoss454000_Act01(arg0, arg1, arg2)
    LastBoss454000_Approach_Act_Flex(arg0, arg1, UPVAL0 - 2, UPVAL0 - 2, UPVAL0 + 5, 50, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL1 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL2, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.3 - local0
local0 = local10
local0 = local38
local0 = local48
function LastBoss454000_Act02(arg0, arg1, arg2)
    LastBoss454000_Approach_Act_Flex(arg0, arg1, UPVAL0, UPVAL0, UPVAL0 + 5, 50, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL1 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, UPVAL2, 0, 0)
    arg0:SetNumber(0, 2)
    local local2 = UPVAL3 + 2
    SETUPVAL 14 3 0
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
local0 = local38
local0 = local48
function LastBoss454000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL1, 0, 0)
    arg0:SetNumber(0, 3)
    local local3 = UPVAL2 + 2
    SETUPVAL 7 2 0
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.4 - local0
local0 = local38
local0 = local48
function LastBoss454000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5028)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL1, 0, 0)
    arg0:SetNumber(0, 4)
    local local3 = UPVAL2 + 2
    SETUPVAL 7 2 0
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 12.6 - local0
local0 = local48
function LastBoss454000_Act05(arg0, arg1, arg2)
    LastBoss454000_Approach_Act_Flex(arg0, arg1, UPVAL0 - 2, UPVAL0 - 2, UPVAL0 - 2, 50, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 5)
    local local2 = UPVAL1 + 4
    SETUPVAL 13 1 0
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.5 - local0
local0 = local48
function LastBoss454000_Act06(arg0, arg1, arg2)
    LastBoss454000_Approach_Act_Flex(arg0, arg1, UPVAL0 - 1, UPVAL0 - 1, UPVAL0 - 1, 50, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    local local2 = UPVAL1 + 2
    SETUPVAL 13 1 0
    arg0:SetNumber(0, 6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local15
local0 = local48
function LastBoss454000_Act07(arg0, arg1, arg2)
    LastBoss454000_Approach_Act_Flex(arg0, arg1, UPVAL0 - 2, UPVAL0 - 2, UPVAL0 - 2, 50, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(0, 7)
    local local2 = UPVAL1 + 2
    SETUPVAL 13 1 0
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.2 - local0
local0 = local26
local0 = local28
local0 = local38
function LastBoss454000_Act08(arg0, arg1, arg2)
    arg0:SetNumber(6, 1)
    LastBoss454000_Approach_Act_Flex(arg0, arg1, UPVAL0 - 1, UPVAL0 + 3, UPVAL0 + 3, 50, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL1 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, UPVAL2 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, UPVAL3, 0, 0)
    arg0:SetNumber(0, 8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.2 - local0
local0 = local38
function LastBoss454000_Act09(arg0, arg1, arg2)
    LastBoss454000_Approach_Act_Flex(arg0, arg1, UPVAL0 + 1, UPVAL0 + 1, UPVAL0 + 999, 50, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5032)
    arg0:DeleteObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8)
    arg0:DeleteObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(0, 9)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local19
local0 = local38
function LastBoss454000_Act10(arg0, arg1, arg2)
    arg0:SetNumber(6, 1)
    LastBoss454000_Approach_Act_Flex(arg0, arg1, UPVAL0 - 2, UPVAL0 + 3, UPVAL0 + 3, 50, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 - 2
    local local3 = UPVAL1
    arg0:DeleteObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8)
    arg0:DeleteObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, local2, 0, 0)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, local2, 0, 0)
    arg0:SetNumber(0, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local3
local0 = local23
local0 = local38
function LastBoss454000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL2
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.03, TARGET_ENE_0, 0, 0, 0)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5031)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8050)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 - 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL1 - 1, 0, 0)
    arg0:SetNumber(0, 11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 7.1 - local0
local0 = local38
function LastBoss454000_Act13(arg0, arg1, arg2)
    LastBoss454000_Approach_Act_Flex(arg0, arg1, UPVAL0 - 2, UPVAL0 + 5, UPVAL0 + 5, 100, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, AttDist1, 0, 0)
    arg0:SetNumber(0, 13)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
local0 = local28
local0 = local38
function LastBoss454000_Act15(arg0, arg1, arg2)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5028)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL2
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5030)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, AttDist, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, AttDist, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local26
local0 = local3
local0 = local19
local0 = local38
function LastBoss454000_Act16(arg0, arg1, arg2)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5029)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL1
    local local2 = UPVAL2
    if UPVAL0 - 1 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, local2, 0, 0)
    end
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, UPVAL3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local19
local0 = local38
function LastBoss454000_Act17(arg0, arg1, arg2)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5030)
    arg0:SetTimer(0, 10)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL1
    if UPVAL0 - 4 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local38
local0 = local19
local0 = 10.6 - local0
function LastBoss454000_Act18(arg0, arg1, arg2)
    arg0:SetTimer(1, 10)
    arg0:SetNumber(5, 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if local0 <= UPVAL1 - 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, UPVAL0, 0, 0)
    elseif UPVAL1 - 1 <= local0 and local0 <= UPVAL2 then
        LastBoss454000_Act06(arg0, arg1, arg2)
    elseif UPVAL2 <= local0 then
        LastBoss454000_Act05(arg0, arg1, arg2)
    else
        LastBoss454000_Act21(arg0, arg1, arg2)
    end
    arg0:DeleteObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8)
    arg0:DeleteObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 1.4 - local0
local0 = local48
function LastBoss454000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 20)
    if 50 <= arg0:GetRandam_Int(1, 100) then
        arg0:SetNumber(5, 0)
    end
    local local1 = 0
    SETUPVAL 6 1 0
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss454000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.03, TARGET_ENE_0, 0, 0, 0)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5027)
    if arg0:GetDist(TARGET_ENE_0) <= 5 and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0)
    arg0:SetNumber(0, 21)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LastBoss454000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.03, TARGET_ENE_0, 0, 0, 0)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 999
    arg1:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 10, 3020, TARGET_ENE_0, local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3027, TARGET_ENE_0, local2, 0, 0)
    arg0:SetNumber(0, 22)
    arg0:SetNumber(7, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
function LastBoss454000_Act30(arg0, arg1, arg2)
    LastBoss454000_Approach_Act_Flex(arg0, arg1, UPVAL0 - 1, UPVAL0 + 3, UPVAL0 + 5, 50, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local2, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local1
function LastBoss454000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 10)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, UPVAL0 + 1, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LastBoss454000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, 999, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LastBoss454000_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LastBoss454000_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LastBoss454000_Approach_Act_Flex(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if arg7 == nil then
        arg7 = 3
    end
    if arg8 == nil then
        arg8 = 8
    end
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = true
    if arg4 <= local0 then
        local1 = false
    elseif arg3 <= local0 and arg0:GetRandam_Int(1, 100) <= arg5 then
        local1 = false
    end
    local local2 = -1
    if arg0:GetRandam_Int(1, 100) <= arg6 then
        local2 = 9910
    end
    if local1 == true then
        life = arg7
    else
        life = arg8
    end
    if arg0:GetNumber(5) == 0 then
        local1 = true
        arg7 = arg0:GetRandam_Int(6, 7)
        arg0:SetNumber(5, 1)
    end
    if arg0:GetNumber(3) == 0 then
        arg7 = 10
    end
    if arg0:GetNumber(6) == 1 then
        local1 = local1 ~= true
        arg0:SetNumber(6, 0)
    end
    if arg2 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, life, TARGET_ENE_0, arg2, TARGET_SELF, local1, local2)
    end
    return 
end

function LastBoss454000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function LastBoss454000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Float(2.5, 3.5)
    local local4 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 4)
    if 5.5 <= local0 and local2 <= 40 then
        arg0:SetNumber(5, 0)
    elseif 12 <= local0 and local2 <= 80 then
        arg0:SetNumber(5, 0)
    end
    if arg0:GetNumber(3) == 0 then
        arg0:SetNumber(3, 1)
    elseif 5.5 <= local0 and local1 <= 75 then
        arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 4.5)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(120, 150), false, true, -1)
    elseif 12 <= local0 and local1 <= 50 then
        arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 4.5)
        LastBoss454000_Act21(arg0, arg1, paramTbl)
    else
        arg0:Replaning()
    end
    return 
end

function LastBoss454000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function LastBoss454000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local23
local0 = local38
local0 = 9.3 - local0
local0 = local15
function LastBoss454000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    if arg0:IsInterupt(INTERUPT_Inside_ObserveArea) and arg0:IsInsideObserve(0) then
        arg1:ClearSubGoal()
        arg0:Replaning()
        arg0:DeleteObserve(0)
        return true
    elseif arg0:IsInterupt(INTERUPT_UseItem) and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and arg0:HasSpecialEffectId(TARGET_SELF, 5038) == false and local3 <= 0.7 then
        if arg0:IsFinishTimer(1) == true then
            arg1:ClearSubGoal()
            LastBoss454000_Act18(arg0, arg1, paramTbl)
            return true
        else
            return false
        end
    elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) then
        if arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) and local2 <= 5.5 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and local2 <= 5.5 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return false
            end
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5027) then
            if 10 <= local2 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return false
            end
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5028) then
            if local2 <= 5.5 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                arg1:ClearSubGoal()
                LastBoss454000_Act15(arg0, arg1, paramTbl)
                return true
            else
                return false
            end
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5029) then
            if local2 <= 5.5 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                arg1:ClearSubGoal()
                LastBoss454000_Act16(arg0, arg1, paramTbl)
                return true
            else
                return false
            end
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5030) then
            if arg0:IsFinishTimer(0) == true and local2 <= 11 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) then
                arg1:ClearSubGoal()
                LastBoss454000_Act17(arg0, arg1, paramTbl)
                return true
            else
                return false
            end
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5031) then
            if 5 <= local2 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                arg1:ClearSubGoal()
                LastBoss454000_Act18(arg0, arg1, paramTbl)
                return true
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return false
            end
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5032) then
            if local2 <= 4.5 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return false
            end
        elseif arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8050) then
            local local4 = UPVAL1
            arg0:DeleteObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8050)
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, UPVAL0 - 1, 0, 0)
            return true
        elseif (not not arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8) or arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)) and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and arg0:HasSpecialEffectId(TARGET_SELF, 5038) == false then
            if arg0:IsFinishTimer(1) == true then
                arg1:ClearSubGoal()
                LastBoss454000_Act18(arg0, arg1, paramTbl)
                return true
            else
                return false
            end
        end
    end
    if arg0:IsInterupt(INTERUPT_Damaged) then
        arg1:ClearSubGoal()
        if arg0:HasSpecialEffectId(TARGET_SELF, 8051) == true and arg0:HasSpecialEffectId(TARGET_SELF, 5039) == true and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local2 <= 2 then
            LastBoss454000_Act11(arg0, arg1, paramTbl)
            return true
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 8051) == true and arg0:HasSpecialEffectId(TARGET_SELF, 5039) == true and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and UPVAL2 <= local2 and local2 <= UPVAL3 - 1.5 then
            LastBoss454000_Act07(arg0, arg1, paramTbl)
            return true
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5039) == true and arg0:HasSpecialEffectId(TARGET_SELF, 5038) == false and local2 <= 2 then
            if local0 <= 50 or local0 <= 80 and local3 <= 0.75 then
                if local1 <= 15 then
                    LastBoss454000_Act04(arg0, arg1, paramTbl)
                    return true
                elseif local1 <= 30 then
                    LastBoss454000_Act03(arg0, arg1, paramTbl)
                    return true
                elseif local1 <= 80 then
                    LastBoss454000_Act20(arg0, arg1, paramTbl)
                    return true
                else
                    arg0:SetNumber(4, 1)
                    arg0:Replaning()
                    return true
                end
            else
                LastBoss454000_Act44(arg0, arg1, paramTbl)
                return true
            end
        end
        arg0:Replaning()
        if not (local3 > 0.9 or local0 > 75) or local3 <= 0.75 and local0 <= 85 then
            arg0:SetNumber(4, 1)
        end
    end
    return false
end

return 
