local local0 = 1
local local1 = 2.5 - local0
local local2 = 2.5 - local0
local local3 = 2.5 - local0
local local4 = 2.5 - local0
local local5 = 2.5 - local0
local local6 = 2.5 - local0
local local7 = 8.5 - local0
local local8 = 14 - local0
local local9 = 2.5 - local0
local local10 = 6.5 - local0
local local11 = 9 - local0
local local12 = 15.3 - local0
local local13 = 2.5 - local0
local local14 = 2.5 - local0
local local15 = 2.5 - local0
local local16 = 3 - local0
local local17 = 2.5 - local0
local local18 = 3 - local0
local local19 = 2.5 - local0
local local20 = 2.5 - local0
local local21 = 2.5 - local0
local local22 = 2.5 - local0
local local23 = 4.5 - local0
function OnIf_504000(arg0, arg1, arg2)
    if arg2 == 0 then
        StormBeast504000_ActAfter(arg0, arg1)
    end
    if arg2 == 2 then
        StormBeast504000_AddAttack(arg0, arg1)
    end
    return 
end

function StormBeast504000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 481) and arg0:GetNumber(1) == 0 then
        arg0:SetNumber(1, 1)
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
    if arg0:HasSpecialEffectId(TARGET_SELF, 480) and arg0:GetNumber(4) == 0 then
        arg0:SetNumber(4, 1)
    end
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetHpRate(TARGET_SELF)
    local local6 = arg0:GetNumber(7)
    arg0:SetNumber(6, 0)
    arg0:DeleteObserve(0)
    if not (local5 > 0.8 or arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true or arg0:GetNumber(5) ~= 0 or arg0:IsFinishTimer(2) ~= true) or local5 <= 0.4 and arg0:HasSpecialEffectId(TARGET_SELF, 5402) ~= true and arg0:GetNumber(5) == 1 and arg0:IsFinishTimer(2) == true then
        local0[15] = 100
    elseif arg0:GetEventRequest(0) == 1 and arg0:GetNumber(0) ~= 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3027, TARGET_ENE_0, Dist_None, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[19] = 100
    elseif 10 <= local3 then
        local0[1] = 30
        local0[2] = 0
        local0[6] = 40
        local0[9] = 0
        local0[10] = 30
        local0[11] = 0
        local0[12] = 0
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 5401) then
            local0[1] = 10
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 30
            local0[7] = 40
            local0[9] = 0
            local0[10] = 20
            local0[11] = 0
            local0[12] = 0
        end
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 5402) then
            local0[1] = 10
            local0[2] = 0
            local0[3] = 0
            local0[5] = 0
            local0[6] = 30
            local0[7] = 40
            local0[8] = 0
            local0[9] = 0
            local0[10] = 20
            local0[11] = 0
            local0[12] = 0
            local0[13] = 0
        end
    elseif 8 <= local3 then
        local0[1] = 15
        local0[2] = 25
        local0[6] = 30
        local0[9] = 0
        local0[10] = 30
        local0[11] = 0
        local0[12] = 0
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 5401) then
            local0[1] = 5
            local0[2] = 10
            local0[3] = 0
            local0[4] = 0
            local0[5] = 15
            local0[6] = 20
            local0[7] = 20
            local0[9] = 0
            local0[10] = 30
            local0[11] = 0
            local0[12] = 0
        end
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 5402) then
            local0[1] = 5
            local0[2] = 10
            local0[3] = 0
            local0[5] = 20
            local0[6] = 15
            local0[7] = 20
            local0[8] = 0
            local0[9] = 0
            local0[10] = 15
            local0[11] = 0
            local0[12] = 0
            local0[13] = 15
        end
    elseif 6 <= local3 then
        local0[1] = 10
        local0[2] = 30
        local0[6] = 0
        local0[9] = 10
        local0[10] = 30
        local0[11] = 20
        local0[12] = 0
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 5401) then
            local0[1] = 5
            local0[2] = 15
            local0[3] = 10
            local0[4] = 0
            local0[5] = 20
            local0[6] = 0
            local0[7] = 0
            local0[9] = 5
            local0[10] = 20
            local0[11] = 30
            local0[12] = 0
        end
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 5402) then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 5
            local0[5] = 20
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0
            local0[9] = 5
            local0[10] = 15
            local0[11] = 15
            local0[12] = 0
            local0[13] = 20
        end
    elseif 4 <= local3 then
        local0[1] = 20
        local0[2] = 0
        local0[6] = 0
        local0[9] = 40
        local0[10] = 10
        local0[11] = 30
        local0[12] = 0
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 5401) then
            local0[1] = 5
            local0[2] = 30
            local0[3] = 15
            local0[4] = 20
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[9] = 10
            local0[10] = 0
            local0[11] = 20
            local0[12] = 0
        end
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 5402) then
            local0[1] = 5
            local0[2] = 20
            local0[3] = 15
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 10
            local0[9] = 10
            local0[10] = 0
            local0[11] = 20
            local0[12] = 20
            local0[13] = 0
        end
    elseif 2 <= local3 then
        local0[1] = 15
        local0[2] = 10
        local0[6] = 0
        local0[9] = 30
        local0[10] = 0
        local0[11] = 15
        local0[12] = 30
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 5401) then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 20
            local0[4] = 20
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[9] = 20
            local0[10] = 0
            local0[11] = 10
            local0[12] = 20
        end
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 5402) then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 15
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 15
            local0[9] = 15
            local0[10] = 0
            local0[11] = 15
            local0[12] = 20
            local0[13] = 0
        end
    else
        local0[1] = 30
        local0[2] = 20
        local0[6] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 50
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 5401) then
            local0[1] = 20
            local0[2] = 0
            local0[3] = 10
            local0[4] = 25
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[9] = 0
            local0[10] = 0
            local0[11] = 10
            local0[12] = 35
        end
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 5402) then
            local0[1] = 20
            local0[2] = 0
            local0[3] = 15
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 20
            local0[9] = 0
            local0[10] = 0
            local0[11] = 15
            local0[12] = 30
            local0[13] = 0
        end
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
    if arg0:IsFinishTimer(0) == false then
        local0[8] = 0
    end
    if arg0:IsFinishTimer(1) == false then
        local0[13] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, StormBeast504000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, StormBeast504000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, StormBeast504000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, StormBeast504000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, StormBeast504000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, StormBeast504000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, StormBeast504000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, StormBeast504000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, StormBeast504000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, StormBeast504000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, StormBeast504000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, StormBeast504000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, StormBeast504000_Act13)
    local1[15] = REGIST_FUNC(arg0, arg1, StormBeast504000_Act15)
    local1[19] = REGIST_FUNC(arg0, arg1, StormBeast504000_Act19)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, StormBeast504000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 7.6 - local0
