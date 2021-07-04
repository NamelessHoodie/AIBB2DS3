local local0 = 0.3
local local1 = 0.3 - local0
local local2 = 0.3 - local0
local local3 = 6.3 - local0
local local4 = 0.3 - local0
local local5 = 0.3 - local0
local local6 = 7.2 - local0
local local7 = 0.3 - local0
local local8 = 5.5 - local0
local local9 = 0.3 - local0
local local10 = 0.3 - local0
local local11 = 0.3 - local0
local local12 = 0.3 - local0
local local13 = 1 - local0
local local14 = 0.3 - local0
local local15 = 9.3 - local0
local local16 = 0.3 - local0
local local17 = 0.3 - local0
local local18 = 3.9 - local0
local local19 = 0.3 - local0
local local20 = 7 - local0
local local21 = 0.3 - local0
local local22 = 0.3 - local0
local local23 = 7 - local0
local local24 = 0.3 - local0
local local25 = 9.9 - local0
local local26 = 0.3 - local0
local local27 = 7.6 - local0
local local28 = 0.3 - local0
local local29 = 0.3 - local0
local local30 = 0.3 - local0
local local31 = 0.3 - local0
local local32 = 0.3 - local0
local local33 = 0.3 - local0
local local34 = 0.3 - local0
local local35 = 0.3 - local0
function OnIf_805000(arg0, arg1, arg2)
    if arg2 == 0 then
        OldHunter805000_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        OldHunter805000_ThrowAttack(arg0, arg1)
    end
    if arg2 == 2 then
        OldHunter805000_ComboChain(arg0, arg1)
    end
    return 
end

function OldHunter805000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest(1)
    local local5 = arg0:GetNumber(0)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)
    if arg0:GetEventRequest(0) == 100 then
        local0[18] = 100
    elseif arg0:GetHpRate(TARGET_SELF) <= 0.75 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) ~= true then
        local0[24] = 100
    elseif arg0:GetNumber(1) == 1 then
        local0[22] = 100
    elseif arg0:GetNumber(2) == 1 and arg0:IsFinishTimer(0) == true and arg0:HasSpecialEffectId(TARGET_SELF, 5526) == false and arg0:GetRandam_Int(1, 100) <= 25 then
        local0[19] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5400) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
            local0[20] = 100
        elseif 15 <= local3 then
            local0[1] = 15
            local0[2] = 15
            local0[3] = 0
            local0[4] = 15
            local0[5] = 0
            local0[6] = 15
            local0[23] = 30
            if arg0:GetNumber(2) == 1 then
                local0[7] = 10
                local0[9] = 0
            end
        elseif 12 <= local3 then
            local0[1] = 15
            local0[2] = 15
            local0[3] = 0
            local0[4] = 15
            local0[5] = 0
            local0[6] = 15
            local0[23] = 30
            if arg0:GetNumber(2) == 1 then
                local0[7] = 10
                local0[9] = 0
            end
        elseif 9 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 0
            local0[4] = 20
            local0[5] = 0
            local0[6] = 20
            local0[23] = 30
            if arg0:GetNumber(2) == 1 then
                local0[7] = 10
                local0[9] = 0
            end
        elseif 6 <= local3 then
            local0[1] = 15
            local0[2] = 15
            local0[3] = 0
            local0[4] = 15
            local0[5] = 0
            local0[6] = 10
            local0[23] = 30
            if arg0:GetNumber(2) == 1 then
                local0[7] = 15
                local0[9] = 0
            end
        elseif 3 <= local3 then
            local0[1] = 20
            local0[2] = 0
            local0[3] = 15
            local0[4] = 10
            local0[5] = 20
            local0[6] = 10
            local0[23] = 0
            if arg0:GetNumber(2) == 1 then
                local0[7] = 25
                local0[9] = 0
            end
        else
            local0[1] = 15
            local0[2] = 0
            local0[3] = 20
            local0[4] = 0
            local0[5] = 20
            local0[6] = 0
            local0[23] = 0
            if arg0:GetNumber(2) == 1 then
                local0[7] = 15
                local0[9] = 30
            end
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[21] = 100
    elseif 15 <= local3 then
        local0[10] = 5
        local0[11] = 0
        local0[12] = 5
        local0[13] = 10
        local0[14] = 5
        local0[17] = 15
        local0[23] = 30
        if arg0:GetNumber(2) == 1 then
            local0[15] = 30
            local0[16] = 0
        end
    elseif 12 <= local3 then
        local0[10] = 10
        local0[11] = 5
        local0[12] = 5
        local0[13] = 10
        local0[14] = 10
        local0[17] = 20
        local0[23] = 20
        if arg0:GetNumber(2) == 1 then
            local0[15] = 20
            local0[16] = 30
        end
    elseif 9 <= local3 then
        local0[10] = 10
        local0[11] = 10
        local0[12] = 10
        local0[13] = 10
        local0[14] = 10
        local0[17] = 0
        local0[23] = 35
        if arg0:GetNumber(2) == 1 then
            local0[15] = 20
            local0[16] = 35
        end
    elseif 6 <= local3 then
        local0[10] = 10
        local0[11] = 10
        local0[12] = 10
        local0[13] = 10
        local0[14] = 10
        local0[17] = 0
        local0[23] = 35
        if arg0:GetNumber(2) == 1 then
            local0[15] = 10
            local0[16] = 0
        end
    elseif 3 <= local3 then
        local0[10] = 20
        local0[11] = 20
        local0[12] = 10
        local0[13] = 10
        local0[14] = 20
        local0[17] = 20
        local0[23] = 0
        if arg0:GetNumber(2) == 1 then
            local0[15] = 0
            local0[16] = 0
        end
    else
        local0[10] = 15
        local0[11] = 15
        local0[12] = 20
        local0[13] = 15
        local0[14] = 0
        local0[17] = 20
        local0[23] = 0
        local0[25] = 15
        if arg0:GetNumber(2) == 1 then
            local0[15] = 0
            local0[16] = 0
        end
    end
    if local5 == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if local5 == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if local5 == 3 and 0 < local0[3] then
        local0[3] = 1
    end
    if local5 == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if local5 == 5 and 0 < local0[5] then
        local0[5] = 1
    end
    if local5 == 6 and 0 < local0[6] then
        local0[6] = 1
    end
    if local5 == 7 and 0 < local0[7] then
        local0[7] = 1
    end
    if local5 == 8 and 0 < local0[8] then
        local0[8] = 1
    end
    if local5 == 9 and 0 < local0[9] then
        local0[9] = 1
    end
    if local5 == 10 and 0 < local0[10] then
        local0[10] = 1
    end
    if local5 == 11 and 0 < local0[11] then
        local0[11] = 1
    end
    if local5 == 12 and 0 < local0[12] then
        local0[12] = 1
    end
    if local5 == 13 and 0 < local0[13] then
        local0[13] = 1
    end
    if local5 == 14 and 0 < local0[14] then
        local0[14] = 1
    end
    if local5 == 15 and 0 < local0[15] then
        local0[15] = 1
    end
    if local5 == 16 and 0 < local0[16] then
        local0[16] = 1
    end
    if local5 == 17 and 0 < local0[17] then
        local0[17] = 1
    end
    if arg0:IsFinishTimer(1) == false then
        local0[17] = 1
    end
    if arg0:IsFinishTimer(1) == false then
        local0[23] = 1
    end
    if arg0:GetNumber(2) == 0 then
        local0[17] = 0
    end
    if arg0:GetNumber(2) == 0 then
        local0[23] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act17)
    local1[18] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act18)
    local1[19] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act19)
    local1[20] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, OldHunter805000_Act25)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, OldHunter805000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 5.2 - local0
