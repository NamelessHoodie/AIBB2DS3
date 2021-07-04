local local0 = 0.9
local local1 = 0.9 - local0
local local2 = 0.9 - local0
local local3 = 0.9 - local0
local local4 = 0.9 - local0
local local5 = 0.9 - local0
local local6 = 3 - local0
local local7 = 0.9 - local0
local local8 = 0.9 - local0
local local9 = 4.3 - local0
local local10 = 0.9 - local0
local local11 = 0.9 - local0
local local12 = 3 - local0
local local13 = 0.9 - local0
local local14 = 0.9 - local0
local local15 = 0.9 - local0
local local16 = 0.9 - local0
local local17 = 0.9 - local0
local local18 = 0.9 - local0
local local19 = 0.9 - local0
function OnIf_127000(arg0, arg1, arg2)
    if arg2 == 0 then
        VampireHogs127000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function VampireHogs127000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    if arg0:GetNumber(0) == 0 then
        local0[9] = 100
    elseif arg0:GetNpcThinkParamID() == 127090 then
        if local6 <= 0.5 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) == false then
            local0[12] = 100
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
            local0[19] = 100
        elseif local6 <= 0.5 then
            if 10 <= local3 then
                local0[1] = 50
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 50
                local0[8] = 0
                local0[9] = 0
                local0[11] = 0
            elseif 4.9 <= local3 then
                local0[1] = 40
                local0[2] = 40
                local0[3] = 0
                local0[4] = 0
                local0[5] = 10
                local0[6] = 0
                local0[7] = 10
                local0[8] = 0
                local0[9] = 0
                local0[11] = 0
            else
                local0[1] = 10
                local0[2] = 0
                local0[3] = 20
                local0[4] = 5
                local0[5] = 5
                local0[6] = 20
                local0[7] = 0
                local0[8] = 0
                local0[9] = 0
                local0[10] = 15
                local0[11] = 25
            end
        elseif 10 <= local3 then
            local0[1] = 50
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 50
            local0[8] = 0
            local0[9] = 0
            local0[11] = 0
        elseif 4.9 <= local3 then
            local0[1] = 0
            local0[2] = 50
            local0[3] = 0
            local0[4] = 0
            local0[5] = 50
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0
            local0[9] = 0
            local0[11] = 0
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 20
            local0[4] = 10
            local0[5] = 10
            local0[6] = 20
            local0[7] = 0
            local0[8] = 0
            local0[9] = 0
            local0[10] = 15
            local0[11] = 25
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[19] = 100
    elseif 10 <= local3 then
        local0[1] = 50
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 50
        local0[8] = 0
        local0[9] = 0
    elseif 4.9 <= local3 then
        local0[1] = 0
        local0[2] = 50
        local0[3] = 0
        local0[4] = 0
        local0[5] = 50
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 25
        local0[4] = 15
        local0[5] = 15
        local0[6] = 25
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 20
    end
    local1[1] = REGIST_FUNC(arg0, arg1, VampireHogs127000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, VampireHogs127000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, VampireHogs127000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, VampireHogs127000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, VampireHogs127000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, VampireHogs127000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, VampireHogs127000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, VampireHogs127000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, VampireHogs127000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, VampireHogs127000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, VampireHogs127000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, VampireHogs127000_Act12)
    local1[19] = REGIST_FUNC(arg0, arg1, VampireHogs127000_Act19)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, VampireHogs127000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 25 - local0
local0 = 25 - local0
function VampireHogs127000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0
    if 60 <= local0 then
        local3 = UPVAL1
        local2 = UPVAL1 + 1
    end
    if local3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local3, UPVAL0 + 999, 0, 3)
    end
    if local0 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 7, 3000, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 7, 3001, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.9 - local0
function VampireHogs127000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.5 - local0
local0 = local12
function VampireHogs127000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, 3005, TARGET_ENE_0, local1, 0, 0)
    if local0 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4.5, 3008, TARGET_ENE_0, UPVAL1 + 1, 0, 0)
    elseif local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, 3005, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local9
function VampireHogs127000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7 - local0
function VampireHogs127000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.3 - local0
local0 = 4.3 - local0
function VampireHogs127000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL0 + 999, 0, 3)
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local2 = UPVAL1
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3011, TARGET_ENE_0, UPVAL1 + 1, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3010, TARGET_ENE_0, AttDist1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 25 - local0
function VampireHogs127000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 7, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
function VampireHogs127000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 40 - local0
function VampireHogs127000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.2 - local0
function VampireHogs127000_Act10(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    if arg0:GetNpcThinkParamID() == 127600 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3015, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3014, TARGET_ENE_0, local0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.2 - local0
function VampireHogs127000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function VampireHogs127000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3018, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = 3 - local0
local0 = local9
local0 = 3.2 - local0
function VampireHogs127000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL2 + 1
    local local3 = UPVAL3 + 1
    if local0 <= 5 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            if arg0:GetNpcThinkParamID() == 127090 and local0 <= local3 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, local3, 0, 0)
            elseif 40 <= local1 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), 10, true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            if 50 <= local1 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, 0)
            end
        elseif 50 <= local1 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL1 + 1, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function VampireHogs127000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function VampireHogs127000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if 6.5 > local0 then
        if 4 <= local0 then
            if local1 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, true, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, true, -1)
            if local1 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 4), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), 180, true, true, -1)
            end
        end
    end
    return 
end

function VampireHogs127000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function VampireHogs127000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local6
function VampireHogs127000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        if arg0:IsInterupt(INTERUPT_UseItem) and local0 <= 70 then
            arg1:ClearSubGoal()
            Approach_Act(arg0, arg1, UPVAL0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
            return true
        elseif arg0:IsInterupt(INTERUPT_Damaged) and arg0:GetDist(TARGET_ENE_0) <= 3 and local0 <= 20 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
            return true
        elseif FindAttack_Step(arg0, arg1, 3, 20, 100, 0, 0, 4) then
            return true
        else
            return false
        end
    end
end

return 