local0 = 7.4 - local0
local0 = 5.3 - local0
function StormBeast504000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0 + 1
    local local4 = 12
    if arg0:GetNumber(0) == 1 then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, UPVAL0, TARGET_SELF, false, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
            arg0:SetNumber(8, 1)
            StormBeast504000_Act04(arg0, arg1, arg2)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, UPVAL1, TARGET_SELF, false, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local4, 0)
            arg0:SetNumber(7, 11)
        end
    elseif local1 <= 50 and arg0:GetNumber(5) == 1 then
        if local2 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, UPVAL0, TARGET_SELF, false, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local4, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, UPVAL2, TARGET_SELF, false, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local4, 0)
        end
        arg0:SetNumber(7, 1)
    else
        if local2 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, UPVAL0, TARGET_SELF, false, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local4, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, UPVAL2, TARGET_SELF, false, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local4, 0)
        end
        arg0:SetNumber(7, 1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.1 - local0
local0 = 4.5 - local0
function StormBeast504000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    local local4 = 0
    local local5 = UPVAL1
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 12, 0, 0)
    arg0:SetNumber(7, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6 - local0
function StormBeast504000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 12, 0, 0)
    arg0:SetNumber(7, 3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.6 - local0
function StormBeast504000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 12
    local local3 = UPVAL0
    if 8 <= local0 then
        local3 = UPVAL0 + 6.5
    end
    Approach_Act(arg0, arg1, local3, 0, 0)
    if 8 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 6)
    end
    if arg0:GetNumber(0) == 1 then
        if arg0:GetNumber(8) == 1 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local2, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local2, 0, 0)
        end
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local2, 0)
            arg0:SetNumber(7, 3)
        elseif local1 <= 45 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local2, 0)
            arg0:SetNumber(7, 8)
        elseif local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local2, 0)
            arg0:SetNumber(7, 9)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local2, 0)
            arg0:SetNumber(7, 11)
        end
        arg0:SetNumber(8, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local2, 0, 0)
        arg0:SetNumber(7, 4)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8 - local0
