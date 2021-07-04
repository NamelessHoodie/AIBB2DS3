local local0 = 1.4
local local1 = 2.7 - local0
local local2 = 5.6 - local0
local local3 = 4.2 - local0
local local4 = 9.7 - local0
local local5 = 2.7 - local0
local local6 = 2.7 - local0
local local7 = 14.6 - local0
local local8 = 16.8 - local0
local local9 = 2.7 - local0
local local10 = 2.7 - local0
local local11 = 8 - local0
local local12 = 2.7 - local0
local local13 = 6.6 - local0
local local14 = 2.7 - local0
local local15 = 2.7 - local0
local local16 = 2.7 - local0
local local17 = 9.3 - local0
local local18 = 2.7 - local0
local local19 = 12.4 - local0
local local20 = 2.5 - local0
local local21 = 18.5 - local0
local local22 = 2.7 - local0
local local23 = 6.2 - local0
local local24 = 1.2 - local0
local local25 = 3.7 - local0
local local26 = 1.2 - local0
local local27 = 3.7 - local0
local local28 = 2.7 - local0
local local29 = 3.7 - local0
local local30 = 2.7 - local0
local local31 = 1.2 - local0
function OnIf_502000(arg0, arg1, arg2)
    if arg2 == 0 then
        SaintessBeast502000_ActAfter(arg0, arg1)
    end
    return 
end

