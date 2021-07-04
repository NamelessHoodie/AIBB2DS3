local local0 = 1.6
local local1 = 0 - local0
local local2 = 12.8 - local0
local local3 = 0 - local0
local local4 = 12.4 - local0
local local5 = 0 - local0
local local6 = 7 - local0
local local7 = 0 - local0
local local8 = 2.2 - local0
local local9 = 0 - local0
local local10 = 10.5 - local0
local local11 = 0 - local0
local local12 = 6.2 - local0
local local13 = 0 - local0
local local14 = 15.2 - local0
local local15 = 0
function OnIf_130000(arg0, arg1, arg2)
    if arg2 == 0 then
        Devotee_of_Death_And_Darkness_130000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local6
function Devotee_of_Death_And_Darkness_130000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest(0)
    local local5 = 1
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif local3 <= UPVAL0 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and arg0:IsFinishTimer(0) == true and arg0:GetRandam_Int(1, 100) <= 30 then
        local0[10] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif 15.2 <= local3 then
        local0[1] = 25
        local0[2] = 25
        local0[3] = 0
        local0[4] = 25
        local0[5] = 0
        local0[6] = 25
    elseif 9.9 <= local3 then
        local0[1] = 30
        local0[2] = 25
        local0[3] = 10
        local0[4] = 25
        local0[5] = 10
    elseif 6.2 <= local3 then
        local0[1] = 10
        local0[2] = 15
        local0[3] = 25
        local0[4] = 15
        local0[5] = 35
    else
        local0[1] = 15
        local0[2] = 15
        local0[3] = 35
        local0[4] = 10
        local0[5] = 25
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act1)
    local1[2] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act2)
    local1[3] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act3)
    local1[4] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act4)
    local1[5] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act5)
    local1[6] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act6)
    local1[10] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act10)
    local1[15] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act16)
    local1[20] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act23)
    local1[30] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act31)
    local1[33] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act37)
    local1[40] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_Act42)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_130000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
function Devotee_of_Death_And_Darkness_130000_Act1(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function Devotee_of_Death_And_Darkness_130000_Act2(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function Devotee_of_Death_And_Darkness_130000_Act3(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 6, 0, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Devotee_of_Death_And_Darkness_130000_Act4(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL1
    local local2 = UPVAL0
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 4)
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 6)
    end
    if local0 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 5, 90)
    elseif local0 <= 85 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 5, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 5, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function Devotee_of_Death_And_Darkness_130000_Act5(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function Devotee_of_Death_And_Darkness_130000_Act6(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = UPVAL0
    local local6 = 0
    if 15.3 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, -1, AI_DIR_TYPE_F, 6)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, -1, AI_DIR_TYPE_F, 6)
    elseif 9.9 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, -1, AI_DIR_TYPE_F, 6)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
function Devotee_of_Death_And_Darkness_130000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(0, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Devotee_of_Death_And_Darkness_130000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, 6, 8, TARGET_ENE_0, true, -1)
    return 
end

function Devotee_of_Death_And_Darkness_130000_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function Devotee_of_Death_And_Darkness_130000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_Death_And_Darkness_130000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_Death_And_Darkness_130000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Devotee_of_Death_And_Darkness_130000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function Devotee_of_Death_And_Darkness_130000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function Devotee_of_Death_And_Darkness_130000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Devotee_of_Death_And_Darkness_130000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 12.3 - local0
local0 = 0 - local0
function Devotee_of_Death_And_Darkness_130000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 12.8 - local0
local0 = 0 - local0
function Devotee_of_Death_And_Darkness_130000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function Devotee_of_Death_And_Darkness_130000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_Death_And_Darkness_130000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 1000
    Approach_Act(arg0, arg1, 0, 100, 0, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_Death_And_Darkness_130000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 1000
    Approach_Act(arg0, arg1, 0, 0, 0, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
function Devotee_of_Death_And_Darkness_130000_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and arg0:IsFinishTimer(0) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
        arg0:SetTimer(0, 4)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_Death_And_Darkness_130000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(3, 4.5)
    local local4 = arg0:GetRandam_Float(3.5, 5)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetRandam_Int(3, 4)
    local local8 = arg0:GetRandam_Float(2, 3.5)
    local local9 = arg0:GetRandam_Float(2.5, 4.5)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if local5 <= 6.2 then
            if local6 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local8, TARGET_ENE_0, 9.9, TARGET_ENE_0, false, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local7, 180, true, true, -1)
            elseif local6 <= 90 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local8, TARGET_ENE_0, 9.9, TARGET_ENE_0, false, -1)
            end
        elseif local5 <= 9.9 then
            if local6 <= 10 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local7, 180, true, true, -1)
            elseif local6 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local8, TARGET_ENE_0, 9.9, TARGET_ENE_0, false, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local7, 180, true, true, -1)
            elseif local6 <= 90 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local8, TARGET_ENE_0, 9.9, TARGET_ENE_0, false, -1)
            end
        elseif local5 <= 15.2 then
            if local6 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local7, 180, true, true, -1)
            elseif local6 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local8, TARGET_ENE_0, 9.9, TARGET_ENE_0, false, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local7, 180, true, true, -1)
            elseif local6 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local8, TARGET_ENE_0, 9.9, TARGET_ENE_0, false, -1)
            end
        elseif local6 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 9.9, TARGET_SELF, false, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local7, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local5 <= 9.9 then
            arg1:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, 10, 12, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, MoveTime, TARGET_ENE_0, local7, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local5 <= 9.9 then
            arg1:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, 10, 12, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, MoveTime, TARGET_ENE_0, local7, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    end
    return 
end

function Devotee_of_Death_And_Darkness_130000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Devotee_of_Death_And_Darkness_130000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Devotee_of_Death_And_Darkness_130000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local4
function Devotee_of_Death_And_Darkness_130000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    if Damaged_Step(arg0, arg1, 3, 15, 40, 30, 30, 4) then
        return true
    elseif 8 <= arg0:GetDist(TARGET_ENE_0) and arg0:IsInterupt(INTERUPT_Damaged) and arg0:GetRandam_Int(1, 100) <= 100 then
        arg1:ClearSubGoal()
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 4)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0, 0, -1)
        return true
    end
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = Shoot_2dist(arg0, arg1, 6, 20, 20, 40)
    if local5 == 1 then
        if local3 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local5 == 2 then
        if local3 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 4)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0, 0, -1)
        return true
    end
    return false
end

return 
