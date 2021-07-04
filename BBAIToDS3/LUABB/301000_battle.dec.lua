local local0 = 0.2
local local1 = 0 - local0
local local2 = 2.9 - local0
local local3 = 0 - local0
local local4 = 3 - local0
local local5 = 0 - local0
local local6 = 0 - local0
local local7 = 0 - local0
function OnIf_301000(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_Slave_Sword301000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DungeonResident_Slave_Sword301000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:GetEventRequest(0) == 100 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, AttDist, 0, -1)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5902) == true and local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[24] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5902) == true and local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[24] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5902) == false and local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5902) == false and local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif 8 <= local3 then
        local0[1] = 30
        local0[2] = 20
        local0[4] = 10
        local0[5] = 40
        if arg0:GetNpcThinkParamID() == 301007 then
            local0[1] = 0
            local0[2] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 100
        end
    elseif 5.5 <= local3 then
        local0[1] = 30
        local0[2] = 30
        local0[4] = 10
        local0[5] = 30
        if arg0:GetNpcThinkParamID() == 301007 then
            local0[1] = 20
            local0[2] = 10
            local0[4] = 5
            local0[5] = 30
            local0[6] = 35
        end
    elseif 4 <= local3 then
        local0[1] = 30
        local0[2] = 30
        local0[4] = 10
        local0[5] = 30
        if arg0:GetNpcThinkParamID() == 301007 then
            local0[1] = 20
            local0[2] = 10
            local0[3] = 0
            local0[4] = 5
            local0[5] = 30
            local0[6] = 35
        end
    elseif 2.5 <= local3 then
        local0[1] = 50
        local0[2] = 35
        local0[4] = 15
        local0[5] = 0
    else
        local0[1] = 40
        local0[2] = 30
        local0[4] = 30
        local0[5] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Sword301000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Sword301000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Sword301000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Sword301000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Sword301000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Sword301000_Act06)
    local1[20] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Sword301000_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Sword301000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Sword301000_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Sword301000_Act24)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Slave_Sword301000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3 - local0
local0 = 0 - local0
local0 = 1.8 - local0
local0 = local2
local0 = local4
function DungeonResident_Slave_Sword301000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0
    local local4 = UPVAL0
    local local5 = UPVAL3
    local local6 = UPVAL4
    if arg0:GetNpcThinkParamID() == 301006 then
        local3 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 45 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, UPVAL2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
local0 = 0 - local0
local0 = local4
function DungeonResident_Slave_Sword301000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1.5
    local local4 = UPVAL0
    local local5 = 3002
    local local6 = 3003
    if arg0:HasSpecialEffectId(TARGET_SELF, 5730) == true then
        local5 = 3038
        local6 = 3040
    end
    if arg0:GetNpcThinkParamID() == 301006 then
        local3 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local5, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local5, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, UPVAL2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.4 - local0
local0 = 0 - local0
local0 = 2 - local0
local0 = local2
local0 = local4
function DungeonResident_Slave_Sword301000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1.5
    local local5 = UPVAL0
    local local6 = UPVAL2
    local local7 = UPVAL3
    local local8 = 3003
    local local9 = 3004
    local local10 = 3005
    if arg0:HasSpecialEffectId(TARGET_SELF, 5730) == true then
        local8 = 3040
        local9 = 3043
        local10 = 3044
    end
    if arg0:GetNpcThinkParamID() == 301006 then
        local4 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local4, 0, 2)
    if local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local9, TARGET_ENE_0, local5, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, local9, TARGET_ENE_0, local5, 0, -1)
        if local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local10, TARGET_ENE_0, local7, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local10, TARGET_ENE_0, local7, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local8, TARGET_ENE_0, UPVAL4, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.7 - local0
local0 = 0 - local0
function DungeonResident_Slave_Sword301000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1.5
    if arg0:GetNpcThinkParamID() == 301006 then
        local4 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local4, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.7 - local0
local0 = 0 - local0
function DungeonResident_Slave_Sword301000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0
    local local4 = 3007
    if arg0:HasSpecialEffectId(TARGET_SELF, 5730) == true then
        local4 = 3045
    end
    if arg0:GetNpcThinkParamID() == 301006 then
        local3 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local4, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_Sword301000_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, DIST_None, 0, -1)
    if 6 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1.5), TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 1.1 - local0
local0 = 1.1 - local0
function DungeonResident_Slave_Sword301000_Act20(arg0, arg1, arg2)
    local local0 = 0
    if arg0:GetRandam_Int(1, 100) <= 40 and arg0:GetDist(TARGET_ENE_0) <= 2 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL1, 0, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_Sword301000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_Sword301000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_Sword301000_Act24(arg0, arg1, arg2)
    Gather_Act(arg0, arg1, 0, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_Sword301000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(1, 1.5)
    local local4 = arg0:GetRandam_Float(1.5, 2.5)
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

function DungeonResident_Slave_Sword301000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_Slave_Sword301000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Slave_Sword301000Battle_Terminate(arg0, arg1)
    return 
end

function DungeonResident_Slave_Sword301000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
