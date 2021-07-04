local local0 = 0.4
local local1 = 0.4 - local0
local local2 = 2.9 - local0
local local3 = 0.4 - local0
local local4 = 4.6 - local0
local local5 = 2.4 - local0
local local6 = 5 - local0
local local7 = 2.4 - local0
local local8 = 7.3 - local0
local local9 = 2.1 - local0
local local10 = 1.9 - local0
local local11 = 0.4 - local0
local local12 = 4.4 - local0
local local13 = 0 - local0
local local14 = 0
local0 = local8
function OnIf_270002(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg2 == 0 then
        Messenger_of_Church_Cross270002_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, -1)
        if local0 <= 50 then
            arg0:EndGuard()
            arg0:SetNumber(0, 1)
        end
    end
    if arg2 == 2 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, AttDist, 0, -1)
        if local0 <= 50 then
            arg0:EndGuard()
            arg0:SetNumber(0, 1)
        end
    end
    return 
end

function Messenger_of_Church_Cross270002Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetNpcThinkParamID()
    local local7 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local8 = arg0:GetRandam_Int(1, 100)
    local local9 = arg0:GetNumber(1)
    if arg0:GetNumber(0) == 0 then
        if 4.5 <= local3 then
            local0[24] = 100
        else
            local0[25] = 100
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    else
        if arg0:GetNumber(0) == 1 or arg0:GetNumber(0) == 0 then
            if arg0:GetNumber(0) == 0 or local9 <= 0 then
                arg0:SetNumber(1, arg0:GetRandam_Int(2, 4))
                local9 = arg0:GetNumber(1)
                arg0:SetNumber(0, 1)
            else
                arg0:SetNumber(1, local9 - 1)
                local9 = arg0:GetNumber(1)
            end
            if local9 <= 0 then
                arg0:StartGuard(9910)
                arg0:SetNumber(0, 2)
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, 7, TARGET_ENE_0, true, 9910)
                arg0:SetTimer(0, arg0:GetRandam_Int(10, 20))
            end
        elseif arg0:IsFinishTimer(0) == true then
            arg0:EndGuard()
            arg0:SetNumber(0, 1)
        end
        if arg0:GetNumber(0) == 2 then
            if 7 <= local3 then
                local0[4] = 20
                local0[5] = 30
                local0[6] = 50
            elseif 2.5 <= local3 then
                local0[4] = 15
                local0[5] = 15
                local0[6] = 70
            else
                local0[4] = 40
                local0[5] = 50
                local0[6] = 10
            end
        elseif 6 <= local3 then
            local0[1] = 30
            local0[2] = 50
            local0[3] = 20
        elseif 2.5 <= local3 then
            local0[1] = 50
            local0[2] = 40
            local0[3] = 10
        else
            local0[1] = 60
            local0[2] = 40
            local0[3] = 0
        end
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act25)
    local1[30] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act47)
    local1[48] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act48)
    local1[49] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act49)
    local1[50] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_Act50)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Messenger_of_Church_Cross270002_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
local0 = local14
function Messenger_of_Church_Cross270002_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 2
    local local5 = UPVAL0 + 1.5
    if UPVAL2 == 0 then
        local4 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local4, 0, 2)
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local5, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
local0 = local14
function Messenger_of_Church_Cross270002_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 2
    local local5 = UPVAL0 + 1.5
    if UPVAL2 == 0 then
        local4 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local4, 0, 2)
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local5, 0, -1)
    elseif local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local5, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
local0 = local14
function Messenger_of_Church_Cross270002_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 10
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
local0 = local14
function Messenger_of_Church_Cross270002_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 100, 2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
local0 = local14
function Messenger_of_Church_Cross270002_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 100, 2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Messenger_of_Church_Cross270002_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(1.5, 2.5)
    local local5 = arg0:GetRandam_Float(1.5, 2.5)
    local local6 = arg0:GetRandam_Float(1.5, 2.5)
    local local7 = 9999
    local local8 = 100
    if local0 <= 3 then
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, local3, 360, true, true, -1)
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local5, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, local3, 360, true, true, -1)
        end
    elseif local0 <= 7 then
        if local1 <= 50 then
            Approach_Act(arg0, arg1, 4, local7, local8, local4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, local3, 360, true, true, -1)
        end
    elseif local0 <= 10 then
        if local1 <= 50 then
            Approach_Act(arg0, arg1, 4, local7, local8, local4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local6, TARGET_ENE_0, local3, 360, true, true, -1)
        end
    else
        Approach_Act(arg0, arg1, 4, local7, local8, local4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Messenger_of_Church_Cross270002_Act07(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Messenger_of_Church_Cross270002_Act08(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Messenger_of_Church_Cross270002_Act09(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Messenger_of_Church_Cross270002_Act10(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local9
local0 = local10
function Messenger_of_Church_Cross270002_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local0 <= UPVAL0 then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3008, TARGET_ENE_0, DIST_None)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and local0 <= UPVAL1 then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3009, TARGET_ENE_0, DIST_None)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Messenger_of_Church_Cross270002_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Messenger_of_Church_Cross270002_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 99 - local0
function Messenger_of_Church_Cross270002_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 999
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3033, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Messenger_of_Church_Cross270002_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, 20, 20, 0, 2)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Messenger_of_Church_Cross270002_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.3 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Cross270002_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.4 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Cross270002_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function Messenger_of_Church_Cross270002_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.5 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Cross270002_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.1 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Cross270002_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
function Messenger_of_Church_Cross270002_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function Messenger_of_Church_Cross270002_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local9
local0 = 0.4 - local0
function Messenger_of_Church_Cross270002_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 10
    local local3 = 0
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1, 180)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = 0.4 - local0
function Messenger_of_Church_Cross270002_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 10
    local local3 = 0
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1, 180)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function Messenger_of_Church_Cross270002_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Cross270002_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Cross270002_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Cross270002_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Cross270002_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Cross270002_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Cross270002_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Cross270002_Act47(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Cross270002_Act48(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Cross270002_Act49(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Cross270002_Act50(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Messenger_of_Church_Cross270002_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(0, 2)
    local local5 = arg0:GetRandam_Float(1, 2)
    local local6 = 0
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if local0 <= 2 then
            if local1 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
            elseif local1 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
            elseif local1 <= 35 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
            end
        elseif local0 <= 5 then
            if local1 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
            end
        elseif local0 <= 10 and local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 4 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    end
    return 
end

function Messenger_of_Church_Cross270002_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Messenger_of_Church_Cross270002Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Messenger_of_Church_Cross270002Battle_Terminate(arg0, arg1)
    return 
end

function Messenger_of_Church_Cross270002Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = 30
    if arg0:GetNumber(0) == 2 then
        local4 = 100
    end
    if UseItem_Act(arg0, arg1, 9, local4) then
        arg1:ClearSubGoal()
        if arg0:GetNumber(0) == 2 then
            Messenger_of_Church_Cross270002_Act04(arg0, arg1, paramTbl)
        else
            Messenger_of_Church_Cross270002_Act03(arg0, arg1, paramTbl)
        end
        return true
    else
        return false
    end
end

return 
