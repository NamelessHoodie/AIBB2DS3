local local0 = 2.2
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 0 - local0
local local6 = 0 - local0
local local7 = 0 - local0
local local8 = 3.2 - local0
local local9 = 0 - local0
local local10 = 6.4 - local0
local local11 = 0 - local0
local local12 = 5 - local0
local local13 = 0 - local0
local local14 = 7 - local0
local local15 = 0 - local0
local local16 = 8.4 - local0
function OnIf_251000(arg0, arg1, arg2)
    if arg2 == 0 then
        IllegitimateChildren251000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function IllegitimateChildren251000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = 1
    local local4 = 1
    local local5 = 1
    local local6 = 1
    local local7 = 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 480) then
        local3 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 481) then
        local4 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 482) then
        local5 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 483) then
        local6 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 484) then
        local7 = 0
    end
    local local8 = arg0:GetDist(TARGET_ENE_0)
    local local9 = arg0:GetRandam_Int(1, 100)
    local local10 = 1
    local local11 = 1
    local local12 = 1
    local local13 = 1
    local local14 = arg0:GetHpRate(TARGET_SELF)
    local local15 = 6
    local local16 = 3
    local local17 = arg0:GetNumber(2)
    if arg0:IsFinishTimer(0) == false then
        local10 = 0
    end
    if arg0:IsFinishTimer(2) == false then
        local11 = 0
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) == false then
        local12 = 0
    end
    if local8 < 13 or arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) == false then
        local13 = 0
    end
    if arg0:GetEventRequest(0) == 100 then
        local0[26] = 100
    elseif arg0:GetNumber(0) < 1 and local14 < 0.75 then
        local0[25] = 100
    elseif local3 + local4 + local5 + local6 + local7 < 5 and local14 < 0.5 and arg0:IsFinishTimer(3) == true then
        local0[21] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    elseif 0.75 <= local14 then
        if local15 <= local8 then
            local0[1] = 20 * local4
            if local17 == 1 and 0 < local0[1] then
                local0[1] = 1
            end
            local0[2] = 15 * local5
            if local17 == 2 and 0 < local0[2] then
                local0[2] = 1
            end
            local0[3] = 10 * local4 * local5
            if local17 == 3 and 0 < local0[3] then
                local0[3] = 1
            end
            local0[10] = 20 * local5
            if local17 == 10 and 0 < local0[10] then
                local0[10] = 1
            end
            local0[11] = 20 * local4
            if local17 == 11 and 0 < local0[11] then
                local0[11] = 1
            end
            local0[13] = 15
            if local17 == 13 and 0 < local0[13] then
                local0[13] = 1
            end
            local0[18] = 25 * local12
            if local17 == 18 and 0 < local0[18] then
                local0[18] = 1
            end
        elseif local16 <= local8 then
            local0[1] = 20 * local4
            if local17 == 1 and 0 < local0[1] then
                local0[1] = 1
            end
            local0[2] = 15 * local5
            if local17 == 2 and 0 < local0[2] then
                local0[2] = 1
            end
            local0[3] = 10 * local4 * local5
            if local17 == 3 and 0 < local0[3] then
                local0[3] = 1
            end
            local0[10] = 20 * local5
            if local17 == 10 and 0 < local0[10] then
                local0[10] = 1
            end
            local0[11] = 20 * local4
            if local17 == 11 and 0 < local0[11] then
                local0[11] = 1
            end
            local0[13] = 15
            if local17 == 13 and 0 < local0[13] then
                local0[13] = 1
            end
            local0[18] = 25 * local12
            if local17 == 18 and 0 < local0[18] then
                local0[18] = 1
            end
        else
            local0[4] = 20
            if local17 == 4 and 0 < local0[4] then
                local0[4] = 1
            end
            local0[8] = 30 * local4
            if local17 == 8 and 0 < local0[8] then
                local0[8] = 1
            end
            local0[9] = 30 * local5
            if local17 == 9 and 0 < local0[9] then
                local0[9] = 1
            end
            local0[12] = 20
            if local17 == 12 and 0 < local0[12] then
                local0[12] = 1
            end
        end
    elseif 0.5 <= local14 then
        if local15 <= local8 then
            local0[15] = 20
            if local17 == 15 and 0 < local0[15] then
                local0[15] = 1
            end
            local0[1] = 10 * local4
            if local17 == 1 and 0 < local0[1] then
                local0[1] = 1
            end
            local0[2] = 10 * local5
            if local17 == 2 and 0 < local0[2] then
                local0[2] = 1
            end
            local0[3] = 10 * local4 * local5
            if local17 == 3 and 0 < local0[3] then
                local0[3] = 1
            end
            local0[10] = 5 * local5
            if local17 == 10 and 0 < local0[10] then
                local0[10] = 1
            end
            local0[11] = 5 * local4
            if local17 == 11 and 0 < local0[11] then
                local0[11] = 1
            end
            local0[13] = 10
            if local17 == 13 and 0 < local0[13] then
                local0[13] = 1
            end
            local0[18] = 40 * local12
            if local17 == 18 and 0 < local0[18] then
                local0[18] = 1
            end
            local0[7] = 10 * local11
            if local17 == 7 and 0 < local0[7] then
                local0[7] = 1
            end
            local0[5] = 20
            if local17 == 5 and 0 < local0[5] then
                local0[5] = 1
            end
        elseif local16 <= local8 then
            local0[1] = 10 * local4
            if local17 == 1 and 0 < local0[1] then
                local0[1] = 1
            end
            local0[2] = 10 * local5
            if local17 == 2 and 0 < local0[2] then
                local0[2] = 1
            end
            local0[3] = 10 * local4 * local5
            if local17 == 3 and 0 < local0[3] then
                local0[3] = 1
            end
            local0[10] = 10 * local5
            if local17 == 10 and 0 < local0[10] then
                local0[10] = 1
            end
            local0[11] = 10 * local4
            if local17 == 11 and 0 < local0[11] then
                local0[11] = 1
            end
            local0[13] = 10
            if local17 == 13 and 0 < local0[13] then
                local0[13] = 1
            end
            local0[18] = 40 * local12
            if local17 == 18 and 0 < local0[18] then
                local0[18] = 1
            end
            local0[7] = 20 * local11
            if local17 == 7 and 0 < local0[7] then
                local0[7] = 1
            end
            local0[5] = 20
            if local17 == 5 and 0 < local0[5] then
                local0[5] = 1
            end
        else
            local0[4] = 20
            if local17 == 4 and 0 < local0[4] then
                local0[4] = 1
            end
            local0[8] = 30 * local4
            if local17 == 8 and 0 < local0[8] then
                local0[8] = 1
            end
            local0[9] = 30 * local5
            if local17 == 9 and 0 < local0[9] then
                local0[9] = 1
            end
            local0[12] = 20
            if local17 == 12 and 0 < local0[12] then
                local0[12] = 1
            end
        end
    elseif local15 <= local8 then
        local0[15] = 20
        if local17 == 15 and 0 < local0[15] then
            local0[15] = 1
        end
        local0[6] = 130 * local10
        if local17 == 6 and 0 < local0[6] then
            local0[6] = 1
        end
        local0[22] = 5 * local4
        if local17 == 22 and 0 < local0[22] then
            local0[22] = 1
        end
        local0[23] = 5 * local5
        if local17 == 23 and 0 < local0[23] then
            local0[23] = 1
        end
        local0[24] = 5 * local4 * local5
        if local17 == 24 and 0 < local0[24] then
            local0[24] = 1
        end
        local0[13] = 5
        if local17 == 13 and 0 < local0[13] then
            local0[13] = 1
        end
        local0[18] = 30 * local12
        if local17 == 18 and 0 < local0[18] then
            local0[18] = 1
        end
        local0[7] = 10 * local11
        if local17 == 7 and 0 < local0[7] then
            local0[7] = 1
        end
        local0[5] = 10
        if local17 == 5 and 0 < local0[5] then
            local0[5] = 1
        end
        local0[16] = 10
        if local17 == 16 and 0 < local0[16] then
            local0[16] = 1
        end
        local0[19] = 80 * local13
        if local17 == 19 and 0 < local0[19] then
            local0[19] = 1
        end
    elseif local16 <= local8 then
        local0[6] = 110 * local10
        if local17 == 6 and 0 < local0[6] then
            local0[6] = 1
        end
        local0[22] = 10 * local4
        if local17 == 22 and 0 < local0[22] then
            local0[22] = 1
        end
        local0[23] = 10 * local5
        if local17 == 23 and 0 < local0[23] then
            local0[23] = 1
        end
        local0[24] = 10 * local4 * local5
        if local17 == 24 and 0 < local0[24] then
            local0[24] = 1
        end
        local0[13] = 10
        if local17 == 13 and 0 < local0[13] then
            local0[13] = 1
        end
        local0[18] = 30 * local12
        if local17 == 18 and 0 < local0[18] then
            local0[18] = 1
        end
        local0[7] = 20 * local11
        if local17 == 7 and 0 < local0[7] then
            local0[7] = 1
        end
        local0[5] = 10
        if local17 == 5 and 0 < local0[5] then
            local0[5] = 1
        end
        local0[16] = 20
        if local17 == 16 and 0 < local0[16] then
            local0[16] = 1
        end
    else
        local0[6] = 110 * local10
        if local17 == 6 and 0 < local0[6] then
            local0[6] = 1
        end
        local0[4] = 15
        if local17 == 4 and 0 < local0[4] then
            local0[4] = 1
        end
        local0[8] = 20 * local4
        if local17 == 8 and 0 < local0[8] then
            local0[8] = 1
        end
        local0[9] = 20 * local5
        if local17 == 9 and 0 < local0[9] then
            local0[9] = 1
        end
        local0[12] = 15
        if local17 == 12 and 0 < local0[12] then
            local0[12] = 1
        end
        local0[17] = 20
        if local17 == 17 and 0 < local0[17] then
            local0[17] = 1
        end
    end
    local1[1] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act13)
    local1[15] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act17)
    local1[18] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act18)
    local1[19] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act19)
    local1[20] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act26)
    local1[30] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_Act31)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, IllegitimateChildren251000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 8.4 - local0
