local local0 = 0.5
function OnIf_311000(arg0, arg1, arg2)
    if arg2 == 0 then
        EvilSpirit311000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function EvilSpirit311000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetEventRequest(0)
    local local6 = 1
    if arg0:IsFinishTimer(0) == false then
        local6 = 0
    end
    if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        local0[20] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        local0[4] = 100
        local0[5] = 10
    else
        local0[1] = 33
        local0[2] = 33
        local0[3] = 34 * local6
    end
    local1[1] = REGIST_FUNC(arg0, arg1, EvilSpirit311000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, EvilSpirit311000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, EvilSpirit311000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, EvilSpirit311000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, EvilSpirit311000_Act05)
    local1[20] = REGIST_FUNC(arg0, arg1, EvilSpirit311000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, EvilSpirit311000_ActAfter_AdjustSpace), local2)
    return 
end

function EvilSpirit311000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, 4, 8, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EvilSpirit311000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EvilSpirit311000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local1 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_None, 0, 0)
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, DIST_None, 0, 0)
    elseif local1 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, DIST_None, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EvilSpirit311000_Act04(arg0, arg1, arg2)
    local local0 = arg0:IsOnNearMesh(TARGET_ENE_0, AI_DIR_TYPE_B, 4, 2)
    local local1 = arg0:IsOnNearMesh(TARGET_ENE_0, AI_DIR_TYPE_L, 4, 2)
    local local2 = arg0:IsOnNearMesh(TARGET_ENE_0, AI_DIR_TYPE_R, 4, 2)
    if local0 == false and local1 == false and local2 == false then
        if arg0:GetDist(TARGET_ENE_0) <= 10 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
        end
    elseif local0 == false then
        if local1 == false and local2 == true then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 5, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_R, 4)
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        elseif local2 == false and local1 == true then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 5, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_L, 4)
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        elseif arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 5, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_L, 4)
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 5, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_R, 4)
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 5, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_B, 5)
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    EvilSpirit311000_Act05(arg0, arg1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EvilSpirit311000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local1 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, 0)
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    elseif local1 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 0)
    end
    arg0:SetTimer(0, 8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EvilSpirit311000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EvilSpirit311000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function EvilSpirit311000_ActAfter_RealTime(arg0, arg1)
    return 
end

function EvilSpirit311000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function EvilSpirit311000Battle_Terminate(arg0, arg1)
    return 
end

function EvilSpirit311000Battle_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_Damaged) then
        arg1:ClearSubGoal()
        arg0:Replaning()
        return true
    else
        return false
    end
end

return 
