local local0 = 0.5
local local1 = 5.4 - local0
local local2 = 1 - local0
local local3 = 5.7 - local0
local local4 = 1 - local0
local local5 = 7.1 - local0
local local6 = 3.9 - local0
local local7 = 1 - local0
local local8 = 5 - local0
local local9 = 1 - local0
local local10 = 5.5 - local0
local local11 = 1 - local0
local local12 = 1 - local0
local local13 = 30 - local0
local local14 = 1 - local0
local local15 = 1 - local0
local local16 = 3.9 - local0
local local17 = 1 - local0
local local18 = 5 - local0
local local19 = 1 - local0
local local20 = 5.5 - local0
local local21 = 1 - local0
local local22 = 1 - local0
local local23 = 1 - local0
local local24 = 10 - local0
local local25 = 4.5 - local0
local local26 = 6.9 - local0
local local27 = 1
function OnIf_232000(arg0, arg1, arg2)
    if arg2 == 0 then
        KingReaper232000_ActAfter(arg0, arg1)
    end
    return 
end

local0 = local27
function KingReaper232000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetEventRequest(0)
    local local6 = 1
    local local7 = 1
    local local8 = 1
    local local9 = 1
    if arg0:GetNumber(0) == 1 then
        local local10 = 0
        SETUPVAL 13 0 0
    end
    if arg0:IsFinishTimer(0) == false then
        local6 = 0
    end
    if arg0:IsFinishTimer(1) == false then
        local7 = 0
    end
    if arg0:IsFinishTimer(2) == false then
        local8 = 0
    end
    if arg0:IsFinishTimer(3) == false then
        local9 = 0
    end
    if arg0:GetHpRate(TARGET_SELF) <= 0.7 and arg0:GetNumber(0) == 0 then
        local0[7] = 100
    elseif arg0:GetNumber(0) == 1 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            local0[20] = 100
        elseif 9 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[6] = 20
            local0[8] = 0
            local0[9] = 10
            local0[10] = 20
            local0[12] = 20
            local0[13] = 0
            local0[14] = 0
            local0[15] = 10
        elseif 6 <= local3 then
            local0[1] = 10
            local0[2] = 15
            local0[6] = 15
            local0[8] = 10
            local0[9] = 20
            local0[10] = 0
            local0[12] = 15
            local0[13] = 0
            local0[14] = 10
            local0[15] = 5
        elseif 3 <= local3 then
            local0[1] = 10
            local0[2] = 20
            local0[6] = 15
            local0[8] = 15
            local0[9] = 5
            local0[10] = 0
            local0[12] = 10
            local0[13] = 0
            local0[14] = 10
            local0[15] = 15
        else
            local0[1] = 5
            local0[2] = 15
            local0[6] = 0
            local0[8] = 10
            local0[9] = 0
            local0[10] = 0
            local0[12] = 20
            local0[13] = 20
            local0[14] = 15
            local0[15] = 15
        end
        if arg0:GetEventRequest(0) == 1 then
            local0[6] = 0
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif 19.2 <= local3 then
        local0[1] = 0
        local0[3] = 36 * local6
        local0[4] = 64 * local7
        local0[5] = 0 * local8
        local0[11] = 0 * local9
    elseif 5.4 <= local3 then
        local0[1] = 5
        local0[3] = 49 * local6
        local0[4] = 38 * local7
        local0[5] = 0 * local8
        local0[11] = 8 * local9
    elseif 3 <= local3 then
        local0[1] = 29
        local0[3] = 25 * local6
        local0[4] = 0 * local7
        local0[5] = 0 * local8
        local0[11] = 46 * local9
    else
        local0[1] = 9
        local0[3] = 0 * local6
        local0[4] = 0 * local7
        local0[5] = 69 * local8
        local0[11] = 22 * local9
    end
    local1[1] = REGIST_FUNC(arg0, arg1, KingReaper232000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, KingReaper232000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, KingReaper232000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, KingReaper232000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, KingReaper232000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, KingReaper232000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, KingReaper232000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, KingReaper232000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, KingReaper232000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, KingReaper232000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, KingReaper232000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, KingReaper232000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, KingReaper232000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, KingReaper232000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, KingReaper232000_Act15)
    local1[20] = REGIST_FUNC(arg0, arg1, KingReaper232000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, KingReaper232000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local1
local0 = local3
local0 = local5
local0 = local6
local0 = local8
local0 = local10
local0 = 1 - local0
local0 = local27
function KingReaper232000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL2 + 1
    local local4 = UPVAL3 + 1
    local local5 = UPVAL4 + 1
    local local6 = 0
    if arg0:GetNumber(0) == 1 then
        local6 = 17
    end
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL6 then
        if arg0:GetNumber(0) == 1 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 711, TARGET_ENE_0, 5, 0, 90)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 701, TARGET_ENE_0, 5, 0, 90)
        end
    else
        Approach_Act(arg0, arg1, UPVAL0, 999 * UPVAL7, 0)
    end
    if local0 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL1 + 1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    elseif local0 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004 + local6, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004 + local6, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005 + local6, TARGET_ENE_0, UPVAL5 + 1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local1
