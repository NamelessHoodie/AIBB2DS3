local local0 = 1.3
local local1 = 1.3 - local0
local local2 = 10.8 - local0
local local3 = 6.8 - local0
local local4 = 15.1 - local0
local local5 = 7.3 - local0
local local6 = 24.2 - local0
local local7 = 1.3 - local0
local local8 = 7.2 - local0
local local9 = 5.5 - local0
local local10 = 12.5 - local0
local local11 = 1.3 - local0
local local12 = 2.1 - local0
local local13 = 1.3 - local0
local local14 = 10 - local0
local local15 = 1.3 - local0
local local16 = 20 - local0
local local17 = 1.3 - local0
local local18 = 11.7 - local0
local local19 = 1.3 - local0
local local20 = 19.2 - local0
local local21 = 1.3 - local0
local local22 = 4.3 - local0
function OnIf_540000(arg0, arg1, arg2)
    if arg2 == 0 then
        InheritTheNightmare540000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function InheritTheNightmare540000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = 1
    local local7 = 1
    if arg0:IsFinishTimer(0) == false then
        local6 = 0
    else
        local6 = 1
    end
    if arg0:IsFinishTimer(1) == false then
        local7 = 0
    else
        local7 = 1
    end
    if arg0:GetNpcThinkParamID() == 540001 then
        local0[11] = 100
    elseif arg0:GetEventRequest(1) == 10 then
        local0[10] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif arg0:GetHpRate(TARGET_SELF) <= 0.7 and arg0:HasSpecialEffectId(TARGET_SELF, 5571) == false then
        local0[12] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5571) then
        if 10 <= local3 then
            local0[1] = 10
            local0[2] = 5
            local0[3] = 15
            local0[4] = 20
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0 * local6
            local0[8] = 5
            local0[9] = 15
            local0[12] = 1000 * local7
            local0[13] = 30
            local0[14] = 0
        elseif 5 <= local3 then
            local0[1] = 15
            local0[2] = 15
            local0[3] = 10
            local0[4] = 10
            local0[5] = 5
            local0[6] = 10
            local0[7] = 0 * local6
            local0[8] = 10
            local0[9] = 10
            local0[12] = 1000 * local7
            local0[13] = 15
            local0[14] = 0
        else
            local0[1] = 5
            local0[2] = 10
            local0[3] = 0
            local0[4] = 0
            local0[5] = 10
            local0[6] = 0
            local0[7] = 40 * local6
            local0[8] = 10
            local0[9] = 5
            local0[12] = 1000 * local7
            local0[13] = 5
            local0[14] = 20
        end
    elseif 10 <= local3 then
        local0[1] = 15
        local0[2] = 10
        local0[3] = 30
        local0[4] = 30
        local0[5] = 5
        local0[6] = 10
        local0[7] = 0 * local6
        local0[8] = 0
        local0[9] = 0
        local0[14] = 0
    elseif 5 <= local3 then
        local0[1] = 25
        local0[2] = 25
        local0[3] = 10
        local0[4] = 10
        local0[5] = 5
        local0[6] = 20
        local0[7] = 5 * local6
        local0[8] = 0
        local0[9] = 0
        local0[14] = 0
    else
        local0[1] = 10
        local0[2] = 15
        local0[3] = 0
        local0[4] = 0
        local0[5] = 5
        local0[6] = 0
        local0[7] = 40 * local6
        local0[8] = 0
        local0[9] = 0
        local0[14] = 30
    end
    local1[1] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act10)
    local1[12] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act14)
    local1[20] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act20)
    local1[30] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act47)
    local1[48] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act48)
    local1[49] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act49)
    local1[50] = REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_Act50)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, InheritTheNightmare540000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
function InheritTheNightmare540000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = UPVAL1
    local local5 = UPVAL0 + 5
    if arg0:HasSpecialEffectId(TARGET_SELF, 5571) then
        HeatAtk1 = 3027
        HeatAtk2 = 3028
    else
        HeatAtk1 = 3010
        HeatAtk2 = 3011
    end
    Approach_Act(arg0, arg1, UPVAL0 + 2, UPVAL0 + 1, 0, 2)
    if local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local5, 0)
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, HeatAtk2, TARGET_ENE_0, local5, 0)
    elseif local1 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, HeatAtk2, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local5, 0)
    end
    if arg0:GetNumber(0) == 1 then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local18
