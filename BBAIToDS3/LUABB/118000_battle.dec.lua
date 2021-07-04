function WanderingInsanity_Small118000Battle_Activate(arg0, arg1)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5000) then
        arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhereSmooth, 1, POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 0.5, TARGET_SELF, false)
    else
        if arg0:GetNumber(0) ~= 2 then
            arg1:AddSubGoal(GOAL_WanderingInsanity_Small118000_Runaway, 4.5)
        end
        arg1:AddSubGoal(GOAL_WanderingInsanity_Small118000_Hide, 10)
    end
    return 
end

function WanderingInsanity_Small118000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function WanderingInsanity_Small118000Battle_Terminate(arg0, arg1)
    return 
end

function WanderingInsanity_Small118000Battle_Interupt(arg0, arg1)
    if not not arg0:IsInterupt(INTERUPT_Damaged) or arg0:IsInterupt(INTERUPT_Damaged_Stranger) then
        arg0:Replaning()
        arg0:SetNumber(0, 1)
    end
    return false
end

REGISTER_GOAL_NO_INTERUPT(GOAL_WanderingInsanity_Small118000_Runaway, true)
function WanderingInsanity_Small118000Runaway_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetLife(), TARGET_ENE_0, 100, TARGET_SELF, false, -1)
    return 
end

function WanderingInsanity_Small118000Runaway_Update(arg0, arg1)
    if arg1:GetLastSubGoalResult() == GOAL_RESULT_Failed then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

function WanderingInsanity_Small118000Runaway_Terminate(arg0, arg1)
    return 
end

function WanderingInsanity_Small118000Runaway_Interupt(arg0, arg1)
    return false
end

REGISTER_GOAL_NO_UPDATE(GOAL_WanderingInsanity_Small118000_Hide, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_WanderingInsanity_Small118000_Hide, true)
function WanderingInsanity_Small118000Hide_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg1:GetLife(), TARGET_ENE_0)
    arg0:SetNumber(0, 2)
    return 
end

function WanderingInsanity_Small118000Hide_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function WanderingInsanity_Small118000Hide_Terminate(arg0, arg1)
    return 
end

function WanderingInsanity_Small118000Hide_Interupt(arg0, arg1)
    return false
end

return 
