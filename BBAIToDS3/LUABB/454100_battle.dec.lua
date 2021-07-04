local local0 = 0.3
local local1 = 17 - local0
local local2 = 20.1 - local0
local local3 = 0 - local0
local local4 = 5 - local0
local local5 = 0 - local0
local local6 = 0 - local0
local local7 = 3.3 - local0
local local8 = 0 - local0
local local9 = 5 - local0
local local10 = 0 - local0
local local11 = 0 - local0
local local12 = 6 - local0
local local13 = 0 - local0
local local14 = 6.8 - local0
local local15 = 0 - local0
local local16 = 6.8 - local0
local local17 = 0 - local0
local local18 = 6.2 - local0
local local19 = 0 - local0
local local20 = 8.5 - local0
local local21 = 0 - local0
local local22 = 0 - local0
local local23 = 8.5 - local0
local local24 = 8 - local0
local local25 = 11 - local0
local local26 = 13.5 - local0
local local27 = 4 - local0
local local28 = 5 - local0
local local29 = 5 - local0
local local30 = 20 - local0
local local31 = 0 - local0
local local32 = 20 - local0
local local33 = 0 - local0
local local34 = 12.8 - local0
local local35 = 0 - local0
local local36 = 20 - local0
local local37 = 0 - local0
local local38 = 5.2 - local0
local local39 = 0 - local0
local local40 = 20.8 - local0
local local41 = 0 - local0
local local42 = 20.8 - local0
local local43 = 6.5 - local0
local local44 = 0
local local45 = 0
local local46 = 0
local local47 = 0
local local48 = 0
local local49 = 1
local local50 = 0
local local51 = 1
local local52 = 1
local local53 = 0
function OnIf_454100(arg0, arg1, arg2)
    if arg2 == 0 then
        LastBossArousal454100_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function LastBossArousal454100Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5026)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5027)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5028)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8050)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    local local7 = arg0:GetNumber(10)
    local local8 = arg0:GetNumber(12)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5020) == false and local6 <= 0.4 and arg0:IsFinishTimer(11) == true then
        local0[41] = 10
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if local3 <= 3 then
            local0[3] = 20
            local0[34] = 10
            local0[40] = 1
        else
            local0[34] = 20
            local0[40] = 30
        end
    elseif 15 <= local3 then
        local0[1] = 20
        local0[2] = 10
        local0[10] = 20
        local0[13] = 20
        local0[30] = 10
        local0[31] = 10
        local0[32] = 10
        local0[33] = 0
        local0[41] = 10
    elseif 10 <= local3 then
        local0[2] = 20
        local0[4] = 10
        local0[6] = 30
        local0[10] = 30
        local0[13] = 20
        local0[15] = 20
        local0[30] = 10
        local0[31] = 10
        local0[32] = 10
        local0[33] = 0
        local0[41] = 10
    elseif 5 <= local3 then
        local0[4] = 15
        local0[6] = 30
        local0[7] = 15
        local0[8] = 20
        local0[10] = 10
        local0[11] = 20
        local0[13] = 40
        local0[15] = 40
        local0[31] = 10
    else
        local0[4] = 20
        local0[6] = 10
        local0[7] = 20
        local0[8] = 20
        local0[11] = 20
    end
    if arg0:GetNumber(18) == 0 and local6 <= 0.35 then
        local0[32] = local0[32] + 50
    end
    if arg0:GetNumber(19) == 0 and local6 <= 0.35 then
        local0[13] = local0[13] + 80
    end
    if 0.35 <= local6 then
        local0[13] = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5020) and arg0:IsFinishTimer(11) == true then
        local0[41] = local0[41] + 120
    end
    if arg0:GetNumber(11) == 1 then
        arg0:SetNumber(11, 0)
        local0[8] = local0[8] + 30
        local0[13] = local0[13] + 80
    end
    if arg0:GetNumber(13) == 0 and local6 <= 0.35 and arg0:IsFinishTimer(10) == true then
        arg0:SetTimer(10, 35)
        arg0:SetNumber(13, 1)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 8057) and arg0:IsFinishTimer(10) == false then
        arg0:SetTimer(10, 0)
    end
    if arg0:IsFinishTimer(10) == false then
        local0[30] = local0[30] + 20
        local0[31] = local0[31] + 20
        local0[32] = local0[32] + 50
        local0[33] = local0[33] + 50
    end
    if local3 <= 12 and 16 <= local3 then
        local0[33] = 0
    end
    if 1 <= local8 then
        arg0:SetNumber(12, local8 - 1)
        local0[10] = 1
        local0[11] = 1
    end
    if local7 == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if local7 == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if local7 == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if local7 == 6 and 0 < local0[6] then
        local0[6] = 1
    end
    if local7 == 7 and 0 < local0[7] then
        local0[7] = 1
    end
    if local7 == 8 and 0 < local0[8] then
        local0[8] = 1
    end
    if local7 == 10 and 0 < local0[10] then
        local0[10] = 1
    end
    if local7 == 11 and 0 < local0[11] then
        local0[11] = 1
    end
    if local7 == 13 and 0 < local0[13] then
        local0[13] = 1
    end
    if local7 == 15 and 0 < local0[15] then
        local0[15] = 1
    end
    if local7 == 16 and 0 < local0[16] then
        local0[16] = 1
    end
    if local7 == 30 and 0 < local0[30] then
        local0[30] = 1
    end
    if local7 == 31 and 0 < local0[31] then
        local0[31] = 1
    end
    if local7 == 32 and 0 < local0[32] then
        local0[32] = 1
    end
    if local7 == 33 and 0 < local0[33] then
        local0[33] = 1
    end
    if local7 == 34 and 0 < local0[34] then
        local0[34] = 1
    end
    local1[1] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act04)
    local1[6] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act08)
    local1[10] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act11)
    local1[13] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act13)
    local1[15] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act16)
    local1[20] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act21)
    local1[30] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act34)
    local1[40] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act41)
    local1[50] = REGIST_FUNC(arg0, arg1, LastBossArousal454100_Act50)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, LastBossArousal454100_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local43
