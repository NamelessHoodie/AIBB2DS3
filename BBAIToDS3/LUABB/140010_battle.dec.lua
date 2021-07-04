local local0 = 0.6
local local1 = 0.9 - local0
local local2 = 0.9 - local0
local local3 = 0.9 - local0
local local4 = 0.9 - local0
local local5 = 0.9 - local0
local local6 = 0.9 - local0
local local7 = 3.2 - local0
local local8 = 0.9 - local0
local local9 = 0.9 - local0
local local10 = 0.9 - local0
local local11 = 0.9 - local0
local local12 = 0.9 - local0
local local13 = 0.9 - local0
local local14 = 4 - local0
local local15 = 0.9 - local0
local local16 = 0.9 - local0
local local17 = 9.7 - local0
local local18 = 0.9 - local0
function OnIf_140010(arg0, arg1, arg2)
    if arg2 == 0 then
        IdiocySpider_Chaild_Servant140010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function IdiocySpider_Chaild_Servant140010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetDist(TARGET_EVENT)
    local local5 = arg0:GetEventRequest()
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local7 = arg0:GetTeamRecordCount(COORDINATE_TYPE_Attack, TARGET_ENE_0, 10)
    local local8 = arg0:GetTeamRecordCount(COORDINATE_TYPE_AttackOrder, TARGET_ENE_0, 10)
    if not (12 > local4 or local4 > 20) or 10 <= local3 then
        local0[14] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[13] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[6] = 20
        local0[8] = 10
        local0[13] = 70
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and arg0:GetRandam_Int(1, 100) <= 40 then
        local0[9] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[19] = 100
    elseif 3 <= local7 or 3 <= local8 or 3 <= local7 + local8 then
        local0[13] = 100
    elseif 10 <= local3 then
        local0[1] = 15
        local0[2] = 10
        local0[3] = 10
        local0[4] = 10
        local0[6] = 15
        local0[7] = 15
        local0[10] = 10
        local0[11] = 15
    elseif 7 <= local3 then
        local0[1] = 5
        local0[3] = 10
        local0[6] = 15
        local0[7] = 25
        local0[8] = 10
        local0[10] = 5
        local0[11] = 30
    elseif 5 <= local3 then
        local0[1] = 10
        local0[3] = 5
        local0[6] = 25
        local0[7] = 30
        local0[8] = 5
        local0[10] = 10
        local0[12] = 15
    elseif 3 <= local3 then
        local0[1] = 10
        local0[2] = 5
        local0[3] = 20
        local0[4] = 25
        local0[10] = 10
        local0[12] = 30
    elseif 1.5 <= local3 then
        local0[1] = 15
        local0[2] = 5
        local0[3] = 25
        local0[4] = 20
        local0[10] = 10
        local0[12] = 15
    else
        local0[1] = 10
        local0[2] = 30
        local0[5] = 40
        local0[10] = 20
    end
    local1[1] = REGIST_FUNC(arg0, arg1, IdiocySpider_Chaild_Servant140010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, IdiocySpider_Chaild_Servant140010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, IdiocySpider_Chaild_Servant140010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, IdiocySpider_Chaild_Servant140010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, IdiocySpider_Chaild_Servant140010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, IdiocySpider_Chaild_Servant140010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, IdiocySpider_Chaild_Servant140010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, IdiocySpider_Chaild_Servant140010_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, IdiocySpider_Chaild_Servant140010_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, IdiocySpider_Chaild_Servant140010_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, IdiocySpider_Chaild_Servant140010_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, IdiocySpider_Chaild_Servant140010_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, IdiocySpider_Chaild_Servant140010_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, IdiocySpider_Chaild_Servant140010_Act14)
    local1[19] = REGIST_FUNC(arg0, arg1, IdiocySpider_Chaild_Servant140010_Act19)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, IdiocySpider_Chaild_Servant140010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 4 - local0
local0 = 4 - local0
function IdiocySpider_Chaild_Servant140010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3001, TARGET_ENE_0, UPVAL1 + 1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.2 - local0
function IdiocySpider_Chaild_Servant140010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.5 - local0
function IdiocySpider_Chaild_Servant140010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
function IdiocySpider_Chaild_Servant140010_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local7
function IdiocySpider_Chaild_Servant140010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.6 - local0
function IdiocySpider_Chaild_Servant140010_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.9 - local0
function IdiocySpider_Chaild_Servant140010_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL0 + 2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, AttDist1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7 - local0
function IdiocySpider_Chaild_Servant140010_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3 - local0
function IdiocySpider_Chaild_Servant140010_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
function IdiocySpider_Chaild_Servant140010_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3011, TARGET_ENE_0, AttDist1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 9.7 - local0
function IdiocySpider_Chaild_Servant140010_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
function IdiocySpider_Chaild_Servant140010_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function IdiocySpider_Chaild_Servant140010_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetDist(TARGET_FRI_0)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = true
    local local5 = arg0:GetRandam_Float(2, 4)
    local local6 = arg0:GetRandam_Int(90, 180)
    if local0 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local4 = false
        local5 = arg0:GetRandam_Float(3, 4)
    elseif local0 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local4 = true
        local5 = arg0:GetRandam_Float(2, 3)
    else
        local4 = true
        local5 = arg0:GetRandam_Float(1, 2)
    end
    if local0 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local1 <= 3 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
        elseif local2 <= 10 and 0 <= local2 then
            if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, 1, local6, local4, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, 0, local6, local4, true, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), local6, local4, true, -1)
        end
    elseif local0 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local1 <= 3 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
        elseif local1 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 8, TARGET_ENE_0, false, -1)
        elseif local2 <= 6 and 0 <= local2 then
            if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, 1, local6, local4, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, 0, local6, local4, true, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), local6, local4, true, -1)
        end
    elseif local1 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    elseif local2 <= 3 and 0 <= local2 then
        if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
            if local3 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, 1, local6, local4, true, -1)
            elseif local3 <= 75 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
            end
        elseif local3 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, 0, local6, local4, true, -1)
        elseif local3 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), local6, local4, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function IdiocySpider_Chaild_Servant140010_Act14(arg0, arg1, arg2)
    if 8 <= arg0:GetDist(TARGET_EVENT) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_EVENT, arg0:GetRandam_Float(5, 8), TARGET_ENE_0, true, -1)
    else
        IdiocySpider_Chaild_Servant140010_Act13(arg0, arg1, arg2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local7
function IdiocySpider_Chaild_Servant140010_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function IdiocySpider_Chaild_Servant140010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

local0 = local7
function IdiocySpider_Chaild_Servant140010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(2, 3)
    if 15 <= arg0:GetDist(TARGET_EVENT) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_EVENT, arg0:GetRandam_Float(5, 8), TARGET_ENE_0, true, -1)
    elseif local0 <= 1.5 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            if local1 <= 35 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
            end
        elseif not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) or local1 > 70 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                if local1 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), false, true, -1)
                end
            elseif local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), false, true, -1)
            end
        end
    elseif local0 <= 3 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            if local1 <= 35 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        elseif not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) or local1 > 50 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        end
    elseif local0 <= 6 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function IdiocySpider_Chaild_Servant140010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function IdiocySpider_Chaild_Servant140010Battle_Terminate(arg0, arg1)
    return 
end

function IdiocySpider_Chaild_Servant140010Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        if arg0:IsInterupt(INTERUPT_Damaged) and arg0:GetDist(TARGET_ENE_0) <= 3 and arg0:GetRandam_Int(1, 100) <= 20 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
            return true
        else
            return false
        end
    end
end

return 