function SaintessBeast502000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 480) and arg0:GetNumber(4) == 0 then
        arg0:SetNumber(4, 1)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 481) and arg0:GetNumber(1) == 0 then
        arg0:SetNumber(1, 1)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 482) and arg0:GetNumber(2) == 0 then
        arg0:SetNumber(2, 1)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 483) and arg0:GetNumber(3) == 0 then
        arg0:SetNumber(3, 1)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 484) and arg0:GetNumber(3) == 0 then
        arg0:SetNumber(3, 1)
    end
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = 1
    local local6 = 1
    local local7 = 1
    local local8 = 1
    local local9 = arg0:GetNumber(5)
    if arg0:IsFinishTimer(0) == false then
        local5 = 0
    end
    if arg0:IsFinishTimer(1) == false then
        local6 = 0
    end
    if arg0:IsFinishTimer(2) == false then
        local7 = 0
    end
    if arg0:GetHpRate(TARGET_SELF) <= 0.5 then
        heal = 1
    else
        heal = 0
    end
    if arg0:GetEventRequest(1) == 100 then
        local0[20] = 100
    elseif arg0:GetEventRequest(0) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3036, TARGET_ENE_0, Dist_None, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 140) then
        local0[18] = 100
    elseif 12 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 20
        local0[6] = 20
        local0[7] = 40
        if arg0:GetNumber(0) == 1 then
            local0[12] = 0
            local0[16] = 0
            local0[17] = 0
        end
        if arg0:GetNumber(1) == 1 then
            local0[8] = 20
            local0[9] = 0 * local6
            local0[11] = 0 * local7
        end
        if arg0:GetNumber(2) == 1 then
            local0[8] = 20
            local0[9] = 0 * local6
            local0[10] = 0
        end
        if arg0:GetNumber(3) == 1 then
            local0[9] = 0 * local6
            local0[13] = 0
            local0[14] = 40
            local0[15] = 20
        end
        if arg0:GetNumber(4) == 1 then
            local0[9] = 0
        end
    elseif 8 <= local3 then
        local0[1] = 5
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 20
        local0[6] = 30
        local0[7] = 20
        local0[9] = 10 * local6
        local0[11] = 5 * local7
        local0[19] = 250 * heal * local5
        if arg0:GetNumber(0) == 1 then
            local0[12] = 40
            local0[16] = 0
            local0[17] = 0
        end
        if arg0:GetNumber(1) == 1 then
            local0[8] = 30
            local0[9] = 0 * local6
            local0[11] = 30 * local7
        end
        if arg0:GetNumber(2) == 1 then
            local0[8] = 30
            local0[9] = 0 * local6
            local0[10] = 0
        end
        if arg0:GetNumber(3) == 1 then
            local0[9] = 0 * local6
            local0[13] = 0
            local0[14] = 40
            local0[15] = 30
        end
        if arg0:GetNumber(4) == 1 then
            local0[9] = 0 * local6
        end
    elseif 5 <= local3 then
        local0[1] = 10
        local0[2] = 0
        local0[3] = 5
        local0[4] = 10
        local0[5] = 10
        local0[6] = 15
        local0[7] = 5
        local0[9] = 10 * local6
        local0[11] = 15 * local7
        if arg0:GetNumber(0) == 1 then
            local0[3] = 15
            local0[12] = 40
            local0[16] = 0
            local0[17] = 40
        end
        if arg0:GetNumber(1) == 1 then
            local0[8] = 20
            local0[9] = 20 * local6
            local0[11] = 20 * local7
        end
        if arg0:GetNumber(2) == 1 then
            local0[8] = 20
            local0[9] = 20 * local6
            local0[10] = 10
        end
        if arg0:GetNumber(3) == 1 then
            local0[9] = 20 * local6
            local0[13] = 0
            local0[14] = 0
            local0[15] = 15
        end
        if arg0:GetNumber(4) == 1 then
            local0[9] = 10 * local6
        end
    elseif 2 <= local3 then
        local0[1] = 10
        local0[2] = 15
        local0[3] = 5
        local0[4] = 5
        local0[5] = 5
        local0[6] = 10
        local0[7] = 0
        local0[9] = 15 * local6
        local0[11] = 15 * local7
        if arg0:GetNumber(0) == 1 then
            local0[3] = 25
            local0[12] = 30
            local0[16] = 0
            local0[17] = 30
        end
        if arg0:GetNumber(1) == 1 then
            local0[8] = 0
            local0[9] = 20 * local6
            local0[11] = 30 * local7
        end
        if arg0:GetNumber(2) == 1 then
            local0[8] = 0
            local0[9] = 20 * local6
            local0[10] = 10
        end
        if arg0:GetNumber(3) == 1 then
            local0[9] = 20 * local6
            local0[13] = 15
            local0[14] = 0
            local0[15] = 0
        end
        if arg0:GetNumber(4) == 1 then
            local0[9] = 20 * local6
        end
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 160) then
            local0[2] = 0
            local0[13] = 0
        end
    else
        local0[1] = 25
        local0[2] = 20
        local0[3] = 10
        local0[4] = 5
        local0[5] = 5
        local0[6] = 0
        local0[7] = 0
        local0[11] = 15 * local7
        if arg0:GetNumber(0) == 1 then
            local0[3] = 25
            local0[12] = 0
            local0[16] = 50
            local0[17] = 0
        end
        if arg0:GetNumber(1) == 1 then
            local0[8] = 0
            local0[9] = 0 * local6
            local0[11] = 30 * local7
        end
        if arg0:GetNumber(2) == 1 then
            local0[8] = 0
            local0[9] = 0 * local6
            local0[10] = 20
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 160) then
                local0[10] = 10
            end
        end
        if arg0:GetNumber(3) == 1 then
            local0[9] = 0 * local6
            local0[13] = 40
            local0[14] = 0
            local0[15] = 0
        end
        if arg0:GetNumber(4) == 1 then
            local0[9] = 0 * local6
        end
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 160) then
            local0[2] = 0
            local0[13] = 0
        end
    end
    if local9 == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if local9 == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if local9 == 3 and 0 < local0[3] then
        local0[3] = 1
    end
    if local9 == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if local9 == 5 and 0 < local0[5] then
        local0[5] = 1
    end
    if local9 == 6 and 0 < local0[6] then
        local0[6] = 1
    end
    if local9 == 7 and 0 < local0[7] then
        local0[7] = 1
    end
    if local9 == 8 and 0 < local0[8] then
        local0[8] = 1
    end
    if local9 == 9 and 0 < local0[9] then
        local0[9] = 1
    end
    if local9 == 10 and 0 < local0[10] then
        local0[10] = 1
    end
    if local9 == 11 and 0 < local0[11] then
        local0[11] = 1
    end
    if local9 == 12 and 0 < local0[12] then
        local0[12] = 1
    end
    if local9 == 13 and 0 < local0[13] then
        local0[13] = 1
    end
    if local9 == 14 and 0 < local0[14] then
        local0[14] = 1
    end
    if local9 == 15 and 0 < local0[15] then
        local0[15] = 1
    end
    if local9 == 16 and 0 < local0[16] then
        local0[16] = 1
    end
    if local9 == 17 and 0 < local0[17] then
        local0[17] = 1
    end
    local1[1] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act17)
    local1[18] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act18)
    local1[19] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act19)
    local1[20] = REGIST_FUNC(arg0, arg1, SaintessBeast502000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, SaintessBeast502000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 7.2 - local0
local0 = 2.7 - local0
local0 = local2
local0 = local19
function SaintessBeast502000_Act01(arg0, arg1, arg2)
    local local0 = 9
    local local1 = UPVAL0 + 2
    local local2 = UPVAL2 + 2
    local local3 = UPVAL3 + 2
    local local4 = 70
    if arg0:GetNumber(0) == 1 then
        local0 = 0
        local4 = 50
    end
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        SaintessBeast502000_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL0 - 1, local0, 0, 2)
    end
    if arg0:GetRandam_Int(1, 100) <= local4 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0)
    end
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local3
local0 = 2.7 - local0
function SaintessBeast502000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = 9
    if arg0:GetNumber(0) == 1 then
        local3 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 2, 0, 90)
    arg0:SetNumber(5, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.7 - local0
local0 = 3 - local0
local0 = 5 - local0
function SaintessBeast502000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 9
    if arg0:GetNumber(0) == 1 then
        local1 = 0
    end
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        SaintessBeast502000_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL0, local1, 0, 2)
    end
    if arg0:GetNumber(0) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL2 + 2, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 2, 0, 90)
    end
    arg0:SetNumber(5, 3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
local0 = 3 - local0
local0 = 8.7 - local0
local0 = local11
function SaintessBeast502000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 9
    local local2 = UPVAL2 + 2
    if arg0:GetNumber(0) == 1 then
        local1 = 0
    end
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        SaintessBeast502000_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL0 - 1, local1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 2, 0, 90)
    if arg0:GetNumber(2) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, UPVAL3 + 2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local2, 0)
    end
    arg0:SetNumber(5, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8 - local0
local0 = 2.7 - local0
local0 = local17
function SaintessBeast502000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 9
    local local2 = UPVAL0 + 2
    local local3 = UPVAL2 + 2
    if arg0:GetNumber(0) == 1 then
        local1 = 0
    end
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        SaintessBeast502000_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL0, local1, 0, 2)
    end
    if arg0:GetNumber(1) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, 90)
    end
    arg0:SetNumber(5, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local7
local0 = local6
local0 = local21
function SaintessBeast502000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9
    local local3 = UPVAL0 + 2
    local local4 = UPVAL2 + 2
    if arg0:GetNumber(0) == 1 then
        local2 = 0
        local1 = UPVAL2
    end
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        SaintessBeast502000_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, local1, local2, 0, 2)
    end
    if arg0:GetNumber(0) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, local4, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local4, 0, 90)
    end
    arg0:SetNumber(5, 6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = 11.2 - local0
function SaintessBeast502000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 9
    local local2 = UPVAL0 + 2
    if arg0:GetNumber(0) == 1 then
        local1 = 0
    end
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        SaintessBeast502000_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL0 - 1, local1, 0, 2)
    end
    if arg0:GetNumber(2) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, local2, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, UPVAL0 + 2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, local2, 0, 90)
    end
    arg0:SetNumber(5, 7)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 9.3 - local0
