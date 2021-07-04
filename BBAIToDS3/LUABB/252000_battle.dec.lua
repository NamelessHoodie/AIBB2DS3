local local0 = 0.5
local local1 = 0.5 - local0
local local2 = 0.5 - local0
local local3 = 0.5 - local0
local local4 = 0.5 - local0
local local5 = 0.9 - local0
local local6 = 0.5 - local0
local local7 = 0.5 - local0
function OnIf_252000(arg0, arg1, arg2)
    if arg2 == 0 then
        MoonLarva252000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function MoonLarva252000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[19] = 60
    elseif 3 <= local3 then
        local0[1] = 40
        local0[2] = 20
        local0[3] = 35
        local0[4] = 5
        local0[5] = 0
    elseif 2 <= local3 then
        local0[1] = 25
        local0[2] = 30
        local0[3] = 15
        local0[4] = 30
        local0[5] = 0
    elseif 1 <= local3 then
        local0[1] = 20
        local0[2] = 30
        local0[3] = 20
        local0[4] = 10
        local0[5] = 20
    else
        local0[1] = 30
        local0[2] = 15
        local0[3] = 30
        local0[4] = 5
        local0[5] = 20
    end
    local1[1] = REGIST_FUNC(arg0, arg1, MoonLarva252000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, MoonLarva252000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, MoonLarva252000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, MoonLarva252000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, MoonLarva252000_Act05)
    local1[10] = REGIST_FUNC(arg0, arg1, MoonLarva252000_Act10)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, MoonLarva252000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 1 - local0
local0 = 0.8 - local0
function MoonLarva252000_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 0
    if arg0:GetNpcThinkParamID() == 252081 then
        local1 = 0
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL1 + 0.5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.5 - local0
function MoonLarva252000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNpcThinkParamID() == 252081 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local5
function MoonLarva252000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNpcThinkParamID() == 252081 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3 - local0
function MoonLarva252000_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 0
    if arg0:GetNpcThinkParamID() == 252081 then
        local1 = 0
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2 - local0
function MoonLarva252000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetNpcThinkParamID() == 252081 then
        DashDist = 0
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local5
function MoonLarva252000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and 2 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function MoonLarva252000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

local0 = local5
function MoonLarva252000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Float(1, 1.5)
    local local2 = UPVAL0 + 1
    if arg0:GetDist(TARGET_ENE_0) <= 1.5 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    end
    return 
end

function MoonLarva252000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function MoonLarva252000Battle_Terminate(arg0, arg1)
    return 
end

function MoonLarva252000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return 
    end
end

return 
