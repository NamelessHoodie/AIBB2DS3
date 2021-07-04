function OnIf_515000(arg0, arg1, arg2)
    if arg2 == 0 then
        EvilEye515000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function EvilEye515000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local0[1] = 100
    local1[1] = REGIST_FUNC(arg0, arg1, EvilEye515000_Act01)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, EvilEye515000_ActAfter_AdjustSpace), local2)
    return 
end

function EvilEye515000_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EvilEye515000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function EvilEye515000_ActAfter_RealTime(arg0, arg1)
    return 
end

function EvilEye515000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function EvilEye515000Battle_Terminate(arg0, arg1)
    return 
end

function EvilEye515000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetDist(TARGET_ENE_0)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetRandam_Int(1, 100)
        return false
    end
end

return 
