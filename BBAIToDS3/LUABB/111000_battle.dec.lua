local local0 = 0.5
local local1 = 0 - local0
local local2 = 3.3 - local0
local local3 = 0 - local0
local local4 = 7 - local0
local local5 = 0 - local0
local local6 = 5.8 - local0
local local7 = 0 - local0
local local8 = 1.2 - local0
local local9 = 0 - local0
local local10 = 3 - local0
local local11 = 0 - local0
local local12 = 2.8 - local0
local local13 = 0 - local0
local local14 = 5.8 - local0
local local15 = 0
function OnIf_111000(arg0, arg1, arg2)
    if arg2 == 0 then
        Devotee_of_Death_And_Darkness_111000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local6
function Devotee_of_Death_And_Darkness_111000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest(0)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = 1
    local local7 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if local5 <= 90 and arg0:GetEventRequest(1) == 10 then
        local0[25] = 100
    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[22] = 100
    elseif local3 <= UPVAL0 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and arg0:IsFinishTimer(0) == true and local5 <= 30 then
        local0[10] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif 10 <= local3 then
        local0[1] = 0
        local0[2] = 40
        local0[3] = 0
        local0[4] = 30
        local0[5] = 0
        local0[6] = 30
    elseif 7 <= local3 then
        local0[1] = 20
        local0[2] = 35
        local0[3] = 0
        local0[4] = 30
        local0[5] = 0
        local0[6] = 15
    elseif 3.5 <= local3 then
        local0[1] = 30
        local0[2] = 0
        local0[3] = 20
        local0[4] = 40
        local0[5] = 10
        local0[6] = 0
    elseif 2.5 <= local3 then
        local0[1] = 40
        local0[2] = 0
        local0[3] = 20
        local0[4] = 30
        local0[5] = 10
        local0[6] = 0
    elseif 1.5 <= local3 then
        local0[1] = 40
        local0[2] = 0
        local0[3] = 20
        local0[4] = 30
        local0[5] = 10
        local0[6] = 0
    else
        local0[1] = 30
        local0[2] = 0
        local0[3] = 20
        local0[4] = 30
        local0[5] = 20
        local0[6] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act1)
    local1[2] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act2)
    local1[3] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act3)
    local1[4] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act4)
    local1[5] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act5)
    local1[6] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act6)
    local1[10] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act10)
    local1[15] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act16)
    local1[20] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act22)
    local1[25] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act25)
    local1[30] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act31)
    local1[33] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act37)
    local1[40] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_Act42)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Devotee_of_Death_And_Darkness_111000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
function Devotee_of_Death_And_Darkness_111000_Act1(arg0, arg1, arg2)
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
function Devotee_of_Death_And_Darkness_111000_Act2(arg0, arg1, arg2)
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
function Devotee_of_Death_And_Darkness_111000_Act3(arg0, arg1, arg2)
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
function Devotee_of_Death_And_Darkness_111000_Act4(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 4)
    if local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 5, 90)
    elseif local1 <= 85 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 5, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 5, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function Devotee_of_Death_And_Darkness_111000_Act5(arg0, arg1, arg2)
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
function Devotee_of_Death_And_Darkness_111000_Act6(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = UPVAL0
    local local6 = 0
    if 15 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, -1, AI_DIR_TYPE_F, 6)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, -1, AI_DIR_TYPE_F, 6)
    elseif 7 <= local0 then
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
function Devotee_of_Death_And_Darkness_111000_Act10(arg0, arg1, arg2)
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

function Devotee_of_Death_And_Darkness_111000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, 6, 8, TARGET_ENE_0, true, -1)
    return 
end

function Devotee_of_Death_And_Darkness_111000_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    return 
end

function Devotee_of_Death_And_Darkness_111000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_Death_And_Darkness_111000_Act22(arg0, arg1, arg2)
    Gather_Act(arg0, arg1, 0, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_Death_And_Darkness_111000_Act25(arg0, arg1, arg2)
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

local0 = local2
local0 = local1
function Devotee_of_Death_And_Darkness_111000_Act30(arg0, arg1, arg2)
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
function Devotee_of_Death_And_Darkness_111000_Act31(arg0, arg1, arg2)
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
function Devotee_of_Death_And_Darkness_111000_Act33(arg0, arg1, arg2)
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
function Devotee_of_Death_And_Darkness_111000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.3 - local0
local0 = 0 - local0
function Devotee_of_Death_And_Darkness_111000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.4 - local0
local0 = 0 - local0
function Devotee_of_Death_And_Darkness_111000_Act36(arg0, arg1, arg2)
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
function Devotee_of_Death_And_Darkness_111000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_Death_And_Darkness_111000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 1000
    Approach_Act(arg0, arg1, 0, 100, 0, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_Death_And_Darkness_111000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 1000
    Approach_Act(arg0, arg1, 0, 0, 0, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
function Devotee_of_Death_And_Darkness_111000_Act42(arg0, arg1, arg2)
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

function Devotee_of_Death_And_Darkness_111000_ActAfter_RealTime(arg0, arg1)
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
        if local5 <= 1.5 then
            if local6 <= 10 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local7, 180, true, true, -1)
            elseif local6 <= 30 then
                if local7 == 3 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, local9, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 5)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, local9, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 5)
                end
            elseif local6 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local8, TARGET_ENE_0, 2.5, TARGET_ENE_0, false, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local7, 180, true, true, -1)
            elseif local6 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local8, TARGET_ENE_0, 2.5, TARGET_ENE_0, false, -1)
            elseif local6 <= 90 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local8, TARGET_ENE_0, 2.5, TARGET_ENE_0, false, -1)
            end
        elseif local5 <= 3.5 then
            if local6 <= 10 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local7, 180, true, true, -1)
            elseif local6 <= 20 then
                if local7 == 3 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, local9, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 5)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, local9, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 5)
                end
            elseif local6 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local8, TARGET_ENE_0, 2.5, TARGET_ENE_0, false, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local7, 180, true, true, -1)
            elseif local6 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local8, TARGET_ENE_0, 2.5, TARGET_ENE_0, false, -1)
            elseif local6 <= 90 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local8, TARGET_ENE_0, 2.5, TARGET_ENE_0, false, -1)
            end
        elseif local5 <= 5.5 then
            if local6 <= 25 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local7, 180, true, true, -1)
            elseif local6 <= 45 then
                if local7 == 3 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, local9, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 5)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, local9, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 5)
                end
            elseif local6 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local8, TARGET_ENE_0, 2.5, TARGET_ENE_0, false, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local7, 180, true, true, -1)
            elseif local6 <= 75 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local8, TARGET_ENE_0, 2.5, TARGET_ENE_0, false, -1)
            elseif local6 <= 90 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local8, TARGET_ENE_0, 2.5, TARGET_ENE_0, false, -1)
            end
        elseif local6 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5.5, TARGET_SELF, false, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local9, TARGET_ENE_0, local7, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local5 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, 6, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, MoveTime, TARGET_ENE_0, local7, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local5 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, 6, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, MoveTime, TARGET_ENE_0, local7, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    end
    return 
end

function Devotee_of_Death_And_Darkness_111000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Devotee_of_Death_And_Darkness_111000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Devotee_of_Death_And_Darkness_111000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local4
function Devotee_of_Death_And_Darkness_111000Battle_Interupt(arg0, arg1)
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
