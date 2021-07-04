local local0 = 0.5
local local1 = 1.5 - local0
local local2 = 100 - local0
local local3 = 1
function OnIf_262000(arg0, arg1, arg2)
    if arg2 == 0 then
        Crowd_Wheelchair_Rifle262000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local3
function Crowd_Wheelchair_Rifle262000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetHpRate(TARGET_SELF)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5618) or arg0:HasSpecialEffectId(TARGET_SELF, 5619) then
        local local6 = 0
        SETUPVAL 9 0 0
    end
    if arg0:GetEventRequest() == 100 then
        local0[2] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[10] = 100
    elseif arg0:GetNpcThinkParamID() == 262301 then
        local0[3] = 100
    else
        local0[1] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Crowd_Wheelchair_Rifle262000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Crowd_Wheelchair_Rifle262000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Crowd_Wheelchair_Rifle262000_Act03)
    local1[10] = REGIST_FUNC(arg0, arg1, Crowd_Wheelchair_Rifle262000_Act10)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Crowd_Wheelchair_Rifle262000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 30 - local0
local0 = 1.5 - local0
local0 = local3
function Crowd_Wheelchair_Rifle262000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 0.5
    local local2 = UPVAL0
    local local3 = 2
    local local4 = 50
    if arg0:HasSpecialEffectId(TARGET_SELF, 5618) then
        local1 = DIST_None
        local2 = 9999
        local3 = 6
        local4 = 100
    end
    if UPVAL2 == 0 and local2 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    elseif UPVAL2 == 1 then
        if local0 <= UPVAL1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 1.5, TARGET_ENE_0, true, -1)
        else
            Approach_Act(arg0, arg1, local2, 0, 0, 3)
        end
    end
    if arg0:GetRandam_Int(1, 100) <= local4 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 0)
    else
        Shoot_Act(arg0, arg1, 3001, 3002, local3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Crowd_Wheelchair_Rifle262000_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_EVENT, 999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_EVENT, 999, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Crowd_Wheelchair_Rifle262000_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 999, 0)
    local local0 = 1
    for local1 = arg0:GetRandam_Int(2, 4) - local0, 5, local0 do
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 999, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Crowd_Wheelchair_Rifle262000_Act10(arg0, arg1, arg2)
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

function Crowd_Wheelchair_Rifle262000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Crowd_Wheelchair_Rifle262000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(1.5, 2.5)
    local local3 = arg0:GetRandam_Float(2.5, 3.5)
    if local0 <= 5 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
            end
        end
    elseif local0 <= 10 then
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

function Crowd_Wheelchair_Rifle262000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Crowd_Wheelchair_Rifle262000Battle_Terminate(arg0, arg1)
    return 
end

function Crowd_Wheelchair_Rifle262000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