function OldHunter805000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 10
    if 7 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, local0 - 1, TARGET_SELF, true, -1)
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 3, 0, 2)
    arg0:SetNumber(0, 1)
    arg0:SetNumber(1, 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_If, 10, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.1 - local0
local0 = 11.7 - local0
function OldHunter805000_ComboChain(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if arg0:IsFinishTimer(1) == false then
        local0 = arg0:GetRandam_Int(1, 70)
    end
    if arg0:GetDist(TARGET_ENE_0) <= 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, UPVAL1, 0)
    end
    if local0 <= 30 and arg0:GetNumber(2) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, local1, 0)
        arg0:SetTimer(1, 30)
    elseif local0 <= 65 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1, 0)
    end
    arg0:SetNumber(0, 1)
    return 
end

local0 = 10.1 - local0
function OldHunter805000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if 7 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, local0 - 1, TARGET_SELF, true, -1)
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.2 - local0
function OldHunter805000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if 7 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, local0 - 1, TARGET_SELF, true, -1)
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 9.4 - local0
function OldHunter805000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if 7 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, local0 - 1, TARGET_SELF, true, -1)
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 9 - local0
function OldHunter805000_Act05(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 15.3 - local0
function OldHunter805000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if 7 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, local0 - 1, TARGET_SELF, true, -1)
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.5 - local0
function OldHunter805000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if 7 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, local0 - 1, TARGET_SELF, true, -1)
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_None, 0, -1)
    arg0:SetNumber(0, 7)
    arg0:SetNumber(1, 1)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.3 - local0
function OldHunter805000_ThrowAttack(arg0, arg1)
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 52) and arg0:GetDist(TARGET_ENE_0) <= UPVAL0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, DIST_None, 0, -1)
    elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 52) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 0, -1)
    end
    arg0:SetNumber(0, 1)
    return 
