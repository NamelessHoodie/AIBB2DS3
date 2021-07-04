local local0 = 0.3
local local1 = 0.5 - local0
local local2 = 0.5 - local0
local local3 = 0.5 - local0
local local4 = 0.5 - local0
local local5 = 0.5 - local0
local local6 = 0.5 - local0
local local7 = 0.5 - local0
local local8 = 0.5 - local0
local local9 = 0.5 - local0
local local10 = 1.5 - local0
local local11 = 15 - local0
local local12 = 0.5 - local0
local local13 = 15 - local0
local local14 = 0.5 - local0
function OnIf_212020(arg0, arg1, arg2)
    if arg2 == 0 then
        DarkBrigade_OrbAndHammer212020_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local11
local0 = local13
function DarkBrigade_OrbAndHammer212020Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest(0)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    local local7 = arg0:GetTeamRecordCount(COORDINATE_TYPE_Attack, TARGET_ENE_0, 20)
    local local8 = arg0:GetTeamRecordCount(COORDINATE_TYPE_AttackOrder, TARGET_ENE_0, 20)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[10] = 100
    elseif arg0:GetNpcThinkParamID() == 212620 and 8 <= local3 then
        local local9 = 999
        SETUPVAL 11 0 0
        local9 = 999
        SETUPVAL 11 1 0
        local0[6] = 50
        local0[7] = 50
    elseif local7 <= 0 and local8 <= 0 then
        if 8 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 13
            local0[6] = 4
            local0[7] = 70
            local0[8] = 13
            local0[9] = 0
        elseif 5 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 18
            local0[6] = 4
            local0[7] = 60
            local0[8] = 18
            local0[9] = 0
        elseif 2 <= local3 then
            local0[1] = 22
            local0[2] = 22
            local0[3] = 12
            local0[4] = 12
            local0[5] = 0
            local0[6] = 0
            local0[7] = 18
            local0[8] = 7
            local0[9] = 7
        else
            local0[1] = 11
            local0[2] = 16
            local0[3] = 0
            local0[4] = 31
            local0[5] = 0
            local0[6] = 0
            local0[7] = 16
            local0[8] = 0
            local0[9] = 26
        end
    elseif local7 == 1 or local8 == 1 or local7 + local8 == 1 then
        if 5 <= local3 then
            local0[2] = 8
            local0[3] = 9
            local0[6] = 2
            local0[7] = 40
            local0[8] = 10
            local0[9] = 8
            local0[11] = 23
        else
            local0[2] = 13
            local0[3] = 8
            local0[6] = 0
            local0[7] = 35
            local0[8] = 8
            local0[9] = 13
            local0[11] = 23
        end
        if arg0:GetNumber(2) == 1 then
            local0[2] = 0
            local0[3] = 0
            local0[6] = 0
            local0[7] = 50
            local0[8] = 0
            local0[9] = 0
            local0[11] = 50
        end
    else
        if 5 <= local3 then
            local0[2] = 0
            local0[3] = 9
            local0[6] = 0
            local0[7] = 28
            local0[8] = 9
            local0[9] = 0
            local0[11] = 54
        else
            local0[2] = 9
            local0[3] = 0
            local0[6] = 0
            local0[7] = 28
            local0[8] = 0
            local0[9] = 9
            local0[11] = 54
        end
        if arg0:GetNumber(2) == 1 then
            local0[2] = 0
            local0[3] = 0
            local0[6] = 0
            local0[7] = 30
            local0[8] = 0
            local0[9] = 0
            local0[11] = 70
        end
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer212020_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer212020_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer212020_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer212020_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer212020_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer212020_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer212020_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer212020_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer212020_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer212020_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer212020_Act11)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer212020_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.9 - local0
local0 = 4 - local0
function DarkBrigade_OrbAndHammer212020_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, UPVAL1 + 1, 0)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
function DarkBrigade_OrbAndHammer212020_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg0:SetNumber(2, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.6 - local0
function DarkBrigade_OrbAndHammer212020_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.4 - local0
local0 = 3.9 - local0
function DarkBrigade_OrbAndHammer212020_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, UPVAL1 + 1, 0)
    end
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.8 - local0
function DarkBrigade_OrbAndHammer212020_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local11
function DarkBrigade_OrbAndHammer212020_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    if local0 <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif local2 <= local0 then
        Approach_Act(arg0, arg1, local2, 30, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    if arg0:GetNpcThinkParamID() == 212620 then
        GetWellSpace_Odds = 0
    end
    return GetWellSpace_Odds
end

local0 = local13
local0 = 4.1 - local0
function DarkBrigade_OrbAndHammer212020_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1 + 1
    local local3 = UPVAL0
    if local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif local3 <= local0 then
        Approach_Act(arg0, arg1, local3, 30, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    if arg0:GetNpcThinkParamID() == 212620 then
        GetWellSpace_Odds = 0
    end
    return GetWellSpace_Odds
end

local0 = 4.6 - local0
function DarkBrigade_OrbAndHammer212020_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.9 - local0
function DarkBrigade_OrbAndHammer212020_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkBrigade_OrbAndHammer212020_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Float(1, 2)
    local local2 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 4, 2)
    local local3 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 4, 2)
    local local4 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 4, 2)
    if arg0:GetDist(TARGET_ENE_0) <= 2.5 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if local4 == false and local2 == false then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), false, true, -1)
            elseif local4 == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        elseif local3 == false and local2 == false then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), false, true, -1)
        elseif local3 == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), false, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), false, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkBrigade_OrbAndHammer212020_Act11(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 2.5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    arg0:SetNumber(2, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkBrigade_OrbAndHammer212020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DarkBrigade_OrbAndHammer212020_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Float(2.5, 3.5)
    if arg0:GetDist(TARGET_ENE_0) <= 3.5 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local0 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local0 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local0 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function DarkBrigade_OrbAndHammer212020Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DarkBrigade_OrbAndHammer212020Battle_Terminate(arg0, arg1)
    return 
end

function DarkBrigade_OrbAndHammer212020Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    if arg0:IsInterupt(INTERUPT_Damaged) and arg0:GetRandam_Int(1, 100) <= 40 and arg0:HasSpecialEffectId(TARGET_SELF, 5659) == false then
        arg1:ClearSubGoal()
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if right ~= false or back ~= false then
                if right == false then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                end
            end
        elseif left ~= false or back ~= false then
            if left == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        end
        return true
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetDist(TARGET_ENE_0)
    local local7 = Shoot_2dist(arg0, arg1, 4, 20, 50, 80)
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
    return false
end

return 
