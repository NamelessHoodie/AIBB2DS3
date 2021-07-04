local local0 = 0.5
local local1 = 0 - local0
local local2 = 4.3 - local0
local local3 = 0 - local0
local local4 = 3.6 - local0
local local5 = 0 - local0
local local6 = 5.8 - local0
local local7 = 0 - local0
local local8 = 5.3 - local0
local local9 = 7 - local0
local local10 = 11 - local0
local local11 = 3.5 - local0
local local12 = 7 - local0
local local13 = 0 - local0
local local14 = 3.7 - local0
local local15 = 0 - local0
local local16 = 4.3 - local0
local local17 = 0 - local0
local local18 = 3.8 - local0
local local19 = 0 - local0
local local20 = 3.9 - local0
local local21 = 0 - local0
local local22 = 4.7 - local0
local local23 = 0 - local0
local local24 = 2.4 - local0
local local25 = 0 - local0
local local26 = 1.3 - local0
local local27 = 0 - local0
local local28 = 2.4 - local0
local local29 = 0 - local0
local local30 = 2.4 - local0
local local31 = 1
function OnIf_302000(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_Guardian_SwordShield302000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local31
function DungeonResident_Guardian_SwordShield302000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetHpRate(TARGET_SELF)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 4)
    if arg0:IsFinishTimer(0) == true then
        local local6 = 1
        SETUPVAL 8 0 0
    else
        local local6 = 0
        SETUPVAL 8 0 0
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and local4 <= 3 then
        local0[20] = 100
    elseif 7 <= local4 then
        local0[1] = 15
        local0[2] = 30 * UPVAL0
        local0[3] = 30 * UPVAL0
        local0[4] = 15
        local0[5] = 10
        local0[6] = 30
    elseif 3.5 <= local4 then
        local0[1] = 25
        local0[2] = 0 * UPVAL0
        local0[3] = 35 * UPVAL0
        local0[4] = 25
        local0[5] = 15
        local0[6] = 20
    else
        local0[1] = 35
        local0[2] = 0 * UPVAL0
        local0[3] = 0 * UPVAL0
        local0[4] = 35
        local0[5] = 30
        local0[6] = 20
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordShield302000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordShield302000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordShield302000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordShield302000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordShield302000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordShield302000_Act06)
    local1[20] = REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordShield302000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Guardian_SwordShield302000_ActAfter_AdjustSpace, atkAfterOddsTbl), local2)
    return 
end

local0 = local2
function DungeonResident_Guardian_SwordShield302000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = UPVAL0 + 0.5
    Approach_Act(arg0, arg1, UPVAL0, 12, 0, 2)
    if local1 <= 20 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, local4, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
        end
    else
        if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, local4, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
        end
        if local1 <= 70 then
            if local2 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local4, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local4, 0)
            end
        elseif local2 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
            if local3 <= 60 then
                if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local4, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local4, 0)
                end
            elseif local3 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local4, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local4, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, local4, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local4, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
local0 = local31
function DungeonResident_Guardian_SwordShield302000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0 + 0.5
    Approach_Act(arg0, arg1, UPVAL0, 0, 0, 2)
    if local1 <= 30 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, local3, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 0, -1)
        end
    else
        if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, local3, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 0, -1)
        end
        if local1 <= 80 then
            if local2 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local3, 0)
            end
        elseif local2 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
            if fate3 <= 20 then
                if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local3, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
                end
            elseif fate3 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local3, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3, 0)
        end
    end
    local local4 = 0
    SETUPVAL 10 1 0
    arg0:SetTimer(0, 20)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
local0 = local31
function DungeonResident_Guardian_SwordShield302000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 0.5
    Approach_Act(arg0, arg1, UPVAL0, 0, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local1, 0, -1)
        if fate2 <= 30 then
            if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
        end
    end
    local local2 = 0
    SETUPVAL 9 1 0
    arg0:SetTimer(0, 20)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local14
function DungeonResident_Guardian_SwordShield302000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 12, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 0.5, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
function DungeonResident_Guardian_SwordShield302000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 0.5
    Approach_Act(arg0, arg1, UPVAL0, 12, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DungeonResident_Guardian_SwordShield302000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 9910
    if arg0:HasSpecialEffectId(TARGET_SELF, 5010) then
        local1 = 0
    end
    if 6 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Float(30, 50), true, true, local1)
    elseif 3 <= local0 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Float(30, 50), true, true, local1)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, local1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Guardian_SwordShield302000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            if local0 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, arg0:GetRandam_Float(60, 90), true, true, 9910, true)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3035, TARGET_ENE_0, DIST_None, 0, -1)
            end
        elseif local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, 1, arg0:GetRandam_Float(60, 90), true, true, 9910, true)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3035, TARGET_ENE_0, DIST_None, 0, -1)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, 0, arg0:GetRandam_Float(60, 90), true, true, -1, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, 1, arg0:GetRandam_Float(60, 90), true, true, -1, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
