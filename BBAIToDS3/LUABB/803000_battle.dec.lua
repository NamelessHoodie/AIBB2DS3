function Doll803000Battle_Activate(arg0, arg1)
    Common_Clear_Param({}, {}, {})
    arg0:AddObserveArea(0, TARGET_LOCALPLAYER, TARGET_SELF, AI_DIR_TYPE_F, 90, 4)
    arg0:AddObserveArea(1, TARGET_LOCALPLAYER, TARGET_SELF, AI_DIR_TYPE_F, 45, 8)
    arg0:AddObserveArea(2, TARGET_SELF, TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 180, 4)
    arg0:AddObserveArea(3, TARGET_SELF, TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 90, 8)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    return 
end

function Doll803000Battle_Update(arg0, arg1)
    arg0:SetEventFlag(12100118, false)
    if not (not arg0:IsInsideObserve(0) or not arg0:IsInsideObserve(2)) or not (not arg0:IsInsideObserve(0) or not arg0:IsInsideObserve(3)) or not (not arg0:IsInsideObserve(1) or not arg0:IsInsideObserve(2)) or arg0:IsInsideObserve(1) and arg0:IsInsideObserve(3) then
        arg0:SetEventFlag(12100118, true)
    end
    return GOAL_RESULT_Continue
end

function Doll803000Battle_Terminate(arg0, arg1)
    return 
end

function Doll803000Battle_Interupt(arg0, arg1)
    return false
end

return 