function StormBeast504000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 12, 0, 0)
    arg0:SetNumber(6, 1)
    arg0:SetNumber(7, 5)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormBeast504000_AddAttack(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 2.5 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        if local0 <= 30 then
            StormBeast504000_Act02(arg0, arg1, paramTbl)
        elseif local0 <= 60 then
            arg0:SetNumber(8, 1)
            StormBeast504000_Act09(arg0, arg1, paramTbl)
        else
            StormBeast504000_Act01(arg0, arg1, paramTbl)
        end
    end
    arg0:SetNumber(6, 0)
    return 
end

local0 = local12
local0 = local8
function StormBeast504000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = 12
    local local4 = UPVAL1
    local local5 = 0
    local local6 = 0
    if arg0:GetNumber(0) == 1 then
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local3, 0)
            arg0:SetNumber(7, 6)
        elseif local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, local3, 0)
            arg0:SetNumber(7, 7)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, local3, 0)
            arg0:SetNumber(8, 1)
            StormBeast504000_Act09(arg0, arg1, arg2)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local3, 0, 0)
        arg0:SetNumber(7, 6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
function StormBeast504000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0
    local local4 = 0
    local local5 = 0
    if arg0:GetNumber(0) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local2, 0, 0)
        arg0:SetNumber(8, 1)
        StormBeast504000_Act09(arg0, arg1, arg2)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local2, 0, 0)
        arg0:SetNumber(7, 7)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.1 - local0
function StormBeast504000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 12, 0, 0)
    arg0:SetTimer(0, 30)
    arg0:SetNumber(7, 8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.6 - local0
local0 = 5.6 - local0
local0 = 5.9 - local0
local0 = 2.5 - local0
function StormBeast504000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL1 + 1
    local local4 = 12
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL3 and arg0:GetNumber(6) == 0 then
        StormBeast504000_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL2, 0, 0)
    end
    if arg0:GetNumber(0) == 1 then
        if arg0:GetNumber(8) == 0 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, AttDist, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local3, 0)
        end
        if local1 <= 35 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, local4, 0)
            arg0:SetNumber(8, 1)
            StormBeast504000_Act04(arg0, arg1, arg2)
        elseif local1 <= 70 then
            arg0:SetNumber(8, 1)
            StormBeast504000_Act04(arg0, arg1, arg2)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local4, 0)
            arg0:SetNumber(7, 9)
        end
    elseif arg0:GetNumber(5) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local4, 0)
        arg0:SetNumber(7, 9)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, local3, 0, 0)
        arg0:SetNumber(7, 9)
    end
    arg0:SetNumber(8, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.1 - local0
function StormBeast504000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act(arg0, arg1, UPVAL0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(7, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7 - local0
function StormBeast504000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 12
    local local2 = UPVAL0
    if arg0:GetNumber(5) == 1 then
        local2 = UPVAL0 + 1
    elseif arg0:GetNumber(5) == 2 then
        local2 = UPVAL0 + 3
    end
    Approach_Act(arg0, arg1, local2, 0, 0)
    if arg0:GetNumber(0) == 1 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, local1, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local1, 0)
            arg0:SetNumber(7, 7)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, local1, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, local1, 0)
            arg0:SetNumber(7, 13)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local1, 0, 0)
        arg0:SetNumber(7, 11)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.3 - local0
function StormBeast504000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 12
    Approach_Act(arg0, arg1, UPVAL0, 0, 0)
    if arg0:GetNumber(0) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, local1, 0, 0)
        if fate <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, local1, 0)
            StormBeast504000_Act11(arg0, arg1, arg2)
        else
            StormBeast504000_Act11(arg0, arg1, arg2)
        end
    elseif arg0:GetNumber(5) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local1, 0)
        arg0:SetNumber(7, 12)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, local1, 0, 0)
        arg0:SetNumber(7, 12)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 10.2 - local0
