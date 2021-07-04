local local0 = 0.7
local local1 = 0 - local0
local local2 = 2 - local0
local local3 = 0 - local0
local local4 = 6.4 - local0
local local5 = 0 - local0
local local6 = 3.6 - local0
local local7 = 0 - local0
local local8 = 3.4 - local0
local local9 = 0 - local0
local local10 = 0 - local0
local local11 = 0 - local0
local local12 = 3.3 - local0
local local13 = 5.8 - local0
local local14 = 0 - local0
local local15 = 3.1 - local0
local local16 = 0 - local0
function OnIf_264000(arg0, arg1, arg2)
    if arg2 == 0 then
        Gunshuu_B264000_ActAfter(arg0, arg1)
    end
    return 
end

function Gunshuu_B264000Battle_Activate(arg0, arg1)
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
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and arg0:GetRandam_Int(1, 100) <= 50 then
        local0[20] = 100
    elseif arg0:GetNumber(2) == 0 then
        if 10 <= local4 then
            local0[1] = 0
            local0[2] = 30
            local0[4] = 40
            local0[5] = 0
            local0[7] = 30
        elseif 5 <= local4 then
            local0[1] = 0
            local0[2] = 30
            local0[4] = 50
            local0[5] = 0
            local0[7] = 20
        elseif 2 <= local4 then
            local0[1] = 0
            local0[2] = 25
            local0[4] = 45
            local0[5] = 30
            local0[7] = 0
        elseif 1 <= local4 then
            local0[1] = 30
            local0[2] = 0
            local0[4] = 40
            local0[5] = 30
            local0[7] = 0
        else
            local0[1] = 35
            local0[2] = 0
            local0[4] = 30
            local0[5] = 25
            local0[7] = 0
        end
    elseif 10 <= local4 then
        local0[1] = 0
        local0[2] = 30
        local0[4] = 40
        local0[5] = 0
        local0[6] = 0
        local0[7] = 30
    elseif 5 <= local4 then
        local0[1] = 0
        local0[2] = 30
        local0[4] = 40
        local0[5] = 10
        local0[6] = 0
        local0[7] = 20
    elseif 2 <= local4 then
        local0[1] = 0
        local0[2] = 30
        local0[4] = 50
        local0[5] = 20
        local0[6] = 0
        local0[7] = 0
    elseif 1 <= local4 then
        local0[1] = 20
        local0[2] = 0
        local0[4] = 50
        local0[5] = 20
        local0[6] = 10
        local0[7] = 0
    else
        local0[1] = 35
        local0[2] = 0
        local0[4] = 35
        local0[5] = 20
        local0[6] = 10
        local0[7] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Gunshuu_B264000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Gunshuu_B264000_Act02)
    local1[4] = REGIST_FUNC(arg0, arg1, Gunshuu_B264000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Gunshuu_B264000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Gunshuu_B264000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Gunshuu_B264000_Act07)
    local1[10] = REGIST_FUNC(arg0, arg1, Gunshuu_B264000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Gunshuu_B264000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, Gunshuu_B264000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, Gunshuu_B264000_Act13)
    local1[20] = REGIST_FUNC(arg0, arg1, Gunshuu_B264000_Act20)
    local1[28] = REGIST_FUNC(arg0, arg1, Gunshuu_B264000_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, Gunshuu_B264000_Act29)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Gunshuu_B264000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
function Gunshuu_B264000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 20 * (1 - arg0:GetNumber(2))
    return GetWellSpace_Odds
end

local0 = local4
function Gunshuu_B264000_Act02(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 70 * (1 - arg0:GetNumber(2))
    return GetWellSpace_Odds
end

local0 = local8
function Gunshuu_B264000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 2)
    if arg0:GetNumber(2) == 0 then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, local1, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local1, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1, 0)
        end
    elseif local0 <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 80 * (1 - arg0:GetNumber(2))
    return GetWellSpace_Odds
end

local0 = 2 - local0
local0 = 2.3 - local0
function Gunshuu_B264000_Act05(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, UPVAL1, 0)
    GetWellSpace_Odds = 80 * (1 - arg0:GetNumber(2))
    return GetWellSpace_Odds
end

local0 = 1.3 - local0
function Gunshuu_B264000_Act06(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local13
function Gunshuu_B264000_Act07(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 100, 0, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
function Gunshuu_B264000_Act10(arg0, arg1, arg2)
    local local0 = UPVAL0 + 100
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
function Gunshuu_B264000_Act11(arg0, arg1, arg2)
    local local0 = UPVAL0 + 100
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
function Gunshuu_B264000_Act12(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local15
function Gunshuu_B264000_Act13(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, local0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gunshuu_B264000_Act20(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gunshuu_B264000_Act28(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gunshuu_B264000_Act29(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gunshuu_B264000_ActAfter(arg0, arg1)
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

function Gunshuu_B264000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Gunshuu_B264000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Gunshuu_B264000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local4
local0 = local13
local0 = local2
local0 = local8
local0 = 3.4 - local0
local0 = local15
local0 = local6
function Gunshuu_B264000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        if Counter_Act(arg0, arg1, 4, 3007) then
            if 3 <= local3 then
                if local1 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, UPVAL0, 0, 120)
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, UPVAL1, 0, 120)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, UPVAL1, 0, 120)
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, UPVAL2, 0, 120)
                end
            elseif 2 <= local3 then
                if local1 <= 20 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, UPVAL3, 0, 120)
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, UPVAL4, 0, 120)
                elseif local1 <= 30 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, UPVAL4, 0, 120)
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, UPVAL1, 0, 120)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, UPVAL5, 0, 120)
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, UPVAL1, 0, 120)
                end
            elseif 0 <= local3 then
                if local1 <= 10 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, UPVAL2, 0, 120)
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, UPVAL1, 0, 120)
                elseif local1 <= 20 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, UPVAL4, 0, 120)
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, UPVAL1, 0, 120)
                elseif local1 <= 40 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, UPVAL6, 0, 120)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, UPVAL5, 0, 120)
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, UPVAL1, 0, 120)
                end
            end
            return true
        elseif arg0:GetNumber(2) == 0 and arg0:GetHpRate(TARGET_SELF) <= 0.5 then
            arg0:SetNumber(2, 1)
            arg1:ClearSubGoal()
            arg0:Replaning()
            return true
        else
            return false
        end
    end
end

return 
