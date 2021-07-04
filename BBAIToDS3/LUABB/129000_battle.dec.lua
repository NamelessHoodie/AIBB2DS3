local local0 = 0.4
local local1 = 0.4 - local0
local local2 = 0.4 - local0
local local3 = 0.4 - local0
local local4 = 0.4 - local0
local local5 = 0.4 - local0
local local6 = 0.4 - local0
local local7 = 0.4 - local0
local local8 = 0.4 - local0
local local9 = 0.4 - local0
local local10 = 0.4 - local0
local local11 = 0.4 - local0
local local12 = 0.4 - local0
local local13 = 0.4 - local0
local local14 = 0.4 - local0
function OnIf_129000(arg0, arg1, arg2)
    if arg2 == 0 then
        Deformed_Beast_Female129000_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        arg0:SetNumber(0, 1)
    end
    return 
end

function Deformed_Beast_Female129000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetDist(TARGET_FRI_0)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if (not (arg0:GetNumber(0) ~= 0 or local4 > 25 or local4 == -1 or 0 > arg0:GetHpRate(TARGET_FRI_0)) or arg0:IsFinishTimer(0) == true and arg0:GetNumber(0) == 1 and local4 <= 25 and local4 ~= -1) and arg0:GetNpcThinkParamID() ~= 129010 then
        local0[16] = 100
    elseif arg0:GetEventRequest(0) == 50 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    elseif arg0:GetNpcThinkParamID() == 129003 and 10 <= local3 then
        local0[16] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif not (arg0:GetNpcThinkParamID() ~= 129000 or 1 > arg0:GetTeamRecordCount(COORDINATE_TYPE_Attack, TARGET_ENE_0, 20) and 1 > arg0:GetTeamRecordCount(COORDINATE_TYPE_AttackOrder, TARGET_ENE_0, 20)) or 7 <= local3 then
        local0[23] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[21] = 100
    elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
        local0[24] = 100
    elseif arg0:GetNpcThinkParamID() == 129000 then
        if 10 <= local3 then
            local0[10] = 30
            local0[11] = 19
            local0[13] = 19
            local0[15] = 16
        elseif 5 <= local3 then
            local0[11] = 20
            local0[13] = 20
            local0[14] = 20
            local0[17] = 20
        else
            local0[1] = 15
            local0[2] = 10
            local0[4] = 10
            local0[5] = 15
            local0[6] = 20
            local0[7] = 10
            local0[17] = 20
        end
    elseif 5 <= local3 then
        local0[4] = 20
        local0[17] = 30
        local0[23] = 50
    elseif 3 <= local3 then
        local0[1] = 15
        local0[2] = 20
        local0[4] = 15
        local0[17] = 20
        local0[23] = 30
    else
        local0[1] = 5
        local0[2] = 15
        local0[4] = 5
        local0[5] = 20
        local0[6] = 0
        local0[7] = 15
        local0[17] = 40
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act07)
    local1[10] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act17)
    local1[21] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_Act25)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Deformed_Beast_Female129000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.7 - local0
function Deformed_Beast_Female129000_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.2 - local0
function Deformed_Beast_Female129000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
function Deformed_Beast_Female129000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.8 - local0
function Deformed_Beast_Female129000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.6 - local0
function Deformed_Beast_Female129000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.5 - local0
function Deformed_Beast_Female129000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.3 - local0
function Deformed_Beast_Female129000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8.2 - local0
function Deformed_Beast_Female129000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 7.6 - local0
function Deformed_Beast_Female129000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 10 - local0
function Deformed_Beast_Female129000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6.8 - local0
function Deformed_Beast_Female129000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6.7 - local0
function Deformed_Beast_Female129000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6.4 - local0
function Deformed_Beast_Female129000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast_Female129000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsFinishTimer(0) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, -1)
        arg0:SetTimer(0, arg0:GetRandam_Int(13, 18))
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_NONE, 0, 0, 0)
    end
    if arg0:GetNumber(0) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.2 - local0
function Deformed_Beast_Female129000_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast_Female129000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 2.5)
    if local2 == true and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 2.5) == true then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif local2 == false then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast_Female129000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast_Female129000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast_Female129000_Act24(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast_Female129000_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(4, 5.9)
    local local3 = arg0:GetRandam_Float(6.1, 8)
    if 6 <= local0 then
        Approach_Act(arg0, arg1, local2, 999, 0, 3)
    elseif 2.5 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, local2, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast_Female129000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Deformed_Beast_Female129000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= 5 then
        if local1 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(60, 90), true, true, -1)
            end
        end
    elseif local0 <= 10 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, 0, arg0:GetRandam_Int(60, 90), true, true, -1)
        end
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, 0, arg0:GetRandam_Int(60, 90), true, true, -1)
    end
    return 
end

function Deformed_Beast_Female129000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Deformed_Beast_Female129000Battle_Terminate(arg0, arg1)
    return 
end

function Deformed_Beast_Female129000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg0:IsInterupt(INTERUPT_FindEnemy) then
        arg1:ClearSubGoal()
        arg0:Replaning()
        return true
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if FindAttack_Step(arg0, arg1, 3, 15, 40, 30, 30) then
        return true
    elseif Damaged_Step(arg0, arg1, 3, 15, 40, 30, 30, 4) then
        return true
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetDist(TARGET_ENE_0)
    local local7 = Shoot_2dist(arg0, arg1, 5, 10, 20, 40)
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
    if RebByOpGuard_Step(arg0, arg1, 20, 40, 30, 30, 4) then
        return true
    else
        return false
    end
end

return 
