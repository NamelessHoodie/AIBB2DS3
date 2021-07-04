local local0 = 1.4
local local1 = 2.7 - local0
local local2 = 2.7 - local0
function OnIf_503100(arg0, arg1, arg2)
    if arg2 == 0 then
        SnakeBall_WeakPoint503100_StateOperation(arg0, arg1)
    end
    return 
end

function SnakeBall_WeakPoint503100Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetEventRequest(0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5400) then
        if local6 == 100 or 8 <= local4 then
            local0[3] = 100
        else
            local0[1] = 20
            local0[2] = 20
            local0[3] = 60
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        if local6 == 100 or 8 <= local4 then
            local0[3] = 100
        else
            local0[1] = 20
            local0[3] = 60
        end
    else
        local0[3] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, SnakeBall_WeakPoint503100_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, SnakeBall_WeakPoint503100_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, SnakeBall_WeakPoint503100_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, SnakeBall_WeakPoint503100_Act04)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, SnakeBall_WeakPoint503100_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 17.2 - local0
function SnakeBall_WeakPoint503100_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 15.6 - local0
function SnakeBall_WeakPoint503100_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeBall_WeakPoint503100_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeBall_WeakPoint503100_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_None, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeBall_WeakPoint503100_StateOperation(arg0, arg1)
    arg0:SetNumber(0, arg0:GetNumber(0) + 1)
    if arg0:GetNumber(0) == 1 or arg0:GetNumber(0) == 3 or arg0:GetNumber(0) == 5 then
        arg0:SetTimer(0, 30)
    end
    return 
end

function SnakeBall_WeakPoint503100Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function SnakeBall_WeakPoint503100Battle_Terminate(arg0, arg1)
    return 
end

function SnakeBall_WeakPoint503100Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
