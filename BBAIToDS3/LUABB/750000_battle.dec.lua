local local0 = 0.5
local local1 = 0.5 - local0
local local2 = 5.4 - local0
local local3 = 0.5 - local0
local local4 = 4.8 - local0
local local5 = 0.5 - local0
local local6 = 4.8 - local0
local local7 = 0.5 - local0
local local8 = 4.3 - local0
local local9 = 0.5 - local0
local local10 = 4.4 - local0
local local11 = 0.5 - local0
local local12 = 4.9 - local0
local local13 = 0.5 - local0
local local14 = 9.4 - local0
local local15 = 0.5 - local0
local local16 = 16.7 - local0
local local17 = 0.5 - local0
local local18 = 15.2 - local0
local local19 = 0.5 - local0
local local20 = 5.8 - local0
local local21 = 0.5 - local0
local local22 = 30 - local0
local local23 = 0.5 - local0
local local24 = 4.3 - local0
local local25 = 0.5 - local0
local local26 = 5.5 - local0
function OnIf_750000(arg0, arg1, arg2)
    if arg2 == 0 then
        EnemyAvate750000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function EnemyAvate750000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNumber(0) ~= 2 and arg0:HasSpecialEffectId(TARGET_SELF, 5547) == true then
        arg0:SetNumber(0, 2)
        arg1:ClearSubGoal()
        arg0:Replaning()
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5548) == true and arg0:HasSpecialEffectId(TARGET_SELF, 5549) == false then
        local0[16] = 100
    elseif arg0:GetHpRate(TARGET_SELF) <= 0.5 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        local0[12] = 100
    else
        if arg0:GetNpcThinkParamID() ~= 750090 then

        end
        if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            local0[20] = 100
        elseif 10 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 35
            local0[8] = 35
            local0[9] = 30
            local0[10] = 0
            local0[11] = 0
        elseif 5 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 10
            local0[5] = 10
            local0[6] = 20
            local0[7] = 10
            local0[8] = 10
            local0[9] = 20
            local0[10] = 0
            local0[11] = 20
        elseif 2 <= local3 then
            local0[1] = 30
            local0[2] = 15
            local0[3] = 15
            local0[4] = 30
            local0[5] = 15
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0
            local0[9] = 0
            local0[10] = 0
            local0[11] = 0
        else
            local0[1] = 30
            local0[2] = 20
            local0[3] = 20
            local0[4] = 30
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0
            local0[9] = 0
            local0[10] = 0
            local0[11] = 0
        end
    end
    if arg0:IsFinishTimer(2) == false then
        local0[4] = 0
    end
    if arg0:IsFinishTimer(3) == false then
        local0[5] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act12)
    local1[15] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act16)
    local1[20] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act20)
    local1[30] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, EnemyAvate750000_Act42)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, EnemyAvate750000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local4
local0 = local6
local0 = local8
local0 = local24
function EnemyAvate750000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1 + 2
    local local3 = UPVAL4 + 2
    local local4 = UPVAL0
    local local5 = 12.4
    local local6 = UPVAL0 + 1
    local local7 = 0
    if local5 <= arg0:GetDist(TARGET_ENE_0) then
        if local0 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local5, TARGET_SELF, false, -1)
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
        else
            Approach_Act(arg0, arg1, local4, local6, local7, 3)
        end
    else
        Approach_Act(arg0, arg1, local4, local6, local7, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 2, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local3, 0, 0)
    end
    if local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local3, 0, 0)
    end
    if local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL2 + 2, 0)
    elseif local1 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, UPVAL3 + 2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local3, 0, 0)
    end
    if arg0:GetNumber(0) == 2 then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local6
function EnemyAvate750000_Act02(arg0, arg1, arg2)
    local local0 = UPVAL0 + 2
    local local1 = UPVAL0
    local local2 = 11.8
    local local3 = UPVAL0 + 1
    local local4 = 0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        if arg0:GetRandam_Int(1, 100) <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local2, TARGET_SELF, false, -1)
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
        else
            Approach_Act(arg0, arg1, local1, local3, local4, 3)
        end
    else
        Approach_Act(arg0, arg1, local1, local3, local4, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local0, 0, 0, 0, 0)
        if arg0:GetNumber(0) == 2 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local0, 0)
        end
    end
    if arg0:GetNumber(0) == 2 then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local8
function EnemyAvate750000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 2
    local local2 = UPVAL0
    local local3 = 11.3
    local local4 = UPVAL0 + 1
    local local5 = 0
    if local3 <= arg0:GetDist(TARGET_ENE_0) then
        if arg0:GetRandam_Int(1, 100) <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local3, TARGET_SELF, false, -1)
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
        else
            Approach_Act(arg0, arg1, local2, local4, local5, 3)
        end
    else
        Approach_Act(arg0, arg1, local2, local4, local5, 3)
    end
    if local0 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, 0)
    elseif local0 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, local1, 0)
    elseif local0 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, 0, 0, 0)
        if arg0:GetNumber(0) == 2 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local1, 0)
        end
    end
    if arg0:GetNumber(0) == 2 then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local10
