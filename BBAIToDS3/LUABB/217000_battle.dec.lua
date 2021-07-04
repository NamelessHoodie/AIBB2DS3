local local0 = 0.3
local local1 = 0.3 - local0
local local2 = 0.3 - local0
local local3 = 0.3 - local0
local local4 = 0.3 - local0
local local5 = 0.4 - local0
local local6 = 3.5 - local0
local local7 = 0.4 - local0
local local8 = 3.3 - local0
local local9 = 0 - local0
local local10 = 0 - local0
local local11 = 4.9 - local0
local local12 = 0 - local0
local local13 = 0.3 - local0
local local14 = 4.3 - local0
local local15 = 0.4 - local0
local local16 = 5.6 - local0
local local17 = 0.3 - local0
local local18 = 4.2 - local0
local local19 = 3.7 - local0
local local20 = 3.5 - local0
local local21 = 3 - local0
local local22 = 0.4 - local0
function OnIf_217000(arg0, arg1, arg2)
    if arg2 == 0 then
        EmissaryFromSnakeMarsh217000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function EmissaryFromSnakeMarsh217000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        if local3 <= 2.4 and arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
            local0[3] = 30
            local0[19] = 70
        else
            local0[19] = 100
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
        if 8 <= local3 then
            local0[1] = 5
            local0[2] = 15
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 15
            local0[7] = 15
            local0[8] = 20
            local0[9] = 30
            local0[10] = 0
            local0[11] = 0
            local0[12] = 0
            local0[13] = 0
        elseif 4 <= local3 then
            local0[1] = 15
            local0[2] = 15
            local0[3] = 5
            local0[4] = 5
            local0[5] = 5
            local0[6] = 5
            local0[7] = 5
            local0[8] = 15
            local0[9] = 15
            local0[10] = 0
            local0[11] = 0
            local0[13] = 20
        else
            local0[1] = 20
            local0[2] = 15
            local0[3] = 10
            local0[4] = 5
            local0[5] = 5
            local0[6] = 0
            local0[7] = 0
            local0[8] = 20
            local0[9] = 0
            local0[10] = 0
            local0[11] = 0
            local0[13] = 25
        end
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[13] = 0
        local0[14] = 100
        local0[15] = 0
        local0[16] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act16)
    local1[19] = REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_Act19)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, EmissaryFromSnakeMarsh217000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.3 - local0
function EmissaryFromSnakeMarsh217000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local2 = 999
    else
        local2 = UPVAL0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.5 - local0
function EmissaryFromSnakeMarsh217000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local2 = 999
    else
        local2 = UPVAL0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.7 - local0
function EmissaryFromSnakeMarsh217000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL0
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4 - local0
function EmissaryFromSnakeMarsh217000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local2 = 999
    else
        local2 = UPVAL0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
local0 = local8
local0 = local11
function EmissaryFromSnakeMarsh217000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL1 + 1
    local local3 = UPVAL0
    local local4 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local4 = 999
    else
        local4 = UPVAL0
    end
    if local3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local3, local4, 0, 3)
    end
    if local0 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local1, 0, 0)
    elseif local0 <= 55 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3004, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3005, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3004, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 30, 3005, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3007, TARGET_ENE_0, UPVAL2 + 1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.9 - local0
function EmissaryFromSnakeMarsh217000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local2 = 999
    else
        local2 = UPVAL0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.8 - local0
function EmissaryFromSnakeMarsh217000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local2 = 999
    else
        local2 = UPVAL0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local14
function EmissaryFromSnakeMarsh217000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 999
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local2 = 999
    else
        local2 = UPVAL0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
local0 = local18
function EmissaryFromSnakeMarsh217000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL0, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3010, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3011, TARGET_ENE_0, UPVAL1 + 1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 13 - local0
function EmissaryFromSnakeMarsh217000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 999
    if arg0:GetRandam_Int(1, 100) <= 70 then
        local2 = 999
    else
        local2 = UPVAL0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 12.9 - local0
function EmissaryFromSnakeMarsh217000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.7 - local0
function EmissaryFromSnakeMarsh217000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 13 - local0
function EmissaryFromSnakeMarsh217000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = 999
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EmissaryFromSnakeMarsh217000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 999
    local local4 = 999
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = local6
local0 = local8
local0 = local11
function EmissaryFromSnakeMarsh217000_Act15(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL2 + 1
    local local2 = UPVAL0
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local3 = 999
    else
        local3 = UPVAL0
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local3, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3004, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3005, TARGET_ENE_0, UPVAL1 + 1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
local0 = local18
function EmissaryFromSnakeMarsh217000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1 + 1
    local local3 = UPVAL0
    if local3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local3, UPVAL0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function EmissaryFromSnakeMarsh217000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
        end
    elseif local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EmissaryFromSnakeMarsh217000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function EmissaryFromSnakeMarsh217000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
        if arg0:GetDist(TARGET_ENE_0) <= 2.2 and local0 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, AttDist, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 4, TARGET_ENE_0, false, -1)
        end
    elseif local0 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, bRight, arg0:GetRandam_Int(45, 60), true, true, -1)
    end
    return 
end

function EmissaryFromSnakeMarsh217000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function EmissaryFromSnakeMarsh217000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local14
function EmissaryFromSnakeMarsh217000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_UseItem) and local0 <= 70 then
        arg1:ClearSubGoal()
        Approach_Act(arg0, arg1, UPVAL0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
        return true
    elseif arg0:IsInterupt(INTERUPT_Damaged) then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5656) == true and local0 <= 10 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true and local0 <= 25 then
            if arg0:GetDist(TARGET_ENE_0) <= 2.5 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, AttDist, 0, 0)
            else
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
            end
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5656) == false and arg0:HasSpecialEffectId(TARGET_SELF, 5611) == false and local0 <= 30 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 999, 0, 0)
        end
        return true
    elseif FindAttack_Step(arg0, arg1, 3, 20, 100, 0, 0, 3.5) then
        return true
    end
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    local local6 = Shoot_2dist(arg0, arg1, 7, 20, 20, 40)
    if local6 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, AttDist, 0, -1)
    elseif local6 == 2 then
        if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 1, 5) == true then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 1, 5) == true then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
        return true
    end
    return false
end

return 
