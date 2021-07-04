local local0 = 0.4
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 0 - local0
local local4 = 0.4 - local0
local local5 = 0.4 - local0
local local6 = 0.4 - local0
local local7 = 0.4 - local0
function OnIf_407000(arg0, arg1, arg2)
    if arg2 == 0 then
        HermitCrab_NonShell407000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function HermitCrab_NonShell407000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    local local7 = 1
    if arg0:IsFinishTimer(0) == false then
        local7 = 0
    end
    if arg0:GetNpcThinkParamID() <= 407009 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
            local0[31] = 100
        elseif 6.2 <= local3 then
            local0[1] = 10
        elseif 4.2 <= local3 then
            local0[2] = 10
        elseif 3.2 <= local3 then
            local0[3] = 50
        else
            local0[4] = 10
        end
    elseif arg0:GetNpcThinkParamID() <= 407019 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
            local0[31] = 10
        else
            local0[11] = 10
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[31] = 100
    else
        local0[21] = 1000 * local7
        local0[11] = 10
    end
    local1[1] = REGIST_FUNC(arg0, arg1, HermitCrab_NonShell407000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, HermitCrab_NonShell407000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, HermitCrab_NonShell407000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, HermitCrab_NonShell407000_Act04)
    local1[11] = REGIST_FUNC(arg0, arg1, HermitCrab_NonShell407000_Act11)
    local1[21] = REGIST_FUNC(arg0, arg1, HermitCrab_NonShell407000_Act21)
    local1[31] = REGIST_FUNC(arg0, arg1, HermitCrab_NonShell407000_Act31)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, HermitCrab_NonShell407000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 8.6 - local0
function HermitCrab_NonShell407000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 10) then
        local1 = local1 - 3
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6.6 - local0
function HermitCrab_NonShell407000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 10) then
        local1 = local1 - 2
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.6 - local0
function HermitCrab_NonShell407000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 10) then
        local1 = local1 - 1
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HermitCrab_NonShell407000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.2 - local0
local0 = 3.2 - local0
function HermitCrab_NonShell407000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL0
    if UPVAL0 <= local0 then
        local1 = UPVAL1
        local2 = UPVAL1
    else
        local1 = UPVAL0
        local2 = UPVAL0
    end
    if local1 <= local0 then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    if UPVAL0 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3006, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3007, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.5 - local0
function HermitCrab_NonShell407000_Act21(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3003, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetTimer(0, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 1 - local0
function HermitCrab_NonShell407000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if arg0:GetNpcThinkParamID() <= 407009 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 45) and arg0:GetDist(TARGET_ENE_0) <= local1 and arg0:GetNumber(0) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 3, 3013, TARGET_ENE_0, local1)
        arg0:SetNumber(0, 1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HermitCrab_NonShell407000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function HermitCrab_NonShell407000_ActAfter_RealTime(arg0, arg1)
    return 
end

function HermitCrab_NonShell407000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function HermitCrab_NonShell407000Battle_Terminate(arg0, arg1)
    return 
end

function HermitCrab_NonShell407000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetDist(TARGET_ENE_0)
        return false
    end
end

return 
