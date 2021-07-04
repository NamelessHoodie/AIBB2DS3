local local0 = 0.2
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 2.8 - local0
local local4 = 0 - local0
local local5 = 1.8 - local0
local local6 = 0 - local0
local local7 = 0 - local0
local local8 = 0 - local0
local local9 = 0.8 - local0
function OnIf_301020(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_Slave_SwordLantern301020_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DungeonResident_Slave_SwordLantern301020Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif 8 <= local3 then
        local0[1] = 40
        local0[2] = 20
        local0[3] = 0
        local0[4] = 40
        local0[5] = 0
    elseif 4 <= local3 then
        local0[1] = 40
        local0[2] = 30
        local0[3] = 0
        local0[4] = 30
        local0[5] = 0
    elseif 2 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 40
        local0[4] = 0
        local0[5] = 20
    else
        local0[1] = 20
        local0[2] = 0
        local0[3] = 10
        local0[4] = 0
        local0[5] = 70
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_SwordLantern301020_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_SwordLantern301020_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_SwordLantern301020_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_SwordLantern301020_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_SwordLantern301020_Act05)
    local1[20] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_SwordLantern301020_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_SwordLantern301020_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_SwordLantern301020_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Slave_SwordLantern301020_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3 - local0
local0 = 0 - local0
local0 = 2.3 - local0
local0 = 1.4 - local0
local0 = local3
function DungeonResident_Slave_SwordLantern301020_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = UPVAL2 + 1
    local local6 = 3001
    local local7 = 3003
    if arg0:HasSpecialEffectId(TARGET_SELF, 5732) == true then
        local6 = 3038
        local7 = 3041
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 4)
    if local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
        if local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local6, TARGET_ENE_0, local5, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local6, TARGET_ENE_0, local5, 0)
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL3 + 1, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local7, TARGET_ENE_0, UPVAL4 + 1, 0)
            end
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local3
local0 = 0 - local0
function DungeonResident_Slave_SwordLantern301020_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = 3003
    if arg0:HasSpecialEffectId(TARGET_SELF, 5732) == true then
        local3 = 3041
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local3, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local5
local0 = local4
local0 = 2.6 - local0
local0 = 2 - local0
local0 = local3
local0 = local9
function DungeonResident_Slave_SwordLantern301020_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = UPVAL2 + 1
    local local6 = UPVAL5 + 1
    local local7 = 3003
    if arg0:HasSpecialEffectId(TARGET_SELF, 5732) == true then
        local7 = 3041
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 4)
    if local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local4, 0, -1)
        if local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local5, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local5, 0)
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, UPVAL3 + 1, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local7, TARGET_ENE_0, UPVAL4 + 1, 0)
            end
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.3 - local0
local0 = 0 - local0
function DungeonResident_Slave_SwordLantern301020_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 2, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local5
local0 = local4
local0 = local9
function DungeonResident_Slave_SwordLantern301020_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 2, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, UPVAL2 + 1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DungeonResident_Slave_SwordLantern301020_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_SwordLantern301020_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_SwordLantern301020_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_SwordLantern301020_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(1.5, 2.5)
    local local5 = arg0:GetRandam_Float(1.5, 2.5)
    local local6 = 0
    if local0 <= 5 then
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 8 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function DungeonResident_Slave_SwordLantern301020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_Slave_SwordLantern301020Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Slave_SwordLantern301020Battle_Terminate(arg0, arg1)
    return 
end

function DungeonResident_Slave_SwordLantern301020Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
