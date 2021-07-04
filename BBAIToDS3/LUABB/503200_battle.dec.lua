local local0 = 0.4
local local1 = 0.4 - local0
local local2 = 12 - local0
local local3 = 0.4 - local0
local local4 = 10.6 - local0
local local5 = 0.4 - local0
local local6 = 8.6 - local0
function OnIf_503200(arg0, arg1, arg2)
    if arg2 == 0 then
        SnakeBall_NormalNeck503200_ActAfter(arg0, arg1)
    end
    return 
end

function SnakeBall_NormalNeck503200Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetEventRequest(0)
    if arg0:IsFinishTimer(0) == true then
        local0[1] = 33
        local0[2] = 33
        local0[3] = 34
    else
        local0[10] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, SnakeBall_NormalNeck503200_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, SnakeBall_NormalNeck503200_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, SnakeBall_NormalNeck503200_Act02)
    local1[10] = REGIST_FUNC(arg0, arg1, SnakeBall_NormalNeck503200_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, SnakeBall_NormalNeck503200_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, SnakeBall_NormalNeck503200_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, SnakeBall_NormalNeck503200_Act22)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, SnakeBall_NormalNeck503200_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
function SnakeBall_NormalNeck503200_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 2, 0, 90)
    arg0:SetTimer(0, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
function SnakeBall_NormalNeck503200_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 2, 0, 90)
    arg0:SetTimer(0, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
function SnakeBall_NormalNeck503200_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 2, 0, 90)
    arg0:SetTimer(0, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
function SnakeBall_NormalNeck503200_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, UPVAL0 - 3, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
function SnakeBall_NormalNeck503200_Act20(arg0, arg1, arg2)
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
function SnakeBall_NormalNeck503200_Act21(arg0, arg1, arg2)
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
function SnakeBall_NormalNeck503200_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeBall_NormalNeck503200_ActAfter(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Float(1.7, 2.3)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 20, 0, 0)
    return 
end

function SnakeBall_NormalNeck503200_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function SnakeBall_NormalNeck503200Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function SnakeBall_NormalNeck503200Battle_Terminate(arg0, arg1)
    return 
end

function SnakeBall_NormalNeck503200Battle_Interupt(arg0, arg1)
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