local0 = 4.8 - local0
function SaintessBeast502000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = 9
    local local4 = UPVAL0 + 2
    if arg0:GetNumber(0) == 1 then
        local3 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0 - 1, local3, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, UPVAL0 + 2, 0, 90)
    arg0:SetNumber(5, 8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.3 - local0
local0 = 2.7 - local0
local0 = local17
local0 = 6.8 - local0
function SaintessBeast502000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 9
    local local2 = UPVAL0 + 2
    local local3 = UPVAL3 + 2
    if arg0:GetNumber(0) == 1 then
        local1 = 0
    end
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        SaintessBeast502000_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL0, local1, 0, 2)
    end
    if arg0:GetNumber(1) == 1 or arg0:GetNumber(2) == 1 or arg0:GetNumber(3) == 1 or arg0:GetNumber(4) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local2, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3028, TARGET_ENE_0, UPVAL2 + 2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local2, 0, 90)
    end
    arg0:SetTimer(1, 20)
    arg0:SetNumber(5, 9)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
local0 = local6
function SaintessBeast502000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 9
    if arg0:GetNumber(0) == 1 then
        local1 = 0
    end
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        SaintessBeast502000_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL0, local1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 2, 0, 90)
    arg0:SetNumber(5, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.6 - local0
local0 = local6
local0 = 6.8 - local0
local0 = local11
local0 = local2
local0 = local13
function SaintessBeast502000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = 9
    local local4 = UPVAL2 + 2
    local local5 = UPVAL0 + 2
    local local6 = UPVAL3 + 2
    local local7 = UPVAL5 + 2
    if arg0:GetNumber(0) == 1 then
        local3 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    if arg0:GetNumber(2) == 1 or arg0:GetNumber(0) == 1 then
        if local1 <= 33 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3032, TARGET_ENE_0, local5, 0, 90)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, UPVAL4 + 2, 0)
        elseif local1 <= 66 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, local5, 0, 90)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, local6, 0, 90)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, local5, 0, 90)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, local6, 0, 90)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, local5, 0, 90)
    end
    arg0:SetTimer(2, 20)
    arg0:SetNumber(5, 11)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.7 - local0
