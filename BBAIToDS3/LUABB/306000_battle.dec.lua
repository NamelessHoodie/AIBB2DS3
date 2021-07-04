local local0 = 0.3
local local1 = 1 - local0
local local2 = 1 - local0
local local3 = 1 - local0
local local4 = 1 - local0
local local5 = 0 - local0
local local6 = 1 - local0
local local7 = 30 - local0
local local8 = 1 - local0
local local9 = 30 - local0
local local10 = 1 - local0
local local11 = 10 - local0
local local12 = 1 - local0
local local13 = 10 - local0
local local14 = 1 - local0
local local15 = 1 - local0
local local16 = 5 - local0
local local17 = 1 - local0
local local18 = 15 - local0
local local19 = 1 - local0
local local20 = 1 - local0
local local21 = 1 - local0
local local22 = 9 - local0
local local23 = 0.5 - local0
local local24 = 5 - local0
local local25 = 6.7 - local0
local local26 = 0.5 - local0
local local27 = 2 - local0
local local28 = 3.5 - local0
local local29 = 3.5 - local0
local local30 = 1 - local0
local local31 = 1 - local0
local local32 = 99.9 - local0
local local33 = 1 - local0
local local34 = 99.9 - local0
function OnIf_306000(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_bride306000_ActAfter(arg0, arg1)
    end
    if arg2 == 2 then
        DungeonResident_bride306000_combofinish(arg0, arg1)
    end
    return 
end

local0 = 1
function DungeonResident_bride306000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetEventRequest(0)
    local local7 = arg0:GetNumber(1)
    if local7 == 22 or arg0:GetNumber(0) == 0 then
        local local8 = 1
        SETUPVAL 10 0 0
    elseif arg0:GetNumber(2) == 1 then
        local local8 = UPVAL0 * 2
        SETUPVAL 10 0 0
    else
        local local8 = UPVAL0 * 1.5
        SETUPVAL 10 0 0
    end
    if local3 <= 0.8 and arg0:GetNumber(0) == 0 then
        local0[21] = 100
    elseif local3 <= 0.4 and arg0:GetNumber(0) == 1 then
        local0[11] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) and arg0:IsFinishTimer(0) == true and arg0:GetNumber(3) == 0 then
        local0[22] = 100
    elseif arg0:GetNumber(0) == 2 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            local0[20] = 100
        elseif local7 == 12 and 10 <= local4 then
            if 13 <= local4 then
                local0[1] = 100
            else
                local0[7] = 100
            end
        elseif 12 <= local4 then
            local0[1] = 100
        elseif 9 <= local4 then
            local0[1] = 25
            local0[2] = 10
            local0[4] = 25
            local0[7] = 40
            local0[12] = 0
            local0[22] = UPVAL0
        elseif 6 <= local4 then
            local0[2] = 15
            local0[4] = 30
            local0[7] = 35
            local0[12] = 20
            local0[22] = UPVAL0
        elseif 3 <= local4 then
            local0[2] = 15
            local0[6] = 10
            local0[9] = 20
            local0[10] = 25
            local0[12] = 30
            local0[22] = UPVAL0
        else
            local0[2] = 5
            local0[6] = 20
            local0[8] = 10
            local0[9] = 15
            local0[10] = 20
            local0[12] = 30
            local0[22] = UPVAL0
        end
    elseif arg0:GetNumber(0) == 1 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            local0[20] = 100
        elseif 12 <= local4 then
            local0[1] = 100
            local0[22] = UPVAL0
        elseif 9 <= local4 then
            local0[1] = 50
            local0[2] = 10
            local0[4] = 0
            local0[7] = 40
            local0[22] = UPVAL0
        elseif 6 <= local4 then
            local0[2] = 30
            local0[4] = 30
            local0[7] = 40
            local0[22] = UPVAL0
        elseif 3 <= local4 then
            local0[2] = 25
            local0[6] = 20
            local0[9] = 25
            local0[10] = 30
            local0[22] = UPVAL0
        else
            local0[2] = 10
            local0[6] = 25
            local0[8] = 15
            local0[9] = 25
            local0[10] = 25
            local0[22] = UPVAL0
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif 12 <= local4 then
        local0[1] = 100
        local0[2] = 0
        local0[3] = 0
    elseif 9 <= local4 then
        local0[1] = 80
        local0[2] = 20
        local0[3] = 0
    elseif 6 <= local4 then
        local0[1] = 15
        local0[2] = 55
        local0[3] = 30
    else
        local0[1] = 0
        local0[2] = 50
        local0[3] = 50
    end
    if local7 == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if local7 == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if local7 == 3 and 0 < local0[3] then
        local0[3] = 1
    end
    if local7 == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if local7 == 5 and 0 < local0[5] then
        local0[5] = 1
    end
    if local7 == 6 and 0 < local0[6] then
        local0[6] = 1
    end
    if local7 == 7 and 0 < local0[7] then
        local0[7] = 1
    end
    if local7 == 8 and 0 < local0[8] then
        local0[8] = 1
    end
    if local7 == 9 and 0 < local0[9] then
        local0[9] = 1
    end
    if local7 == 10 and 0 < local0[10] then
        local0[10] = 1
    end
    if local7 == 11 and 0 < local0[11] then
        local0[11] = 1
    end
    if local7 == 12 and 0 < local0[12] then
        local0[12] = 1
    end
    if local7 == 22 and 0 < local0[22] then
        local0[22] = 1
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_bride306000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_bride306000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_bride306000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_bride306000_Act04)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_bride306000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DungeonResident_bride306000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DungeonResident_bride306000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, DungeonResident_bride306000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, DungeonResident_bride306000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, DungeonResident_bride306000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, DungeonResident_bride306000_Act12)
    local1[20] = REGIST_FUNC(arg0, arg1, DungeonResident_bride306000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, DungeonResident_bride306000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, DungeonResident_bride306000_Act22)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_bride306000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 30 - local0
