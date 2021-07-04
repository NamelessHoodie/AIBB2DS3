local local0 = 0.4
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 42 - local0
local local4 = 0 - local0
local local5 = 0 - local0
local local6 = 0 - local0
local local7 = 5.7 - local0
local local8 = 0 - local0
local local9 = 5.5
local local10 = 999
local local11 = 1
local0 = local10
function DungeonResident_Priest300000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNpcThinkParamID() == 300020 then
        local local5 = 0
        SETUPVAL 8 0 0
        if arg0:IsFinishTimer(0) == true then
            arg0:AddObserveSpecialEffect(TARGET_FRI_0, AI_SPEFFOBSERVE_SpEffId, 5724)
            if arg0:IsActivateSpecialEffect(TARGET_FRI_0, AI_SPEFFOBSERVE_SpEffId, 5724) == false and arg0:GetDist(TARGET_FRI_0) <= 12 then
                local0[3] = 100
            elseif 15 <= local3 then
                local0[1] = 50
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
            elseif 10 <= local3 then
                local0[1] = 50
                local0[2] = 50
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
            elseif 4.2 <= local3 then
                local0[1] = 25
                local0[2] = 25
                local0[3] = 0
                local0[4] = 50
                local0[5] = 0
            else
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 40
                local0[5] = 60
            end
        elseif not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if local3 <= 5 and local4 <= 50 then
                local0[4] = 40
                local0[5] = 40
                local0[21] = 20
            else
                local0[21] = 100
            end
        elseif 15 <= local3 then
            local0[1] = 50
            local0[2] = 50
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
        elseif 10 <= local3 then
            local0[1] = 50
            local0[2] = 50
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
        elseif 4.2 <= local3 then
            local0[1] = 25
            local0[2] = 25
            local0[3] = 0
            local0[4] = 50
            local0[5] = 0
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 40
            local0[5] = 60
        end
    elseif arg0:GetNpcThinkParamID() == 300005 then
        local local5 = 999
        SETUPVAL 8 0 0
        local0[8] = 100
    else
        local local5 = 999
        SETUPVAL 8 0 0
        if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if local3 <= 4.4 and local4 <= 50 then
                local0[3] = 0
                local0[20] = 100
            else
                local0[20] = 100
            end
        elseif 4.4 <= local3 then
            local0[1] = 50
            local0[2] = 50
        else
            local0[1] = 50
            local0[3] = 0
            local0[20] = 50
        end
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Priest300000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Priest300000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Priest300000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Priest300000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Priest300000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_Priest300000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DungeonResident_Priest300000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DungeonResident_Priest300000_Act08)
    local1[20] = REGIST_FUNC(arg0, arg1, DungeonResident_Priest300000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, DungeonResident_Priest300000_Act21)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Priest300000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 42 - local0
local0 = local10
function DungeonResident_Priest300000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL1 + UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1, 15, 15)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local3
local0 = local10
function DungeonResident_Priest300000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL1 + UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1, 15, 15)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
local0 = local10
function DungeonResident_Priest300000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5400) == false then
        local local4 = UPVAL0 - 0.3
        local local5 = UPVAL1 + UPVAL0 + 2 - 0.3
        local2 = local2 - 0.3
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local2, 0, -1)
    arg0:SetTimer(0, 10)
    arg0:DeleteObserveSpecialEffect(TARGET_FRI_0, AI_SPEFFOBSERVE_SpEffId, 5724)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.9 - local0
local0 = local10
function DungeonResident_Priest300000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL1 + UPVAL0 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1, 15, 15)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.9 - local0
local0 = local10
local0 = 5.7 - local0
local0 = 3.3 - local0
local0 = local9
function DungeonResident_Priest300000_Act05(arg0, arg1, arg2)
    local local0 = UPVAL1
    local local1 = UPVAL0 + 1
    local local2 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        Approach_Act(arg0, arg1, UPVAL2, local0, local2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    else
        Approach_Act(arg0, arg1, UPVAL0, local0, local2)
        if arg0:GetDist(TARGET_ENE_0) <= UPVAL3 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, UPVAL4)
        end
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local1, 0, -1)
        if arg0:GetRandam_Int(1, 100) <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local1, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DungeonResident_Priest300000_Act06(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5400) == true then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3020, TARGET_NONE, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3021, TARGET_NONE, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local9
function DungeonResident_Priest300000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, UPVAL0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        DungeonResident_Priest300000_Act06(arg0, arg1, arg2)
    else
        DungeonResident_Priest300000_Act03(arg0, arg1, arg2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local3
local0 = local10
function DungeonResident_Priest300000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1 + UPVAL0 + 2
    local local4 = UPVAL0 + 1
    local local5 = 0
    if 81 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 1, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_None, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_None, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_None, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_None, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_None, 0)
    elseif 51 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 1, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_None, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_None, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_None, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 1, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_None, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_None, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Priest300000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 50, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local9
function DungeonResident_Priest300000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 3 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, UPVAL0, 5) == true then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, UPVAL0)
            elseif arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 5) == true then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, UPVAL0)
            end
        elseif arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, UPVAL0, 5) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, UPVAL0)
        elseif arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 5) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, UPVAL0)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 50, 0, 0)
    return 
end

function DungeonResident_Priest300000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    local local0 = true
    if arg0:GetNpcThinkParamID() == 300001 and arg0:HasSpecialEffectId(TARGET_SELF, 5401) == false then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 3), TARGET_ENE_0, 0, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
            local0 = false
        end
        if arg0:GetDist(TARGET_ENE_0) <= 10 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 3), TARGET_ENE_0, 10, TARGET_ENE_0, local0, -1)
        end
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), local0, true, -1)
    end
    return 
end

function DungeonResident_Priest300000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Priest300000Battle_Terminate(arg0, arg1)
    return 
end

function DungeonResident_Priest300000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    return false
end

return 