function DungeonResident_Guardian_SwordShield302000_Act30(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, local3, 0, -1)
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        end
        if local2 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
        elseif local2 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local3, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        end
        if local2 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
        elseif local2 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3, 0)
        end
    end
    return true
end

local0 = local10
local0 = local31
function DungeonResident_Guardian_SwordShield302000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 0, -1)
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        end
        if local2 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, local3, 0, -1)
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        end
        if local2 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local3, 0)
        end
    end
    local local4 = 0
    SETUPVAL 7 1 0
    arg0:SetTimer(0, 20)
    return true
end

local0 = local12
local0 = local31
function DungeonResident_Guardian_SwordShield302000_Act32(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local2, 0, -1)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local2, 0, -1)
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local2, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local2, 0, -1)
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local2, 0)
        end
    end
    local local3 = 0
    SETUPVAL 5 1 0
    arg0:SetTimer(0, 20)
    return true
end

local0 = local14
function DungeonResident_Guardian_SwordShield302000_Act33(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    return true
end

local0 = local16
function DungeonResident_Guardian_SwordShield302000_Act34(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5707) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, local2, 0)
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local2, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, local2, 0)
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local2, 0)
        end
    end
    return true
end

local0 = local16
local0 = local12
function DungeonResident_Guardian_SwordShield302000_Act35(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetHpRate(TARGET_SELF)
    if local0 <= 1 and arg0:GetRandam_Int(1, 100) <= 60 then
        return DungeonResident_Guardian_SwordShield302000_Act38(arg0, arg1)
    elseif local0 <= UPVAL0 then
        if local1 <= 25 then
            if arg0:HasSpecialEffectId(TARGET_SELF, 5662) == true then
                return DungeonResident_Guardian_SwordShield302000_Act34(arg0, arg1)
            else
                return DungeonResident_Guardian_SwordShield302000_Act30(arg0, arg1)
            end
        elseif local1 <= 50 then
            return DungeonResident_Guardian_SwordShield302000_Act33(arg0, arg1)
        else
            return DungeonResident_Guardian_SwordShield302000_Act37(arg0, arg1)
        end
    elseif local0 <= UPVAL1 then
        return DungeonResident_Guardian_SwordShield302000_Act32(arg0, arg1)
    else
        return DungeonResident_Guardian_SwordShield302000_Act31(arg0, arg1)
    end
end

local0 = 5.5
function DungeonResident_Guardian_SwordShield302000_Act36(arg0, arg1)
    if arg0:GetDist(TARGET_ENE_0) <= 5 and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 701, TARGET_ENE_0, 999, 0, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, 999, 0, -1)
    return true
end

function DungeonResident_Guardian_SwordShield302000_Act37(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 999, 0, -1)
    return true
end

function DungeonResident_Guardian_SwordShield302000_Act38(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 999, 0, -1)
    return true
end

function DungeonResident_Guardian_SwordShield302000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_Guardian_SwordShield302000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 60
    local local3 = 100
    local local4 = 100
    local local5 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        local2 = 25
        local3 = 45
        local4 = 20
        local5 = 50
    end
    if local0 <= 4 then
        if local1 <= local2 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 5, TARGET_ENE_0, true, 9910)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(70, 90), true, true, 9910, true)
        elseif local1 <= local3 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(70, 90), true, true, 9910, true)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 999, 0, -1)
        end
    elseif local0 <= 7 then
        if local1 <= local4 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(70, 90), true, true, 9910, true)
        elseif local1 <= local5 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(70, 90), true, true, -1, true)
        end
    end
    return 
end

function DungeonResident_Guardian_SwordShield302000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Guardian_SwordShield302000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local10
function DungeonResident_Guardian_SwordShield302000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    if SuccessGuard_Act(arg0, arg1, UPVAL0, 100) then
        return DungeonResident_Guardian_SwordShield302000_Act35(arg0, arg1)
    elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) and arg0:HasSpecialEffectId(TARGET_SELF, 5702) and (not not arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8) or arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)) and arg0:GetHpRate(TARGET_SELF) <= 0.6 and arg0:GetNumber(1) <= 1 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, DIST_None, 0, 0)
        arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5703)
        return true
    elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) and arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5703) then
        arg1:ClearSubGoal()
        arg0:SetNumber(1, arg0:GetNumber(1) + 1)
        arg0:Replaning()
        arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5703)
        return true
    end
    local local4 = Shoot_2dist(arg0, arg1, UPVAL0, 20, 100, 100)
    if local4 == 1 or local4 == 2 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Guard, 2, 9910, TARGET_ENE_0, false, 0)
        return true
    elseif arg0:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg0:IsInsideObserve(0) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(0)
            DungeonResident_Guardian_SwordShield302000_Act20(arg0, arg1, paramTbl)
            return true
        end
        arg0:Replaning()
    else
        return false
    end
end

return 