local0 = 5 - local0
function SaintessBeast502000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = 9
    if arg0:GetNumber(0) == 1 then
        local3 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, UPVAL0 + 2, 0, 90)
    arg0:SetNumber(5, 12)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.8 - local0
function SaintessBeast502000_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    arg0:SetNumber(5, 13)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local19
local0 = 7 - local0
local0 = 11.2 - local0
local0 = 16.3 - local0
function SaintessBeast502000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 - 1
    local local3 = UPVAL0 + 2
    if UPVAL2 <= local0 then
        local2 = UPVAL3
        local3 = UPVAL3 + 1
    end
    if arg0:GetNumber(0) == 1 then
        local local4 = 0
    elseif local0 <= UPVAL1 then
        SaintessBeast502000_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, local2, 9, 0, 2)
    end
    if UPVAL2 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, local3, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, local3, 0, 90)
    end
    arg0:SetNumber(5, 14)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 9.3 - local0
local0 = 5.1 - local0
function SaintessBeast502000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = 9
    if arg0:GetNumber(0) == 1 then
        local3 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, UPVAL0 + 2, 0, 90)
    arg0:SetNumber(5, 15)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
local0 = 2.7 - local0
function SaintessBeast502000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = 9
    if arg0:GetNumber(0) == 1 then
        local3 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 2, 0, 120)
    arg0:SetNumber(5, 16)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local21
