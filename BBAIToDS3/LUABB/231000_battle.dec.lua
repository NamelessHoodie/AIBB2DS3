local local0 = 0.4
local local1 = 0.5 - local0
local local2 = 5.2 - local0
local local3 = 0.5 - local0
local local4 = 6 - local0
local local5 = 0.5 - local0
local local6 = 5.6 - local0
local local7 = 0.5 - local0
local local8 = 5.8 - local0
local local9 = 0.5 - local0
local local10 = 5.7 - local0
local local11 = 0.5 - local0
local local12 = 11 - local0
local local13 = 0.5 - local0
local local14 = 9.4 - local0
local local15 = 0.5 - local0
local local16 = 2.7 - local0
local local17 = 0.5 - local0
local local18 = 0.5 - local0
local local19 = 6 - local0
local local20 = 0.5 - local0
local local21 = 5 - local0
local local22 = 0.5 - local0
local local23 = 6 - local0
local local24 = 0.5 - local0
local local25 = 4.8 - local0
local local26 = 0.5 - local0
local local27 = 6.6 - local0
local local28 = 0.5 - local0
local local29 = 0.5 - local0
local local30 = 6 - local0
local local31 = 0.5 - local0
local local32 = 6.7 - local0
local local33 = 0.5 - local0
local local34 = 6.4 - local0
local local35 = 0.5 - local0
local local36 = 6.3 - local0
local local37 = 0.5 - local0
local local38 = 6.5 - local0
local local39 = 0.5 - local0
local local40 = 12.1 - local0
local local41 = 0.5 - local0
local local42 = 10.5 - local0
local local43 = 0.5 - local0
local local44 = 0.5 - local0
local local45 = 0.5 - local0
local local46 = 6.8 - local0
local local47 = 0.5 - local0
local local48 = 5.9 - local0
function OnIf_231000(arg0, arg1, arg2)
    if arg2 == 0 then
        KingInBlue231000_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        KingInBlue231000_BackStepCombo(arg0, arg1)
    end
    return 
end

function KingInBlue231000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    if arg0:GetHpRate(TARGET_SELF) <= 0.5 and arg0:HasSpecialEffectId(TARGET_SELF, 5401) == false then
        local0[6] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
        local0[10] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        if 12 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 70
            local0[5] = 0
            local0[7] = 0
            local0[8] = 0
            local0[9] = 30
            if arg0:GetNumber(1) == 0 then
                local0[1] = 20
                local0[2] = 20
                local0[3] = 0
                local0[5] = 20
                local0[7] = 20
                local0[8] = 20
                local0[9] = 0
            end
        elseif 8 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 30
            local0[5] = 0
            local0[7] = 20
            local0[8] = 20
            local0[9] = 30
        elseif 5.5 <= local3 then
            local0[1] = 20
            local0[2] = 10
            local0[3] = 10
            local0[5] = 15
            local0[7] = 20
            local0[8] = 15
            local0[9] = 10
        elseif 5.5 <= local3 then
            local0[1] = 15
            local0[2] = 10
            local0[4] = 10
            local0[5] = 15
            local0[7] = 25
            local0[8] = 25
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
                local0[1] = 0
                local0[2] = 25
                local0[4] = 15
                local0[5] = 0
                local0[7] = 35
                local0[8] = 25
            end
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
                local0[1] = 35
                local0[2] = 15
                local0[4] = 0
                local0[5] = 35
                local0[7] = 0
                local0[8] = 15
            end
        else
            local0[1] = 15
            local0[2] = 25
            local0[4] = 30
            local0[5] = 15
            local0[7] = 15
            local0[8] = 0
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
                local0[1] = 0
                local0[2] = 30
                local0[4] = 30
                local0[5] = 0
                local0[7] = 40
            end
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
                local0[1] = 35
                local0[2] = 15
                local0[4] = 15
                local0[5] = 35
                local0[7] = 0
            end
        end
    elseif 11 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 100
        local0[5] = 0
        if arg0:GetNumber(1) == 0 then
            local0[1] = 33
            local0[2] = 33
            local0[3] = 0
            local0[5] = 33
        end
    elseif 8 <= local3 then
        local0[1] = 20
        local0[2] = 15
        local0[3] = 35
        local0[5] = 30
    elseif 4.5 <= local3 then
        local0[1] = 30
        local0[2] = 20
        local0[3] = 20
        local0[5] = 30
    elseif 2.5 <= local3 then
        local0[1] = 20
        local0[2] = 35
        local0[4] = 25
        local0[5] = 20
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
            local0[1] = 20
            local0[2] = 35
            local0[4] = 25
            local0[5] = 20
        end
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
            local0[1] = 35
            local0[2] = 15
            local0[4] = 20
            local0[5] = 35
        end
    else
        local0[1] = 15
        local0[2] = 15
        local0[4] = 40
        local0[5] = 15
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
            local0[1] = 15
            local0[2] = 35
            local0[4] = 35
            local0[5] = 15
        end
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
            local0[1] = 40
            local0[2] = 0
            local0[4] = 20
            local0[5] = 40
        end
    end
    local1[1] = REGIST_FUNC(arg0, arg1, KingInBlue231000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, KingInBlue231000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, KingInBlue231000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, KingInBlue231000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, KingInBlue231000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, KingInBlue231000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, KingInBlue231000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, KingInBlue231000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, KingInBlue231000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, KingInBlue231000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, KingInBlue231000_Act11)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, KingInBlue231000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local4
