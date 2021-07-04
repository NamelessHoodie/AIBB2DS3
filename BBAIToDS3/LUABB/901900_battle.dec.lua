local local0 = 0
function OnIf_901900(arg0, arg1, arg2)
    if arg2 == 0 then
        CannonDammy901900_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function CannonDammy901900Battle_Activate(arg0, arg1)
    Common_Clear_Param({}, {}, {})
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetEventRequest(0)
    local local3 = arg0:GetDistYSigned(TARGET_ENE_0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5580) and local3 <= 3 then
        if local3 <= -3 then
            if 20 <= local0 then
                arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_None)
            elseif 15 <= local0 then
                arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_None)
            else
                arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None)
            end
        elseif 20 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_ENE_0, DIST_None)
        elseif 15 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_None)
        else
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_None)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    end
    return 
end

function CannonDammy901900_ActAfter_RealTime(arg0, arg1)
    return 
end

function CannonDammy901900_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function CannonDammy901900Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function CannonDammy901900Battle_Terminate(arg0, arg1)
    return 
end

function CannonDammy901900Battle_Interupt(arg0, arg1)
    return false
end

return 
