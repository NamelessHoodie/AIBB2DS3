local local0 = 0.6
local local1 = 7.6 - local0 + 2
local local2 = 1.2 - local0
local local3 = 3 - local0 + 0.5
local local4 = 1.2 - local0
local local5 = 7.9 - local0 + 2
local local6 = 1.2 - local0
local local7 = 2.7 - local0 + 0.5
local local8 = 1.2 - local0
local local9 = 2.5 - local0 + 0.5
local local10 = 8 - local0
local local11 = 1.2 - local0
local local12 = 9.4 - local0
local local13 = 10.9 - local0 + 2
function OnIf_114000(arg0, arg1, arg2)
    if arg2 == 0 then
        Beast_of_Fanatic114000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Beast_of_Fanatic114000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = 1
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:GetNumber(0) == 0 then
        local4 = 0
    else
        local4 = 1
    end
    if arg0:GetEventRequest() == 100 then
        local0[2] = 100
    elseif arg0:GetNumber(1) == 0 and arg0:GetNpcThinkParamID() == 114002 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) == false then
            arg1:AddSubGoal(GOAL_COMMON_Turn, 0.7, TARGET_ENE_0, 25, 0, 0)
        end
        local0[12] = 100
        arg0:SetNumber(1, 1)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5410) == true then
        local0[21] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[10] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 0
        local0[2] = 5
        local0[3] = 10
        local0[5] = 0
        local0[6] = 5
        local0[7] = 10
        local0[10] = 50
        local0[12] = 20
    elseif 4.5 <= arg0:GetDistYSigned(TARGET_ENE_0) and arg0:GetDistXZ(TARGET_ENE_0) <= 9 then
        local0[13] = 100
    elseif arg0:IsInsideTargetRegion(TARGET_ENE_0, 2404318) == true and arg0:IsInsideTargetRegion(TARGET_SELF, 2404319) == true then
        local0[13] = 100
    elseif not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        if local3 <= 2 and arg0:GetRandam_Int(1, 100) <= 80 then
            local0[9] = 100
        else
            local0[20] = 100
        end
    elseif 12 + 1 <= local3 then
        local0[1] = 0
        local0[2] = 35
        local0[3] = 0
        local0[5] = 35
        local0[6] = 0
        local0[7] = 0
        local0[11] = 30 * local4
    elseif 5.6 + 2 <= local3 then
        local0[1] = 0
        local0[2] = 10
        local0[3] = 0
        local0[5] = 10
        local0[6] = 0
        local0[7] = 70
        local0[11] = 10 * local4
    elseif 3.6 + 1 <= local3 then
        local0[1] = 0
        local0[2] = 40
        local0[3] = 40
        local0[5] = 0
        local0[6] = 20
        local0[7] = 0
        local0[11] = 0 * local4
    elseif 1.5 + 0.5 <= local3 then
        local0[1] = 30
        local0[2] = 0
        local0[3] = 50
        local0[5] = 0
        local0[6] = 20
        local0[7] = 0
        local0[11] = 0 * local4
    else
        local0[1] = 40
        local0[2] = 0
        local0[3] = 40
        local0[5] = 0
        local0[6] = 20
        local0[7] = 0
        local0[11] = 0 * local4
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Beast_of_Fanatic114000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Beast_of_Fanatic114000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Beast_of_Fanatic114000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Beast_of_Fanatic114000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Beast_of_Fanatic114000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Beast_of_Fanatic114000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Beast_of_Fanatic114000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Beast_of_Fanatic114000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Beast_of_Fanatic114000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Beast_of_Fanatic114000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Beast_of_Fanatic114000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, Beast_of_Fanatic114000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, Beast_of_Fanatic114000_Act13)
    local1[20] = REGIST_FUNC(arg0, arg1, Beast_of_Fanatic114000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, Beast_of_Fanatic114000_Act21)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Beast_of_Fanatic114000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.7 - local0 + 0.5
local0 = 1.2 - local0
function Beast_of_Fanatic114000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = UPVAL0
    local local4 = UPVAL0 + 1
    local local5 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local4, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local4, 0, 0)
    end
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local1
local0 = 1.2 - local0
function Beast_of_Fanatic114000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    local local2 = UPVAL0
    local local3 = UPVAL0 + 2
    if arg0:GetNpcThinkParamID() == 114081 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0, 2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local3, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, 0)
    end
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

