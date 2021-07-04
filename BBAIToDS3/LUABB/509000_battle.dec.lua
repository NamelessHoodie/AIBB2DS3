local local0 = 2.5
local local1 = 8.5 - local0
local local2 = 15.4 - local0
local local3 = 8.2 - local0
local local4 = 10.8 - local0
local local5 = 2 - local0
local local6 = 2 - local0
local local7 = 6.7 - local0
local local8 = 12.3 - local0
local local9 = 1.5 - local0
local local10 = 6.6 - local0
local local11 = 14.7 - local0
local local12 = 19.8 - local0
local local13 = 9.5 - local0
local local14 = 1.5 - local0
local local15 = 15 - local0
local local16 = 2.2 - local0
local local17 = 3.4 - local0
local local18 = 2.2 - local0
local local19 = 3.4 - local0
local local20 = 17.1 - local0
local local21 = 18 - local0
local local22 = 7.1 - local0
local local23 = 18.4 - local0
local local24 = 0.1 - local0
local local25 = 3.2 - local0
function OnIf_509000(arg0, arg1, arg2)
    if arg2 == 0 then
        FounderBeast509000_ActAfter(arg0, arg1)
    end
    return 
end

function FounderBeast509000Battle_Activate(arg0, arg1)
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
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5514)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5525)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5526)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5529)
    if arg0:IsFinishTimer(6) == true then
        arg0:AddObserveArea(6, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_CENTER, 360, 2)
        arg0:SetNumber(6, 1)
    end
    if arg0:GetHpRate(TARGET_SELF) <= 0.5 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        local0[12] = 100
    elseif arg0:GetEventRequest(0) == 1 and arg0:GetNumber(0) ~= 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3022, TARGET_ENE_0, Dist_None, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[19] = 40
        local0[7] = 60
    elseif arg0:GetNumber(0) == 1 then
        if 17.5 <= local3 then
            local0[1] = 0
            local0[2] = 40
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 40
            local0[8] = 20
        elseif 12.5 <= local3 then
            local0[1] = 10
            local0[2] = 20
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 40
            local0[8] = 20
            local0[10] = 10
        elseif 7.5 <= local3 then
            local0[1] = 20
            local0[2] = 0
            local0[3] = 20
            local0[4] = 0
            local0[5] = 0
            local0[6] = 20
            local0[8] = 20
            local0[10] = 20
        elseif 2.5 <= local3 then
            local0[1] = 40
            local0[2] = 0
            local0[3] = 30
            local0[4] = 30
            local0[5] = 0
            local0[6] = 0
            local0[8] = 0
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 50
            local0[5] = 0
            local0[6] = 0
            local0[7] = 30
            local0[8] = 0
            local0[9] = 20
        end
    elseif 17.5 <= local3 then
        local0[1] = 0
        local0[2] = 50
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[8] = 50
    elseif 12.5 <= local3 then
        local0[1] = 30
        local0[2] = 20
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[8] = 30
        local0[10] = 0
    elseif 7.5 <= local3 then
        local0[1] = 40
        local0[2] = 0
        local0[3] = 30
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[8] = 30
        local0[10] = 0
    elseif 2.5 <= local3 then
        local0[1] = 30
        local0[2] = 0
        local0[3] = 30
        local0[4] = 25
        local0[5] = 0
        local0[6] = 0
        local0[8] = 15
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 45
        local0[5] = 0
        local0[6] = 0
        local0[7] = 45
        local0[8] = 0
        local0[9] = 10
    end
    if arg0:IsFinishTimer(0) == false then
        local0[3] = 0
    end
    if arg0:IsFinishTimer(1) == false then
        local0[5] = 0
    end
    if arg0:IsFinishTimer(2) == false then
        local0[8] = 0
    end
    if arg0:IsFinishTimer(3) == false then
        local0[4] = 0
    end
    if arg0:IsFinishTimer(4) == false then
        local0[9] = 0
    end
    if arg0:IsFinishTimer(5) == false then
        local0[10] = 0
    end
    if arg0:GetNumber(0) == 0 then
        local0[5] = 0
        local0[10] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, FounderBeast509000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, FounderBeast509000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, FounderBeast509000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, FounderBeast509000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, FounderBeast509000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, FounderBeast509000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, FounderBeast509000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, FounderBeast509000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, FounderBeast509000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, FounderBeast509000_Act10)
    local1[12] = REGIST_FUNC(arg0, arg1, FounderBeast509000_Act12)
    local1[19] = REGIST_FUNC(arg0, arg1, FounderBeast509000_Act19)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, FounderBeast509000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 5.4 - local0
