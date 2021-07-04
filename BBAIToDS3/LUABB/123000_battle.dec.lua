local local0 = 0.5
local local1 = 0.5 - local0
local local2 = 7.5 - local0
local local3 = 0.5 - local0
local local4 = 7.8 - local0
local local5 = 0.5 - local0
local local6 = 6.6 - local0
local local7 = 0.5 - local0
local local8 = 5.9 - local0
local local9 = 0.5 - local0
local local10 = 0.5 - local0
local local11 = 0.5 - local0
local local12 = 0.5 - local0
local local13 = 5.8 - local0
local local14 = 0.5 - local0
local local15 = 0.5 - local0
local local16 = 0.5 - local0
local local17 = 0.5 - local0
local local18 = 0.5 - local0
local local19 = 0.5 - local0
local local20 = 0.5 - local0
local local21 = 0.5 - local0
function OnIf_123000(arg0, arg1, arg2)
    if arg2 == 0 then
        Digger123000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Digger123000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetHpRate(TARGET_SELF)
    if arg0:GetNpcThinkParamID() == 123099 and arg0:IsVisibleTarget(TARGET_ENE_0) and arg0:GetNumber(0) == 0 then
        local0[2] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and arg0:GetRandam_Int(1, 100) <= 50 then
        local0[6] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[10] = 100
    elseif 15 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[7] = 0
        local0[8] = 100
    elseif 10 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[7] = 30
        local0[8] = 70
    elseif 7.5 <= local3 then
        local0[1] = 40
        local0[2] = 0
        local0[3] = 60
        local0[4] = 0
        local0[5] = 0
        local0[7] = 0
    else
        local0[1] = 15
        local0[2] = 45
        local0[3] = 5
        local0[4] = 25
        local0[5] = 10
        local0[7] = 0
    end
    if arg0:GetNumber(1) == 2 or 0.5 <= arg0:GetDistY(TARGET_ENE_0) then
        local0[2] = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        local0[7] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Digger123000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Digger123000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Digger123000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Digger123000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Digger123000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Digger123000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Digger123000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Digger123000_Act08)
    local1[10] = REGIST_FUNC(arg0, arg1, Digger123000_Act10)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Digger123000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local4
local0 = local6
local0 = 7.2 - local0
local0 = 7.4 - local0
local0 = 7.2 - local0
function Digger123000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL1 + 1
    local local3 = UPVAL2 + 1
    local local4 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
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
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
local0 = 8 - local0
function Digger123000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        local1 = UPVAL1 + 1
        local2 = UPVAL1
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, 0)
    if arg0:GetNpcThinkParamID() == 123099 then
        arg0:SetNumber(0, 1)
    end
    arg0:SetNumber(1, arg0:GetNumber(1) + 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 10 - local0
local0 = 10 - local0
local0 = 10 - local0
local0 = 10 - local0
function Digger123000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        local1 = UPVAL1 + 1
        local2 = UPVAL1
    end
    if local0 <= 50 then
        local1 = UPVAL2 + 1
        local2 = UPVAL2
        if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
            local1 = UPVAL3 + 1
            local2 = UPVAL3
        end
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    if local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local1, 0, 0)
    end
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.2 - local0
local0 = 4.2 - local0
function Digger123000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        local1 = UPVAL1 + 1
        local2 = UPVAL1
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local1, 0, 0)
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local13
local0 = 6.1 - local0
function Digger123000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        local1 = UPVAL1 + 1
        local2 = UPVAL1
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local1, 0, 0)
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Digger123000_Act06(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5400) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, Dist_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, Dist_None, 0, 0)
    end
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local4
local0 = local6
local0 = local8
local0 = local13
function Digger123000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL4
    if arg0:IsBothHandMode(TARGET_ENE_0) then
        local1 = UPVAL0 + 7
    elseif arg0:IsTargetGuard(TARGET_ENE_0) then
        local1 = UPVAL3 + 7
    else
        local1 = UPVAL4 + 7
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    if arg0:IsBothHandMode(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL1 + 1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL2 + 1, 0)
    elseif arg0:IsTargetGuard(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL3 + 1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL4 + 1, 0, 0)
    end
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Digger123000_Act08(arg0, arg1, arg2)
    if arg0:GetNpcThinkParamID() == 123099 and arg0:GetNumber() == 0 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 90, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    end
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Digger123000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Digger123000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Digger123000_ActAfter_RealTime(arg0, arg1)
    return 
end

function Digger123000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Digger123000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local13
function Digger123000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetDist(TARGET_ENE_0)
        if arg0:IsInterupt(INTERUPT_Damaged) and 10 <= local0 then
            local local1 = UPVAL0 + 7
            if local1 <= local0 then
                Approach_Act(arg0, arg1, local1, 0, 0, 3)
            end
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
            return true
        else
            return false
        end
    end
end

return 
