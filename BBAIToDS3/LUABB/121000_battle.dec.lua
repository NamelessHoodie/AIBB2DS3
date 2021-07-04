local local0 = 0.5
local local1 = 0.7 - local0
local local2 = 0.7 - local0
local local3 = 0.7 - local0
local local4 = 0.7 - local0
local local5 = 2.2 - local0
local local6 = 0.7 - local0
local local7 = 0.7 - local0
local local8 = 5.5 - local0
local local9 = 0.7 - local0
local local10 = 0.7 - local0
local local11 = 0.7 - local0
local local12 = 0.7 - local0
local local13 = 0.7 - local0
local local14 = 0.7 - local0
local local15 = 0.7 - local0
local local16 = 0.7 - local0
local local17 = 0.7 - local0
local local18 = 0.7 - local0
function OnIf_121000(arg0, arg1, arg2)
    if arg2 == 0 then
        GravekeeperScorpion121000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function GravekeeperScorpion121000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local7 = arg0:GetNumber(0)
    if local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[11] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[5] = 20
        local0[11] = 80
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[19] = 100
    elseif arg0:GetNpcThinkParamID() == 121001 or arg0:GetNpcThinkParamID() == 121011 or arg0:GetNpcThinkParamID() == 121081 or arg0:GetNpcThinkParamID() == 121091 then
        if 5.5 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[4] = 25
            local0[5] = 0
            local0[6] = 0
            local0[7] = 25
            local0[11] = 50
            if arg0:GetNpcThinkParamID() == 121010 or arg0:GetNpcThinkParamID() == 121011 or arg0:GetNpcThinkParamID() == 121090 or arg0:GetNpcThinkParamID() == 121091 then
                local0[1] = 10
                local0[2] = 35
                local0[4] = 25
                local0[5] = 10
                local0[6] = 5
                local0[7] = 15
                local0[11] = 0
            end
        elseif 4 <= local3 then
            local0[4] = 30
            local0[5] = 0
            local0[6] = 0
            local0[7] = 30
            local0[11] = 40
            if arg0:GetNpcThinkParamID() == 121010 or arg0:GetNpcThinkParamID() == 121011 or arg0:GetNpcThinkParamID() == 121090 or arg0:GetNpcThinkParamID() == 121091 then
                local0[4] = 80
                local0[5] = 10
                local0[6] = 0
                local0[7] = 10
                local0[11] = 0
            end
        elseif 2 <= local3 then
            local0[1] = 10
            local0[2] = 35
            local0[3] = 25
            local0[4] = 0
            local0[5] = 0
            local0[6] = 15
            local0[7] = 15
            if arg0:GetNpcThinkParamID() == 121010 or arg0:GetNpcThinkParamID() == 121011 or arg0:GetNpcThinkParamID() == 121090 or arg0:GetNpcThinkParamID() == 121091 then
                local0[1] = 10
                local0[2] = 35
                local0[3] = 25
                local0[4] = 15
                local0[5] = 0
                local0[6] = 0
                local0[7] = 15
            end
        else
            local0[1] = 10
            local0[2] = 45
            local0[3] = 30
            local0[6] = 10
            local0[7] = 5
        end
    elseif 7 <= local3 then
        local0[1] = 20
        local0[4] = 40
        local0[5] = 0
        local0[6] = 0
        local0[7] = 40
        local0[11] = 0
        if arg0:GetNpcThinkParamID() == 121010 or arg0:GetNpcThinkParamID() == 121011 or arg0:GetNpcThinkParamID() == 121090 or arg0:GetNpcThinkParamID() == 121091 then
            local0[1] = 50
            local0[4] = 18
            local0[5] = 15
            local0[6] = 0
            local0[7] = 17
            local0[11] = 0
        end
    elseif 5.5 <= local3 then
        local0[1] = 40
        local0[4] = 30
        local0[5] = 0
        local0[6] = 0
        local0[7] = 30
        local0[11] = 0
        if arg0:GetNpcThinkParamID() == 121010 or arg0:GetNpcThinkParamID() == 121011 or arg0:GetNpcThinkParamID() == 121090 or arg0:GetNpcThinkParamID() == 121091 then
            local0[1] = 50
            local0[4] = 18
            local0[5] = 15
            local0[6] = 0
            local0[7] = 17
            local0[11] = 0
        end
    elseif 4 <= local3 then
        local0[4] = 35
        local0[5] = 0
        local0[6] = 0
        local0[7] = 35
        local0[11] = 30
        if arg0:GetNpcThinkParamID() == 121010 or arg0:GetNpcThinkParamID() == 121011 or arg0:GetNpcThinkParamID() == 121090 or arg0:GetNpcThinkParamID() == 121091 then
            local0[4] = 40
            local0[5] = 20
            local0[6] = 0
            local0[7] = 40
            local0[11] = 0
        end
    elseif 2 <= local3 then
        local0[1] = 25
        local0[3] = 25
        local0[4] = 20
        local0[5] = 0
        local0[6] = 10
        local0[7] = 20
        if arg0:GetNpcThinkParamID() == 121010 or arg0:GetNpcThinkParamID() == 121011 or arg0:GetNpcThinkParamID() == 121090 or arg0:GetNpcThinkParamID() == 121091 then
            local0[1] = 50
            local0[3] = 20
            local0[4] = 5
            local0[5] = 0
            local0[6] = 20
            local0[7] = 5
        end
    else
        local0[1] = 20
        local0[3] = 25
        local0[4] = 25
        local0[5] = 0
        local0[6] = 15
        local0[7] = 25
        if arg0:GetNpcThinkParamID() == 121010 or arg0:GetNpcThinkParamID() == 121011 or arg0:GetNpcThinkParamID() == 121090 or arg0:GetNpcThinkParamID() == 121091 then
            local0[1] = 20
            local0[3] = 20
            local0[4] = 20
            local0[5] = 0
            local0[6] = 20
            local0[7] = 20
        end
    end
    if local7 == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if local7 == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if local7 == 3 and 0 < local0[3] then
        local0[3] = 1
    end
    if local7 == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if local7 == 5 and 0 < local0[5] then
        local0[5] = 1
    end
    if local7 == 6 and 0 < local0[6] then
        local0[6] = 1
    end
    if local7 == 7 and 0 < local0[7] then
        local0[7] = 1
    end
    if local7 == 11 and 0 < local0[11] then
        local0[11] = 1
    end
    local1[1] = REGIST_FUNC(arg0, arg1, GravekeeperScorpion121000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, GravekeeperScorpion121000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, GravekeeperScorpion121000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, GravekeeperScorpion121000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, GravekeeperScorpion121000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, GravekeeperScorpion121000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, GravekeeperScorpion121000_Act07)
    local1[11] = REGIST_FUNC(arg0, arg1, GravekeeperScorpion121000_Act11)
    local1[19] = REGIST_FUNC(arg0, arg1, GravekeeperScorpion121000_Act19)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, GravekeeperScorpion121000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.1 - local0