local0 = local3
local0 = local5
local0 = local6
local0 = local8
local0 = local10
local0 = 1 - local0
local0 = local27
function KingReaper232000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL1 + 1
    local local4 = UPVAL3 + 1
    local local5 = UPVAL4 + 1
    local local6 = UPVAL5 + 1
    if arg0:GetNumber(0) == 1 then
        LightWave = 17
    end
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL6 then
        if arg0:GetNumber(0) == 1 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
        end
    else
        Approach_Act(arg0, arg1, UPVAL3, 999 * UPVAL7, 0)
    end
    if local0 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003 + LightWave, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004 + LightWave, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005 + LightWave, TARGET_ENE_0, local6, 0)
    elseif local0 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004 + LightWave, TARGET_ENE_0, local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003 + LightWave, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004 + LightWave, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005 + LightWave, TARGET_ENE_0, local6, 0)
    elseif local0 <= 85 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003 + LightWave, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005 + LightWave, TARGET_ENE_0, local6, 0)
    elseif local0 <= 95 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003 + LightWave, TARGET_ENE_0, local4, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL2 + 1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005 + LightWave, TARGET_ENE_0, local6, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6 - local0
local0 = 19.2 - local0
local0 = local27
function KingReaper232000_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL0 then
        KingReaper232000_ActStep(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL1, 999 * UPVAL2, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL1 + 1, 0, -1)
    arg0:SetTimer(0, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6 - local0
local0 = 60 - local0
local0 = local27
function KingReaper232000_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL0 then
        KingReaper232000_ActStep(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL1, 999 * UPVAL2, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL1 + 1, 0, -1)
    arg0:SetTimer(1, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3 - local0
local0 = local27
function KingReaper232000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 999 * UPVAL1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetTimer(2, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5 - local0
local0 = 60 - local0
local0 = local27
function KingReaper232000_Act06(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL0 then
        KingReaper232000_ActStep(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL1, 999 * UPVAL2, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingReaper232000_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, Dist_None, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
local0 = 1 - local0
local0 = local27
function KingReaper232000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        if arg0:GetNumber(0) == 1 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
        end
    else
        Approach_Act(arg0, arg1, UPVAL0, 999 * UPVAL2, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8.5 - local0
local0 = local3
local0 = local5
local0 = 1 - local0
local0 = local27
function KingReaper232000_Act09(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL3 then
        if arg0:GetNumber(0) == 1 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
        end
    else
        Approach_Act(arg0, arg1, UPVAL0, 999 * UPVAL4, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL1 + 1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL2 + 1, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 15.4 - local0
local0 = 1 - local0
local0 = local27
function KingReaper232000_Act10(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        if arg0:GetNumber(0) == 1 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
        end
    else
        Approach_Act(arg0, arg1, UPVAL0, 999 * UPVAL2, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.4 - local0
local0 = local27
function KingReaper232000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 999 * UPVAL1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetTimer(3, 3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 15.3 - local0
local0 = 1 - local0
local0 = local27
function KingReaper232000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = 999 * UPVAL2
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.9 - local0
local0 = local25
local0 = local26
local0 = 1 - local0
local0 = local27
function KingReaper232000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL3
    Approach_Act(arg0, arg1, UPVAL0, 999 * UPVAL4, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3029, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3030, TARGET_ENE_0, UPVAL1 + 1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3031, TARGET_ENE_0, UPVAL2 + 1, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local25
local0 = local26
local0 = 1 - local0
local0 = local27
function KingReaper232000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL2
    Approach_Act(arg0, arg1, UPVAL0, 999 * UPVAL3, 0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3030, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3031, TARGET_ENE_0, UPVAL1 + 1, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local26
local0 = 1 - local0
local0 = local27
function KingReaper232000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999 * UPVAL2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingReaper232000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNumber(0) == 1 then
        if local0 <= 5 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                if local1 <= 50 then
                    KingReaper232000_Act02(arg0, arg1, arg2)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                end
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
                if local1 <= 50 then
                    KingReaper232000_Act01(arg0, arg1, arg2)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                end
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
                if local1 <= 50 then
                    KingReaper232000_Act02(arg0, arg1, arg2)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                end
            elseif local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, AttDist, 0, 0)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
        end
    elseif local0 <= 5 then
        if arg0:IsFinishTimer(3) then
            KingReaper232000_Act11(arg0, arg1, arg2)
        elseif arg0:GetRandam_Int(1, 100) <= 70 then
            KingReaper232000_ActStep(arg0, arg1)
        else
            KingReaper232000_Act01(arg0, arg1, arg2)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingReaper232000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function KingReaper232000_ActAfter(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if 19.2 > local0 then
        if 5.4 <= local0 then
            if local1 <= 70 then
                KingReaper232000_ActStep(arg0, arg1)
            end
        elseif 3 <= local0 then
            if local1 <= 80 then
                KingReaper232000_ActStep(arg0, arg1)
            end
        elseif local1 <= 90 then
            KingReaper232000_ActStep(arg0, arg1)
        end
    end
    return 
end

function KingReaper232000_ActStep(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 3.5, 5)
    local local3 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 3.5, 5)
    local local4 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 7, 5)
    local local5 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 7, 5)
    if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 8.5, 5) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 5, 5) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif local4 and not local5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    elseif not local4 and local5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif local4 and local5 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    elseif local2 and not local3 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    elseif not local2 and local3 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif local2 and local3 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    end
    return 
end

function KingReaper232000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function KingReaper232000Battle_Terminate(arg0, arg1)
    return 
end

function KingReaper232000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetDist(TARGET_ENE_0)
    local local7 = Shoot_2dist(arg0, arg1, 6, 20, 20, 40)
    if arg0:GetNumber(0) == 1 then
        if local7 == 1 then
            if local4 <= 100 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            end
        elseif local7 == 2 then
            if local4 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            end
            return true
        end
    elseif local7 == 1 then
        if local5 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local7 == 2 then
        if local5 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
        return true
    end
    return false
end

return 
