local local0 = 0.5
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 3.8 - local0
local local4 = 0 - local0
local local5 = 4.4 - local0
local local6 = 0 - local0
local local7 = 0 - local0
local local8 = 0 - local0
local local9 = 0 - local0
local local10 = 0 - local0
local local11 = 9999 - local0
local local12 = 0 - local0
local local13 = 5 - local0
local local14 = 0 - local0
local local15 = 5.5
local local16 = 0
function OnIf_209000(arg0, arg1, arg2)
    if arg2 == 0 then
        Beast_Which_Longed_For_Blood209000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Beast_Which_Longed_For_Blood209000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetEventRequest(0)
    local local6 = 10
    local local7 = 5
    local local8 = arg0:GetNumber(0)
    if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        local0[20] = 100
    elseif local5 == 101 then
        local0[11] = 100
    elseif local5 == 100 then
        local0[10] = 100
    elseif 20 <= local4 then
        local0[21] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        if arg0:IsFinishTimer(0) == true then
            local0[9] = 10
        elseif local6 <= local4 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[4] = 10
            local0[5] = 10
            local0[6] = 10
            local0[7] = 10
            local0[8] = 10
        elseif local7 <= local4 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[4] = 10
            local0[5] = 10
            local0[6] = 10
            local0[7] = 0
            local0[8] = 10
        else
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[4] = 10
            local0[5] = 10
            local0[6] = 10
            local0[7] = 0
            local0[8] = 10
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        if local6 <= local4 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[4] = 10
            local0[5] = 10
            local0[6] = 0
            local0[7] = 0
            local0[8] = 10
        elseif local7 <= local4 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[4] = 10
            local0[5] = 10
            local0[6] = 0
            local0[7] = 0
            local0[8] = 10
        else
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[4] = 10
            local0[5] = 10
            local0[6] = 0
            local0[7] = 0
            local0[8] = 10
        end
    elseif local6 <= local4 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 10
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
    elseif local7 <= local4 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 10
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
    else
        local0[1] = 10
        local0[2] = 10
        local0[3] = 10
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
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
    local1[1] = REGIST_FUNC(arg0, arg1, Beast_Which_Longed_For_Blood209000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Beast_Which_Longed_For_Blood209000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Beast_Which_Longed_For_Blood209000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Beast_Which_Longed_For_Blood209000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Beast_Which_Longed_For_Blood209000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Beast_Which_Longed_For_Blood209000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Beast_Which_Longed_For_Blood209000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Beast_Which_Longed_For_Blood209000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Beast_Which_Longed_For_Blood209000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Beast_Which_Longed_For_Blood209000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Beast_Which_Longed_For_Blood209000_Act11)
    local1[20] = REGIST_FUNC(arg0, arg1, Beast_Which_Longed_For_Blood209000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, Beast_Which_Longed_For_Blood209000_Act21)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Beast_Which_Longed_For_Blood209000_ActAfter_AdjustSpace, atkAfterOddsTbl), local2)
    return 
end

local0 = 3.8 - local0
function Beast_Which_Longed_For_Blood209000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 
    local local3 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local2 = 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local2 = UPVAL0 + 2
    else
        local2 = 9999
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        if local0 <= 0 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        elseif local0 <= 0 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0)
        elseif local0 <= 0 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local1, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local1, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local1, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local1, 0)
        end
    elseif local0 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
    elseif local0 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    end
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.4 - local0
function Beast_Which_Longed_For_Blood209000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 
    local local2 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local1 = 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local1 = UPVAL0 + 2
    else
        local1 = 9999
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local1, 0, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    end
    arg0:SetNumber(0, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6 - local0
function Beast_Which_Longed_For_Blood209000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 
    local local2 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local1 = 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local1 = UPVAL0 + 2
    else
        local1 = 9999
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.4 - local0
function Beast_Which_Longed_For_Blood209000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 
    local local2 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local1 = 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local1 = UPVAL0 + 2
    else
        local1 = 9999
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.2 - local0
function Beast_Which_Longed_For_Blood209000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 
    local local2 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local1 = 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local1 = UPVAL0 + 2
    else
        local1 = 9999
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 9.2 - local0
function Beast_Which_Longed_For_Blood209000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 
    local local2 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local1 = 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local1 = UPVAL0 + 2
    else
        local1 = 9999
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 12.2 - local0
function Beast_Which_Longed_For_Blood209000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 
    local local2 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local1 = 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local1 = UPVAL0 + 2
    else
        local1 = 9999
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.6 - local0
function Beast_Which_Longed_For_Blood209000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 
    local local2 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        local1 = 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local1 = UPVAL0 + 2
    else
        local1 = 9999
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Beast_Which_Longed_For_Blood209000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if local0 <= 4 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 3) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 3) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 60) and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 3) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    end
    if local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, -1)
    arg0:SetNumber(0, 9)
    arg0:SetTimer(0, 40)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local11
function Beast_Which_Longed_For_Blood209000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local11
function Beast_Which_Longed_For_Blood209000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Beast_Which_Longed_For_Blood209000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if 4 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 50, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Beast_Which_Longed_For_Blood209000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, 10, 9999, 0, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Beast_Which_Longed_For_Blood209000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Beast_Which_Longed_For_Blood209000_ActAfter_RealTime(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            if 5 <= arg0:GetDist(TARGET_ENE_0) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            end
        end
    end
    return 
end

function Beast_Which_Longed_For_Blood209000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Beast_Which_Longed_For_Blood209000Battle_Terminate(arg0, arg1)
    return 
end

function Beast_Which_Longed_For_Blood209000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetNumber(7)
    if arg0:IsInterupt(INTERUPT_Damaged) then
        if local0 == 0 then
            local0 = 8
        end
        arg0:SetNumber(7, local0 * 2)
    end
    if 100 <= local0 then
        arg0:SetNumber(7, 100)
    end
    if arg0:IsInterupt(INTERUPT_Damaged) then
        if arg0:GetRandam_Int(1, 100) <= arg0:GetNumber(7) then
            arg0:SetNumber(7, 0)
            arg1:ClearSubGoal()
            Beast_Which_Longed_For_Blood209000Battle_Activate(arg0, arg1)
            return true
        else
            return false
        end
    else
        return false
    end
end

return 
