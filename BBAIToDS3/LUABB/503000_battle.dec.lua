local local0 = 8
local local1 = 8 - local0
local local2 = 10.9 - local0
local local3 = 8 - local0
local local4 = 10 - local0
local local5 = 8 - local0
function OnIf_503000(arg0, arg1, arg2)
    if arg2 == 0 then
        SnakeBall_Main503000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function SnakeBall_Main503000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetEventRequest(0)
    if 10 <= local4 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 100
    elseif 8 <= local4 then
        local0[1] = 20
        local0[2] = 30
        local0[3] = 50
    elseif 6 <= local4 then
        local0[1] = 25
        local0[2] = 45
        local0[3] = 30
    elseif 4 <= local4 then
        local0[1] = 50
        local0[2] = 30
        local0[3] = 20
    elseif 2 <= local4 then
        local0[1] = 50
        local0[2] = 35
        local0[3] = 15
    else
        local0[1] = 0
        local0[2] = 85
        local0[3] = 15
    end
    local1[1] = REGIST_FUNC(arg0, arg1, SnakeBall_Main503000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, SnakeBall_Main503000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, SnakeBall_Main503000_Act03)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, SnakeBall_Main503000_ActAfter_AdjustSpace), local2)
    return 
end

function SnakeBall_Main503000_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 30, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeBall_Main503000_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 30, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 30 - local0
function SnakeBall_Main503000_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, UPVAL0 + 2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function SnakeBall_Main503000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function SnakeBall_Main503000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(0, 1)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetRandam_Float(3, 7)
    if 20 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3.5, 4), TARGET_ENE_0, 0, 0, 0)
    elseif 10 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3.2, 3.8), TARGET_ENE_0, 0, 0, 0)
    elseif 5 <= local2 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(2, 3.5), TARGET_ENE_0, 0, 0, 0)
    end
    return 
end

function SnakeBall_Main503000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function SnakeBall_Main503000Battle_Terminate(arg0, arg1)
    return 
end

function SnakeBall_Main503000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
