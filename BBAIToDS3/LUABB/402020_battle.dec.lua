local local0 = 0.3
local local1 = 0.3 - local0
local local2 = 3 - local0
local local3 = 0.3 - local0
local local4 = 3 - local0
local local5 = 0.3 - local0
local local6 = 0.3 - local0
local local7 = 5.3 - local0
local local8 = 0.3 - local0
local local9 = 0.3 - local0
local local10 = 7 - local0
local local11 = 0.3 - local0
local local12 = 0.3 - local0
local local13 = 0.3 - local0
local local14 = 0.3 - local0
local local15 = 0.3 - local0
local local16 = 0.3 - local0
local local17 = 0.3 - local0
local local18 = 0.3 - local0
local local19 = 0.3 - local0
local local20 = 0.3 - local0
local local21 = 0.3 - local0
local local22 = 100
function OnIf_402020(arg0, arg1, arg2)
    if arg2 == 0 then
        PatientA_BareHands402020_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local22
function PatientA_BareHands402020Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    local local7 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:GetNpcThinkParamID() == 402026 then
        local local8 = 0
        SETUPVAL 10 0 0
    else
        local local8 = 100
        SETUPVAL 10 0 0
    end
    if arg0:GetNpcThinkParamID() == 402025 then
        ATAMA = 0
    else
        ATAMA = 1
    end
    arg0:SetNumber(10, ATAMA)
    if arg0:GetNpcThinkParamID() == 402028 and 3 <= local3 then
        local0[19] = 100
    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_kankyaku then
        local0[10] = 60
        local0[11] = 40
    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg0:GetNpcThinkParamID() == 402026 or arg0:GetNpcThinkParamID() == 402027 then
            local0[3] = 10
            local0[10] = 30
            local0[11] = 30
            local0[13] = 10
            local0[16] = 10
            local0[17] = 10
        elseif arg0:GetNpcThinkParamID() == 402024 or arg0:GetNpcThinkParamID() == 402028 then
            local0[1] = 0
            local0[2] = 0
            local0[7] = 0
            local0[8] = 0
            local0[10] = 40
            local0[11] = 60
        else
            local0[10] = 60
            local0[11] = 40
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 165) then
        local0[9] = 100
    elseif arg0:GetNpcThinkParamID() == 402026 or arg0:GetNpcThinkParamID() == 402027 then
        if 8 <= local3 then
            local0[15] = 20
            local0[16] = 30
            local0[17] = 30
            local0[18] = 20
        elseif 5.5 <= local3 then
            local0[15] = 20
            local0[16] = 30
            local0[17] = 30
            local0[18] = 20
        elseif 2.5 <= local3 then
            local0[3] = 20
            local0[13] = 20
            local0[15] = 15
            local0[16] = 15
            local0[17] = 15
            local0[18] = 15
        else
            local0[3] = 20
            local0[13] = 20
            local0[15] = 15
            local0[16] = 15
            local0[17] = 15
            local0[18] = 15
        end
    elseif arg0:GetNpcThinkParamID() == 402024 or arg0:GetNpcThinkParamID() == 402028 then
        if 8 <= local3 then
            local0[3] = 30
            local0[13] = 30
            local0[15] = 10
            local0[16] = 10
            local0[17] = 10
            local0[18] = 10
        elseif 5.5 <= local3 then
            local0[1] = 20
            local0[2] = 20
            local0[3] = 30
            local0[13] = 30
        elseif 2.5 <= local3 then
            local0[1] = 20
            local0[2] = 20
            local0[7] = 20
            local0[8] = 20
            local0[12] = 20
        else
            local0[1] = 20
            local0[2] = 20
            local0[7] = 20
            local0[8] = 20
            local0[12] = 20
        end
    elseif 8 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 10
        local0[7] = 0 * ATAMA
        local0[8] = 0 * ATAMA
        local0[12] = 0
        local0[13] = 20
        local0[14] = 0
        local0[15] = 10 * ATAMA
        local0[16] = 0
        local0[17] = 0
        local0[18] = 0 * ATAMA
        local0[10] = 0
        local0[11] = 60
    elseif 5.5 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 10
        local0[13] = 10
        local0[15] = 10 * ATAMA
        local0[10] = 50
        local0[11] = 0
    elseif 2.5 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[7] = 10 * ATAMA
        local0[8] = 10 * ATAMA
        local0[12] = 20
        local0[10] = 0
        local0[11] = 20
    else
        local0[1] = 20
        local0[2] = 20
        local0[7] = 20 * ATAMA
        local0[8] = 20 * ATAMA
        local0[12] = 20
        local0[10] = 0
        local0[11] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act03)
    local1[7] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act17)
    local1[18] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act18)
    local1[19] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act19)
    local1[20] = REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, PatientA_BareHands402020_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local22
