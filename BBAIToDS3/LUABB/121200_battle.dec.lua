function GravekeeperScorpion_Child121200Battle_Activate(arg0, arg1)
    Common_Clear_Param({}, {}, {})
    if arg0:GetNumber(0) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_ENE_0, 0, 0, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_NONE, Dist_None, 0, 0)
        arg0:SetNumber(0, 1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_NONE, Dist_None, 0, 0)
        arg0:SetNumber(0, 1)
    end
    return 
end

function GravekeeperScorpion_Child121200Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function GravekeeperScorpion_Child121200Battle_Terminate(arg0, arg1)
    return 
end

function GravekeeperScorpion_Child121200Battle_Interupt(arg0, arg1)
    return false
end

return 
