local local0 = 0.5
local local1 = 1
function OnIf_262010(arg0, arg1, arg2)
    if arg2 == 0 then
        Crowd_Wheelchair_Handgun262010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local1
function Crowd_Wheelchair_Handgun262010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5618) or arg0:HasSpecialEffectId(TARGET_SELF, 5619) then
        local local7 = 0
        SETUPVAL 9 0 0
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[10] = 100
    else
        local0[1] = 10
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Crowd_Wheelchair_Handgun262010_Act01)
    local1[10] = REGIST_FUNC(arg0, arg1, Crowd_Wheelchair_Handgun262010_Act10)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Crowd_Wheelchair_Handgun262010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 15 - local0
local0 = 1.5 - local0
local0 = local1
function Crowd_Wheelchair_Handgun262010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 0.5
    local local2 = 10
    local local3 = 2
    local local4 = 50
    if arg0:HasSpecialEffectId(TARGET_SELF, 5618) then
        local1 = DIST_None
        local2 = 9999
        local3 = 6
        local4 = 100
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5619) then
        local2 = 9999
    end
    if UPVAL2 == 0 and local2 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    elseif local0 <= UPVAL1 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 1.5, TARGET_ENE_0, true, -1)
    else
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= local4 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local1, 0, 0)
    else
        Shoot_Act(arg0, arg1, 3004, 3004, local3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Crowd_Wheelchair_Handgun262010_Act10(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 3 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Crowd_Wheelchair_Handgun262010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Crowd_Wheelchair_Handgun262010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(1.5, 2.5)
    local local3 = arg0:GetRandam_Float(2.5, 3.5)
    if local0 <= 4 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
            end
        end
    elseif local0 <= 8 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1.5), TARGET_ENE_0, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    return 
end

function Crowd_Wheelchair_Handgun262010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Crowd_Wheelchair_Handgun262010Battle_Terminate(arg0, arg1)
    return 
end

function Crowd_Wheelchair_Handgun262010Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