local0 = 1.7 - local0
local0 = 3.2 - local0
local0 = 2.4 - local0
local0 = 2 - local0
local0 = 1.9 - local0
function GravekeeperScorpion121000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL1 + 1
    local local4 = UPVAL2 + 1
    local local5 = UPVAL0
    if arg0:GetNpcThinkParamID() == 121001 or arg0:GetNpcThinkParamID() == 121011 or arg0:GetNpcThinkParamID() == 121081 or arg0:GetNpcThinkParamID() == 121091 then
        local2 = UPVAL3 + 0.5
        local3 = UPVAL4 + 0.5
        local4 = UPVAL5 + 0.5
        local5 = UPVAL3
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, local5 + 1, 2)
    Approach_Act(arg0, arg1, local5, 0, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local4, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.4 - local0
local0 = 3.9 - local0
function GravekeeperScorpion121000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, local2 + 1, 2)
    Approach_Act(arg0, arg1, local2, 0, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, UPVAL1 + 1, 0)
    arg0:SetNumber(0, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local5
local0 = 1.6 - local0
function GravekeeperScorpion121000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if arg0:GetNpcThinkParamID() == 121001 or arg0:GetNpcThinkParamID() == 121011 or arg0:GetNpcThinkParamID() == 121081 or arg0:GetNpcThinkParamID() == 121091 then
        local1 = UPVAL1 + 0.5
        local2 = UPVAL1
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, local2 + 1, 2)
    Approach_Act(arg0, arg1, local2, 0, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local1, 0, 0)
    arg0:SetNumber(0, 3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.1 - local0
local0 = 5.4 - local0
function GravekeeperScorpion121000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if arg0:GetNpcThinkParamID() == 121001 or arg0:GetNpcThinkParamID() == 121011 or arg0:GetNpcThinkParamID() == 121081 or arg0:GetNpcThinkParamID() == 121091 then
        local1 = UPVAL1 + 0.5
        local2 = UPVAL1
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, local2 + 1, 2)
    Approach_Act(arg0, arg1, local2, 0, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local1, 0, 0)
    arg0:SetNumber(0, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
function GravekeeperScorpion121000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, local1 + 1, 2)
    Approach_Act(arg0, arg1, local1, 0, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.5 - local0
function GravekeeperScorpion121000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, local1 + 1, 2)
    Approach_Act(arg0, arg1, local1, 0, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.7 - local0
local0 = 4.7 - local0
function GravekeeperScorpion121000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if arg0:GetNpcThinkParamID() == 121001 or arg0:GetNpcThinkParamID() == 121011 or arg0:GetNpcThinkParamID() == 121081 or arg0:GetNpcThinkParamID() == 121091 then
        local1 = UPVAL1 + 0.5
        local2 = UPVAL1
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, local2 + 1, 2)
    Approach_Act(arg0, arg1, local2, 0, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, local1, 0, 0)
    arg0:SetNumber(0, 7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function GravekeeperScorpion121000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(0, 1)
    local local2 = 703
    local local3 = AI_DIR_TYPE_R
    local local4 = AI_DIR_TYPE_R
    if local1 == 0 then
        local2 = 702
        local3 = AI_DIR_TYPE_L
    end
    if local1 == 0 then
        local2 = 702
        local4 = AI_DIR_TYPE_L
    end
    if 10 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
    end
    if 4 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local2, TARGET_ENE_0, 0, local3, 4)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, local4, 4)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
    end
    arg0:SetNumber(0, 11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local5
function GravekeeperScorpion121000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GravekeeperScorpion121000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function GravekeeperScorpion121000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(1.5, 2.5)
    local local3 = arg0:GetRandam_Float(1, 2)
    if 121010 <= arg0:GetNpcThinkParamID() then
        if local0 <= 2 then
            if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) or local1 > 50 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) then
                    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
                    else
                        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
                    end
                elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
                end
            end
        elseif local0 <= 4 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        end
    elseif local0 <= 2 then
        if local1 > 50 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            end
        end
    elseif local0 <= 4 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and local1 > 50 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    end
    return 
end

function GravekeeperScorpion121000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function GravekeeperScorpion121000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local8
function GravekeeperScorpion121000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(0, 1)
    if arg0:IsInterupt(INTERUPT_UseItem) and local0 <= 70 then
        arg1:ClearSubGoal()
        Approach_Act(arg0, arg1, Att3013_Dist_max, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, Att3013_Dist_max + 1, 0, -1)
        return true
    elseif arg0:IsInterupt(INTERUPT_Damaged) and local0 <= 40 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
        end
        return true
    elseif arg0:IsInterupt(INTERUPT_GuardBreak) and local0 <= 60 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
        return true
    end
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetDist(TARGET_ENE_0)
    local local8 = Shoot_2dist(arg0, arg1, 6, 20, 40, 60)
    if local8 == 1 then
        if local6 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
        end
    elseif local8 == 2 then
        if local6 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
        end
        return true
    end
    return false
end

return 