local0 = 10.3 - local0
local0 = 7.4 - local0
local0 = 11 - local0
function FounderBeast509000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 20
    local local4 = UPVAL0
    local local5 = arg0:GetRandam_Int(1, 2)
    local local6 = UPVAL1
    if UPVAL2 <= local0 and local1 <= 75 then
        local6 = UPVAL3
        local4 = UPVAL2
    end
    Approach_Act(arg0, arg1, local6, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3000, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 30, 3001, TARGET_ENE_0, local3, 0)
        if local1 <= 65 and arg0:GetNumber(0) == 1 then
            local local7 = 1
            for local8 = local5 - local7, 2, local7 do
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 30, 3010, TARGET_ENE_0, local3, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 30, 3001, TARGET_ENE_0, local3, 0)
            end
        end
        if arg0:GetRandam_Int(1, 100) <= 50 and arg0:GetNumber(0) == 1 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3010, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3002, TARGET_ENE_0, local3, 0)
        end
    elseif arg0:GetNumber(0) == 1 then
        if UPVAL2 <= local0 and local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3003, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 30, 3011, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3000, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 30, 3001, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 30, 3003, TARGET_ENE_0, local3, 0)
        end
        if local1 <= 65 then
            local local7 = 1
            for local8 = local5 - local7, 2, local7 do
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 30, 3017, TARGET_ENE_0, local3, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 30, 3011, TARGET_ENE_0, local3, 0)
            end
        end
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3017, TARGET_ENE_0, local3, 0)
    elseif UPVAL2 <= local0 and local1 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3000, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 30, 3001, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3003, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.7 - local0
local0 = 14.7 - local0
function FounderBeast509000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 20
    local local3 = UPVAL0
    Approach_Act(arg0, arg1, UPVAL1, 0, 0)
    if arg0:GetNumber(0) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 20, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.3 - local0
local0 = 5.6 - local0
function FounderBeast509000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    Approach_Act(arg0, arg1, UPVAL1, 0, 0)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5514)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 20, 0, -1)
    arg0:SetTimer(0, 12)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 0.1 - local0
local0 = 3.2 - local0
function FounderBeast509000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    Approach_Act(arg0, arg1, UPVAL1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, 20, 0, -1)
    arg0:SetTimer(3, 12)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.4 - local0
local0 = 10.5 - local0
function FounderBeast509000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 20, 0, 0)
    arg0:SetTimer(1, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.1 - local0
local0 = local20
local0 = 13.4 - local0
local0 = local21
function FounderBeast509000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = UPVAL3
    Approach_Act(arg0, arg1, UPVAL2, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 20, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, AttDist1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FounderBeast509000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 20
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 160) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 20, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 20, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
local0 = local21
function FounderBeast509000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    Approach_Act(arg0, arg1, UPVAL1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, 20, 0, -1)
    arg0:SetTimer(2, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 0.7 - local0
local0 = 3.3 - local0
function FounderBeast509000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    Approach_Act(arg0, arg1, UPVAL1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 20, 0, -1)
    arg0:SetTimer(4, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 11.6 - local0
function FounderBeast509000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetTimer(5, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FounderBeast509000_Act12(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        FounderBeast509000_Act09(arg0, arg1, arg2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FounderBeast509000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    else
        FounderBeast509000_Act09(arg0, arg1, arg2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FounderBeast509000_SpaceAdjustment(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 5.5, 2)
    local local3 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 5.5, 2)
    local local4 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 5.5, 2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.7, 2.3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function FounderBeast509000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function FounderBeast509000_ActAfter(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(3, 4.5)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    if arg0:GetNumber(0) ~= 1 then
        if local0 <= 3 then
            if local1 <= 60 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                end
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            elseif local1 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
            end
        elseif local0 <= 4.5 then
            if local1 <= 30 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                end
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            elseif local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            elseif local1 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            end
        elseif local0 <= 9 then
            if local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            end
        elseif local0 <= 13 and local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    end
    return 
end

function FounderBeast509000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function FounderBeast509000Battle_Terminate(arg0, arg1)
    return 
end

function FounderBeast509000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if Damaged_Act(arg0, arg1, 5, 50) then
        arg1:ClearSubGoal()
        arg0:Replaning()
        return true
    elseif arg0:IsInterupt(INTERUPT_Inside_ObserveArea) then
        arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5529)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, AttDist, 0, -1)
        return true
    elseif arg0:IsInterupt(INTERUPT_Outside_ObserveArea) then
        arg1:ClearSubGoal()
        arg0:Replaning()
        return true
    elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) then
        if arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5529) and arg0:GetNumber(0) == 1 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, AttDist, 0, -1)
            arg0:SetTimer(3, 12)
        end
        arg0:DeleteObserve(6)
        arg0:SetTimer(6, 5)
        return true
    elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) and arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5514) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 5) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, AttDist, 0, 0)
        return true
    elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 6) and arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5026) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 60, 12) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3029, TARGET_ENE_0, AttDist, 0, 0)
        return true
    elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) and arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 6) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, AttDist, 0, 0)
        return true
    else
        return false
    end
end

return 
