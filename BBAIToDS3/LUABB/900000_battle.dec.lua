function Messenger900000Battle_Activate(arg0, arg1)
    if arg0:GetDist(TARGET_ENE_0) <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist, 0, 180)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_NONE, 0, 0, 0)
    end
    return 
end

function Messenger900000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Messenger900000Battle_Terminate(arg0, arg1)
    return 
end

function Messenger900000Battle_Interupt(arg0, arg1)
    return false
end

return 
