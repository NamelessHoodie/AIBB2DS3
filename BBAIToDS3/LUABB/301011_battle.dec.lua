local local0 = 0.2
local local1 = 0 - local0
local local2 = 2.9 - local0
local local3 = 0 - local0
local local4 = 3.1 - local0
local local5 = 0 - local0
local local6 = 0 - local0
local local7 = 1.2 - local0
local local8 = 0 - local0
local local9 = 1.2 - local0
local local10 = 2.2 - local0
local local11 = 20.4 - local0
local local12 = 2.2 - local0
local local13 = 20.4 - local0
local local14 = 2.2 - local0
local local15 = 20.4 - local0
local local16 = 2.2 - local0
local local17 = 20.4 - local0
function OnIf_301011(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_Slave_HatchetThrow301011_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DungeonResident_Slave_HatchetThrow301011Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local5 = math.abs(arg0:GetDistYSigned(TARGET_ENE_0))
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif arg0:GetEventRequest() == 100 then
        local0[24] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5902) == true and local4 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[25] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5902) == true and local4 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[25] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5902) == false and local4 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5902) == false and local4 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:GetDistYSigned(TARGET_ENE_0) <= -1 and 5 <= arg0:GetDistXZ(TARGET_ENE_0) then
        local0[8] = 50
        local0[9] = 50
    elseif 3 <= arg0:GetDist(TARGET_ENE_0) then
        local0[1] = 10
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 50
        local0[7] = 40
    else
        local0[1] = 30
        local0[2] = 10
        local0[3] = 40
        local0[4] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301011_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301011_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301011_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301011_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301011_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301011_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301011_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301011_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301011_Act09)
    local1[20] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301011_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301011_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301011_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301011_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301011_Act25)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301011_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.1 - local0
local0 = 0 - local0
local0 = 1.9 - local0
local0 = local2
local0 = local4
function DungeonResident_Slave_HatchetThrow301011_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0
    local local4 = UPVAL3
    local local5 = UPVAL4
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local3, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, UPVAL2 + 2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
local0 = 0 - local0
local0 = local4
function DungeonResident_Slave_HatchetThrow301011_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    local local4 = 3012
    local local5 = 3013
    if arg0:HasSpecialEffectId(TARGET_SELF, 5732) == true then
        local4 = 3046
        local5 = 3041
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1.5, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local4, TARGET_ENE_0, local3, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local4, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, UPVAL2 + 1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.4 - local0
local0 = 0 - local0
local0 = 2.1 - local0
local0 = local2
local0 = local4
function DungeonResident_Slave_HatchetThrow301011_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0
    local local5 = UPVAL2
    local local6 = UPVAL3
    local local7 = 3013
    local local8 = 3014
    local local9 = 3015
    if arg0:HasSpecialEffectId(TARGET_SELF, 5732) == true then
        local7 = 3041
        local8 = 3047
        local9 = 3048
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1.5, 0, 2)
    if local1 <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local8, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local8, TARGET_ENE_0, local4, 0, -1)
        if local1 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local9, TARGET_ENE_0, local5, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local9, TARGET_ENE_0, local5, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local7, TARGET_ENE_0, UPVAL4 + 2, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.8 - local0
local0 = 0 - local0
function DungeonResident_Slave_HatchetThrow301011_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 2, 0, -1)
    arg0:SetTimer(0, 15)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.7 - local0
local0 = 0 - local0
function DungeonResident_Slave_HatchetThrow301011_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = 3017
    if arg0:HasSpecialEffectId(TARGET_SELF, 5732) == true then
        local3 = 3049
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local11
local0 = local10
function DungeonResident_Slave_HatchetThrow301011_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 15
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 - 1, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5704) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, local3, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local11
local0 = local10
function DungeonResident_Slave_HatchetThrow301011_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 15
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 - 1, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5704) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3032, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3033, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local15
local0 = local14
function DungeonResident_Slave_HatchetThrow301011_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 - 1
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 15, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local15
local0 = local14
function DungeonResident_Slave_HatchetThrow301011_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 15
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 - 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_HatchetThrow301011_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_HatchetThrow301011_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_HatchetThrow301011_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_HatchetThrow301011_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_EVENT, Dist_None, 0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_HatchetThrow301011_Act25(arg0, arg1, arg2)
    Gather_Act(arg0, arg1, 0, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_HatchetThrow301011_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(1, 1.5)
    local local4 = arg0:GetRandam_Float(2.5, 3.5)
    if arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer) == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            if local0 > 2 then
                if local0 <= 3.5 then
                    if local1 <= 30 then
                        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
                    elseif local1 <= 80 then
                        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
                    end
                elseif local0 <= 5.5 then
                    if local1 <= 70 then
                        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
                    end
                elseif local0 <= 7.5 then
                    if local1 <= 50 then
                        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
                        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
                    end
                elseif local1 <= 70 then
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
                end
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 1, arg0:GetRandam_Int(45, 60), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 0, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif local0 <= 6 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
    end
    return 
end

function DungeonResident_Slave_HatchetThrow301011_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_Slave_HatchetThrow301011Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Slave_HatchetThrow301011Battle_Terminate(arg0, arg1)
    return 
end

function DungeonResident_Slave_HatchetThrow301011Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        return false
    end
end

return 