function LastBossArousal454100_Act01(arg0, arg1, arg2)
    LastBoss454100_Approach_Act_Flex(arg0, arg1, UPVAL0 - 1, UPVAL0 - 1, UPVAL0 - 1, 100, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(10, 1)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    if arg0:GetNumber(20) == 1 and arg0:IsFinishTimer(10) == true and (not (0.3 > local3 or local1 > 40) or 0.4 <= local3 and local1 <= 60) then
        arg0:SetNumber(20, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local26
local0 = local43
function LastBossArousal454100_Act02(arg0, arg1, arg2)
    LastBoss454100_Approach_Act_Flex(arg0, arg1, UPVAL0 - 1, UPVAL0 - 1, UPVAL0 - 1, 100, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(10, 2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    if arg0:GetNumber(20) == 1 and arg0:IsFinishTimer(10) == true and (not (0.3 > local3 or local1 > 40) or 0.4 <= local3 and local1 <= 60) then
        arg0:SetNumber(20, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = local43
function LastBossArousal454100_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 11 - local0
local0 = local43
function LastBossArousal454100_Act04(arg0, arg1, arg2)
    LastBoss454100_Approach_Act_Flex(arg0, arg1, UPVAL0 - 6, UPVAL0 - 6, UPVAL0 - 6, 100, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, 0)
    if local1 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local2, 0, 0)
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local2, 0, 0)
    end
    arg0:SetNumber(10, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.5 - local0
local0 = local12
local0 = local14
local0 = local43
function LastBossArousal454100_Act06(arg0, arg1, arg2)
    LastBoss454100_Approach_Act_Flex(arg0, arg1, UPVAL0 - 1, UPVAL0 - 1, UPVAL0 - 1, 100, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL3
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, UPVAL2, 0, 0)
    if local1 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local2, 0, 0)
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local2, 0, 0)
    end
    arg0:SetNumber(10, 6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
local0 = local12
local0 = local43
function LastBossArousal454100_Act07(arg0, arg1, arg2)
    LastBoss454100_Approach_Act_Flex(arg0, arg1, UPVAL0 - 1, UPVAL0 - 1, UPVAL0 - 1, 100, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL1 - 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, UPVAL2, 0, 0)
    arg0:SetNumber(10, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6 - local0
local0 = local14
local0 = local43
function LastBossArousal454100_Act08(arg0, arg1, arg2)
    LastBoss454100_Approach_Act_Flex(arg0, arg1, UPVAL0 - 1, UPVAL0 - 1, UPVAL0 - 1, 100, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1 + 3
    local local3 = UPVAL2
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, AttDist, 0, 0)
    if local1 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local3, 0, 0)
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0, 0)
    end
    arg0:SetNumber(10, 8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 18 - local0
local0 = local43
function LastBossArousal454100_Act10(arg0, arg1, arg2)
    LastBoss454100_Approach_Act_Flex(arg0, arg1, UPVAL0 - 7, UPVAL0 - 7, UPVAL0 + 999, 50, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(10, 10)
    arg0:SetNumber(12, 2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    if arg0:GetNumber(20) == 1 and arg0:IsFinishTimer(10) == true and (not (0.3 > local3 or local1 > 40) or 0.4 <= local3 and local1 <= 60) then
        arg0:SetNumber(20, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.5 - local0
local0 = 6 - local0
local0 = local16
local0 = local43
function LastBossArousal454100_Act11(arg0, arg1, arg2)
    LastBoss454100_Approach_Act_Flex(arg0, arg1, UPVAL0 - 1, UPVAL0 - 1, UPVAL1 + 1, 50, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL2
    local local3 = UPVAL3
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, 999, 0, 0)
    arg0:SetNumber(10, 11)
    arg0:SetNumber(12, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 7 - local0
local0 = 8 - local0
local0 = local28
local0 = local20
local0 = local43
function LastBossArousal454100_Act13(arg0, arg1, arg2)
    LastBoss454100_Approach_Act_Flex(arg0, arg1, UPVAL0 + 1, UPVAL0 + 1, UPVAL1 + 5, 80, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL4
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, UPVAL3 + 1, 0, 0)
    arg0:SetNumber(10, 13)
    arg0:SetNumber(19, 1)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    if arg0:GetNumber(20) == 1 and arg0:IsFinishTimer(10) == true and (not (0.3 > local3 or local1 > 40) or 0.4 <= local3 and local1 <= 60) then
        arg0:SetNumber(20, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LastBossArousal454100_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 999
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5028)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 999, 0, 0)
    arg0:SetNumber(10, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local38
local0 = local43
function LastBossArousal454100_Act16(arg0, arg1, arg2)
    LastBoss454100_Approach_Act_Flex(arg0, arg1, UPVAL0, UPVAL0, UPVAL0, 100, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 999, 0, 0)
    arg0:SetNumber(10, 16)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
local0 = local14
local0 = local28
local0 = local20
local0 = local43
function LastBossArousal454100_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL4
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and local0 <= 4.5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, AttDist, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, UPVAL1, 0, 0)
        if local1 <= 35 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local3, 0, 0)
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local3, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and local0 <= 7 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local3, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and local0 <= 9 then
        arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, UPVAL3 + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local3, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and local0 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 999, 0, 0)
    end
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if arg0:GetNumber(20) == 1 and arg0:IsFinishTimer(10) == true and (not (0.3 > local4 or local1 > 40) or 0.4 <= local4 and local1 <= 60) then
        arg0:SetNumber(20, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local38
local0 = local25
local0 = local1
function LastBossArousal454100_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(12, 10)
    if local0 <= UPVAL0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3026, TARGET_ENE_0, 999, 0, 0)
    elseif UPVAL0 <= local0 and local0 <= UPVAL1 then
        LastBossArousal454100_Act16(arg0, arg1, arg2)
    elseif UPVAL1 <= local0 and local0 <= UPVAL2 then
        LastBossArousal454100_Act02(arg0, arg1, arg2)
    elseif UPVAL2 <= local0 then
        LastBossArousal454100_Act01(arg0, arg1, arg2)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.03, TARGET_ENE_0, 0, 0, 0)
    end
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if arg0:GetNumber(20) == 1 and arg0:IsFinishTimer(10) == true and (not (0.3 > local2 or local1 > 40) or 0.4 <= local2 and local1 <= 60) then
        arg0:SetNumber(20, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 12.8 - local0
function LastBossArousal454100_Act30(arg0, arg1, arg2)
    LastBoss454100_Approach_Act_Flex(arg0, arg1, UPVAL0 - 1, UPVAL0 + 3, UPVAL0 + 5, 50, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(10, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 17.9 - local0
function LastBossArousal454100_Act31(arg0, arg1, arg2)
    LastBoss454100_Approach_Act_Flex(arg0, arg1, UPVAL0 - 1, UPVAL0 + 3, UPVAL0 + 5, 50, 0, 5, 5)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5027)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(10, 31)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local32
function LastBossArousal454100_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 10
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 999, 0, 0)
    arg0:SetNumber(10, 32)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local32
local0 = local30
function LastBossArousal454100_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 10
    local local3 = UPVAL1
    local local4 = 0
    local local5 = 0
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, 999, 0, 0)
    arg0:SetNumber(10, 33)
    arg0:SetNumber(18, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local32
local0 = local30
function LastBossArousal454100_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 10
    local local3 = UPVAL1
    local local4 = 0
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, 999, 0, 0)
    if arg0:GetHpRate(TARGET_SELF) <= 0.3 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 999, 0, 0)
    end
    arg0:SetNumber(10, 34)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LastBossArousal454100_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LastBossArousal454100_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.03, TARGET_ENE_0, 0, 0, 0)
    arg0:SetTimer(11, 50)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3030, TARGET_ENE_0, 999, 0, 0)
    arg0:SetNumber(17, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LastBossArousal454100_Act50(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3018, TARGET_ENE_0, 999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LastBoss454100_Approach_Act_Flex(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
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
    if arg0:GetNumber(20) == 0 then
        local1 = true
        arg7 = arg0:GetRandam_Int(5, 6)
        arg0:SetNumber(20, 1)
    end
    if arg2 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, life, TARGET_ENE_0, arg2, TARGET_SELF, local1, local2)
    end
    return 
end

function LastBossArousal454100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function LastBossArousal454100_ActAfter_RealTime(arg0, arg1)
    return 
end

function LastBossArousal454100Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function LastBossArousal454100Battle_Terminate(arg0, arg1)
    return 
end

local0 = local4
local0 = local25
local0 = local26
local0 = local1
local0 = local2
function LastBossArousal454100Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if arg0:IsInterupt(INTERUPT_Damaged) then
        arg1:ClearSubGoal()
        arg0:Replaning()
        if arg0:HasSpecialEffectId(TARGET_SELF, 8051) and arg0:IsFinishTimer(10) == true and (not (local0 > 50 or local2 > 0.5) or local2 <= 0.15) then
            arg0:SetTimer(10, 35)
            arg0:SetNumber(13, 1)
        end
        if not (local2 > 0.5 or local0 > 75) or local2 <= 0.25 and local0 <= 85 then
            arg0:SetNumber(11, 1)
        end
    end
    if arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) then
        if arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025) then
            arg0:SetNumber(12, 1)
            arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5026)
            if 4.5 <= local1 and local1 <= 6 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 240) then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return false
            end
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5026) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and local1 <= 20 then
                arg1:ClearSubGoal()
                LastBossArousal454100_Act20(arg0, arg1, paramTbl)
                return true
            else
                return false
            end
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5027) then
            if local1 <= UPVAL0 - 1 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 240) then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local1 <= 1.5 and 50 <= local0 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return false
            end
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5028) then
            if UPVAL1 <= local1 and local1 <= UPVAL2 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif UPVAL3 <= local1 and local1 <= UPVAL4 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return false
            end
        elseif arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8050) then
            arg0:DeleteObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8)
            arg0:DeleteObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)
            arg0:DeleteObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8050)
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3010, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif (not not arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8) or arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)) and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsFinishTimer(12) == true then
            arg1:ClearSubGoal()
            LastBossArousal454100_Act21(arg0, arg1, paramTbl)
            return true
        end
    end
    return false
end

return 