local0 = local17
function InheritTheNightmare540000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = UPVAL1
    local local5 = UPVAL0 + 5
    if arg0:HasSpecialEffectId(TARGET_SELF, 5571) then
        HeatAtk1 = 3027
        HeatAtk2 = 3028
    else
        HeatAtk1 = 3010
        HeatAtk2 = 3011
    end
    Approach_Act(arg0, arg1, UPVAL0 + 2, UPVAL0 + 1, 0, 2)
    if local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, HeatAtk1, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, HeatAtk2, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local5, 0)
    elseif local1 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, HeatAtk1, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, HeatAtk1, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local5, 0)
    end
    if arg0:GetNumber(0) == 1 then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function InheritTheNightmare540000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0 + 2, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    if arg0:GetNumber(0) == 1 then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
function InheritTheNightmare540000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0 + 2, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    if arg0:GetNumber(0) == 1 then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function InheritTheNightmare540000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0 + 2, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    if arg0:GetNumber(0) == 1 then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function InheritTheNightmare540000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    if arg0:GetNumber(0) == 1 then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function InheritTheNightmare540000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 2
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    if arg0:GetNumber(0) == 1 then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local14
local0 = local13
function InheritTheNightmare540000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function InheritTheNightmare540000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    local local4 = UPVAL0 + 1
    local local5 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5571) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, local4, 0, -1)
    end
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

function InheritTheNightmare540000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, AttDist, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function InheritTheNightmare540000_Act12(arg0, arg1, arg2)
    local local0 = 0
    if not not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) or arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and arg0:GetDist(TARGET_ENE_0) <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 999, 0, -1)
    arg0:SetTimer(1, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
local0 = local19
function InheritTheNightmare540000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    if arg0:GetNumber(0) == 1 then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local22
local0 = local21
function InheritTheNightmare540000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, local4, 0, -1)
    elseif local1 <= 65 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local4, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local4, 0)
    end
    if arg0:GetNumber(0) == 1 then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function InheritTheNightmare540000_Act20(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    local local3 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
            arg0:SetTimer(0, 10)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function InheritTheNightmare540000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9.8 - local0
local0 = 1.3 - local0
function InheritTheNightmare540000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9.8 - local0
local0 = 1.3 - local0
function InheritTheNightmare540000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function InheritTheNightmare540000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
function InheritTheNightmare540000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function InheritTheNightmare540000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function InheritTheNightmare540000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function InheritTheNightmare540000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
local0 = local13
function InheritTheNightmare540000_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function InheritTheNightmare540000_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local18
local0 = local17
function InheritTheNightmare540000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 11.8 - local0
local0 = 1.3 - local0
function InheritTheNightmare540000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 11.4 - local0
local0 = 1.3 - local0
function InheritTheNightmare540000_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function InheritTheNightmare540000_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3013_Dist_min
    Approach_Act(arg0, arg1, Att3013_Dist_max, Att3013_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, Att3013_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
local0 = local19
function InheritTheNightmare540000_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local22
local0 = local21
function InheritTheNightmare540000_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function InheritTheNightmare540000_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3016_Dist_min
    Approach_Act(arg0, arg1, Att3016_Dist_max, Att3016_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, Att3016_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function InheritTheNightmare540000_Act47(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3017_Dist_min
    Approach_Act(arg0, arg1, Att3017_Dist_max, Att3017_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, Att3017_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function InheritTheNightmare540000_Act48(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3018_Dist_min
    Approach_Act(arg0, arg1, Att3018_Dist_max, Att3018_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, Att3018_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function InheritTheNightmare540000_Act49(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3019_Dist_min
    Approach_Act(arg0, arg1, Att3019_Dist_max, Att3019_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, Att3019_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 10 - local0
local0 = 1.3 - local0
function InheritTheNightmare540000_Act50(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function InheritTheNightmare540000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(0, 1)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetNpcThinkParamID() == 540001 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    elseif local2 <= 3 then
        if local0 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    elseif local2 <= 6 then
        if local0 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, local1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif local2 <= 10 then
        if local0 <= 10 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        elseif local0 <= 30 then
            if local0 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, local1, arg0:GetRandam_Int(30, 45), true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
            end
        end
    end
    return 
end

function InheritTheNightmare540000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function InheritTheNightmare540000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function InheritTheNightmare540000Battle_Terminate(arg0, arg1)
    return 
end

function InheritTheNightmare540000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
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
