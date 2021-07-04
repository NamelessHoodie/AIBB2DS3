local local0 = 0.3
local local1 = 0 - local0
local local2 = 4.2 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 5.8 - local0
local local6 = 0 - local0
local local7 = 6.1 - local0
local local8 = 7.8 - local0
local local9 = 0 - local0
local local10 = 5.7 - local0
local local11 = 0 - local0
local local12 = 5.5
local local13 = 1
local0 = local13
function DungeonResident_Guardian_Morningstar302010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)
    if arg0:IsFinishTimer(0) == true then
        local local4 = 1
        SETUPVAL 8 0 0
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        if 4 <= arg0:GetDist(TARGET_ENE_0) then
            local0[20] = 50
        else
            local0[4] = 50
            local0[5] = 50
        end
    elseif arg0:GetHpRate(TARGET_SELF) <= 0.5 and arg0:HasSpecialEffectId(TARGET_SELF, 5662) == false then
        local0[9] = 100
    else
        local0[1] = 20
        local0[2] = 15
        local0[3] = 50 * UPVAL0
        local0[4] = 15
        local0[5] = 10
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_Morningstar302010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_Morningstar302010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_Morningstar302010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_Morningstar302010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_Morningstar302010_Act05)
    local1[9] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_Morningstar302010_Act09)
    local1[20] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_Morningstar302010_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_Morningstar302010_ActAfter_AdjustSpace, atkAfterOddsTbl), local2)
    return 
end

local0 = local2
function DungeonResident_Guardian_Morningstar302010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0.5
    Approach_Act(arg0, arg1, UPVAL0, 8, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local2, 0, -1)
    if local1 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local2, 0)
    elseif local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local2, 0)
    else
        local local3 = 1
        for local4 = 1 - local3, 2, local3 do
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local2, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local2, 0)
        end
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local2, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local2, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local2, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local7
function DungeonResident_Guardian_Morningstar302010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0 + 0.5
    Approach_Act(arg0, arg1, UPVAL0, 8, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, local3, 0, -1)
    if local1 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local3, 0)
    elseif local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local3, 0)
    else
        local local4 = 1
        for local5 = 1 - local4, 2, local4 do
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local3, 0)
        end
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local3, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = 4.8 - local0
local0 = local13
function DungeonResident_Guardian_Morningstar302010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0 + 0.5
    Approach_Act(arg0, arg1, UPVAL0, 0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL1 + 0.5, 0, -1)
    local local4 = 0
    SETUPVAL 11 2 0
    arg0:SetTimer(0, 20)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
function DungeonResident_Guardian_Morningstar302010_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 8, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6.6 - local0
function DungeonResident_Guardian_Morningstar302010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 8, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
function DungeonResident_Guardian_Morningstar302010_Act09(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 5 and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 701, TARGET_ENE_0, 999, 0, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, 999, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Guardian_Morningstar302010_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
function DungeonResident_Guardian_Morningstar302010_Act30(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local2, 0, -1)
    local local3 = 1
    for local4 = 1 - local3, 2, local3 do
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local2, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local2, 0)
    return true
end

local0 = local7
function DungeonResident_Guardian_Morningstar302010_Act31(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, local2, 0, -1)
    local local3 = 1
    for local4 = 1 - local3, 2, local3 do
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local2, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local2, 0)
    return true
end

local0 = local8
local0 = local13
function DungeonResident_Guardian_Morningstar302010_Act32(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, local2, 0, -1)
    local local3 = 1
    for local4 = 1 - local3, 2, local3 do
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local2, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local2, 0)
    local4 = 0
    SETUPVAL 5 1 0
    arg0:SetTimer(0, 20)
    return true
end

local0 = local10
function DungeonResident_Guardian_Morningstar302010_Act34(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    return true
end

local0 = local12
function DungeonResident_Guardian_Morningstar302010_Act35(arg0, arg1)
    if arg0:GetDist(TARGET_ENE_0) <= 5 and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 701, TARGET_ENE_0, 999, 0, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, 999, 0, -1)
    return true
end

local0 = 5.5 - local0
function DungeonResident_Guardian_Morningstar302010_Act36(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetHpRate(TARGET_SELF) <= 0.5 and arg0:HasSpecialEffectId(TARGET_SELF, 5662) == false then
        return DungeonResident_Guardian_Morningstar302010_Act35(arg0, arg1)
    elseif arg0:GetDist(TARGET_ENE_0) <= UPVAL0 then
        if arg0:IsFinishTimer(0) == true then
            if local0 <= 50 then
                return DungeonResident_Guardian_Morningstar302010_Act30(arg0, arg1)
            else
                return DungeonResident_Guardian_Morningstar302010_Act32(arg0, arg1)
            end
        elseif local0 <= 33 then
            return DungeonResident_Guardian_Morningstar302010_Act30(arg0, arg1)
        elseif local0 <= 66 then
            return DungeonResident_Guardian_Morningstar302010_Act31(arg0, arg1)
        else
            return DungeonResident_Guardian_Morningstar302010_Act34(arg0, arg1)
        end
    else
        return DungeonResident_Guardian_Morningstar302010_Act32(arg0, arg1)
    end
end

function DungeonResident_Guardian_Morningstar302010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    return 
end

function DungeonResident_Guardian_Morningstar302010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Guardian_Morningstar302010Battle_Terminate(arg0, arg1)
    return 
end

function DungeonResident_Guardian_Morningstar302010Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    if Counter_Act(arg0, arg1, 4, 3027) then
        return DungeonResident_Guardian_Morningstar302010_Act36(arg0, arg1)
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
