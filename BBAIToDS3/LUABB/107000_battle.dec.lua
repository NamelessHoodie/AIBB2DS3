function Screamer107000Battle_Activate(arg0, arg1)
    if arg0:GetNumber(0) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_None, 0)
        arg0:SetNumber(0, 1)
    end
    if arg0:GetNumber(0) ~= 2 then
        arg1:AddSubGoal(GOAL_Screamer107000_Runaway, 10)
    end
    arg1:AddSubGoal(GOAL_Screamer107000_Hide, 10)
    return 
end

function Screamer107000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Screamer107000Battle_Terminate(arg0, arg1)
    return 
end

function Screamer107000Battle_Interupt(arg0, arg1)
    if not not arg0:IsInterupt(INTERUPT_Damaged) or arg0:IsInterupt(INTERUPT_Damaged_Stranger) then
        arg0:Replaning()
        arg0:SetNumber(0, 1)
    end
    return false
end

REGISTER_GOAL_NO_INTERUPT(GOAL_Screamer107000_Runaway, true)
function Screamer107000Runaway_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetLife(), TARGET_ENE_0, 100, TARGET_SELF, false, -1)
    return 
end

function Screamer107000Runaway_Update(arg0, arg1)
    if arg1:GetLastSubGoalResult() == GOAL_RESULT_Failed then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

function Screamer107000Runaway_Terminate(arg0, arg1)
    return 
end

function Screamer107000Runaway_Interupt(arg0, arg1)
    return false
end

REGISTER_GOAL_NO_UPDATE(GOAL_Screamer107000_Hide, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_Screamer107000_Hide, true)
function Screamer107000Hide_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg1:GetLife(), TARGET_ENE_0)
    arg0:SetNumber(0, 2)
    return 
end

function Screamer107000Hide_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Screamer107000Hide_Terminate(arg0, arg1)
    return 
end

function Screamer107000Hide_Interupt(arg0, arg1)
    return false
end

return 