function EnemyAvate750000_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0 + 3
    local local1 = UPVAL0
    local local2 = 10.4
    local local3 = UPVAL0 + 1
    local local4 = 0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        if arg0:GetRandam_Int(1, 100) <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local2, TARGET_SELF, false, -1)
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
        else
            Approach_Act(arg0, arg1, local1, local3, local4, 3)
        end
    else
        Approach_Act(arg0, arg1, local1, local3, local4, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local0, 0, 0, 0, 0)
        if arg0:GetNumber(0) == 2 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local0, 0)
        end
    end
    arg0:SetTimer(2, 15)
    if arg0:GetNumber(0) == 2 then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local12
function EnemyAvate750000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 3
    local local2 = UPVAL0
    local local3 = 11.9
    local local4 = UPVAL0 + 1
    local local5 = 0
    if local3 <= arg0:GetDist(TARGET_ENE_0) then
        if arg0:GetRandam_Int(1, 100) <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local3, TARGET_SELF, false, -1)
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
        else
            Approach_Act(arg0, arg1, local2, local4, local5, 3)
        end
    else
        Approach_Act(arg0, arg1, local2, local4, local5, 3)
    end
    if arg0:GetNumber(0) == 2 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local1, 0, 0)
    end
    arg0:SetTimer(3, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
function EnemyAvate750000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 3, 0, 0)
    if arg0:GetNumber(0) == 2 then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local16
function EnemyAvate750000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 3, 0, 0)
    if arg0:GetNumber(0) == 2 then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local18
function EnemyAvate750000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 3, 0, 0)
    if arg0:GetNumber(0) == 2 then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local20
function EnemyAvate750000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 3, 0, 0)
    if arg0:GetNumber(0) == 2 then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local22
function EnemyAvate750000_Act010(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 - 2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local26
function EnemyAvate750000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 2
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL0 + 30, 0, 3)
    end
    if arg0:GetNumber(0) == 2 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, local1, 0, 0)
    end
    if arg0:GetNumber(0) == 2 then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

function EnemyAvate750000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_NONE, AttDist, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EnemyAvate750000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EnemyAvate750000_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3010, TARGET_ENE_0, DIST_None)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EnemyAvate750000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if arg0:GetDist(TARGET_ENE_0) <= 5 then
            if local0 <= 30 and arg0:IsFinishTimer(1) == true then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, AttDist, 0, 0)
                arg0:SetTimer(1, 10)
            elseif local0 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
function EnemyAvate750000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
function EnemyAvate750000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
function EnemyAvate750000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
function EnemyAvate750000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
function EnemyAvate750000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
function EnemyAvate750000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local14
function EnemyAvate750000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
function EnemyAvate750000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local18
function EnemyAvate750000_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local20
function EnemyAvate750000_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local22
function EnemyAvate750000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local24
function EnemyAvate750000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local26
function EnemyAvate750000_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EnemyAvate750000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function EnemyAvate750000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(3, 4.5)
    local local4 = arg0:GetRandam_Float(3.5, 5)
    if local0 <= 1.5 then
        if local1 <= 60 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 2.5 then
        if local1 <= 40 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            end
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
        elseif local1 <= 90 then
            if not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422300) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422301) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422302) or arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422303) then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            end
        end
    elseif local0 <= 4.5 then
        if local1 <= 40 then
            if not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422300) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422301) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422302) or arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422303) then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
            else
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                end
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
            end
        elseif local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
        elseif local1 <= 80 then
            if not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422300) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422301) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422302) or arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422303) then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            end
        end
    elseif local0 <= 6.5 then
        if local1 <= 50 then
            if not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422300) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422301) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422302) or arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422303) then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 4.5, TARGET_SELF, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            end
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 4.5, TARGET_SELF, true, -1)
        end
    elseif local0 <= 10 then
        if local1 <= 40 then
            if not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422300) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422301) or not not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422302) or arg0:IsInsideTargetRegion(TARGET_ENE_0, 2422303) then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 6.5, TARGET_SELF, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
            end
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 6.5, TARGET_SELF, true, -1)
        end
    elseif local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3008, TARGET_ENE_0, AppDist, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    return 
end

function EnemyAvate750000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function EnemyAvate750000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local10
function EnemyAvate750000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        if arg0:IsInterupt(INTERUPT_Damaged) and arg0:GetRandam_Int(1, 100) <= 90 then
            arg1:ClearSubGoal()
            if arg0:GetDist(TARGET_ENE_0) <= 5 and arg0:GetRandam_Int(1, 100) <= 60 and arg0:IsFinishTimer(1) == true then
                Approach_Act(arg0, arg1, UPVAL0, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, -1)
                arg0:SetTimer(1, 15)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
            end
            return true
        else
            return false
        end
    end
end

return 
