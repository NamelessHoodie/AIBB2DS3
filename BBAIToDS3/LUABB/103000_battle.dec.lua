local local0 = 0.7
local local1 = 0 - local0
local local2 = 2 - local0
local local3 = 0 - local0
local local4 = 6.4 - local0
local local5 = 0 - local0
local local6 = 3.4 - local0
local local7 = 0 - local0
local local8 = 2 - local0
local local9 = 0 - local0
local local10 = 3.3 - local0
local local11 = 5.8 - local0
function OnIf_103000(arg0, arg1, arg2)
    if arg2 == 0 then
        Gunshuu_B103000_ActAfter(arg0, arg1)
    end
    return 
end

function Gunshuu_B103000Battle_Activate(arg0, arg1)
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
        local0[20] = 100
    elseif arg0:GetNumber(2) == 0 then
        if 10 <= local4 then
            local0[1] = 0
            local0[2] = 50
            local0[4] = 0
            local0[5] = 0
            local0[7] = 50
        elseif 5 <= local4 then
            local0[1] = 0
            local0[2] = 50
            local0[4] = 20
            local0[5] = 0
            local0[7] = 30
        elseif 2 <= local4 then
            local0[1] = 0
            local0[2] = 25
            local0[4] = 55
            local0[5] = 20
            local0[7] = 0
        elseif 1 <= local4 then
            local0[1] = 20
            local0[2] = 0
            local0[4] = 50
            local0[5] = 30
            local0[7] = 0
        else
            local0[1] = 30
            local0[2] = 0
            local0[4] = 30
            local0[5] = 40
            local0[7] = 0
        end
    elseif 10 <= local4 then
        local0[1] = 0
        local0[2] = 50
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 50
    elseif 5 <= local4 then
        local0[1] = 0
        local0[2] = 50
        local0[4] = 10
        local0[5] = 10
        local0[6] = 0
        local0[7] = 30
    elseif 2 <= local4 then
        local0[1] = 0
        local0[2] = 25
        local0[4] = 45
        local0[5] = 20
        local0[6] = 10
        local0[7] = 0
    elseif 1 <= local4 then
        local0[1] = 20
        local0[2] = 0
        local0[4] = 30
        local0[5] = 20
        local0[6] = 30
        local0[7] = 0
    else
        local0[1] = 30
        local0[2] = 0
        local0[4] = 10
        local0[5] = 20
        local0[6] = 40
        local0[7] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Gunshuu_B103000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Gunshuu_B103000_Act02)
    local1[4] = REGIST_FUNC(arg0, arg1, Gunshuu_B103000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Gunshuu_B103000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Gunshuu_B103000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Gunshuu_B103000_Act07)
    local1[10] = REGIST_FUNC(arg0, arg1, Gunshuu_B103000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Gunshuu_B103000_Act11)
    local1[20] = REGIST_FUNC(arg0, arg1, Gunshuu_B103000_Act20)
    local1[28] = REGIST_FUNC(arg0, arg1, Gunshuu_B103000_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, Gunshuu_B103000_Act29)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Gunshuu_B103000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
function Gunshuu_B103000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 1, 30)
    GetWellSpace_Odds = 20 * (1 - arg0:GetNumber(2))
    return GetWellSpace_Odds
end

local0 = local4
function Gunshuu_B103000_Act02(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 1.5, 30)
    GetWellSpace_Odds = 70 * (1 - arg0:GetNumber(2))
    return GetWellSpace_Odds
end

local0 = local6
function Gunshuu_B103000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 2)
    if arg0:GetNumber(2) == 0 then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, local1, 5, 90)
        elseif local0 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local1, 5, 90)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local1, 5, 90)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local1, 0)
        end
    elseif local0 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, local1, 5, 90)
    elseif local0 <= 64 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local1, 5, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local1, 5, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 80 * (1 - arg0:GetNumber(2))
    return GetWellSpace_Odds
end

local0 = local8
function Gunshuu_B103000_Act05(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0, 1.5, 30)
    GetWellSpace_Odds = 80 * (1 - arg0:GetNumber(2))
    return GetWellSpace_Odds
end

local0 = 1.3 - local0
function Gunshuu_B103000_Act06(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0, 1.5, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local11
function Gunshuu_B103000_Act07(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0, 1.5, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
function Gunshuu_B103000_Act10(arg0, arg1, arg2)
    local local0 = UPVAL0 + 100
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local0, 1.5, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local0, 1.5, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
function Gunshuu_B103000_Act11(arg0, arg1, arg2)
    local local0 = UPVAL0 + 100
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local0, 1.5, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local0, 1.5, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gunshuu_B103000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gunshuu_B103000_Act28(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gunshuu_B103000_Act29(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gunshuu_B103000_ActAfter(arg0, arg1)
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

function Gunshuu_B103000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Gunshuu_B103000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Gunshuu_B103000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local4
local0 = local2
local0 = local8
local0 = local11
function Gunshuu_B103000Battle_Interupt(arg0, arg1)
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
            if local0 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, UPVAL0, 0, 180)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, DIST_None, 0, 180)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, DIST_None, 0, 180)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_None, 0, 180)
        elseif 0 <= local1 then
            local local2 = 30
            local local3 = 5
            local local4 = 30
            local local5 = 5
            local local6 = 10
            local local7 = 10
            local local8 = 10
            if local0 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, UPVAL1, 0, 180)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, DIST_None, 0, 180)
            elseif local0 <= 35 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, DIST_None, 0, 180)
            elseif local0 <= 65 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, DIST_None, 0, 180)
            elseif local0 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, UPVAL2, 0, 180)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, DIST_None, 0, 180)
            elseif local0 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, UPVAL0, 0, 180)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, DIST_None, 0, 180)
            elseif local0 <= 90 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, UPVAL3, 0, 180)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_None, 0, 180)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, DIST_None, 0, 180)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, DIST_None, 0, 180)
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
        Gunshuu_B103000_Act01(arg0, arg1, paramTbl)
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
            Gunshuu_B103000_Act07(arg0, arg1, paramTbl)
        else
            Gunshuu_B103000_Act04(arg0, arg1, paramTbl)
        end
        return true
    end
    local local8 = 0
    if arg0:GetNumber(2) == 0 then
        local8 = 20
    else
        local8 = 40
    end
    if Shoot_1kind(arg0, arg1, 5, local8) then
        Gunshuu_B103000_Act07(arg0, arg1, paramTbl)
        return true
    else
        return false
    end
end

return 
