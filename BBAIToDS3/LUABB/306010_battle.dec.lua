local local0 = 0.3
local local1 = 1 - local0
local local2 = 1 - local0
local local3 = 1 - local0
local local4 = 1 - local0
local local5 = 9 - local0
local local6 = 0.5 - local0
local local7 = 5 - local0
local local8 = 0.5 - local0
local local9 = 3.5 - local0
local local10 = 5.1 - local0
function OnIf_306010(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_bride_other_self_306010_ActAfter(arg0, arg1)
    end
    if arg2 == 1 then
        DungeonResident_bride_other_self_306010_combofinish(arg0, arg1)
    end
    return 
end

function DungeonResident_bride_other_self_306010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetEventRequest(0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif arg0:GetEventRequest(1) == 100 then
        if 9 <= local4 then
            local0[1] = 40
            local0[2] = 35
            local0[6] = 0
            local0[7] = 25
            local0[8] = 0
            local0[9] = 0
            local0[10] = 0
        elseif 6 <= local4 then
            local0[1] = 20
            local0[2] = 25
            local0[6] = 10
            local0[7] = 30
            local0[8] = 0
            local0[9] = 0
            local0[10] = 15
        elseif 3 <= local4 then
            local0[1] = 0
            local0[6] = 30
            local0[7] = 0
            local0[8] = 40
            local0[9] = 20
            local0[10] = 10
        else
            local0[1] = 0
            local0[6] = 20
            local0[7] = 0
            local0[8] = 30
            local0[9] = 40
            local0[10] = 10
        end
    elseif 9 <= local4 then
        local0[1] = 50
        local0[6] = 25
        local0[8] = 0
        local0[10] = 25
    elseif 6 <= local4 then
        local0[1] = 20
        local0[6] = 30
        local0[8] = 10
        local0[10] = 40
    elseif 3 <= local4 then
        local0[1] = 0
        local0[6] = 20
        local0[8] = 50
        local0[10] = 30
    else
        local0[1] = 0
        local0[6] = 50
        local0[8] = 30
        local0[10] = 20
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_bride_other_self_306010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_bride_other_self_306010_Act02)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_bride_other_self_306010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DungeonResident_bride_other_self_306010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DungeonResident_bride_other_self_306010_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, DungeonResident_bride_other_self_306010_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, DungeonResident_bride_other_self_306010_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, DungeonResident_bride_other_self_306010_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_bride_other_self_306010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 30 - local0
function DungeonResident_bride_other_self_306010_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 3)
    if arg0:GetEventRequest(1) == 100 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3032, TARGET_ENE_0, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3033, TARGET_ENE_0, local0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3032, TARGET_ENE_0, local0, 0, 0)
    end
    arg0:SetNumber(1, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 10 - local0
function DungeonResident_bride_other_self_306010_Act02(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 9999, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3034, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(1, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1 - local0
local0 = 2.7 - local0
local0 = 2.5 - local0
function DungeonResident_bride_other_self_306010_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL1, 9999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL1 + 2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, UPVAL2 + 2, 0)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.2 - local0
local0 = 6.7 - local0
function DungeonResident_bride_other_self_306010_combofinish(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, UPVAL1 + 1, 0)
    end
    return 
end

local0 = 12.2 - local0
function DungeonResident_bride_other_self_306010_Act07(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 999, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(1, 7)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3 - local0
function DungeonResident_bride_other_self_306010_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.7 - local0
function DungeonResident_bride_other_self_306010_Act09(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2 - local0
local0 = 4.5 - local0
function DungeonResident_bride_other_self_306010_Act10(arg0, arg1, arg2)
    local local0 = UPVAL1 + 1
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL0 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    else
        Approach_Act(arg0, arg1, UPVAL1, 9999, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, local0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DungeonResident_bride_other_self_306010_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Float(1, 2)
    if local0 <= 3 then
        if arg0:GetEventRequest(1) == 100 or arg0:GetRandam_Int(1, 100) <= 50 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                DungeonResident_bride_other_self_306010_Act06(arg0, arg1, arg2)
            else
                DungeonResident_bride_other_self_306010_Act08(arg0, arg1, arg2)
            end
        else
            DungeonResident_bride_other_self_306010_Act09(arg0, arg1, arg2)
        end
    elseif local0 <= 10 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_bride_other_self_306010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_bride_other_self_306010_ActAfter(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 3.5)
    local local4 = arg0:GetRandam_Float(2, 3)
    return 
end

function DungeonResident_bride_other_self_306010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_bride_other_self_306010Battle_Terminate(arg0, arg1)
    return 
end

function DungeonResident_bride_other_self_306010Battle_Interupt(arg0, arg1)
    return false
end

return 