local0 = 2.4 - local0 + 0.5
local0 = 1.2 - local0
local0 = local9
local0 = local8
function Beast_of_Fanatic114000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        local local1 = UPVAL1
        local local2 = UPVAL0
        if arg0:GetNpcThinkParamID() == 114081 then
            local2 = 0
        end
        Approach_Act(arg0, arg1, UPVAL0, local2, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local1 = UPVAL3
        local local2 = UPVAL2
        if arg0:GetNpcThinkParamID() == 114081 then
            local2 = 0
        end
        Approach_Act(arg0, arg1, UPVAL2, local2, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local9
local0 = local8
function Beast_of_Fanatic114000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
local0 = 1.2 - local0
function Beast_of_Fanatic114000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0
    if arg0:GetNpcThinkParamID() == 114081 then
        local3 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

local0 = 1.8 - local0 + 0.5
local0 = 1.2 - local0
function Beast_of_Fanatic114000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0
    if arg0:GetNpcThinkParamID() == 114081 then
        local3 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 11.9 - local0 + 2
local0 = 1.2 - local0
local0 = local12
local0 = local11
local0 = local13
local0 = 1.2 - local0
function Beast_of_Fanatic114000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) then
        if arg0:GetRandam_Int(1, 100) <= 60 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                local local1 = UPVAL1
                local local2 = UPVAL0
                if arg0:GetNpcThinkParamID() == 114081 then
                    local2 = 0
                end
                Approach_Act(arg0, arg1, UPVAL0, local2, 0, 2)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 1, 10)
            else
                local local1 = UPVAL3
                local local2 = UPVAL2
                if arg0:GetNpcThinkParamID() == 114081 then
                    local2 = 0
                end
                Approach_Act(arg0, arg1, UPVAL2, local2, 0, 2)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL2 + 1, 1, 10)
            end
        else
            local local1 = UPVAL5
            local local2 = UPVAL4
            if arg0:GetNpcThinkParamID() == 114081 then
                local2 = 0
            end
            Approach_Act(arg0, arg1, UPVAL4, local2, 0, 2)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, UPVAL4 + 1, 1, 10)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 0.7, TARGET_ENE_0, 70, 0, 0)
    end
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function Beast_of_Fanatic114000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 1, 10)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Beast_of_Fanatic114000_Act09(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Beast_of_Fanatic114000_Act10(arg0, arg1, arg2)
    Gather_Act(arg0, arg1, 0, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Beast_of_Fanatic114000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Beast_of_Fanatic114000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 15, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Beast_of_Fanatic114000_Act13(arg0, arg1, arg2)
    if arg0:GetDistXZ(TARGET_ENE_0) <= 4.5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Beast_of_Fanatic114000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 0.7, TARGET_ENE_0, 40, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local1
local0 = local10
local0 = local13
function Beast_of_Fanatic114000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 12 + 2
    if arg0:GetDist(TARGET_ENE_0) < local3 then
        if local0 <= 30 then
            Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 0, 0, 0)
        elseif local0 <= 60 then
            Approach_Act(arg0, arg1, UPVAL1, UPVAL1, 0, 2)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 0, 0, 0)
        else
            Approach_Act(arg0, arg1, UPVAL2, UPVAL2, 0, 2)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 0, 0, 0)
        end
        arg0:SetNumber(0, 1)
    else
        if local0 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, 0, 0)
        elseif local0 <= 85 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 15, 0, 0)
        end
        arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Beast_of_Fanatic114000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Beast_of_Fanatic114000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 2.5)
    local local5 = arg0:GetRandam_Float(2, 2.5)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if local0 <= 1.8 then
            if local1 <= 10 then
                if local2 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 4)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 4)
                end
            elseif local1 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
                if local2 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 4)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 4)
                end
            elseif local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
            elseif local1 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 15, 0, 0)
            end
        elseif local0 <= 3.5 then
            if local1 <= 20 then
                if local2 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 4)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 4)
                end
            elseif local1 <= 35 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
                if local2 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 4)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 4)
                end
            elseif local1 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
            elseif local1 <= 85 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 15, 0, 0)
            end
        elseif local0 <= 5.6 then
            if local1 <= 50 then
                if local2 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 4)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 4)
                end
            elseif local1 <= 65 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
                if local2 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 4)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 4)
                end
            elseif local1 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
            end
        elseif local1 <= 30 then
            if local2 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 4)
            end
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_KeepDist, 3, TARGET_ENE_0, 6, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, MoveTime, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_KeepDist, 3, TARGET_ENE_0, 6, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, MoveTime, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    end
    return 
end

function Beast_of_Fanatic114000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Beast_of_Fanatic114000Battle_Terminate(arg0, arg1)
    return 
end

function Beast_of_Fanatic114000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg0:IsInsideObserve(1) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(1)
            arg0:Replaning()
            return true
        elseif arg0:IsInsideObserve(2) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(2)
            arg0:Replaning()
            return true
        elseif arg0:IsInsideObserve(3) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(3)
            arg0:Replaning()
            return true
        end
        arg0:Replaning()
    else
        if Damaged_Step(arg0, arg1, 3, 15, 40, 30, 30, 4) then
            return true
        end
        local local4 = arg0:GetRandam_Int(1, 100)
        local local5 = arg0:GetRandam_Int(1, 100)
        local local6 = arg0:GetDist(TARGET_ENE_0)
        local local7 = Shoot_2dist(arg0, arg1, 6, 20, 15, 30)
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
        if RebByOpGuard_Step(arg0, arg1, 10, 30, 35, 35, 4) then
            return true
        else
            return false
        end
    end
end

return 