local0 = 30 - local0
function DungeonResident_bride306000_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL1 + 1
    local local2 = arg0:GetRandam_Int(1, 3)
    if arg0:IsVisibleTarget(TARGET_ENE_0) == false then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.3, 3), TARGET_ENE_0, bRight, arg0:GetRandam_Int(120, 120), true, true, -1)
    elseif arg0:GetNumber(0) == 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3025, TARGET_ENE_0, local0, 0, 0)
        local local3 = 1
        for local4 = local2 - local3, 3, local3 do
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, local1, 0)
        end
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, local1, 0)
    elseif arg0:GetNumber(0) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, 0, 0)
        local local3 = 1
        for local4 = local2 - local3, 3, local3 do
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
        end
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0)
    end
    arg0:SetNumber(1, 1)
    arg0:SetNumber(2, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 10 - local0
local0 = 10 - local0
function DungeonResident_bride306000_Act02(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL1 + 1
    if arg0:GetNumber(0) == 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3027, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3028, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    end
    arg0:SetNumber(1, 2)
    arg0:SetNumber(2, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8 - local0
function DungeonResident_bride306000_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(1, 3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 15 - local0
function DungeonResident_bride306000_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    if arg0:IsVisibleTarget(TARGET_ENE_0) == false then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.3, 3), TARGET_ENE_0, bRight, arg0:GetRandam_Int(120, 120), true, true, -1)
    elseif 2 <= arg0:GetNumber(0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, local0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local0, 0)
    end
    arg0:SetNumber(1, 4)
    arg0:SetNumber(2, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.5 - local0
local0 = local25
local0 = 2.7 - local0
function DungeonResident_bride306000_Act06(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL2, 999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, UPVAL1 + 2, 0)
    arg0:SetNumber(1, 6)
    arg0:SetNumber(2, 1)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.2 - local0
local0 = local25
function DungeonResident_bride306000_combofinish(arg0, arg1)
    if arg0:GetDist(TARGET_ENE_0) <= 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, UPVAL1 + 1, 0)
    end
    return 
end

local0 = 12.2 - local0
function DungeonResident_bride306000_Act07(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 999, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(1, 7)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3 - local0
function DungeonResident_bride306000_Act08(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(1, 8)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.7 - local0
function DungeonResident_bride306000_Act09(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(1, 9)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.1 - local0
local0 = 4.5 - local0
function DungeonResident_bride306000_Act10(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL1, 999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, local0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local0, 0)
    arg0:SetNumber(1, 10)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DungeonResident_bride306000_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5516)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 15.1 - local0
function DungeonResident_bride306000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(1, 12)
    arg0:SetNumber(2, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DungeonResident_bride306000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(1, 2)
    if arg0:GetNumber(0) == 1 then
        if local0 <= 3 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                if local1 <= 70 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                else
                    DungeonResident_bride306000_Act06(arg0, arg1, arg2)
                end
            elseif local1 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                DungeonResident_bride306000_Act06(arg0, arg1, arg2)
            end
        elseif local0 <= 10 then
            if arg0:GetRandam_Int(1, 100) <= 70 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), false, true, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
        end
    elseif local0 <= 3 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), false, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), false, true, -1)
            end
        else
            DungeonResident_bride306000_Act03(arg0, arg1, arg2)
        end
    elseif local0 <= 8 then
        DungeonResident_bride306000_Act02(arg0, arg1, arg2)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_bride306000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5401)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_bride306000_Act22(arg0, arg1, arg2)
    if arg0:GetNumber(0) == 2 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, DIST_None, 0, 0)
    end
    arg0:SetNumber(1, 22)
    arg0:SetNumber(3, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_bride306000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_bride306000_ActAfter(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    if local0 > 5 then
        if local0 <= 7.5 then
            if local1 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1, 2), TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
            end
        elseif local0 <= 10 then
            if local1 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.3, 3), TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 4), TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    end
    return 
end

function DungeonResident_bride306000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_bride306000Battle_Terminate(arg0, arg1)
    return 
end

local0 = 99.9 - local0
function DungeonResident_bride306000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = UPVAL0 + 1
    if arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) then
        if arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5401) then
            arg1:ClearSubGoal()
            arg0:SetNumber(0, 1)
            arg0:SetTimer(0, arg0:GetRandam_Int(10, 15))
            arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5401)
            arg0:Replaning()
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5516) then
            arg1:ClearSubGoal()
            arg0:SetNumber(0, 2)
            arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5516)
            arg0:Replaning()
        end
        return true
    else
        return false
    end
end

return 
