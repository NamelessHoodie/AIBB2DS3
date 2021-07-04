local local0 = 0.4
local local1 = 0.4 - local0
local local2 = 0.4 - local0
local local3 = 0.4 - local0
local local4 = 11 - local0
local local5 = 0.4 - local0
local local6 = 4.1 - local0
local local7 = 0.4 - local0
local local8 = 7.5 - local0
local local9 = 0.4 - local0
local local10 = 3.3 - local0
local local11 = 0.4 - local0
local local12 = 7.6 - local0
local local13 = 0.4 - local0
local local14 = 0.4 - local0
local local15 = 3.2 - local0
local local16 = 0.4 - local0
local local17 = 7.3 - local0
local local18 = 0.4 - local0
local local19 = 4.2 - local0
local local20 = 0.4 - local0
local local21 = 0.4 - local0
local local22 = 5.1 - local0
local local23 = 0.4 - local0
local local24 = 5 - local0
local local25 = 0.4 - local0
local local26 = 7.7 - local0
local local27 = 0.4 - local0
local local28 = 5.4 - local0
local local29 = 0.4 - local0
local local30 = 3.2 - local0
local local31 = 0.4 - local0
local local32 = 7.1 - local0
local local33 = 0.4 - local0
local local34 = 8.4 - local0
local local35 = 6 - local0
local local36 = 11.1 - local0
local local37 = 0.4 - local0
local local38 = 5.9 - local0
local local39 = 0.4 - local0
local local40 = 3.2 - local0
local local41 = 0.4 - local0
local local42 = 3.5 - local0
local local43 = 0.4 - local0
local local44 = 11 - local0
local local45 = 5 - local0
local local46 = 11 - local0
local local47 = 0.4 - local0
function OnIf_400010(arg0, arg1, arg2)
    if arg2 == 0 then
        DarksideHunter400010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DarksideHunter400010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    local local7 = 1
    local local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 4)
    local local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 4)
    local local10 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 4)
    if arg0:GetNumber(0) == 1 then
        arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 2.5)
    end
    if arg0:IsFinishTimer(2) == true and arg0:GetNumber(3) == 0 then
        arg0:SetTimer(2, 30)
        arg0:SetNumber(3, 1)
    end
    if arg0:IsFinishTimer(2) == true and arg0:IsFinishTimer(0) == true then
        change = 1
    else
        change = 0
    end
    if arg0:IsFinishTimer(2) == true then
        jump = 1
    else
        jump = 0
    end
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8033) == true then
        local7 = 0
    end
    if arg0:GetNpcThinkParamID() == 400014 and arg0:GetNumber(5) == 0 then
        local0[21] = 100
    elseif arg0:GetNpcThinkParamID() == 400017 and arg0:GetNumber(5) == 0 then
        local0[21] = 100
    elseif arg0:GetNpcThinkParamID() == 400010 and arg0:GetNumber(5) == 0 then
        local0[5] = 100
    elseif arg0:GetNpcThinkParamID() == 400009 and arg0:GetNumber(5) == 0 then
        local0[5] = 100
    elseif arg0:GetNpcThinkParamID() == 400019 and arg0:GetNumber(5) == 0 then
        local0[23] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            local0[9] = 100
        elseif 7.5 <= local3 then
            local0[1] = 20
            local0[2] = 10
            local0[3] = 25
            local0[4] = 10
            local0[5] = 200 * change
            local0[6] = 20 * local7
            local0[7] = 10
            local0[8] = 0
        elseif 5 <= local3 then
            local0[1] = 30
            local0[2] = 10
            local0[3] = 25
            local0[4] = 10
            local0[5] = 80 * change
            local0[6] = 15 * local7
            local0[7] = 20
            local0[8] = 5
        elseif 2.5 <= local3 then
            local0[1] = 25
            local0[2] = 10
            local0[3] = 15
            local0[4] = 20
            local0[5] = 50 * change
            local0[6] = 10 * local7
            local0[7] = 10
            local0[8] = 5
            local0[22] = 20
        elseif 0.5 <= local3 then
            local0[1] = 30
            local0[2] = 10
            local0[3] = 0
            local0[4] = 25
            local0[5] = 30 * change
            local0[6] = 10 * local7
            local0[7] = 20
            local0[8] = 10
            local0[22] = 30
        else
            local0[1] = 30
            local0[2] = 10
            local0[3] = 0
            local0[4] = 20
            local0[5] = 5 * change
            local0[6] = 0 * local7
            local0[7] = 20
            local0[8] = 10
            local0[22] = 30
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5612) == true then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            local0[19] = 100
        elseif 9 <= local3 then
            local0[10] = 25
            local0[11] = 25
            local0[12] = 30 * jump
            local0[13] = 10
            local0[14] = 0 * change
            local0[15] = 10 * local7
            local0[16] = 0 * change
            local0[17] = 25 * local7
        elseif 6 <= local3 then
            local0[10] = 30
            local0[11] = 25
            local0[12] = 0
            local0[13] = 20
            local0[14] = 0 * change
            local0[15] = 10 * local7
            local0[16] = 0 * change
            local0[17] = 35 * local7
        elseif 3.5 <= local3 then
            local0[10] = 40
            local0[11] = 25
            local0[12] = 0
            local0[13] = 30
            local0[14] = 2 * change
            local0[15] = 20 * local7
            local0[16] = 2 * change
            local0[17] = 30 * local7
        elseif 1 <= local3 then
            local0[10] = 45
            local0[11] = 30
            local0[12] = 0
            local0[13] = 20
            local0[14] = 0 * change
            local0[15] = 0 * local7
            local0[16] = 5 * change
            local0[17] = 0 * local7
        else
            local0[10] = 30
            local0[11] = 15
            local0[12] = 0
            local0[13] = 15
            local0[14] = 0 * change
            local0[15] = 10 * local7
            local0[16] = 5 * change
            local0[17] = 0 * local7
        end
    end
    if arg0:GetNumber(4) == 1 then
        local0[15] = 1
        local0[17] = 1
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act17)
    local1[18] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act18)
    local1[19] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act19)
    local1[20] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act26)
    local1[27] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act29)
    local1[30] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act47)
    local1[48] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act48)
    local1[49] = REGIST_FUNC(arg0, arg1, DarksideHunter400010_Act49)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DarksideHunter400010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.5 - local0
