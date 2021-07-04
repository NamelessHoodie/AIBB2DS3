local local0 = 0.3
local local1 = 0 - local0
local local2 = 3.1 - local0
local local3 = 0 - local0
local local4 = 3.1 - local0
local local5 = 0 - local0
local local6 = 4.4 - local0
local local7 = 0 - local0
local local8 = 3.9 - local0
local local9 = 7 - local0
local local10 = 11 - local0
local local11 = 0 - local0
local local12 = 0 - local0
local local13 = 0 - local0
local local14 = 3.8 - local0
local local15 = 0 - local0
local local16 = 4.4 - local0
local local17 = 0 - local0
local local18 = 4.4 - local0
local local19 = 0 - local0
local local20 = 0 - local0
local local21 = 3.8 - local0
local local22 = 0 - local0
local local23 = 5.6 - local0
local local24 = 0 - local0
local local25 = 5.1 - local0
local local26 = 5.5
function OnIf_302020(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_Guardian_SwordCrossbow302020_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = 1
function DungeonResident_Guardian_SwordCrossbow302020Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetHpRate(TARGET_SELF)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)
    if arg0:IsFinishTimer(0) == true then
        local local6 = 1
        SETUPVAL 8 0 0
    end
    if not (arg0:HasSpecialEffectId(TARGET_SELF, 5611) ~= true or local4 > 8) or not arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true and 8 <= local4 then
        local0[10] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and not arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
        local0[20] = 100
    elseif not (arg0:HasSpecialEffectId(TARGET_SELF, 5611) ~= true or local4 > 8) or not arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true and 8 <= local4 then
        local0[10] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
        local0[5] = 100
    elseif 4 <= local4 then
        local0[1] = 35
        local0[3] = 10
        local0[4] = 25
        local0[7] = 0
    else
        local0[1] = 35
        local0[3] = 20
        local0[4] = 35
        local0[7] = 10
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordCrossbow302020_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordCrossbow302020_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordCrossbow302020_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordCrossbow302020_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordCrossbow302020_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordCrossbow302020_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordCrossbow302020_Act07)
    local1[9] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordCrossbow302020_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordCrossbow302020_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordCrossbow302020_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordCrossbow302020_ActAfter_AdjustSpace, atkAfterOddsTbl), local2)
    return 
end

local0 = local2
function DungeonResident_Guardian_SwordCrossbow302020_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0, 2)
    if local1 <= 20 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, local2, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
        end
    else
        if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, local2, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
        end
        if local1 <= 70 then
            if fate2 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local2, 0)
            end
        elseif fate2 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
            if fate3 <= 60 then
                if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local2, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2, 0)
                end
            elseif fate3 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local2, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local2, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, local2, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local2, 0)
        end
    end
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.7 - local0
function DungeonResident_Guardian_SwordCrossbow302020_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.3 - local0
function DungeonResident_Guardian_SwordCrossbow302020_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0, 2)
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local2, 0, -1)
        if local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, local2, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, local2, 0)
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, local2, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3038, TARGET_ENE_0, local2, 0)
            end
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DungeonResident_Guardian_SwordCrossbow302020_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = DIST_None
    local local2 = 100
    if 15 <= arg0:GetDist(TARGET_ENE_0) then
        local2 = 20
    end
    if arg0:GetRandam_Int(1, 100) <= local2 then
        if local0 <= local2 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local1, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3029, TARGET_ENE_0, local1, 0, -1)
        end
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local1, 0)
    elseif local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, local1, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.1 - local0
function DungeonResident_Guardian_SwordCrossbow302020_Act07(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DungeonResident_Guardian_SwordCrossbow302020_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
        if arg0:GetDist(TARGET_ENE_0) <= 4 then
            if local0 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, DIST_None, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0)
        end
    elseif local0 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, DIST_None, 0)
    end
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Guardian_SwordCrossbow302020_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 100 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local0 <= 4 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, 4, 0, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local0 <= 4 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, 4, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
function DungeonResident_Guardian_SwordCrossbow302020_Act30(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    end
    return true
end

function DungeonResident_Guardian_SwordCrossbow302020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_Guardian_SwordCrossbow302020_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 3.5)
    local local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 3.5), TARGET_ENE_0, 0, 0, 0)
        end
    elseif local1 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(3, 5.5), TARGET_ENE_0, 8.5, TARGET_ENE_0, true, -1)
    end
    return 
end

function DungeonResident_Guardian_SwordCrossbow302020Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Guardian_SwordCrossbow302020Battle_Terminate(arg0, arg1)
    return 
end

function DungeonResident_Guardian_SwordCrossbow302020Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    if Counter_Act(arg0, arg1, 4, 3027) and arg0:HasSpecialEffectId(TARGET_SELF, 5025) == false then
        DungeonResident_Guardian_SwordCrossbow302020Battle_Activate(arg0, arg1)
        return true
    elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) and arg0:HasSpecialEffectId(TARGET_SELF, 5702) and (not not arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8) or arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)) and arg0:GetHpRate(TARGET_SELF) <= 0.6 and arg0:GetNumber(1) <= 1 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, DIST_None, 0, 0)
        arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5703)
        return true
    elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) and arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5703) then
        arg1:ClearSubGoal()
        arg0:SetNumber(1, arg0:GetNumber(1) + 1)
        arg0:Replaning()
        arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5703)
        return true
    else
        return false
    end
end

return 