function IllegitimateChildren251000_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 9999
    local local2 = UPVAL0 + 1
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetHpRate(TARGET_SELF)
    local local6 = 1
    local local7 = 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 482) then
        local6 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 481) then
        local7 = 0
    end
    if local5 < 0.5 then
        local1 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local5 < 0.5 then
        local2 = 999
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    if local4 <= 33 or local6 == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
    elseif local4 <= 67 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local2, 0, -1)
    end
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 33
    return GetWellSpace_Odds
end

local0 = 8.8 - local0
function IllegitimateChildren251000_Act02(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 9999
    local local2 = UPVAL0 + 1
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetHpRate(TARGET_SELF)
    local local5 = 1
    local local6 = 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 482) then
        local5 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 481) then
        local6 = 0
    end
    if local4 < 0.5 then
        local1 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local4 < 0.5 then
        local2 = 999
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local2, 0, -1)
    end
    arg0:SetNumber(2, 2)
    GetWellSpace_Odds = 33
    return GetWellSpace_Odds
end

local0 = 9.8 - local0
function IllegitimateChildren251000_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 9999
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = 1
    local local5 = 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 482) then
        local4 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 481) then
        local5 = 0
    end
    if local3 < 0.5 then
        local1 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local3 < 0.5 then
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(2, 3)
    GetWellSpace_Odds = 33
    return GetWellSpace_Odds
