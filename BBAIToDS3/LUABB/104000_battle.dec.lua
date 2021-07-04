local local0 = 0.3
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 0 - local0
local local6 = 0 - local0
local local7 = 0 - local0
local local8 = 0
function OnIf_104000(arg0, arg1, arg2)
    if arg2 == 0 then
        Shousitai_Fist104000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local8
function Shousitai_Fist104000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:HasSpecialEffectId(TARGET_SELF, 4671) then
        local local7 = 1
        SETUPVAL 9 0 0
    else
        local local7 = 0
        SETUPVAL 9 0 0
    end
    if local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif 2.8 <= local3 then
        local0[1] = 20
        local0[2] = 10
        local0[3] = 20
        local0[4] = 10
        local0[5] = 0
        local0[6] = 0
        local0[7] = 40
    elseif 1.6 <= local3 then
        local0[1] = 30
        local0[2] = 30
        local0[3] = 0
        local0[4] = 40
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
    else
        local0[1] = 15
        local0[2] = 15
        local0[3] = 15
        local0[4] = 15
        local0[5] = 20
        local0[6] = 20
        local0[7] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Shousitai_Fist104000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Shousitai_Fist104000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Shousitai_Fist104000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Shousitai_Fist104000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Shousitai_Fist104000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Shousitai_Fist104000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Shousitai_Fist104000_Act07)
    local1[20] = REGIST_FUNC(arg0, arg1, Shousitai_Fist104000_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, Shousitai_Fist104000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Shousitai_Fist104000_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, Shousitai_Fist104000_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, Shousitai_Fist104000_Act25)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Shousitai_Fist104000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.6 - local0
local0 = local8
function Shousitai_Fist104000_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 9999
    if UPVAL1 == 1 then
        local1 = 0
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.6 - local0
local0 = local8
function Shousitai_Fist104000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 33
    return GetWellSpace_Odds
end

local0 = 2.8 - local0
local0 = local8
function Shousitai_Fist104000_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 9999
    if UPVAL1 == 1 then
        local1 = 0
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.6 - local0
local0 = local8
function Shousitai_Fist104000_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local0, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local0, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local0, 0)
    end
    GetWellSpace_Odds = 67
    return GetWellSpace_Odds
end

local0 = 1.6 - local0
local0 = local8
function Shousitai_Fist104000_Act05(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 9999
    if UPVAL1 == 1 then
        local1 = 0
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 33
    return GetWellSpace_Odds
end

local0 = 1.2 - local0
local0 = local8
function Shousitai_Fist104000_Act06(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 9999
    if UPVAL1 == 1 then
        local1 = 0
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.4 - local0
local0 = local8
function Shousitai_Fist104000_Act07(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 9999
    if UPVAL1 == 1 then
        local1 = 0
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 33
    return GetWellSpace_Odds
end

function Shousitai_Fist104000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Shousitai_Fist104000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Shousitai_Fist104000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Shousitai_Fist104000_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1.5, 2.5)
    local local3 = arg0:GetRandam_Int(0.5, 1.5)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local2, TARGET_ENE_0, 4 + 1, TARGET_ENE_0, true, 9910)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Shousitai_Fist104000_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(3.5, 4.5)
    local local3 = arg0:GetRandam_Int(0.5, 1.5)
    local local4 = 4 + 1
    if arg0:IsEventFlag(12306714) == true and arg0:IsInsideTargetRegion(TARGET_SELF, 2302504) then
        local4 = 6 + 2
    end
    if arg0:IsEventFlag(12306719) == true and arg0:IsInsideTargetRegion(TARGET_SELF, 2302509) then
        local4 = 8 + 3
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local2, TARGET_EVENT, local4, TARGET_EVENT, true, 9910)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_EVENT, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Shousitai_Fist104000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Shousitai_Fist104000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 4)
    if local0 <= 3 then
        if local1 <= 33 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif local0 <= 6 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function Shousitai_Fist104000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Shousitai_Fist104000Battle_Terminate(arg0, arg1)
    return 
end

function Shousitai_Fist104000Battle_Interupt(arg0, arg1)
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
