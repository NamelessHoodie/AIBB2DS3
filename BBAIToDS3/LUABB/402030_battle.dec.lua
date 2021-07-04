local local0 = 0.3
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 3 - local0
local local6 = 0.3 - local0
local local7 = 0.3 - local0
local local8 = 0 - local0
local local9 = 0 - local0
local local10 = 0 - local0
local local11 = 0 - local0
local local12 = 0 - local0
local local13 = 3 - local0
function OnIf_402030(arg0, arg1, arg2)
    if arg2 == 0 then
        PatientA_FourFoot402030_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function PatientA_FourFoot402030Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    local local7 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_kankyaku then
        local0[10] = 50
        local0[11] = 50
    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 10
        local0[4] = 0
        local0[5] = 0
        local0[10] = 45
        local0[11] = 45
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 165) then
        local0[9] = 100
    elseif arg0:GetNpcThinkParamID() == 402030 then
        if 9 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 40
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 20
            local0[8] = 40
        elseif 4.5 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 30
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 50
            local0[8] = 20
        elseif 2 <= local3 then
            local0[1] = 2
            local0[2] = 2
            local0[3] = 53
            local0[4] = 3
            local0[5] = 0
            local0[6] = 0
            local0[7] = 40
            local0[8] = 0
        else
            local0[1] = 20
            local0[2] = 10
            local0[3] = 40
            local0[4] = 10
            local0[5] = 0
            local0[6] = 0
            local0[7] = 20
            local0[8] = 0
        end
    elseif 9 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 20
        local0[4] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 10
        local0[8] = 30
    elseif 4.5 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 20
        local0[4] = 10
        local0[5] = 0
        local0[6] = 0
        local0[7] = 20
        local0[8] = 10
    elseif 2 <= local3 then
        local0[1] = 30
        local0[2] = 30
        local0[3] = 10
        local0[4] = 10
        local0[5] = 0
        local0[6] = 0
        local0[7] = 20
        local0[8] = 0
    else
        local0[1] = 40
        local0[2] = 40
        local0[3] = 10
        local0[4] = 10
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act11)
    local1[20] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act26)
    local1[27] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act29)
    local1[30] = REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_Act30)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, PatientA_FourFoot402030_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2 - local0
function PatientA_FourFoot402030_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 5
    local local2 = UPVAL0 - 0.5
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 360)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3 - local0
function PatientA_FourFoot402030_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 5
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, 0, 360)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
function PatientA_FourFoot402030_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 5, 0, 360)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4 - local0
function PatientA_FourFoot402030_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8 - local0
function PatientA_FourFoot402030_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 5, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8 - local0
function PatientA_FourFoot402030_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 5, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
function PatientA_FourFoot402030_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 5, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6 - local0
function PatientA_FourFoot402030_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 5, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientA_FourFoot402030_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientA_FourFoot402030_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientA_FourFoot402030_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2 - local0
function PatientA_FourFoot402030_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 1, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientA_FourFoot402030_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 3.5)
    local local4 = arg0:GetRandam_Float(1.5, 3)
    local local5 = arg0:GetRandam_Float(1.5, 3)
    if local0 <= 1.8 then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 2.8 then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 5 then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 55 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 6.5 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2, TARGET_SELF, true, -1)
        end
    elseif local0 <= 10 then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3.5, TARGET_SELF, true, -1)
        end
    elseif local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    end
    return 
end

function PatientA_FourFoot402030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function PatientA_FourFoot402030Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function PatientA_FourFoot402030Battle_Terminate(arg0, arg1)
    return 
end

function PatientA_FourFoot402030Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