local0 = local8
local0 = 4.5 - local0
function DarksideHunter400010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 10
    local local2 = UPVAL2
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 12, 0, 3)
    end
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 2, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
local0 = local10
function DarksideHunter400010_Act02(arg0, arg1, arg2)
    local local0 = 10
    local local1 = UPVAL1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local17
function DarksideHunter400010_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local19
function DarksideHunter400010_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarksideHunter400010_Act05(arg0, arg1, arg2)
    local local0 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 3 and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 4.5) == true and arg0:GetRandam_Int(1, 100) <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3004, TARGET_ENE_0, DIST_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3013, TARGET_ENE_0, DIST_None, 0, 0)
    end
    arg0:SetTimer(0, 5)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local44
function DarksideHunter400010_Act06(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3035, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local15
function DarksideHunter400010_Act07(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 10 - local0
function DarksideHunter400010_Act08(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3037, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3013, TARGET_ENE_0, DIST_None, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
function DarksideHunter400010_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 4)
    local local4 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 4)
    if local0 <= 5.5 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 1, 90, true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 0, 90, true, true, -1)
        end
    elseif local0 <= 7 then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3013, TARGET_ENE_0, DIST_None, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local24
local0 = local26
local0 = local28
local0 = local30
local0 = local22
function DarksideHunter400010_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 10
    local local2 = UPVAL2 + 2
    local local3 = UPVAL3 + 2
    local local4 = UPVAL4 + 3
    if local4 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local4, 15, 0, 3)
    end
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 3.5, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 100 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, UPVAL1 + 3, 0)
    end
    arg0:SetNumber(4, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local34
local0 = local32
function DarksideHunter400010_Act11(arg0, arg1, arg2)
    local local0 = UPVAL1 + 3
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 15, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0 + 2, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 10, 0)
    end
    arg0:SetNumber(4, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local36
function DarksideHunter400010_Act12(arg0, arg1, arg2)
    local local0 = UPVAL0 + 3
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 15, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3027, TARGET_ENE_0, 1, 0, 0)
    arg0:SetNumber(4, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local38
function DarksideHunter400010_Act13(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 15, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3028, TARGET_ENE_0, 1, 0, 0)
    arg0:SetNumber(4, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarksideHunter400010_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3030, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:SetTimer(0, 5)
    arg0:SetNumber(4, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local44
function DarksideHunter400010_Act15(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3035, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(4, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local40
function DarksideHunter400010_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    if local1 <= local0 then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    if local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetTimer(0, 5)
    arg0:SetNumber(4, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local46
function DarksideHunter400010_Act17(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3036, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(4, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local17
function DarksideHunter400010_Act018(arg0, arg1, arg2)
    local local0 = UPVAL0 - 2
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 10, 0, 0)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local34
local0 = local38
function DarksideHunter400010_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL1 + 1
    if local0 <= 3 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    elseif local0 <= 6 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 1, 90, true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 0, 90, true, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local24
function DarksideHunter400010_Act20(arg0, arg1, arg2)
    local local0 = 10
    local local1 = UPVAL0 - 4
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3013, TARGET_ENE_0, DIST_None, 0, 0)
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, 2, 0)
    arg0:SetNumber(5, 1)
    arg0:SetTimer(0, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local46
function DarksideHunter400010_Act21(arg0, arg1, arg2)
    local local0 = UPVAL0 + 5
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3013, TARGET_ENE_0, DIST_None, 0, 0)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3036, TARGET_ENE_0, 10, 0, 0)
    arg0:SetNumber(5, 1)
    arg0:SetNumber(4, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
function DarksideHunter400010_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = 999
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local38
function DarksideHunter400010_Act23(arg0, arg1, arg2)
    local local0 = UPVAL0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3013, TARGET_ENE_0, DIST_None, 0, 0)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 15, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, 1, 0, 0)
    arg0:SetNumber(5, 1)
    arg0:SetNumber(4, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
function DarksideHunter400010_Act24(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    if arg0:GetDist(TARGET_ENE_0) <= 3 and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 4.5) == true and arg0:GetRandam_Int(1, 100) <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3004, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
function DarksideHunter400010_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
function DarksideHunter400010_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 11 - local0
function DarksideHunter400010_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local15
function DarksideHunter400010_Act28(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarksideHunter400010_Act29(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3009_Dist_max + 3
    Approach_Act(arg0, arg1, Att3009_Dist_max, Att3009_Dist_max + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, Att3009_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local17
function DarksideHunter400010_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local19
function DarksideHunter400010_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarksideHunter400010_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3012_Dist_max + 3
    Approach_Act(arg0, arg1, Att3012_Dist_max, Att3012_Dist_max + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, Att3012_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
function DarksideHunter400010_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarksideHunter400010_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3014_Dist_max + 3
    Approach_Act(arg0, arg1, Att3014_Dist_max, Att3014_Dist_max + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, Att3014_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarksideHunter400010_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3015_Dist_max + 3
    Approach_Act(arg0, arg1, Att3015_Dist_max, Att3015_Dist_max + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, Att3015_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarksideHunter400010_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3016_Dist_max + 3
    Approach_Act(arg0, arg1, Att3016_Dist_max, Att3016_Dist_max + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, Att3016_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarksideHunter400010_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3017_Dist_max + 3
    Approach_Act(arg0, arg1, Att3017_Dist_max, Att3017_Dist_max + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, Att3017_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarksideHunter400010_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3018_Dist_max + 3
    Approach_Act(arg0, arg1, Att3018_Dist_max, Att3018_Dist_max + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, Att3018_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarksideHunter400010_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3019_Dist_max + 3
    Approach_Act(arg0, arg1, Att3019_Dist_max, Att3019_Dist_max + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, Att3019_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local22
function DarksideHunter400010_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local24
function DarksideHunter400010_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local26
function DarksideHunter400010_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local28
function DarksideHunter400010_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local30
function DarksideHunter400010_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local32
function DarksideHunter400010_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local34
function DarksideHunter400010_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local36
function DarksideHunter400010_Act47(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local38
function DarksideHunter400010_Act48(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local40
function DarksideHunter400010_Act49(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarksideHunter400010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DarksideHunter400010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(0, 1)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and local0 <= 3 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            end
            if arg0:GetRandam_Int(1, 100) <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3004, TARGET_ENE_0, DIST_None, 0, 0)
                arg0:SetTimer(0, 5)
            end
        end
        if 5 <= local0 then
            arg0:AddTopGoal(GOAL_COMMON_TurnAround, arg0:GetRandam_Int(0, 1) + 0.5, TARGET_ENE_0, AI_DIR_TYPE_B, 90, true, false)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5612) == true then

    end
    return 
end

function DarksideHunter400010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DarksideHunter400010Battle_Terminate(arg0, arg1)
    return 
end

function DarksideHunter400010Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInterupt(INTERUPT_Inside_ObserveArea) and arg0:HasSpecialEffectId(TARGET_SELF, 5612) == true then
        return true
    elseif 3 <= local3 then

    end
    if arg0:IsInterupt(INTERUPT_Damaged) and local3 <= 3 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
            if local0 <= 5 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3037, TARGET_ENE_0, AttDist, 0, 0)
                return true
            elseif local0 <= 20 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3004, TARGET_ENE_0, DIST_None, 0, 0)
                arg0:SetTimer(0, 5)
                return true
            elseif local0 <= 45 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, AttDist, 0, 0)
                return true
            elseif local0 <= 70 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, AttDist, 0, 0)
                return true
            end
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5612) == true then
            if local0 <= 40 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3020, TARGET_ENE_0, DIST_None, 0, 0)
                if local1 <= 90 then
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 6, 3021, TARGET_ENE_0, DIST_None, 0, 0)
                    if local2 <= 40 then
                        arg1:ClearSubGoal()
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 6, 3022, TARGET_ENE_0, DIST_None, 0, 0)
                        return true
                    elseif local2 <= 80 then
                        arg1:ClearSubGoal()
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 6, 3023, TARGET_ENE_0, DIST_None, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif local0 <= 55 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, AttDist, 0, 0)
                if local1 <= 90 then
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 6, 3021, TARGET_ENE_0, DIST_None, 0, 0)
                    if local2 <= 40 then
                        arg1:ClearSubGoal()
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 6, 3022, TARGET_ENE_0, DIST_None, 0, 0)
                        return true
                    elseif local2 <= 80 then
                        arg1:ClearSubGoal()
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 6, 3023, TARGET_ENE_0, DIST_None, 0, 0)
                        return true
                    else
                        return true
                    end
                end
            elseif local0 <= 75 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, AttDist, 0, 0)
                return true
            elseif local0 <= 78 and arg0:IsFinishTimer(2) == true and arg0:IsFinishTimer(0) == true then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, AttDist, 0, 0)
                return true
            end
        end
    end
    if arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) then
        arg1:ClearSubGoal()
        if arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025) then
            if arg0:IsFinishTimer(0) == true then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, AttDist, 0, 0)
                arg0:SetTimer(0, 5)
            elseif arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 4) then
                if local0 <= 75 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, AttDist, 0, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, AttDist, 0, 0)
                end
            elseif local0 <= 85 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, AttDist, 0, 0)
                arg0:SetTimer(0, 5)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, AttDist, 0, 0)
            end
        end
        if arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5026) then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 3) then
                if local0 <= 30 and arg0:IsFinishTimer(2) == true and arg0:IsFinishTimer(0) == true then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, AttDist, 0, 0)
                    arg0:SetTimer(0, 5)
                elseif local0 <= 60 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, AttDist, 0, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                end
            elseif arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 8.5) then
                if local0 <= 55 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, AttDist, 0, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, AttDist, 0, 0)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, AttDist, 0, 0)
            end
        end
    end
    if arg0:IsInterupt(INTERUPT_Shoot) and 7 <= local3 and local0 <= 70 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    end
    if FindAttack_Step(arg0, arg1, 3, 0, 100, 0, 0, 4) then
        return true
    else
        return false
    end
end

return 
