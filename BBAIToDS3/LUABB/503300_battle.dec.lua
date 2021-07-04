local local0 = 0.4
local local1 = 0.4 - local0
local local2 = 18 - local0
local local3 = 0.4 - local0
local local4 = 6 - local0
local local5 = 0.4 - local0
local local6 = 9 - local0
function OnIf_503300(arg0, arg1, arg2)
    if arg2 == 0 then
        SnakeBall_LargeNeck503300_ActAfter(arg0, arg1)
    end
    return 
end

function SnakeBall_LargeNeck503300Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetEventRequest(0)
    if 15 <= local4 then
        local0[1] = 80
        local0[2] = 10
        local0[3] = 10
    elseif 12 <= local4 then
        local0[1] = 50
        local0[2] = 20
        local0[3] = 30
    elseif 9 <= local4 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 80
    elseif 6 <= local4 then
        local0[1] = 0
        local0[2] = 50
        local0[3] = 50
    elseif 3 <= local4 then
        local0[1] = 0
        local0[2] = 70
        local0[3] = 30
    else
        local0[1] = 0
        local0[2] = 50
        local0[3] = 50
    end
    local1[1] = REGIST_FUNC(arg0, arg1, SnakeBall_LargeNeck503300_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, SnakeBall_LargeNeck503300_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, SnakeBall_LargeNeck503300_Act03)
    local1[10] = REGIST_FUNC(arg0, arg1, SnakeBall_LargeNeck503300_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, SnakeBall_LargeNeck503300_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, SnakeBall_LargeNeck503300_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, SnakeBall_LargeNeck503300_Act22)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, SnakeBall_LargeNeck503300_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
function SnakeBall_LargeNeck503300_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 0, 0, 30)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 2, 0, 90)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
function SnakeBall_LargeNeck503300_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 0, 0, 30)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 2, 0, 90)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = local4
function SnakeBall_LargeNeck503300_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 0, 0, 30)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL1 + 2, 0, 90)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local4
function SnakeBall_LargeNeck503300_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, UPVAL1, UPVAL0, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
function SnakeBall_LargeNeck503300_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
function SnakeBall_LargeNeck503300_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
function SnakeBall_LargeNeck503300_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
function SnakeBall_LargeNeck503300_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, UPVAL0 - 1, UPVAL0 + 1, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeBall_LargeNeck503300_ActAfter(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Float(1.7, 2.3)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 20, 0, 0)
    return 
end

function SnakeBall_LargeNeck503300_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function SnakeBall_LargeNeck503300Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function SnakeBall_LargeNeck503300Battle_Terminate(arg0, arg1)
    return 
end

function SnakeBall_LargeNeck503300Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        return false
    end
end

return 