end

local0 = 7 - local0
function IllegitimateChildren251000_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 9999
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    if local3 < 0.5 then
        local1 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local3 < 0.5 then
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(2, 4)
    GetWellSpace_Odds = 75
    return GetWellSpace_Odds
end

local0 = 14.4 - local0
local0 = 0 - local0
function IllegitimateChildren251000_Act05(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = 9999
    local local3 = UPVAL0 + 1
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetHpRate(TARGET_SELF)
    if local5 < 0.5 then
        local2 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local5 < 0.5 then
        local3 = 999
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local3, 0, -1)
    arg0:SetNumber(2, 5)
    if arg0:GetNumber(0) == 0 then
        arg0:SetNumber(0, 1)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 999 - local0
local0 = 0 - local0
function IllegitimateChildren251000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = 9999
    local local4 = 0
    local local5 = arg0:GetRandam_Int(1, 100)
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local3 = 0
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(2, 6)
    arg0:SetTimer(0, 30)
    if arg0:GetNumber(0) == 1 then
        arg0:SetNumber(0, 2)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 11.4 - local0
local0 = 0 - local0
function IllegitimateChildren251000_Act07(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = 9999
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if local4 < 0.5 then
        local2 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local4 < 0.5 then
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(2, 7)
    arg0:SetTimer(2, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = 0 - local0
function IllegitimateChildren251000_Act08(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = 9999
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if local4 < 0.5 then
        local2 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local4 < 0.5 then
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(2, 8)
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
local0 = 0 - local0
function IllegitimateChildren251000_Act09(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = 9999
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if local4 < 0.5 then
        local2 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local4 < 0.5 then
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(2, 9)
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

local0 = 9.4 - local0
local0 = 0 - local0
function IllegitimateChildren251000_Act10(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = 9999
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if local4 < 0.5 then
        local2 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local4 < 0.5 then
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(2, 10)
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

local0 = 8.2 - local0
local0 = 0 - local0
function IllegitimateChildren251000_Act11(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = 9999
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if local4 < 0.5 then
        local2 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local4 < 0.5 then
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(2, 11)
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

local0 = 3.4 - local0
local0 = 0 - local0
function IllegitimateChildren251000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = 9999
    local local4 = 0
    local local5 = arg0:GetRandam_Int(1, 100)
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local3 = 0
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(2, 12)
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

local0 = 11.4 - local0
local0 = 0 - local0
function IllegitimateChildren251000_Act13(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = 9999
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if local4 < 0.5 then
        local2 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local4 < 0.5 then
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(2, 13)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 14.8 - local0
local0 = 0 - local0
function IllegitimateChildren251000_Act15(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = 9999
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if local4 < 0.5 then
        local2 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local4 < 0.5 then
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(2, 15)
    if arg0:GetNumber(0) == 0 then
        arg0:SetNumber(0, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 11 - local0
local0 = 0 - local0
function IllegitimateChildren251000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = 9999
    local local4 = UPVAL0 + 1
    local local5 = 0
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local3 = 0
    end
    if arg0:GetRandam_Int(1, 100) <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, local4, 0, -1)
    end
    arg0:SetNumber(2, 16)
    if arg0:GetNumber(0) == 1 then
        arg0:SetNumber(0, 2)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2 - local0
local0 = 0 - local0
function IllegitimateChildren251000_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = 9999
    local local4 = UPVAL0 + 1
    local local5 = 0
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local3 = 0
    end
    if arg0:GetRandam_Int(1, 100) <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3031, TARGET_ENE_0, local4, 0, -1)
    end
    arg0:SetNumber(2, 17)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 20.5 - local0
local0 = 0 - local0
function IllegitimateChildren251000_Act18(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = 9999
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if local4 < 0.5 then
        local2 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local4 < 0.5 then
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(2, 18)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 16.1 - local0
local0 = 0 - local0
function IllegitimateChildren251000_Act19(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = 9999
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if local4 < 0.5 then
        local2 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local4 < 0.5 then
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(2, 19)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function IllegitimateChildren251000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= -1.3 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    elseif local0 <= 5 and (not not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) or arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90)) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, DIST_None, 0, 90)
        end
    elseif local0 <= 8 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, DIST_None, 0, 90)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, DIST_None, 0, 90)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    end
    arg0:SetNumber(2, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function IllegitimateChildren251000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3030, TARGET_ENE_0, 100, 0, 90)
    arg0:SetNumber(2, 21)
    arg0:SetTimer(3, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8.4 - local0
function IllegitimateChildren251000_Act22(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 9999
    local local2 = UPVAL0 + 1
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetHpRate(TARGET_SELF)
    if local4 < 0.5 then
        local1 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local4 < 0.5 then
        local2 = 999
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    if local3 <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local2, 0, -1)
    elseif local3 <= 67 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local2, 0, -1)
    end
    arg0:SetNumber(2, 22)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.8 - local0
function IllegitimateChildren251000_Act23(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 9999
    local local2 = UPVAL0 + 1
    local local3 = arg0:GetHpRate(TARGET_SELF)
    if local3 < 0.5 then
        local1 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local3 < 0.5 then
        local2 = 999
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local2, 0, -1)
    end
    arg0:SetNumber(2, 23)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 9.8 - local0
function IllegitimateChildren251000_Act24(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 9999
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    if local3 < 0.5 then
        local1 = 0
    end
    if arg0:GetNumber(1) ~= 0 then
        local0 = 999
        arg0:SetNumber(1, 0)
    elseif local3 < 0.5 then
        if arg0:GetRandam_Int(1, 100) <= 30 then
            local0 = 999
        else
            local0 = local0 + arg0:GetRandam_Int(0, 5)
        end
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(2, 24)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
function IllegitimateChildren251000_Act25(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 3 then
        if arg0:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 10) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, MoveTimeS, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
        end
    end
    IllegitimateChildren251000_Act15(arg0, arg1, arg2)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function IllegitimateChildren251000_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    IllegitimateChildren251000_Act21(arg0, arg1, arg2)
    arg0:SetNumber(0, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function IllegitimateChildren251000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = 0
    if 0.75 <= local3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif 0.5 <= local3 then
        if 12 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 710, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
        elseif local0 <= 2 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    end
    return 
end

function IllegitimateChildren251000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function IllegitimateChildren251000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function IllegitimateChildren251000Battle_Terminate(arg0, arg1)
    return 
end

function IllegitimateChildren251000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetHpRate(TARGET_SELF)
    local local2 = 1
    local local3 = 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 481) then
        local2 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 482) then
        local3 = 0
    end
    if GuardBreak_Act(arg0, arg1, 9.8, 100) then
        if local1 < 0.5 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3014, TARGET_ENE_0, AttDist, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3004, TARGET_ENE_0, AttDist, 0, -1)
        end
        return true
    elseif arg0:IsInterupt(INTERUPT_Shoot) then
        if local0 <= 50 then
            arg1:ClearSubGoal()
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                if arg0:GetDist(TARGET_ENE_0) < 3.4 then
                    if local2 == 1 and local3 == 1 then
                        if local0 <= 25 then
                            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3015, TARGET_ENE_0, AttDist, 0, -1)
                        elseif local0 <= 50 then
                            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3016, TARGET_ENE_0, AttDist, 0, -1)
                        elseif local0 <= 75 then
                            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3005, TARGET_ENE_0, AttDist, 0, -1)
                        else
                            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3019, TARGET_ENE_0, AttDist, 0, -1)
                        end
                    elseif local2 == 1 then
                        if local0 <= 50 then
                            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3015, TARGET_ENE_0, AttDist, 0, -1)
                        elseif local0 <= 75 then
                            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3005, TARGET_ENE_0, AttDist, 0, -1)
                        else
                            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3019, TARGET_ENE_0, AttDist, 0, -1)
                        end
                    elseif local3 == 1 then
                        if local0 <= 50 then
                            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3016, TARGET_ENE_0, AttDist, 0, -1)
                        elseif local0 <= 75 then
                            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3005, TARGET_ENE_0, AttDist, 0, -1)
                        else
                            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3019, TARGET_ENE_0, AttDist, 0, -1)
                        end
                    elseif local0 <= 50 then
                        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3005, TARGET_ENE_0, AttDist, 0, -1)
                    else
                        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3019, TARGET_ENE_0, AttDist, 0, -1)
                    end
                elseif local2 == 1 and local3 == 1 then
                    if local1 < 0.5 then
                        IllegitimateChildren251000_Act23(arg0, arg1, paramTbl)
                    else
                        IllegitimateChildren251000_Act03(arg0, arg1, paramTbl)
                    end
                elseif local2 == 1 then
                    if local1 < 0.5 then
                        IllegitimateChildren251000_Act21(arg0, arg1, paramTbl)
                    else
                        IllegitimateChildren251000_Act01(arg0, arg1, paramTbl)
                    end
                elseif local3 == 1 then
                    if local1 < 0.5 then
                        IllegitimateChildren251000_Act22(arg0, arg1, paramTbl)
                    else
                        IllegitimateChildren251000_Act02(arg0, arg1, paramTbl)
                    end
                elseif local0 <= 50 then
                    IllegitimateChildren251000_Act04(arg0, arg1, paramTbl)
                else
                    IllegitimateChildren251000_Act13(arg0, arg1, paramTbl)
                end
                return true
            else
                return false
            end
        else
            return false
        end
    end
    local local4 = arg0:GetNumber(7)
    if arg0:IsInterupt(INTERUPT_Damaged) then
        if local4 == 0 then
            local4 = 16
        end
        arg0:SetNumber(7, local4 * 2)
    end
    if 100 <= local4 then
        arg0:SetNumber(7, 100)
    end
    if arg0:IsInterupt(INTERUPT_Damaged) then
        if local0 <= arg0:GetNumber(7) then
            arg0:SetNumber(7, 0)
            arg1:ClearSubGoal()
            arg0:SetNumber(1, 1)
            IllegitimateChildren251000Battle_Activate(arg0, arg1)
            return true
        else
            return false
        end
    else
        return false
    end
end

return 
