local local0 = 0.4
local local1 = 1.5 - local0
local local2 = 3.7 - local0
local local3 = 0 - local0
local local4 = 4.9 - local0
local local5 = 0 - local0
local local6 = 5.9 - local0
local local7 = 0 - local0
local local8 = 5.4 - local0
local local9 = 0 - local0
local local10 = 2.7 - local0
local local11 = 0 - local0
local local12 = 5.2 - local0
local local13 = 0 - local0
local local14 = 7.8 - local0
local local15 = 0 - local0
local local16 = 1.8 - local0
local local17 = 0 - local0
local local18 = 3.5 - local0
local local19 = 0 - local0
local local20 = 0 - local0
local local21 = 0 - local0
local local22 = 0 - local0
function OnIf_403000(arg0, arg1, arg2)
    if arg2 == 0 then
        KamjaB_403000_ActAfter(arg0, arg1)
    end
    return 
end

function KamjaB_403000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetNumber(0)
    local local9 = arg0:GetEventRequest()
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025)
    if arg0:GetNpcThinkParamID() == 403030 then
        DashorNot = 0
    else
        DashorNot = 100
    end
    if local9 == 110 then
        local6 = 1
    else
        local6 = 0
    end
    if arg0:IsFinishTimer(0) == false then
        local6 = 0
    end
    local0[16] = 10000 * local6
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and local5 <= 100 then
        local0[15] = 60
        local0[20] = 40
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local5 <= 100 then
        local0[15] = 40
        local0[21] = 60
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local5 <= 100 then
        local0[15] = 40
        local0[22] = 60
    elseif local9 == 120 then
        if 8 <= local4 then
            local0[10] = 20
            local0[11] = 80
        elseif 5 <= local4 then
            local0[10] = 60
            local0[11] = 40
        elseif 2 <= local4 then
            local0[1] = 20
            local0[2] = 0
            local0[3] = 0
            local0[5] = 0
            local0[10] = 60
            local0[11] = 20
        else
            local0[1] = 10
            local0[5] = 0
            local0[10] = 90
            local0[11] = 0
        end
    elseif arg0:GetNpcThinkParamID() == 403000 then
        if 8 <= local4 then
            local0[1] = 10
            local0[2] = 20
            local0[3] = 20
            local0[5] = 0
            local0[6] = 10
            local0[10] = 0
            local0[11] = 20
            local0[23] = 30
        elseif 5 <= local4 then
            local0[1] = 20
            local0[2] = 20
            local0[3] = 30
            local0[5] = 0
            local0[6] = 10
            local0[10] = 0
            local0[11] = 0
            local0[23] = 20
        elseif 2 <= local4 then
            local0[1] = 30
            local0[2] = 25
            local0[3] = 10
            local0[5] = 0
            local0[6] = 15
            local0[10] = 0
            local0[11] = 20
        else
            local0[1] = 30
            local0[2] = 10
            local0[3] = 10
            local0[5] = 20
            local0[6] = 30
            local0[10] = 0
            local0[11] = 0
        end
    elseif arg0:GetNpcThinkParamID() == 403010 then
        if 8 <= local4 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[5] = 0
            local0[6] = 0
            local0[8] = 10
            local0[9] = 0
            local0[10] = 30
            local0[11] = 60
        elseif 5 <= local4 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[5] = 0
            local0[6] = 0
            local0[8] = 10
            local0[9] = 0
            local0[10] = 70
            local0[11] = 20
        elseif 2 <= local4 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 0
            local0[5] = 0
            local0[6] = 0
            local0[8] = 0
            local0[9] = 20
            local0[10] = 60
            local0[11] = 0
        else
            local0[1] = 20
            local0[2] = 0
            local0[3] = 0
            local0[5] = 40
            local0[6] = 0
            local0[10] = 40
            local0[11] = 0
        end
    elseif arg0:GetNpcThinkParamID() == 403020 then
        if 8 <= local4 then
            local0[7] = 0
            local0[8] = 30
            local0[9] = 0
            local0[10] = 0
            local0[11] = 50
            local0[23] = 20
        elseif 5 <= local4 then
            local0[7] = 0
            local0[8] = 20
            local0[9] = 20
            local0[10] = 40
            local0[11] = 20
        elseif 2 <= local4 then
            local0[7] = 20
            local0[8] = 0
            local0[9] = 40
            local0[10] = 40
            local0[11] = 0
        else
            local0[7] = 20
            local0[8] = 0
            local0[9] = 20
            local0[10] = 60
            local0[11] = 0
        end
    elseif 8 <= local4 then
        local0[1] = 10
        local0[2] = 30
        local0[3] = 30
        local0[5] = 0
        local0[6] = 10
        local0[23] = 20
    elseif 5 <= local4 then
        local0[1] = 20
        local0[2] = 30
        local0[3] = 30
        local0[6] = 10
        local0[23] = 10
    elseif 2 <= local4 then
        local0[1] = 25
        local0[2] = 25
        local0[3] = 25
        local0[5] = 0
        local0[6] = 25
    else
        local0[1] = 40
        local0[2] = 20
        local0[3] = 20
        local0[5] = 0
        local0[6] = 20
    end
    if local8 == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if local8 == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if local8 == 3 and 0 < local0[3] then
        local0[3] = 1
    end
    if local8 == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if local8 == 5 and 0 < local0[5] then
        local0[5] = 1
    end
    if local8 == 6 and 0 < local0[6] then
        local0[6] = 1
    end
    if local8 == 7 and 0 < local0[7] then
        local0[7] = 1
    end
    if local8 == 8 and 0 < local0[8] then
        local0[8] = 1
    end
    if local8 == 9 and 0 < local0[9] then
        local0[9] = 1
    end
    local1[1] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act11)
    local1[15] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act17)
    local1[20] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act23)
    local1[30] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, KamjaB_403000_Act38)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, KamjaB_403000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local4
