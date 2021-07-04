local local0 = 0
function OnIf_403100(arg0, arg1, arg2)
    if arg2 == 0 then
        KamjaBDummy403100_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function KamjaBDummy403100Battle_Activate(arg0, arg1)
    Common_Clear_Param({}, {}, {})
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetEventRequest(0)
    local local3 = arg0:GetDistYSigned(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    return 
end

function KamjaBDummy403100_ActAfter_RealTime(arg0, arg1)
    return 
end

function KamjaBDummy403100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function KamjaBDummy403100Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function KamjaBDummy403100Battle_Terminate(arg0, arg1)
    return 
end

function KamjaBDummy403100Battle_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_EventRequest) then
        local local0 = arg0:GetEventRequest()
        if local0 == 10 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, -1)
            return true
        elseif local0 == 20 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 999, 0, -1)
            return true
        elseif local0 == 30 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 999, 0, -1)
            return true
        elseif local0 == 40 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999, 0, -1)
            return true
        end
    end
    return false
end

return 