local0 = local6
local0 = local30
local0 = local32
local0 = local34
function KingInBlue231000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL1 + 1
    local local3 = UPVAL2 + 1
    local local4 = UPVAL0
    if arg0:GetNumber(0) == 1 then
        local1 = UPVAL3 + 1
        local2 = UPVAL4 + 1
        local3 = UPVAL5 + 1
        local4 = UPVAL3
    end
    if local4 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local4, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = local10
local0 = local36
local0 = local38
function KingInBlue231000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL1 + 1
    local local3 = UPVAL0
    if arg0:GetNumber(0) == 1 then
        local1 = UPVAL2 + 1
        local2 = UPVAL3 + 1
        local3 = UPVAL2
    end
    if local3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local3, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local2, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
local0 = local14
local0 = local40
local0 = local42
function KingInBlue231000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL1 + 1
    local local4 = UPVAL0
    if arg0:GetNumber(0) == 1 then
        local2 = UPVAL2 + 1
        local3 = UPVAL3 + 1
        local4 = UPVAL2
    end
    if local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    if local4 <= local0 then
        Approach_Act(arg0, arg1, local4, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
local0 = 4.2 - local0
local0 = 2.7 - local0
local0 = 4.9 - local0
function KingInBlue231000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL1 + 1
    local local3 = UPVAL0
    if arg0:GetNumber(0) == 1 then
        local1 = UPVAL2 + 1
        local2 = UPVAL3 + 1
        local3 = UPVAL2
    end
    if local3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local3, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local19
local0 = local21
local0 = local46
local0 = local48
function KingInBlue231000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL1 + 1
    local local4 = UPVAL0
    if arg0:GetNumber(0) == 1 then
        local2 = UPVAL2 + 1
        local3 = UPVAL3 + 1
        local4 = UPVAL2
    end
    if local4 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local4, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingInBlue231000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, DIST_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, DIST_None, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local23
local0 = local25
function KingInBlue231000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, UPVAL1 + 1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local27
function KingInBlue231000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local27
function KingInBlue231000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    if local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    if local2 <= local0 then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function KingInBlue231000_Act10(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 1.5 and arg0:GetRandam_Int(1, 100) <= 30 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), false, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), false, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingInBlue231000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
local0 = 8.1 - local0
local0 = local40
local0 = local42
local0 = local30
local0 = local32
local0 = local34
local0 = local36
local0 = local38
local0 = local46
local0 = local48
local0 = local23
local0 = local25
local0 = local27
local0 = local14
local0 = local2
local0 = local4
local0 = local6
local0 = local8
local0 = local10
local0 = local19
local0 = local21
function KingInBlue231000_BackStepCombo(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        if 6 <= local0 then
            local local2 = UPVAL0
            if 50 <= local1 then
                local2 = UPVAL1
            end
            if local2 <= local0 then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local2, TARGET_ENE_0, false, -1)
            end
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL2, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, UPVAL3, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL1, 0, -1)
            end
        elseif local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL4, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL5, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL6, 0)
        elseif local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL7, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, UPVAL8, 0)
        elseif local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL9, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, UPVAL10, 0)
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL11, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, UPVAL12, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL13, 0, 0)
        end
    elseif 6 <= local0 then
        if UPVAL0 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, UPVAL0, TARGET_ENE_0, false, -1)
        end
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, UPVAL14, 0)
    elseif local1 <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL16, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL17, 0)
    elseif local1 <= 66 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL18, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, UPVAL19, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL20, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, UPVAL21, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingInBlue231000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function KingInBlue231000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(2.5, 3.5)
    arg0:SetNumber(1, 1)
    if local0 <= 2 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local1 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local1 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        end
    elseif local0 <= 6 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function KingInBlue231000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function KingInBlue231000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local8
