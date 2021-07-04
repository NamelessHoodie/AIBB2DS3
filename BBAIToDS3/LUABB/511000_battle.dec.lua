local local0 = 3
local local1 = 1 - local0
local local2 = 1 - local0
local local3 = 1 - local0
local local4 = 5 - local0
local local5 = 1 - local0
local local6 = 1 - local0
local local7 = 5.6 - local0
local local8 = 1 - local0
local local9 = 5.9 - local0
local local10 = 1 - local0
local local11 = 5 - local0
local local12 = 20 - local0
local local13 = 1 - local0
local local14 = 30 - local0
local local15 = 1 - local0
local local16 = 1 - local0
local local17 = 1 - local0
local local18 = 30 - local0
function OnIf_511000(arg0, arg1, arg2)
    if arg2 == 0 then
        SilverBeast511000_ActAfter(arg0, arg1)
    end
    if arg2 == 1 then
        SilverBeast511000_FlagChange(arg0, arg1)
    end
    return 
end

function SilverBeast511000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetNumber(1)
    arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 1.5)
    if arg0:GetHpRate(TARGET_SELF) <= 0.7 and arg0:GetNumber(0) == 0 then
        local0[10] = 100
    elseif arg0:GetNumber(0) == 1 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 300) then
            local0[20] = 100
        elseif 20 <= local3 then
            local0[2] = 0
            local0[3] = 40
            local0[4] = 30
            local0[5] = 0
            local0[7] = 0
            local0[8] = 30
            local0[9] = 0
        elseif 15 <= local3 then
            local0[2] = 20
            local0[3] = 30
            local0[4] = 15
            local0[5] = 0
            local0[7] = 20
            local0[8] = 15
            local0[9] = 0
        elseif 12 <= local3 then
            local0[2] = 30
            local0[3] = 10
            local0[4] = 15
            local0[5] = 0
            local0[7] = 15
            local0[8] = 30
            local0[9] = 0
        elseif 9 <= local3 then
            local0[2] = 30
            local0[3] = 20
            local0[4] = 10
            local0[5] = 15
            local0[7] = 10
            local0[8] = 15
            local0[9] = 0
        elseif 6 <= local3 then
            local0[2] = 30
            local0[3] = 0
            local0[4] = 20
            local0[5] = 20
            local0[7] = 15
            local0[8] = 0
            local0[9] = 15
        elseif 3 <= local3 then
            local0[2] = 30
            local0[3] = 0
            local0[4] = 0
            local0[5] = 30
            local0[7] = 20
            local0[8] = 0
            local0[9] = 20
        else
            local0[2] = 20
            local0[3] = 0
            local0[4] = 20
            local0[5] = 20
            local0[7] = 20
            local0[8] = 0
            local0[9] = 20
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 300) then
        local0[20] = 100
    elseif 20 <= local3 then
        local0[3] = 40
        local0[4] = 30
        local0[5] = 0
        local0[8] = 30
    elseif 15 <= local3 then
        local0[1] = 20
        local0[3] = 35
        local0[4] = 25
        local0[5] = 0
        local0[8] = 20
    elseif 12 <= local3 then
        local0[1] = 20
        local0[3] = 20
        local0[4] = 25
        local0[5] = 0
        local0[8] = 35
    elseif 9 <= local3 then
        local0[1] = 20
        local0[3] = 20
        local0[4] = 10
        local0[5] = 25
        local0[8] = 25
    elseif 6 <= local3 then
        local0[1] = 45
        local0[3] = 0
        local0[4] = 25
        local0[5] = 30
        local0[8] = 0
    elseif 3 <= local3 then
        local0[1] = 60
        local0[4] = 0
        local0[5] = 40
        local0[8] = 0
    else
        local0[1] = 45
        local0[4] = 55
        local0[8] = 0
    end
    if local5 == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if local5 == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if local5 == 3 and 0 < local0[3] then
        local0[3] = 1
    end
    if local5 == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if local5 == 5 and 0 < local0[5] then
        local0[5] = 1
    end
    if local5 == 6 and 0 < local0[6] then
        local0[6] = 1
    end
    if local5 == 7 and 0 < local0[7] then
        local0[7] = 1
    end
    if local5 == 8 and 0 < local0[8] then
        local0[8] = 1
    end
    if local5 == 9 and 0 < local0[9] then
        local0[9] = 1
    end
    local1[1] = REGIST_FUNC(arg0, arg1, SilverBeast511000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, SilverBeast511000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, SilverBeast511000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, SilverBeast511000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, SilverBeast511000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, SilverBeast511000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, SilverBeast511000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, SilverBeast511000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, SilverBeast511000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, SilverBeast511000_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, SilverBeast511000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, SilverBeast511000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 5.9 - local0
local0 = local11
local0 = 5.6 - local0
function SilverBeast511000_Act01(arg0, arg1, arg2)
    local local0 = UPVAL1 + 1
    local local1 = UPVAL2
    if arg0:GetNumber(0) == 1 then
        local1 = UPVAL2 + 8
    end
    if 10 <= arg0:GetDist(TARGET_ENE_0) and arg0:GetNumber(0) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0, 0)
        arg0:DeleteObserve(1)
        arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 6)
    else
        Approach_Act(arg0, arg1, local1, 999, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, DIST_None, 0)
    arg0:SetNumber(1, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 13 - local0
local0 = local11
local0 = 13 - local0
function SilverBeast511000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act(arg0, arg1, UPVAL2, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, UPVAL1 + 1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, DIST_None, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 27 - local0
local0 = 27 - local0
local0 = 18 - local0
function SilverBeast511000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 999
    local local3 = 0
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL2 then
        SilverBeast511000_breakaway(arg0, arg1)
    end
    if arg0:GetNumber(0) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL1 + 1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    end
    arg0:DeleteObserve(1)
    arg0:SetNumber(1, 3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1 - local0
local0 = 15 - local0
function SilverBeast511000_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1 + 5
    if 13 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 10, 3004, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, 0)
    end
    arg0:DeleteObserve(1)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 6)
    arg0:SetNumber(1, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 1 - local0
local0 = 20 - local0
local0 = 20 - local0
function SilverBeast511000_Act05(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL1, 999, 0, 2)
    if arg0:GetNumber(0) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, UPVAL2, 0)
    end
    arg0:SetNumber(1, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SilverBeast511000_Act06(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1 - local0
local0 = 30 - local0
function SilverBeast511000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    Approach_Act(arg0, arg1, UPVAL1, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL1, 0, 0)
    arg0:SetNumber(1, 7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 15 - local0
local0 = 10 - local0
function SilverBeast511000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    if arg0:GetNumber(0) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local2, 0, 0)
    end
    arg0:DeleteObserve(1)
    arg0:SetNumber(1, 8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5 - local0
local0 = 1 - local0
function SilverBeast511000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = 999
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:SetNumber(1, 9)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SilverBeast511000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5020)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SilverBeast511000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if local1 <= 50 and arg0:GetNumber(0) == 1 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif local0 <= 5 then
        if arg0:GetNumber(0) == 1 and local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 0)
        elseif local1 <= 50 then
            if arg0:GetNumber(0) == 1 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, AttDist, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, AttDist, 0, 0)
            end
        elseif local1 <= 80 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif local0 <= 10 then
        if arg0:GetNumber(0) == 1 and local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 0)
        elseif local1 <= 50 then
            if arg0:GetNumber(0) == 1 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, AttDist, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, AttDist, 0, 0)
            end
        elseif local1 <= 70 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SilverBeast511000_breakaway(arg0, arg1)
    local local0 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 10)
    local local1 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 10)
    if arg0:GetDist(TARGET_ENE_0) <= 10 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if local1 == false and local0 == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            elseif local1 == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        elseif arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 10) == false and local0 == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        elseif local0 == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    return 
end

function SilverBeast511000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function SilverBeast511000_ActAfter(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    if local1 <= 5 then
        if local0 <= 30 then
            SilverBeast511000_breakaway(arg0, arg1)
        end
    elseif local1 <= 10 then
        if local0 <= 15 then
            SilverBeast511000_breakaway(arg0, arg1)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    return 
end

function SilverBeast511000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function SilverBeast511000Battle_Terminate(arg0, arg1)
    return 
end

function SilverBeast511000Battle_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg0:IsInsideObserve(0) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(0)
            arg0:Replaning()
            return true
        elseif arg0:IsInsideObserve(1) then
            arg1:ClearSubGoal()
            if arg0:GetRandam_Int(1, 100) <= 30 and arg0:GetNumber(0) == 1 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_None, 0, 0)
            else
                SilverBeast511000_breakaway(arg0, arg1)
            end
            return true
        end
        arg0:Replaning()
    elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) then
        if arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5020) then
            arg1:ClearSubGoal()
            arg0:SetNumber(0, 1)
            arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5020)
            arg0:Replaning()
        end
        return true
    else
        return false
    end
end

return 
