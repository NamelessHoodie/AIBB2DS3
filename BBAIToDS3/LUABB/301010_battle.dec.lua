local local0 = 0.2
local local1 = 0 - local0
local local2 = 3.6 - local0
local local3 = 0 - local0
local local4 = 3.1 - local0
local local5 = 0 - local0
local local6 = 0 - local0
local local7 = 1.2 - local0
local local8 = 0 - local0
local local9 = 1.2 - local0
function OnIf_301010(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_Slave_Hatchet301010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DungeonResident_Slave_Hatchet301010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = 1
    if arg0:IsFinishTimer(0) == false then
        local6 = 0
    else
        local6 = 1
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5902) == true and local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[24] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5902) == true and local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[24] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5902) == false and local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5902) == false and local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif 7 <= local3 then
        local0[1] = 10
        local0[2] = 20
        local0[3] = 20
        local0[4] = 0
        local0[5] = 40
        local0[10] = 20 * local6
    elseif 4.5 <= local3 then
        local0[1] = 20
        local0[2] = 30
        local0[3] = 40
        local0[4] = 0
        local0[5] = 0
        local0[10] = 20 * local6
    elseif 2.5 <= local3 then
        local0[1] = 10
        local0[2] = 15
        local0[3] = 25
        local0[4] = 40
        local0[5] = 0
        local0[10] = 20 * local6
    else
        local0[1] = 10
        local0[2] = 5
        local0[3] = 25
        local0[4] = 60
        local0[5] = 0
        local0[10] = 10 * local6
    end
    if arg0:IsFinishTimer(0) == false then
        local0[4] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Hatchet301010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Hatchet301010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Hatchet301010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Hatchet301010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Hatchet301010_Act05)
    local1[10] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Hatchet301010_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Hatchet301010_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Hatchet301010_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Hatchet301010_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Hatchet301010_Act24)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Hatchet301010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.1 - local0
local0 = 0 - local0
local0 = 1.9 - local0
local0 = local2
local0 = local4
function DungeonResident_Slave_Hatchet301010_Act01(arg0, arg1, arg2)
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
function DungeonResident_Slave_Hatchet301010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0
    local local4 = 3012
    local local5 = 3013
    if arg0:HasSpecialEffectId(TARGET_SELF, 5732) == true then
        local4 = 3046
        local5 = 3041
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1.5, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 65 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local4, TARGET_ENE_0, local3, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local4, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, UPVAL2 + 2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
local0 = 0 - local0
local0 = 2.1 - local0
local0 = local2
local0 = local4
function DungeonResident_Slave_Hatchet301010_Act03(arg0, arg1, arg2)
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

local0 = 4 - local0
local0 = 0 - local0
function DungeonResident_Slave_Hatchet301010_Act04(arg0, arg1, arg2)
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

local0 = 4.3 - local0
local0 = 0 - local0
function DungeonResident_Slave_Hatchet301010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = 3017
    if arg0:HasSpecialEffectId(TARGET_SELF, 5732) == true then
        local3 = 3049
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, TARGET_ENE_0, UPVAL0 + 2, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_Hatchet301010_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    arg0:SetTimer(0, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_Hatchet301010_Act20(arg0, arg1, arg2)
    local local0 = 0
    if arg0:GetRandam_Int(1, 100) <= 40 and arg0:GetDist(TARGET_ENE_0) <= 2 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, Att3009_Dist_max, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, Att3008_Dist_max, 0, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_Hatchet301010_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_Hatchet301010_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_Hatchet301010_Act24(arg0, arg1, arg2)
    Gather_Act(arg0, arg1, 0, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_Hatchet301010_ActAfter_RealTime(arg0, arg1)
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

function DungeonResident_Slave_Hatchet301010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_Slave_Hatchet301010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Slave_Hatchet301010Battle_Terminate(arg0, arg1)
    return 
end

function DungeonResident_Slave_Hatchet301010Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
