local local0 = 0.7
local local1 = 0 - local0
local local2 = 2 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 4.5 - local0
local local6 = 0 - local0
local local7 = 0 - local0
local local8 = 0 - local0
local local9 = 0 - local0
local local10 = 0 - local0
function OnIf_103010(arg0, arg1, arg2)
    if arg2 == 0 then
        Gunshuu_B103010_Statue_ActAfter(arg0, arg1)
    end
    return 
end

function Gunshuu_B103010_StatueBattle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[28] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[29] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and arg0:GetRandam_Int(1, 100) <= 70 then
        if arg0:GetNumber(2) == 0 then
            if local4 <= 2 then
                local0[8] = 50
                local0[20] = 50
            else
                local0[8] = 0
                local0[20] = 100
            end
        elseif local4 <= 2 then
            local0[8] = 80
            local0[20] = 20
        else
            local0[8] = 0
            local0[20] = 100
        end
    elseif arg0:GetNumber(2) == 0 then
        if 10 <= local4 then
            local0[1] = 0
            local0[2] = 50
            local0[4] = 50
            local0[5] = 0
            local0[6] = 0
        elseif 5 <= local4 then
            local0[1] = 0
            local0[2] = 50
            local0[4] = 30
            local0[5] = 0
            local0[6] = 20
        elseif 2 <= local4 then
            local0[1] = 0
            local0[2] = 25
            local0[4] = 40
            local0[5] = 15
            local0[6] = 20
        elseif 1 <= local4 then
            local0[1] = 20
            local0[2] = 0
            local0[4] = 20
            local0[5] = 30
            local0[6] = 30
        else
            local0[1] = 30
            local0[2] = 0
            local0[4] = 20
            local0[5] = 0
            local0[6] = 50
        end
    elseif 10 <= local4 then
        local0[1] = 0
        local0[2] = 50
        local0[4] = 50
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[9] = 0
    elseif 5 <= local4 then
        local0[1] = 0
        local0[2] = 40
        local0[4] = 30
        local0[5] = 0
        local0[6] = 15
        local0[7] = 0
        local0[9] = 15
    elseif 2 <= local4 then
        local0[1] = 0
        local0[2] = 20
        local0[4] = 40
        local0[5] = 20
        local0[6] = 0
        local0[7] = 0
        local0[9] = 20
    elseif 1 <= local4 then
        local0[1] = 20
        local0[2] = 0
        local0[4] = 15
        local0[5] = 10
        local0[6] = 10
        local0[7] = 10
        local0[9] = 35
    else
        local0[1] = 30
        local0[2] = 0
        local0[4] = 15
        local0[5] = 0
        local0[6] = 0
        local0[7] = 35
        local0[9] = 20
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Gunshuu_B103010_Statue_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Gunshuu_B103010_Statue_Act02)
    local1[4] = REGIST_FUNC(arg0, arg1, Gunshuu_B103010_Statue_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Gunshuu_B103010_Statue_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Gunshuu_B103010_Statue_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Gunshuu_B103010_Statue_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Gunshuu_B103010_Statue_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Gunshuu_B103010_Statue_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Gunshuu_B103010_Statue_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Gunshuu_B103010_Statue_Act11)
    local1[20] = REGIST_FUNC(arg0, arg1, Gunshuu_B103010_Statue_Act20)
    local1[28] = REGIST_FUNC(arg0, arg1, Gunshuu_B103010_Statue_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, Gunshuu_B103010_Statue_Act29)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Gunshuu_B103010_Statue_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
function Gunshuu_B103010_Statue_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 1, 30)
    GetWellSpace_Odds = 20 * (1 - arg0:GetNumber(2))
    return GetWellSpace_Odds
end

local0 = 7 - local0
function Gunshuu_B103010_Statue_Act02(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, UPVAL0, 1.5, 30)
    GetWellSpace_Odds = 70 * (1 - arg0:GetNumber(2))
    return GetWellSpace_Odds
end

local0 = local5
function Gunshuu_B103010_Statue_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 2)
    if arg0:GetNumber(2) == 0 then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local1, 1.5, 90)
        elseif local0 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local1, 1.5, 90)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local1, 1.5, 90)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local1, 0)
        end
    elseif local0 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local1, 5, 90)
    elseif local0 <= 64 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local1, 5, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local1, 5, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 80 * (1 - arg0:GetNumber(2))
    return GetWellSpace_Odds
end

local0 = 2.7 - local0
function Gunshuu_B103010_Statue_Act05(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0, 2, 20)
    GetWellSpace_Odds = 60 * (1 - arg0:GetNumber(2))
    return GetWellSpace_Odds
