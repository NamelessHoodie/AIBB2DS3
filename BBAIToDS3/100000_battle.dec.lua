local local0 = 0.9
local local1 = 1 - local0
local local2 = 4.3 - local0
local local3 = 1 - local0
local local4 = 2.8 - local0
local local5 = 1 - local0
local local6 = 3.7 - local0
local local7 = 1 - local0
local local8 = 3.3 - local0
local local9 = 1 - local0
local local10 = 5.9 - local0
local local11 = 1 - local0
local local12 = 1 - local0
local local13 = 1 - local0
local local14 = 4 - local0
local local15 = 1 - local0
local local16 = 1 - local0
local local17 = 5.6 - local0
local local18 = 1 - local0
local local19 = 1 - local0
function OnIf_100000(arg0, arg1, arg2)
    if arg2 == 0 then
        Gun_Dog100000_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        Gun_Dog100000_Reinforce(arg0, arg1)
    end
    if arg2 == 2 then
        arg0:SetNumber(2, 0)
    end
    return 
end

function Gun_Dog100000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest(0)
    local local5 = arg0:GetEventRequest(1)
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = 1
    local local8 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422300) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422301) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422302) or arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422303) then
        local7 = 0
    else
        local7 = 1
    end
    if local4 == 1 or local4 == 100 then
        local0[16] = 100
    elseif (local5 == 200 or local5 == 210 or local5 == 220 or local5 == 230 or local5 == 240) and arg0:GetNumber(2) == 0 then
        local0[18] = 100
    elseif not (arg0:IsFinishTimer(1) ~= true or 1 > arg0:GetNumber(2)) or not (local5 ~= 100 or arg0:GetNumber(2) ~= 1) or not (local5 ~= 110 or arg0:GetNumber(2) ~= 2) or not (local5 ~= 120 or arg0:GetNumber(2) ~= 3) or not (local5 ~= 130 or arg0:GetNumber(2) ~= 4) or local5 == 140 and arg0:GetNumber(2) == 5 then
        local0[19] = 100
    elseif (local5 == 100 or local5 == 110 or local5 == 120 or local5 == 130 or local5 == 140) and arg0:HasSpecialEffectId(TARGET_SELF, 5645) then
        local0[19] = 100
    elseif arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422304) then
        local0[17] = 100
    elseif local8 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local8 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local3 <= 0.5 then
        local0[15] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 165) then
        local0[20] = 100
    elseif 10 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 15
        local0[6] = 20
        local0[7] = 0
        local0[8] = 20
        local0[9] = 5
        local0[10] = 0 * local7
        local0[11] = 0 * local7
        local0[14] = 40
    elseif 6.9 <= local3 then
        local0[1] = 10
        local0[2] = 0
        local0[3] = 10
        local0[4] = 5
        local0[5] = 20
        local0[6] = 20
        local0[7] = 0
        local0[8] = 20
        local0[9] = 0
        local0[10] = 0 * local7
        local0[11] = 0 * local7
        local0[14] = 40
    elseif 3.4 <= local3 then
        local0[1] = 15
        local0[2] = 0
        local0[3] = 15
        local0[4] = 5
        local0[5] = 25
        local0[6] = 15
        local0[7] = 0
        local0[8] = 0
        local0[9] = 15
        local0[10] = 5 * local7
        local0[11] = 0 * local7
        local0[14] = 5
    elseif 2.4 <= local3 then
        local0[1] = 20
        local0[2] = 0
        local0[3] = 25
        local0[4] = 10
        local0[5] = 0
        local0[6] = 5
        local0[7] = 0
        local0[8] = 0
        local0[9] = 10
        local0[10] = 20 * local7
        local0[11] = 10 * local7
        local0[14] = 0
    else
        local0[1] = 15
        local0[2] = 0
        local0[3] = 10
        local0[4] = 35
        local0[5] = 0
        local0[6] = 5
        local0[7] = 0
        local0[8] = 0
        local0[9] = 10
        local0[10] = 15 * local7
        local0[11] = 10 * local7
        local0[14] = 0
    end
    if arg0:GetNpcThinkParamID() == 100011 then
        local0[8] = 0
        local0[14] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act11)
    local1[14] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act17)
    local1[18] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act18)
    local1[19] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act19)
    local1[20] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Gun_Dog100000_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Gun_Dog100000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local4
local0 = local6
local0 = local8
local0 = 5 - local0
function Gun_Dog100000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL2
    local local5 = UPVAL3
    local local6 = UPVAL4
    local local7 = UPVAL0
    if local7 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local7, UPVAL0 + 1, 0, 3)
    end
    if local0 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 0)
    elseif local0 <= 30 then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local6, 0, 0)
        end
    elseif local0 <= 60 then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local6, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0, 0)
        end
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
local0 = local4
local0 = local6
local0 = local8
function Gun_Dog100000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL2
    local local5 = UPVAL1
    local local6 = UPVAL1 + 1
    local local7 = 0
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local3, 0, 0)
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, UPVAL3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
local0 = local4
local0 = local6
local0 = local8
function Gun_Dog100000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL2
    local local5 = UPVAL3
    local local6 = UPVAL2
    if local6 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local6, UPVAL2 + 1.5, 0, 3)
    end
    if local0 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local4, 0, 0)
    elseif local0 <= 30 then
        if local1 <= 0 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, local2, 0, 0)
        elseif local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, AttDist11, 0, 0)
        end
    elseif local0 <= 60 then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, AttDist11, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