local0 = 2.8 - local0
local0 = 10 - local0
function SaintessBeast502000_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 9
    if arg0:GetNumber(0) == 1 then
        local1 = 0
    end
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        SaintessBeast502000_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL0, local1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 2, 0, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3029, TARGET_ENE_0, UPVAL2 + 2, 0)
    arg0:SetNumber(5, 17)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SaintessBeast502000_Act18(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        if arg0:GetNumber(0) == 1 or arg0:GetNumber(3) == 1 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 90)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 90)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
            end
        else
            SaintessBeast502000_SpaceAdjustment(arg0, arg1)
        end
    elseif arg0:GetNumber(0) == 1 then
        SaintessBeast502000_SpaceAdjustment(arg0, arg1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SaintessBeast502000_Act19(arg0, arg1, arg2)
    SaintessBeast502000_SpaceAdjustment(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 2150) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_NONE, 0, 1.5, 180)
        arg0:SetTimer(3, 45)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_NONE, 0, 1.5, 180)
        arg0:SetTimer(3, 20)
    end
    arg0:SetNumber(5, 19)
    arg0:SetNumber(6, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SaintessBeast502000_Act20(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        SaintessBeast502000_SpaceAdjustment(arg0, arg1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3024, TARGET_ENE_0, Dist_None, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SaintessBeast502000_SpaceAdjustment(arg0, arg1, arg2)
    local local0 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 8)
    local local1 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 6)
    local local2 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 6)
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 8) == true then
        if 4.5 <= arg0:GetDist(TARGET_ENE_0) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 90)
        end
    elseif local1 == true and local2 == true then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    elseif local1 == false then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif local2 == false then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        SaintessBeast502000_Act06(arg0, arg1, arg2)
    end
    return 
end

function SaintessBeast502000_ActAfter(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(0, 1)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetRandam_Float(1.7, 2.3)
    if arg0:GetNumber(0) == 1 or arg0:GetNumber(6) == 1 and arg0:GetHpRate(TARGET_SELF) <= 0.5 then
        if local2 <= 3 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 90)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 90)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
            end
        elseif local0 <= 50 then
            SaintessBeast502000_SpaceAdjustment(arg0, arg1)
        end
    elseif local2 <= 2 then
        if local0 <= 60 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                SaintessBeast502000_SpaceAdjustment(arg0, arg1)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
        elseif local0 <= 90 then
            if arg0:GetNumber(3) == 1 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 90)
                elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
                elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 90)
                end
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 90)
            end
        end
    elseif local2 <= 4 then
        if local0 <= 50 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                SaintessBeast502000_SpaceAdjustment(arg0, arg1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, local1, arg0:GetRandam_Int(30, 45), true, true, -1)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            end
        elseif local0 <= 60 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 90)
            end
        end
    elseif local2 <= 12 then
        if local0 <= 10 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                SaintessBeast502000_SpaceAdjustment(arg0, arg1)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            end
        elseif local0 <= 70 then
            if arg0:GetRandam_Int(1, 100) <= 100 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local1, arg0:GetRandam_Int(30, 45), true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
            end
        end
    elseif local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local1, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function SaintessBeast502000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function SaintessBeast502000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function SaintessBeast502000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local8
local0 = local4
local0 = local3
local0 = local7
local0 = 8.8 - local0
function SaintessBeast502000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        if arg0:IsInterupt(INTERUPT_UseItem) and local0 <= 20 then
            local local4 = 0
            local local5 = 0
            arg1:ClearSubGoal()
            if 7 <= local3 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL1 + 1, 0, -1)
            end
            return true
        elseif arg0:IsInterupt(INTERUPT_GuardBreak) and local0 <= 60 then
            local local6 = UPVAL2 + 1
            local local7 = UPVAL3 + 1
            arg1:ClearSubGoal()
            if local3 <= UPVAL2 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local6, 0, -1)
            elseif local3 <= UPVAL3 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, local6, 0, -1)
            end
            return true
        else
            local local8 = arg0:GetDist(TARGET_ENE_0)
            local local9 = Shoot_2dist(arg0, arg1, 9, 20, 60, 80)
            if local9 == 1 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL4 + 2, 0, -1)
                return true
            elseif local9 == 2 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 2, 0, -1)
                return true
            else
                return false
            end
        end
    end
end

return 
