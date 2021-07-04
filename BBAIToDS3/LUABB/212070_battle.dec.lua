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
local local10 = 0.5 - local0
local local11 = 1.5 - local0
local local12 = 0.5 - local0
local local13 = 0.5 - local0
function OnIf_212070(arg0, arg1, arg2)
    if arg2 == 0 then
        DarkBrigade_OrbAndHammer_Boss212070_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DarkBrigade_OrbAndHammer_Boss212070Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest(0)
    local local5 = arg0:GetEventRequest(1)
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetHpRate(TARGET_SELF)
    local local8 = arg0:GetTeamRecordCount(COORDINATE_TYPE_Attack, TARGET_ENE_0, 20)
    local local9 = arg0:GetTeamRecordCount(COORDINATE_TYPE_AttackOrder, TARGET_ENE_0, 20)
    local local10 = 1
    if local5 == 30 then
        local10 = 0
    else
        local10 = 1
    end
    if local5 == 50 then
        local0[12] = 100
    elseif local4 == 50 then
        local0[16] = 100
    elseif local4 == 40 then
        local0[17] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[10] = 100
    elseif local5 == 20 then
        if 8 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 15
            local0[7] = 65
            local0[8] = 0
            local0[9] = 0
            local0[11] = 20
            local0[17] = 0
        elseif 5 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 20
            local0[7] = 60
            local0[8] = 0
            local0[9] = 0
            local0[11] = 20
            local0[17] = 0
        elseif 2 <= local3 then
            local0[1] = 0
            local0[2] = 5
            local0[3] = 5
            local0[4] = 0
            local0[5] = 0
            local0[6] = 20
            local0[7] = 40
            local0[8] = 10
            local0[9] = 5
            local0[11] = 15
            local0[17] = 0
        else
            local0[1] = 0
            local0[2] = 5
            local0[3] = 5
            local0[4] = 5
            local0[5] = 0
            local0[6] = 15
            local0[7] = 30
            local0[8] = 13
            local0[9] = 12
            local0[11] = 15
            local0[17] = 0
        end
    elseif local5 == 10 or local5 == 30 then
        if 8 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 10
            local0[6] = 20
            local0[7] = 60
            local0[8] = 0
            local0[9] = 0
            local0[17] = 10
            local0[19] = 100 * local10
        elseif 5 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 8
            local0[6] = 20
            local0[7] = 60
            local0[8] = 5
            local0[9] = 0
            local0[17] = 7
            local0[19] = 100 * local10
        elseif 2 <= local3 then
            local0[1] = 0
            local0[2] = 5
            local0[3] = 5
            local0[4] = 10
            local0[5] = 0
            local0[6] = 15
            local0[7] = 50
            local0[8] = 10
            local0[9] = 5
            local0[17] = 5
            local0[19] = 100 * local10
        else
            local0[1] = 5
            local0[2] = 5
            local0[3] = 5
            local0[4] = 20
            local0[5] = 0
            local0[6] = 15
            local0[7] = 30
            local0[8] = 15
            local0[9] = 5
            local0[17] = 0
            local0[19] = 0 * local10
        end
    elseif 8 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[7] = 75
        local0[8] = 0
        local0[9] = 0
        local0[11] = 25
    elseif 5 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[7] = 75
        local0[8] = 0
        local0[9] = 0
        local0[11] = 25
    elseif 2 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[7] = 60
        local0[8] = 5
        local0[9] = 5
        local0[11] = 30
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[7] = 35
        local0[8] = 10
        local0[9] = 5
        local0[11] = 50
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5635) then
        local0[6] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_Act12)
    local1[16] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_Act17)
    local1[19] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_Act19)
    local1[20] = REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DarkBrigade_OrbAndHammer_Boss212070_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.9 - local0
local0 = 4 - local0
function DarkBrigade_OrbAndHammer_Boss212070_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 30, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, UPVAL1 + 1, 0)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
function DarkBrigade_OrbAndHammer_Boss212070_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 30, 0, 3)
    end
    arg0:SetNumber(2, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.6 - local0
function DarkBrigade_OrbAndHammer_Boss212070_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 30, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.4 - local0
local0 = 3.9 - local0
function DarkBrigade_OrbAndHammer_Boss212070_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 30, 0, 3)
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
function DarkBrigade_OrbAndHammer_Boss212070_Act05(arg0, arg1, arg2)
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

local0 = 15 - local0
function DarkBrigade_OrbAndHammer_Boss212070_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0
    if local0 <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif local3 <= local0 then
        Approach_Act(arg0, arg1, local3, 30, 0, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5538) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, local2, 0, 0)
    end
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 15 - local0
local0 = 4.1 - local0
function DarkBrigade_OrbAndHammer_Boss212070_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL1 + 1
    local local4 = UPVAL0
    if local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif local4 <= local0 then
        Approach_Act(arg0, arg1, local4, 30, 0, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5538) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, local2, 0, 0)
    end
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.6 - local0
function DarkBrigade_OrbAndHammer_Boss212070_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 30, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.9 - local0
function DarkBrigade_OrbAndHammer_Boss212070_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 30, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkBrigade_OrbAndHammer_Boss212070_Act10(arg0, arg1, arg2)
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

function DarkBrigade_OrbAndHammer_Boss212070_Act11(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 2.5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
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

function DarkBrigade_OrbAndHammer_Boss212070_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkBrigade_OrbAndHammer_Boss212070_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), 360, true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 7.3 - local0
function DarkBrigade_OrbAndHammer_Boss212070_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 20, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkBrigade_OrbAndHammer_Boss212070_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, AttDist1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkBrigade_OrbAndHammer_Boss212070_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3037, TARGET_ENE_0, AttDist1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkBrigade_OrbAndHammer_Boss212070_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DarkBrigade_OrbAndHammer_Boss212070_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetDist(TARGET_FRI_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(1, 1.5)
    local local5 = arg0:GetRandam_Float(3.5, 4.5)
    if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_B, 180) then
        if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if local0 <= 1.5 then
            if local2 <= 100 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
            end
        elseif local0 <= 3.5 then
            if local2 <= 100 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
            end
        elseif local0 <= 5.5 then
            if local2 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(45, 60), true, true, -1)
            end
        elseif local0 <= 8.5 then
            if local2 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(45, 60), true, true, -1)
            elseif local2 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
            end
        elseif local2 <= 85 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 15, TARGET_SELF, false, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    end
    return 
end

function DarkBrigade_OrbAndHammer_Boss212070Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DarkBrigade_OrbAndHammer_Boss212070Battle_Terminate(arg0, arg1)
    return 
end

function DarkBrigade_OrbAndHammer_Boss212070Battle_Interupt(arg0, arg1)
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
