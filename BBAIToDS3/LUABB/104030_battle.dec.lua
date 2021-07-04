local local0 = 0.3
local local1 = 0 - local0
local local2 = 0.3 - local0
function OnIf_104030(arg0, arg1, arg2)
    if arg2 == 0 then
        Shousitai_Bow104030_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Shousitai_Bow104030Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local0[1] = 100
    local1[1] = REGIST_FUNC(arg0, arg1, Shousitai_Bow104030_Act01)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Shousitai_Bow104030_ActAfter_AdjustSpace), local2)
    return 
end

function Shousitai_Bow104030_Act01(arg0, arg1, arg2)
    Shoot_Act(arg0, arg1, 3020, 3020, 1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1.5), TARGET_ENE_0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Shousitai_Bow104030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Shousitai_Bow104030_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(0, 1)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetDist(TARGET_FRI_0)
    local local4 = arg0:GetRandam_Int(4, 10)
    local local5 = arg0:GetRandam_Int(60, 90)
    if local2 <= 2 then
        if local0 > 0 then
            if local0 <= 0 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, local1, local5, true, true, -1)
            elseif local0 <= 0 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
            end
        end
    elseif local2 <= 5 then
        if local0 > 0 then
            if local0 <= 0 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, local1, local5, true, true, -1)
            elseif local0 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
            end
        end
    elseif local2 <= 10 then
        if local0 > 10 then
            if local0 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, local1, local5, true, true, -1)
            elseif local0 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
            end
        end
    elseif local2 <= 15 then
        if local0 > 40 then
            if local0 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, local1, local5, true, true, -1)
            elseif local0 <= 100 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
            end
        end
    elseif local0 > 70 then
        if local0 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, local1, local5, true, true, -1)
        elseif local0 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
        end
    end
    return 
end

function Shousitai_Bow104030Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Shousitai_Bow104030Battle_Terminate(arg0, arg1)
    return 
end

function Shousitai_Bow104030Battle_Interupt(arg0, arg1)
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
