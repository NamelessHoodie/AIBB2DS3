local local0 = 0.4
local local1 = 0.6 - local0
local local2 = 5.2 - local0
local local3 = 0.6 - local0
local local4 = 0.6 - local0
local local5 = 0.6 - local0
local local6 = 0.6 - local0
local local7 = 0.6 - local0
local local8 = 2.3 - local0
local local9 = 0.6 - local0
local local10 = 4.7 - local0
local local11 = 6.9 - local0
local local12 = 0.6 - local0
local local13 = 0.6 - local0
local local14 = 9.4 - local0
local local15 = 0.6 - local0
local local16 = 9.4 - local0
local local17 = 0 - local0
function OnIf_408000(arg0, arg1, arg2)
    if arg2 == 0 then
        DeepDog408000_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        arg0:SetNumber(0, 1)
    end
    return 
end

function DeepDog408000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    local local7 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local8 = arg0:GetDistY(TARGET_ENE_0)
    local local9 = 1
    if arg0:IsFinishTimer(0) == false then
        local9 = 0
    end
    if 0 < arg0:GetNumFriend(8) then
        local9 = 0.33
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5410) == true then
        local0[21] = 100
    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local3 <= 5 or 8 <= local3 then
            local0[6] = 100
        else
            local0[5] = 30
            local0[7] = 70
        end
    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local3 <= 5 or 8 <= local3 then
            local0[6] = 100
        else
            local0[5] = 30
            local0[7] = 70
        end
        local0[1] = 5
        local0[3] = 5
        local0[5] = 20
        local0[6] = 30
        local0[7] = 40
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[10] = 100
    else
        if 9 <= local3 then
            local0[1] = 10
            local0[3] = 5
            local0[4] = 35
            local0[5] = 20
            local0[7] = 30
            local0[8] = 200 * local9
        elseif 7 <= local3 then
            local0[1] = 20
            local0[3] = 35
            local0[5] = 20
            local0[7] = 25
            local0[8] = 200 * local9
        elseif 5 <= local3 then
            local0[1] = 45
            local0[3] = 35
            local0[5] = 20
            local0[8] = 200 * local9
        elseif 3 <= local3 then
            local0[1] = 40
            local0[3] = 50
            local0[5] = 10
            local0[8] = 200 * local9
        elseif 1.5 <= local3 then
            local0[1] = 50
            local0[3] = 40
            local0[5] = 10
            local0[8] = 200 * local9
        else
            local0[1] = 20
            local0[2] = 40
            local0[3] = 30
            local0[5] = 10
            local0[8] = 200 * local9
        end
        if arg0:GetNumber(0) == 0 then
            local0[7] = 0
        end
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DeepDog408000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DeepDog408000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DeepDog408000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DeepDog408000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DeepDog408000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DeepDog408000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DeepDog408000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DeepDog408000_Act08)
    local1[10] = REGIST_FUNC(arg0, arg1, DeepDog408000_Act10)
    local1[21] = REGIST_FUNC(arg0, arg1, DeepDog408000_Act21)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DeepDog408000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.9 - local0