local0 = local10
local0 = local36
local0 = local38
local0 = local12
local0 = local14
local0 = local40
local0 = local42
local0 = local16
local0 = local19
local0 = local46
local0 = local23
function KingInBlue231000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if arg0:IsInterupt(INTERUPT_UseItem) and local0 <= 65 then
        if local3 <= 5 then
            local local5 = UPVAL0 + 1
            local local6 = UPVAL1 + 1
            if arg0:GetNumber(0) == 1 then
                local5 = UPVAL2 + 1
                local6 = UPVAL3 + 1
            end
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, AttDist1, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local6, 0)
        else
            local local5 = UPVAL4 + 1
            local local6 = UPVAL5 + 1
            local local7 = UPVAL4 - 1
            if arg0:GetNumber(0) == 1 then
                local5 = UPVAL6 + 1
                local6 = UPVAL7 + 1
                local7 = UPVAL6 - 1
            end
            arg1:ClearSubGoal()
            Approach_Act(arg0, arg1, local7, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, AttDist1, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local6, 0)
        end
        return true
    elseif arg0:GetNumber(1) == 1 and 13 <= local3 then
        local local5 = UPVAL4 - 4
        local local6 = UPVAL4 + 2
        if arg0:GetNumber(0) == 1 then
            local5 = UPVAL4 - 4
            local6 = UPVAL4 + 2
        end
        arg1:ClearSubGoal()
        Approach_Act(arg0, arg1, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local6, 0, -1)
        return true
    elseif arg0:IsInterupt(INTERUPT_Damaged) and local0 <= 40 then
        local local5 = 0
        local local6 = 0
        local local7 = 0
        local local8 = 0
        local local9 = 0
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            local7 = 701
            local8 = AI_DIR_TYPE_B
            if local1 <= 40 then
                local9 = 20
                local5 = 3007
                local6 = UPVAL8
            else
                local9 = 100
                local5 = 3009
                local6 = UPVAL9
            end
            if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
                local6 = UPVAL10
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            local9 = 0
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                local7 = 702
                local8 = AI_DIR_TYPE_L
            else
                local7 = 703
                local8 = AI_DIR_TYPE_R
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            local5 = 3009
            local6 = UPVAL9
            local9 = 70
            local7 = 702
            local8 = AI_DIR_TYPE_L
            if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
                local6 = UPVAL10
            end
        else
            local5 = 3012
            local6 = UPVAL11
            local7 = 703
            local8 = AI_DIR_TYPE_R
            local9 = 0
            if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
                local9 = 80
            end
        end
        if local1 <= local9 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local5, TARGET_ENE_0, local6, 0, 0)
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, local7, TARGET_ENE_0, 0, local8, 5)
            arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
        end
        return true
    end
    local local9 = arg0:GetRandam_Int(1, 100)
    local local10 = arg0:GetRandam_Int(1, 100)
    local local11 = arg0:GetDist(TARGET_ENE_0)
    local local12 = Shoot_2dist(arg0, arg1, 6, 20, 50, 80)
    if local12 == 1 then
        if local10 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local12 == 2 then
        local local13 = UPVAL4 + 1
        local local14 = UPVAL4
        if arg0:GetNumber(0) == 1 then
            local13 = UPVAL6 + 1
            local14 = UPVAL6
        end
        local local15 = 0
        local local16 = 0
        if local10 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            Approach_Act(arg0, arg1, local14, local15, local16)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local13, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            Approach_Act(arg0, arg1, local14, local15, local16)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local13, 0, -1)
        end
        return true
    end
    return false
end

return 