function PatientA_BareHands402020_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 5
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3025, TARGET_ENE_0, local1, 0, 360)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, local1, 0)
    if not arg0:GetNpcThinkParamID() == 402025 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

local0 = 5.1 - local0
local0 = local22
function PatientA_BareHands402020_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 5
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3027, TARGET_ENE_0, local1, 0, 360)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, local1, 0)
    if not arg0:GetNpcThinkParamID() == 402025 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3035, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

local0 = 6.6 - local0
local0 = local22
function PatientA_BareHands402020_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0 + 5
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3029, TARGET_ENE_0, local0, 0, 360)
    if arg0:GetRandam_Int(1, 100) <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3030, TARGET_ENE_0, local0, 0)
    end
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

local0 = 4.2 - local0
local0 = local22
function PatientA_BareHands402020_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, UPVAL0 + 5, 0, 360)
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

local0 = 4.7 - local0
local0 = 3.4 - local0
local0 = local22
function PatientA_BareHands402020_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 5
    local local2 = UPVAL1
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3036, TARGET_ENE_0, local1, 0, 360)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, local1, 0)
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

function PatientA_BareHands402020_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local22
function PatientA_BareHands402020_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12 + UPVAL0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientA_BareHands402020_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.7 - local0
local0 = local22
function PatientA_BareHands402020_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 0.5, 0, 360)
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

local0 = 8.5 - local0
local0 = local22
function PatientA_BareHands402020_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, UPVAL0 + 0.5, 0, 360)
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

local0 = 3.5 - local0
local0 = local22
function PatientA_BareHands402020_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, UPVAL0 + 10, 0, 360)
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

local0 = 4.9 - local0
function PatientA_BareHands402020_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 0.3
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, UPVAL0 + 0.5, 0, 360)
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

local0 = 8.5 - local0
function PatientA_BareHands402020_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 0.3
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3042, TARGET_ENE_0, UPVAL0 + 0.5, 0, 360)
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

local0 = 6.6 - local0
function PatientA_BareHands402020_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 0.5
    local local2 = UPVAL0 + 0.3
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3043, TARGET_ENE_0, local1, 0, 360)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3030, TARGET_ENE_0, local1, 0)
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

local0 = 3.4 - local0
function PatientA_BareHands402020_Act18(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 0.5
    local local2 = UPVAL0 + 0.3
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3044, TARGET_ENE_0, local1, 0, 360)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, local1, 0)
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

local0 = 15 - local0
local0 = local22
function PatientA_BareHands402020_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3045, TARGET_ENE_0, UPVAL0 + 0.5, 0, 180)
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

local0 = local2
function PatientA_BareHands402020_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientA_BareHands402020_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 3.5)
    local local4 = arg0:GetRandam_Float(1.5, 3)
    local local5 = arg0:GetRandam_Float(1.5, 3)
    if arg0:GetNpcThinkParamID() == 402024 then
        local3 = arg0:GetRandam_Float(0, 1)
        local4 = arg0:GetRandam_Float(0, 1)
        local5 = arg0:GetRandam_Float(0, 1)
        if arg0:GetRandam_Int(1, 100) <= 40 then
            local3 = local3 - local3
            local4 = local4 - local4
            local5 = local5 - local5
        end
    end
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

function PatientA_BareHands402020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function PatientA_BareHands402020Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function PatientA_BareHands402020Battle_Terminate(arg0, arg1)
    return 
end

function PatientA_BareHands402020Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