local0 = local2
local0 = 3 - local0
local0 = 3.9 - local0
local0 = 5.2 - local0
local0 = 3 - local0
local0 = 0.6 - local0
local0 = 0.6 - local0
function DeepDog408000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1 + 0.5
    local local2 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        if local0 <= 5.5 then
            local2 = UPVAL0
        else
            local2 = UPVAL1
        end
    elseif local0 <= 5.5 then
        local2 = UPVAL3
    else
        local2 = UPVAL4
    end
    if local2 <= local0 then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    if arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer) == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        if local0 <= UPVAL6 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 0.5, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0)
        end
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL2 + 0.5, 0)
    else
        if local0 <= UPVAL7 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL3 + 0.5, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL4 + 0.5, 0)
        end
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, UPVAL5 + 0.5, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.3 - local0
function DeepDog408000_Act02(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
local0 = local11
local0 = 3.4 - local0
local0 = 5 - local0
function DeepDog408000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    if local0 <= UPVAL3 then
        if local1 <= 50 then
            local2 = UPVAL0
        else
            local2 = UPVAL2
        end
    else
        local2 = UPVAL1
    end
    if local2 <= local0 then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    if local0 <= UPVAL3 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL2 + 1, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL1 + 1, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local14
local0 = local16
function DeepDog408000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local1 = UPVAL0
    else
        local1 = UPVAL1
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL1 + 1, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeepDog408000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if 5 <= arg0:GetDistY(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, Dist_None, 0, 0)
    elseif 10 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, Dist_None, 0, 0)
    elseif 5 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, Dist_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, Dist_None, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeepDog408000_Act06(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 6 then
        DeepDog408000_StepToEscape(arg0, arg1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8, TARGET_SELF, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeepDog408000_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2 - local0
function DeepDog408000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetTimer(0, 15)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeepDog408000_Act10(arg0, arg1, arg2)
    DeepDog408000_StepToEscape(arg0, arg1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeepDog408000_StepToEscape(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(1, 2)
    local local1 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 4, 0)
    local local2 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 4, 0)
    local local3 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 4, 0)
    if arg0:GetDist(TARGET_ENE_0) <= 6 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            if local1 == false and local2 == false and local3 == false then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 4, TARGET_ENE_0, false, -1)
            elseif local1 == false then
                if local2 == false and local3 == true then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                elseif local3 == false and local2 == true then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                elseif arg0:GetRandam_Int(1, 100) <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if local3 == false and local1 == false then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), false, true, -1)
            elseif local3 == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        elseif local2 == false and local1 == false then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), false, true, -1)
        elseif local2 == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), false, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), false, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local10
local0 = local11
local0 = local14
local0 = local16
function DeepDog408000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 13
    local local4 = 8.5
    if local0 < local4 then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, UPVAL0, TARGET_SELF, false, -1)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 0, 0, 0)
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, UPVAL1, TARGET_SELF, false, -1)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, UPVAL2, TARGET_SELF, false, -1)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 0, 0, 0)
        end
        arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    elseif local0 < local3 then
        if local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, local4, TARGET_SELF, true, -1)
        elseif local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif arg0:GetRandam_Int(1, 100) <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, UPVAL3, TARGET_SELF, false, -1)
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL3, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL4, 0, 0)
            end
            arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 0, 0, 0)
        end
        arg0:AddObserveArea(2, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, local4)
    else
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 0, 0, 0)
        end
        arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeepDog408000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DeepDog408000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(1.5, 2.5)
    local local3 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_KeepDist, 3, TARGET_ENE_0, 6, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, MoveTime, TARGET_ENE_0, bRight, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_KeepDist, 3, TARGET_ENE_0, 6, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, MoveTime, TARGET_ENE_0, bRight, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif local0 <= 2 then
        if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) or local1 > 50 then
            DeepDog408000_StepToEscape(arg0, arg1)
        end
    elseif local0 <= 6 then
        if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) or local1 > 30 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 140) and local1 <= 30 then
                if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_F, 6, 5) == true then
                    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 10, TARGET_NONE, false, -1)
                    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 60, 0, 0)
                else
                    DeepDog408000_StepToEscape(arg0, arg1)
                end
            else
                DeepDog408000_StepToEscape(arg0, arg1)
            end
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function DeepDog408000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DeepDog408000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local14
local0 = local16
function DeepDog408000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg0:IsInterupt(INTERUPT_Inside_ObserveArea) then
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
        end
        arg0:Replaning()
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetDist(TARGET_ENE_0)
        local local3 = Shoot_2dist(arg0, arg1, 5, 20, 30, 60)
        if local3 == 1 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            end
            return true
        elseif local3 == 2 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, UPVAL1, TARGET_SELF, false, -1)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL1 + 0.5, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, UPVAL0, TARGET_SELF, false, -1)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
            end
            return true
        else
            return false
        end
    end
end

return 
