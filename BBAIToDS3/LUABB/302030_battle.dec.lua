local local0 = 0.3
local local1 = 0 - local0
local local2 = 4.6 - local0
local local3 = 0 - local0
local local4 = 4.1 - local0
local local5 = 0 - local0
local local6 = 6.8 - local0
local local7 = 0 - local0
local local8 = 7 - local0
local local9 = 7.5 - local0
local local10 = 8.9 - local0
local local11 = 0 - local0
local local12 = 0 - local0
function OnIf_302030(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_Guardian_GreatSword302030_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DungeonResident_Guardian_GreatSword302030Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetHpRate(TARGET_SELF)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    elseif 7 <= local4 then
        local0[1] = 10
        local0[2] = 35
        local0[3] = 35
        local0[4] = 0
        local0[5] = 0
        local0[6] = 20
    elseif 4 <= local4 then
        local0[1] = 15
        local0[2] = 25
        local0[3] = 0
        local0[4] = 25
        local0[5] = 10
        local0[6] = 25
    else
        local0[1] = 30
        local0[2] = 0
        local0[3] = 0
        local0[4] = 30
        local0[5] = 30
        local0[6] = 10
    end
    if arg0:IsFinishTimer(1) == false then
        local0[4] = 0
    end
    if arg0:IsFinishTimer(2) == false then
        local0[5] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_GreatSword302030_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_GreatSword302030_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_GreatSword302030_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_GreatSword302030_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_GreatSword302030_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_GreatSword302030_Act06)
    local1[9] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_GreatSword302030_Act09)
    local1[20] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_GreatSword302030_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_GreatSword302030_ActAfter_AdjustSpace, atkAfterOddsTbl), local2)
    return 
end

local0 = local2
function DungeonResident_Guardian_GreatSword302030_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = UPVAL0 + 0.5
    Approach_Act(arg0, arg1, UPVAL0, 12, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
        if local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local4, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local4, 0, -1)
            if local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local4, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
                if local3 <= 40 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local4, 0)
                elseif local3 <= 70 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local4, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3028, TARGET_ENE_0, local4, 0)
                end
            end
        end
    elseif local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local4, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
            if local3 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local4, 0)
            elseif local3 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local4, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local4, 0)
            end
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
function DungeonResident_Guardian_GreatSword302030_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, 0, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
function DungeonResident_Guardian_GreatSword302030_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, 0, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local2, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.9 - local0
function DungeonResident_Guardian_GreatSword302030_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, 12, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local2, 0, -1)
    end
    arg0:SetTimer(1, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.3 - local0
function DungeonResident_Guardian_GreatSword302030_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, 12, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, -1)
    end
    arg0:SetTimer(2, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.8 - local0
function DungeonResident_Guardian_GreatSword302030_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, 12, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local2, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DungeonResident_Guardian_GreatSword302030_Act20(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 999, 0, -1)
            end
        elseif arg0:GetRandam_Int(1, 100) <= 50 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0, 0, arg0:GetRandam_Float(120, 150), true, true, -1, true)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0, 1, arg0:GetRandam_Float(120, 150), true, true, -1, true)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 999, 0, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
function DungeonResident_Guardian_GreatSword302030_Act30(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0)
    end
    return true
end

local0 = local8
function DungeonResident_Guardian_GreatSword302030_Act31(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, -1)
    end
    return true
end

local0 = local10
function DungeonResident_Guardian_GreatSword302030_Act32(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local2, 0, -1)
    end
    return true
end

local0 = 5.5
function DungeonResident_Guardian_GreatSword302030_Act33(arg0, arg1)
    if arg0:GetDist(TARGET_ENE_0) <= 5 and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 701, TARGET_ENE_0, 999, 0, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, 999, 0, -1)
    return true
end

local0 = 6 - local0
local0 = local8
function DungeonResident_Guardian_GreatSword302030_Act35(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if local0 <= UPVAL0 then
        if arg0:IsFinishTimer(0) == true then
            if local1 <= 33 then
                return DungeonResident_Guardian_GreatSword302030_Act30(arg0, arg1)
            elseif local1 <= 66 then
                return DungeonResident_Guardian_GreatSword302030_Act31(arg0, arg1)
            else
                return DungeonResident_Guardian_GreatSword302030_Act32(arg0, arg1)
            end
        else
            return DungeonResident_Guardian_GreatSword302030_Act30(arg0, arg1)
        end
    elseif local0 <= UPVAL1 then
        return DungeonResident_Guardian_GreatSword302030_Act31(arg0, arg1)
    else
        return DungeonResident_Guardian_GreatSword302030_Act32(arg0, arg1)
    end
end

function DungeonResident_Guardian_GreatSword302030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_Guardian_GreatSword302030_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(3, 5.5)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if local0 <= 4.5 then
        if local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 5.5, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 7.5 then
        if local1 <= 10 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 5.5, TARGET_ENE_0, true, -1)
        elseif local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif local0 <= 9 then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
    end
    return 
end

function DungeonResident_Guardian_GreatSword302030Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Guardian_GreatSword302030Battle_Terminate(arg0, arg1)
    return 
end

function DungeonResident_Guardian_GreatSword302030Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    if Counter_Act(arg0, arg1, 4, 3027) then
        return DungeonResident_Guardian_GreatSword302030_Act35(arg0, arg1)
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