end

local0 = 12.8 - local0
function OldHunter805000_Act08(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 100 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, local0, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, local0, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local0, 0)
    end
    arg0:SetNumber(0, 8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3 - local0
function OldHunter805000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0 + 1
    if 7 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, local0 - 1, TARGET_SELF, true, -1)
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, local3, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_If, 10, 2)
    end
    arg0:SetNumber(0, 9)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.8 - local0
function OldHunter805000_Act10(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, 0, -1)
        if arg0:GetRandam_Int(1, 100) <= 35 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local0, 0)
            if arg0:GetRandam_Int(1, 100) <= 0 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local0, 0)
            end
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, 0, -1)
    end
    arg0:SetNumber(0, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.1 - local0
function OldHunter805000_Act11(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 11)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.4 - local0
function OldHunter805000_Act12(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 12)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.1 - local0
function OldHunter805000_Act13(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 13)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.8 - local0
function OldHunter805000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local1, 0, -1)
    if local0 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, local1, 0)
    elseif local0 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local1, 0)
    end
    arg0:SetNumber(0, 14)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 20 - local0
function OldHunter805000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if 15 <= local0 then
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 5, 0, 2)
    elseif local0 <= 10 then
        if arg0:GetNumber(2) == 0 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 15)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 13.5 - local0
local0 = 11.5 - local0
function OldHunter805000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = UPVAL1
    local local3 = UPVAL1 + 5
    if UPVAL1 <= local1 then
        local2 = UPVAL0
        local3 = UPVAL0 + 5
    end
    Approach_Act(arg0, arg1, local2, local3, 0, 2)
    if UPVAL1 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL1 + 1, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
function OldHunter805000_Act17(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(1, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function OldHunter805000_Act18(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, DIST_None, 0, -1)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldHunter805000_Act19(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_EVENT, DIST_None, 0, -1)
    arg0:SetTimer(0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldHunter805000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        if local0 <= 4 and local1 <= 65 then
            if arg0:GetNumber(2) == 0 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif local0 <= 4 and local1 <= 65 then
        if arg0:GetNumber(2) == 0 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldHunter805000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        if local0 <= 4 and local1 <= 40 then
            if arg0:GetNumber(2) == 0 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif local0 <= 4 and local1 <= 40 then
        if arg0:GetNumber(2) == 0 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldHunter805000_Act22(arg0, arg1, arg2)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldHunter805000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, -1)
    arg0:SetTimer(1, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldHunter805000_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldHunter805000_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    if arg0:GetNumber(2) == 1 and arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldHunter805000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function OldHunter805000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(1.5, 2.5)
    local local5 = arg0:GetRandam_Float(1.5, 2.5)
    local local6 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5400) then
        if local0 <= 3 then
            if local1 <= 35 then
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            end
        elseif local0 <= 6 then
            if local1 <= 50 then
                if arg0:GetNumber(2) == 0 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                end
            end
        elseif local0 <= 9 then
            if local1 <= 65 then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, local5, TARGET_ENE_0, local0 - 1, TARGET_SELF, true, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, local5, TARGET_ENE_0, local0 - 1, TARGET_SELF, true, -1)
        end
    end
    return 
end

function OldHunter805000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function OldHunter805000Battle_Terminate(arg0, arg1)
    return 
end

function OldHunter805000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 10
    local local3 = arg0:GetRandam_Int(0, 1)
    if arg0:IsInterupt(INTERUPT_Damaged) then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5400) then
            local2 = 30
        end
        if arg0:GetDist(TARGET_ENE_0) < 3 and arg0:GetRandam_Int(1, 100) <= local2 then
            if local0 <= 60 then
                if arg0:HasSpecialEffectId(TARGET_SELF, 5400) then
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_None, 0, 360)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0, 360)
                end
            elseif arg0:GetNumber(2) == 1 and local0 <= 65 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            elseif arg0:GetNumber(2) == 0 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702 + local3, TARGET_ENE_0, 0, AI_DIR_TYPE_L + local3, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712 + local3, TARGET_ENE_0, 0, AI_DIR_TYPE_L + local3, 0)
            end
            return true
        end
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    local local6 = arg0:GetRandam_Int(0, 1)
    local local7 = Shoot_2dist(arg0, arg1, 5, 20, 20, 40)
    if local7 == 1 or local7 == 2 then
        if arg0:GetNumber(2) == 0 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702 + local6, TARGET_ENE_0, 0, AI_DIR_TYPE_L + local6, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 712 + local6, TARGET_ENE_0, 0, AI_DIR_TYPE_L + local6, 4)
        end
        return true
    else
        return false
    end
end

return 