function StormBeast504000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetTimer(1, 45)
    arg0:SetNumber(7, 13)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormBeast504000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if local0 <= 5 then
        StormBeast504000_SpaceAdjustment(arg0, arg1)
    end
    if local0 <= 5 and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif local0 <= 5 and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local0 - 0.5, TARGET_ENE_0, true, -1)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5020) ~= true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, DIST_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, DIST_None, 0, 0)
    end
    arg0:SetTimer(2, 5)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) ~= true then
        arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5401)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5402)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormBeast504000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(3, 5)
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        if arg0:GetNumber(0) == 1 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local0 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_None, 0, 0)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local0 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 0)
            else
                StormBeast504000_SpaceAdjustment(arg0, arg1)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local0 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_None, 0, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local0 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 0)
        else
            StormBeast504000_SpaceAdjustment(arg0, arg1)
        end
    else
        if arg0:GetNumber(0) == 1 then
            StormBeast504000_SpaceAdjustment(arg0, arg1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
        arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormBeast504000_SpaceAdjustment(arg0, arg1)
    local local0 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 6)
    local local1 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 4)
    local local2 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 4)
    if arg0:GetDist(TARGET_ENE_0) <= 6 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            if local0 == false and local1 == false and local2 == false then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
            elseif local0 == false then
                if local1 == false and local2 == true then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                elseif local2 == false and local1 == true then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                elseif arg0:GetRandam_Int(1, 100) <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) then
            if local2 == false and local1 == false then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 0)
            elseif local2 == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            elseif local1 == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if local2 == false and local0 == false then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_None, 0, 0)
            elseif local0 == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            end
        elseif local1 == false and local0 == false then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 0)
        elseif local0 == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    elseif arg0:GetNumber(0) == 1 then
        if local1 == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        elseif local2 == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 4)
    end
    return 
end

function StormBeast504000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function StormBeast504000_ActAfter(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Float(3, 5)
    if arg0:GetNumber(0) == 1 then
        if local3 <= 4 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_None, 0, 90)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 90)
            end
        end
    elseif local3 <= 2 then
        if local0 <= 30 then
            StormBeast504000_SpaceAdjustment(arg0, arg1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_None, 0, 0)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 0)
            end
        end
    elseif local3 <= 4 then
        if local0 <= 30 then
            StormBeast504000_SpaceAdjustment(arg0, arg1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_None, 0, 0)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 0)
            end
        end
    elseif local3 <= 6 then
        if local0 <= 30 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            end
        elseif local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif local3 <= 8 and local0 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 6)
    end
    return 
end

function StormBeast504000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function StormBeast504000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local8
function StormBeast504000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = 0
    if arg0:GetNumber(5) == 0 then
        local4 = 10
    elseif arg0:GetNumber(5) == 1 then
        local4 = 30
    elseif arg0:GetNumber(5) == 2 then
        local4 = 50
    end
    if UseItem_Act(arg0, arg1, 18, local4) then
        arg1:ClearSubGoal()
        Approach_Act(arg0, arg1, UPVAL0, 0, 0)
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
        return true
    elseif Damaged_Act(arg0, arg1, 2.5, 30) then
        arg1:ClearSubGoal()
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_None, 0, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 0)
        else
            StormBeast504000_SpaceAdjustment(arg0, arg1)
        end
        return true
    elseif arg0:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg0:IsInsideObserve(0) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(0)
            arg0:Replaning()
            return true
        end
        arg0:Replaning()
    elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) then
        if arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5401) then
            arg1:ClearSubGoal()
            arg0:SetNumber(5, 1)
            arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5401)
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_NONE, 0, 0, 0)
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5402) then
            arg1:ClearSubGoal()
            arg0:SetNumber(5, 2)
            arg0:SetNumber(0, 1)
            arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5402)
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_NONE, 0, 0, 0)
        end
        return true
    else
        return false
    end
end

return 
