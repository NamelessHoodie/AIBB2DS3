local local0 = 0.3
local local1 = 0.4 - local0
local local2 = 0.4 - local0
local local3 = 0.4 - local0
local local4 = 0.4 - local0
local local5 = 0.4 - local0
local local6 = 6 - local0
local local7 = 0.4 - local0
local local8 = 0.4 - local0
local local9 = 0.4 - local0
local local10 = 0.4 - local0
local local11 = 0.4 - local0
local local12 = 0.4 - local0
function OnIf_261010(arg0, arg1, arg2)
    if arg2 == 0 then
        CrowdWoman_Hatchet_and_Torch261010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = 2
function CrowdWoman_Hatchet_and_Torch261010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if UPVAL0 + 1 <= local3 then
            local0[10] = 100
        else
            local0[10] = 50
            local0[11] = 50
        end
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if UPVAL0 + 1 <= local3 then
            local0[10] = 100
        else
            local0[1] = 5
            local0[5] = 5
            local0[6] = 5
            local0[10] = 45
            local0[11] = 40
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local3 <= 1 and arg0:GetRandam_Int(1, 100) <= 40 then
        local0[8] = 100
    elseif 5.5 <= local3 then
        local0[1] = 10
        local0[2] = 5
        local0[3] = 50
        local0[4] = 5
        local0[5] = 5
        local0[6] = 10
        local0[7] = 5
        local0[8] = 0
        local0[11] = 10
    elseif 3.5 <= local3 then
        local0[1] = 15
        local0[2] = 10
        local0[3] = 0
        local0[4] = 5
        local0[5] = 20
        local0[6] = 35
        local0[7] = 5
        local0[8] = 0
        local0[11] = 10
    elseif 2.5 <= local3 then
        local0[1] = 15
        local0[2] = 25
        local0[3] = 0
        local0[4] = 0
        local0[5] = 15
        local0[6] = 5
        local0[7] = 30
        local0[8] = 0
        local0[11] = 10
    elseif 1.5 <= local3 then
        local0[1] = 0
        local0[2] = 10
        local0[3] = 0
        local0[4] = 30
        local0[5] = 10
        local0[6] = 0
        local0[7] = 20
        local0[8] = 30
        local0[11] = 10
    else
        local0[1] = 0
        local0[2] = 5
        local0[3] = 0
        local0[4] = 35
        local0[5] = 5
        local0[6] = 0
        local0[7] = 20
        local0[8] = 35
        local0[11] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, CrowdWoman_Hatchet_and_Torch261010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, CrowdWoman_Hatchet_and_Torch261010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, CrowdWoman_Hatchet_and_Torch261010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, CrowdWoman_Hatchet_and_Torch261010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, CrowdWoman_Hatchet_and_Torch261010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, CrowdWoman_Hatchet_and_Torch261010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, CrowdWoman_Hatchet_and_Torch261010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, CrowdWoman_Hatchet_and_Torch261010_Act08)
    local1[10] = REGIST_FUNC(arg0, arg1, CrowdWoman_Hatchet_and_Torch261010_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, CrowdWoman_Hatchet_and_Torch261010_Act11)
    local1[20] = REGIST_FUNC(arg0, arg1, CrowdWoman_Hatchet_and_Torch261010_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, CrowdWoman_Hatchet_and_Torch261010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3 - local0
local0 = 3.2 - local0
local0 = 3.8 - local0
function CrowdWoman_Hatchet_and_Torch261010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 0.4, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL2, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.8 - local0
local0 = 3.1 - local0
function CrowdWoman_Hatchet_and_Torch261010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 0.6, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, UPVAL1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.4 - local0
function CrowdWoman_Hatchet_and_Torch261010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2 - local0
function CrowdWoman_Hatchet_and_Torch261010_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1.4, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.8 - local0
function CrowdWoman_Hatchet_and_Torch261010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 0.6, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.3 - local0
function CrowdWoman_Hatchet_and_Torch261010_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1.4, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.6 - local0
function CrowdWoman_Hatchet_and_Torch261010_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 0.8, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.7 - local0
local0 = 1.5 - local0
function CrowdWoman_Hatchet_and_Torch261010_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1.7, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, UPVAL1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowdWoman_Hatchet_and_Torch261010_Act10(arg0, arg1, arg2)
    Gather_Act(arg0, arg1, 0, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdWoman_Hatchet_and_Torch261010_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetDist(TARGET_FRI_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Float(2.5, 3.5)
    local local4 = arg0:GetRandam_Int(90, 180)
    if local1 <= 3 and 0 <= local1 then
        if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
            if local2 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 1, local4, true, true, -1)
            elseif local2 <= 75 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        elseif local2 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 0, local4, true, true, -1)
        elseif local2 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), local4, true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdWoman_Hatchet_and_Torch261010_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(0, 1)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local0 = 0
    else
        local0 = 1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0, local0, arg0:GetRandam_Int(45, 60), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdWoman_Hatchet_and_Torch261010_StepToEscape(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 2, 2) == true or arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 6, 2) == true then
            if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 2, 2) == false and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 6, 2) == true then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            elseif arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 2, 2) == false and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 6, 2) == true then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            elseif arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        elseif arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 3, 2) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 2, 2) ~= false or arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 3, 2) ~= false then
            if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 2, 2) == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        end
    elseif arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 2, 2) ~= false or arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 3, 2) ~= false then
        if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 2, 2) == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    end
    return 
end

function CrowdWoman_Hatchet_and_Torch261010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function CrowdWoman_Hatchet_and_Torch261010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetDist(TARGET_FRI_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(0, 1)
    local local5 = arg0:GetRandam_Float(2.5, 3)
    local local6 = arg0:GetRandam_Float(5, 5.5)
    if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_B, 180) then
        if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if local0 <= 1.5 then
            if local2 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            end
        elseif local0 <= 2.5 then
            if local2 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            end
        elseif local0 <= 3.5 then
            if local2 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, local4, arg0:GetRandam_Int(45, 60), true, true, -1)
            end
        elseif local0 <= 5.5 then
            if local2 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, local4, arg0:GetRandam_Int(45, 60), true, true, -1)
            elseif local2 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
            end
        elseif local2 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5.5, TARGET_SELF, false, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, local4, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, local4, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, local4, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    end
    return 
end

function CrowdWoman_Hatchet_and_Torch261010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function CrowdWoman_Hatchet_and_Torch261010Battle_Terminate(arg0, arg1)
    return 
end

function CrowdWoman_Hatchet_and_Torch261010Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        if MissSwing_Attack(arg0, arg1, 6, 100, 3004) then
            return true
        else
            return false
        end
    end
end

return 