local0 = local4
local0 = local6
local0 = local8
local0 = local10
function Gun_Dog100000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL3
    local local4 = UPVAL3
    if local4 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local4, UPVAL3 + 1, 0, 3)
    end
    if local0 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, 0)
    elseif local0 <= 40 then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, AttDist11, 0, 0)
        end
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, UPVAL0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, AttDist11, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, UPVAL2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, UPVAL4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
local0 = local4
local0 = local6
local0 = local8
local0 = local10
function Gun_Dog100000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL2
    local local5 = UPVAL3
    local local6 = UPVAL4
    local local7 = UPVAL4
    if local7 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local7, UPVAL4 + 1, 0, 3)
    end
    if local0 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local6, 0, 0)
    elseif local0 <= 30 then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local6, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local6, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, AttDist11, 0, 0)
        end
    elseif local0 <= 60 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local6, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local5, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local6, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, AttDist11, 0, 0)
        end
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.8 - local0
local0 = local17
function Gun_Dog100000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 30)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, UPVAL1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 10 - local0
function Gun_Dog100000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(0, 1) == 1 then
        local local1 = 702
    else
        local local1 = 703
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, UPVAL0, TARGET_SELF, false, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 31 - local0
function Gun_Dog100000_Act08(arg0, arg1, arg2)
    local local0 = UPVAL0 - 1
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetRandam_Int(1, 100) <= 60 and 10 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3008, TARGET_ENE_0, Dist_None, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local17
function Gun_Dog100000_Act09(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 1.5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, UPVAL0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.5 - local0
function Gun_Dog100000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 1.5
    if arg0:IsFinishTimer(0) == true then
        if local1 <= arg0:GetDist(TARGET_ENE_0) then
            Approach_Act(arg0, arg1, local1, UPVAL0 + 2, 0, 3)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0, 0, 0)
        arg0:SetTimer(0, 20)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
local0 = local4
local0 = local6
local0 = local8
local0 = local10
function Gun_Dog100000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, UPVAL3, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
        if local0 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
        if local0 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, UPVAL4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, UPVAL0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, UPVAL1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gun_Dog100000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 6 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    if not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422300) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422301) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422302) or arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422303) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Int(3, 4.5), TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(3, 6), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(45, 60), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gun_Dog100000_Act15(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5000) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gun_Dog100000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetEventRequest(0)
    if local0 == 100 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, POINT_INITIAL, 10, 0, 0)
    elseif local0 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gun_Dog100000_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_INITIAL, 1, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gun_Dog100000_Act18(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gun_Dog100000_Reinforce(arg0, arg1)
    local local0 = arg0:GetEventRequest(1)
    if local0 == 200 then
        arg0:SetNumber(2, 1)
    elseif local0 == 210 then
        arg0:SetNumber(2, 2)
    elseif local0 == 220 then
        arg0:SetNumber(2, 3)
    elseif local0 == 230 then
        arg0:SetNumber(2, 4)
    else
        arg0:SetNumber(2, 5)
    end
    arg0:SetTimer(1, 15)
    return 
end

function Gun_Dog100000_Act19(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gun_Dog100000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gun_Dog100000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gun_Dog100000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gun_Dog100000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Gun_Dog100000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(3, 4.5)
    local local4 = arg0:GetRandam_Float(3.5, 5)
    if local0 <= 1.5 then
        if local1 <= 60 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 2.5 then
        if local1 <= 40 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            end
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
        elseif local1 <= 90 then
            if not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422300) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422301) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422302) or arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422303) then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            end
        end
    elseif local0 <= 4.5 then
        if local1 <= 40 then
            if not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422300) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422301) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422302) or arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422303) then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
            else
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                end
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
            end
        elseif local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
        elseif local1 <= 80 then
            if not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422300) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422301) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422302) or arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422303) then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            end
        end
    elseif local0 <= 6.5 then
        if local1 <= 50 then
            if not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422300) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422301) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422302) or arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422303) then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 4.5, TARGET_SELF, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            end
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 4.5, TARGET_SELF, true, -1)
        end
    elseif local0 <= 10 then
        if local1 <= 40 then
            if not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422300) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422301) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422302) or arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422303) then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 6.5, TARGET_SELF, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            end
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 6.5, TARGET_SELF, true, -1)
        end
    elseif local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3008, TARGET_ENE_0, AppDist, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    return 
end

function Gun_Dog100000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Gun_Dog100000Battle_Terminate(arg0, arg1)
    return 
end

function Gun_Dog100000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if FindAttack_Step(arg0, arg1, 3, 15, 40, 30, 30) then
        return true
    elseif Damaged_Step(arg0, arg1, 3, 15, 40, 30, 30, 4) then
        return true
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetDist(TARGET_ENE_0)
    local local7 = Shoot_2dist(arg0, arg1, 6, 20, 20, 40)
    if local7 == 1 then
        if local5 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local7 == 2 then
        if local5 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
        return true
    end
    if RebByOpGuard_Step(arg0, arg1, 20, 40, 30, 30, 4) then
        return true
    elseif arg0:IsInterupt(INTERUPT_EventRequest) and arg0:GetEventRequest(1) == 100 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, 1, TARGET_ENE_0, true, -1)
        return true
    else
        return false
    end
end

return 