end

local0 = 4 - local0
function Gunshuu_B103010_Statue_Act06(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0, 1.5, 90)
    GetWellSpace_Odds = 80 * (1 - arg0:GetNumber(2))
    return GetWellSpace_Odds
end

local0 = 2.6 - local0
function Gunshuu_B103010_Statue_Act07(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0, 1.5, 30)
    GetWellSpace_Odds = 60 * (1 - arg0:GetNumber(2))
    return GetWellSpace_Odds
end

local0 = 2 - local0
function Gunshuu_B103010_Statue_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.1 - local0
function Gunshuu_B103010_Statue_Act09(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL0, 1.5, 90)
    GetWellSpace_Odds = 80 * (1 - arg0:GetNumber(2))
    return GetWellSpace_Odds
end

local0 = local5
function Gunshuu_B103010_Statue_Act10(arg0, arg1, arg2)
    local local0 = UPVAL0 + 100
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1000, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local0, 1.5, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local5
function Gunshuu_B103010_Statue_Act11(arg0, arg1, arg2)
    local local0 = 100
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1000, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local0, 1.5, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gunshuu_B103010_Statue_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gunshuu_B103010_Statue_Act28(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gunshuu_B103010_Statue_Act29(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gunshuu_B103010_Statue_ActAfter(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 3.5)
    local local4 = arg0:GetRandam_Float(2, 3)
    if local0 <= 1.8 then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 2.8 then
        if local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 5 then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
        elseif local1 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif local0 <= 6.5 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
        end
    elseif local0 <= 10 then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 6.5, TARGET_SELF, true, -1)
        end
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8, TARGET_SELF, true, -1)
    end
    return 
end

function Gunshuu_B103010_Statue_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Gunshuu_B103010_StatueBattle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Gunshuu_B103010_StatueBattle_Terminate(arg0, arg1)
    return 
end

local0 = local2
function Gunshuu_B103010_StatueBattle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInterupt(INTERUPT_SuccessGuard) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        return true
    elseif Counter_Act(arg0, arg1, 4, 3007) then
        if arg0:GetRandam_Int(1, 100) <= 10 then
            arg1:AddSubGoal(GOAL_COMMON_Guard, 3, 9910, TARGET_ENE_0, false, 0)
            return true
        elseif 5 <= local1 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, Att3002_Dist_max, 0, 180)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, DIST_None, 0, 180)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            if local0 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_None, 0, 180)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, DIST_None, 0, 180)
            end
        elseif 0 <= local1 then
            local local2 = 35
            local local3 = 10
            local local4 = 30
            local local5 = 10
            local local6 = 15
            if local0 <= 35 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, UPVAL0, 0, 180)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, DIST_None, 0, 180)
            elseif local0 <= 10 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, DIST_None, 0, 180)
            elseif local0 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, DIST_None, 0, 180)
            elseif local0 <= 10 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, DIST_None, 0, 180)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, Att3002_Dist_max, 0, 180)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, DIST_None, 0, 180)
            end
        end
        return true
    elseif arg0:GetNumber(2) == 0 and arg0:GetHpRate(TARGET_SELF) <= 0.5 then
        arg0:SetNumber(2, 1)
        arg1:ClearSubGoal()
        arg0:Replaning()
        return true
    end
    local local4 = 0
    if arg0:GetNumber(2) == 0 then
        local4 = 20
    else
        local4 = 40
    end
    if arg0:IsInterupt(INTERUPT_TargetIsGuard) and local1 <= 1.5 and arg0:GetRandam_Int(1, 100) <= local4 then
        arg1:ClearSubGoal()
        Gunshuu_B103010_Statue_Act01(arg0, arg1, paramTbl)
        return true
    end
    local local6 = 0
    if arg0:GetNumber(2) == 0 then
        local6 = 30
    else
        local6 = 70
    end
    if UseItem_Act(arg0, arg1, 5, local6) then
        arg1:ClearSubGoal()
        if 2.5 <= local1 then
            Gunshuu_B103010_Statue_Act02(arg0, arg1, paramTbl)
        else
            Gunshuu_B103010_Statue_Act04(arg0, arg1, paramTbl)
        end
        return true
    end
    local local7 = 0
    if arg0:GetNumber(2) == 0 then
        local7 = 20
    else
        local7 = 40
    end
    if Shoot_1kind(arg0, arg1, 5, local7) then
        Gunshuu_B103010_Statue_Act02(arg0, arg1, paramTbl)
        return true
    else
        return false
    end
end

return 
