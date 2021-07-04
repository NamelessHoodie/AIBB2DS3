local local0 = 0
local local1 = 0 - local0
local local2 = 15 - local0
local local3 = 0 - local0
local local4 = 15 - local0
function OnIf_507200(arg0, arg1, arg2)
    if arg2 == 0 then
        HalfBakedDevil507200_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function HalfBakedDevil507200Battle_Activate(arg0, arg1)
    Common_Clear_Param({}, {}, {})
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetEventRequest(0)
    if local2 == 100 then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None)
    elseif local2 == 200 then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_ENE_0, DIST_None)
    elseif local2 == 210 then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, DIST_None)
    elseif local2 == 220 then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, DIST_None)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    end
    return 
end

function HalfBakedDevil507200_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_NONE, DIST_None)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HalfBakedDevil507200_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_NONE, DIST_None)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HalfBakedDevil507200_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_NONE, DIST_None)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HalfBakedDevil507200_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_NONE, DIST_None)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HalfBakedDevil507200_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_NONE, DIST_None)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HalfBakedDevil507200_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HalfBakedDevil507200_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HalfBakedDevil507200_ActAfter_RealTime(arg0, arg1)
    return 
end

function HalfBakedDevil507200_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function HalfBakedDevil507200Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function HalfBakedDevil507200Battle_Terminate(arg0, arg1)
    return 
end

function HalfBakedDevil507200Battle_Interupt(arg0, arg1)
    return false
end

return 