local0 = local6
local0 = local10
function KamjaB_403000_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + DashorNot, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL1 + 1.2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL2 + 1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, UPVAL3 + 10, 0)
    if arg0:GetNpcThinkParamID() == 403020 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 10, 0)
    end
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
function KamjaB_403000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act(arg0, arg1, UPVAL0 + 3, UPVAL0 + DashorNot, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local14
function KamjaB_403000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + DashorNot, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local18
function KamjaB_403000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + DashorNot, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = local10
function KamjaB_403000_Act06(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 10
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + DashorNot, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 10, 3003, TARGET_ENE_0, UPVAL1 + 10, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = local10
function KamjaB_403000_Act07(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + DashorNot, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 10, 3003, TARGET_ENE_0, UPVAL1 + 10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 10, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5 - local0
function KamjaB_403000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 999
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 1 - local0
function KamjaB_403000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 999
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 20
    return GetWellSpace_Odds
end

function KamjaB_403000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KamjaB_403000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(2.5, 3.5)
    if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
local0 = local10
function KamjaB_403000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL0 + DashorNot
    local local3 = 0
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = 10
    arg1:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 10, 3007, TARGET_ENE_0, UPVAL1 + 10, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 999 - local0
function KamjaB_403000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 999
    local local3 = 0
    arg0:SetTimer(0, 15)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 999 - local0
function KamjaB_403000_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 999
    local local3 = 0
    arg0:SetTimer(0, 15)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KamjaB_403000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = DIST_None
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(180, 180), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KamjaB_403000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = DIST_None
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, 0, arg0:GetRandam_Int(180, 180), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KamjaB_403000_Act22(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 1.5 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, 1, arg0:GetRandam_Int(180, 180), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KamjaB_403000_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act(arg0, arg1, 10, 100, 0, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
function KamjaB_403000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 5, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
function KamjaB_403000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 5, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
function KamjaB_403000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 5, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
function KamjaB_403000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 5, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
function KamjaB_403000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 2, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local18
function KamjaB_403000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
function KamjaB_403000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
function KamjaB_403000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
function KamjaB_403000_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarksideHunter400000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3010, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KamjaB_403000_ActAfter(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(3, 5)
    local local4 = arg0:GetRandam_Float(1.5, 3)
    if local0 <= 3 then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(3, 5.5), TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 6.5 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
        end
    elseif local0 <= 10 then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 6.5, TARGET_SELF, true, -1)
        end
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8, TARGET_SELF, true, -1)
    end
    return 
end

function KamjaB_403000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function KamjaB_403000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function KamjaB_403000Battle_Terminate(arg0, arg1)
    return 
end

function KamjaB_403000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        local local4 = arg0:GetRandam_Float(2.5, 3.5)
        local local5 = 10
        if Counter_Act(arg0, arg1, 4, 3040) then
            if 10 <= local3 then
                if local1 <= 40 then
                    if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
                        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
                    else
                        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
                    end
                end
            elseif 4 <= local3 then
                if arg0:GetNpcThinkParamID() == 403000 and local1 <= 60 then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local5, 0, 0)
                elseif arg0:GetNpcThinkParamID() == 403030 then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local5, 0, 0)
                end
            elseif 0 <= local3 then
                if arg0:GetNpcThinkParamID() == 403000 or arg0:GetNpcThinkParamID() == 403030 then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, local5, 0, 0)
                elseif local1 <= 80 then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, local5, 0, 0)
                end
            end
            return true
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025) then
            arg1:ClearSubGoal()
            arg0:Replaning()
            return true
        else
            return false
        end
    end
end

return 
