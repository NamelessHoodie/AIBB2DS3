local local0 = 0.5
local local1 = 1
function OnIf_262020(arg0, arg1, arg2)
    if arg2 == 0 then
        Crowd_Wheelchair_Gatling262020_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local1
function Crowd_Wheelchair_Gatling262020Battle_Activate(arg0, arg1)
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
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[10] = 100
    elseif 8 <= local3 then
        local0[1] = 10
        local0[2] = 0
    elseif 5.5 <= local3 then
        local0[1] = 70
        local0[2] = 30
    elseif 2.5 <= local3 then
        local0[1] = 50
        local0[2] = 50
    else
        local0[1] = 30
        local0[2] = 70
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Crowd_Wheelchair_Gatling262020_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Crowd_Wheelchair_Gatling262020_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Crowd_Wheelchair_Gatling262020_Act03)
    local1[10] = REGIST_FUNC(arg0, arg1, Crowd_Wheelchair_Gatling262020_Act10)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Crowd_Wheelchair_Gatling262020_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 14 - local0
local0 = 1.5 - local0
local0 = local1
function Crowd_Wheelchair_Gatling262020_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0.5
    local local3 = UPVAL0
    local local4 = arg0:GetRandam_Int(4, 5)
    local local5 = 3009
    if arg0:HasSpecialEffectId(TARGET_SELF, 5618) then
        local2 = DIST_None
        local3 = 9999
    end
    if arg0:GetNpcThinkParamID() == 262425 then
        local3 = 100
        local5 = 3012
    elseif arg0:GetNpcThinkParamID() == 262221 then
        local2 = 999
        local3 = 30
        local5 = 3012
        local4 = arg0:GetRandam_Int(1, 3)
    else
        local3 = UPVAL0
        local5 = 3009
    end
    if UPVAL2 == 0 and arg0:HasSpecialEffectId(TARGET_SELF, 5619) and local3 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5618) == false and arg0:HasSpecialEffectId(TARGET_SELF, 5619) == false then
        if local0 <= UPVAL1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 1.5, TARGET_ENE_0, true, -1)
        else
            Approach_Act(arg0, arg1, local3, 0, 0, 3)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 999, 0)
    local local6 = 1
    for local7 = local4 - local6, 5, local6 do
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local2, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local2, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 14 - local0
local0 = 1.5 - local0
local0 = local1
function Crowd_Wheelchair_Gatling262020_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if UPVAL2 == 0 then
        if UPVAL0 + 100 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 100, 0, 0)
        end
    else
        if local0 <= UPVAL1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 1.5, TARGET_ENE_0, true, -1)
        else
            Approach_Act(arg0, arg1, UPVAL0, 0, 0, 3)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local1
function Crowd_Wheelchair_Gatling262020_Act10(arg0, arg1, arg2)
    if UPVAL0 == 1 and arg0:GetDist(TARGET_ENE_0) <= 3 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Crowd_Wheelchair_Gatling262020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

local0 = local1
function Crowd_Wheelchair_Gatling262020_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(1.5, 2.5)
    local local3 = arg0:GetRandam_Float(2.5, 3.5)
    if UPVAL0 == 1 then
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
    end
    return 
end

function Crowd_Wheelchair_Gatling262020Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Crowd_Wheelchair_Gatling262020Battle_Terminate(arg0, arg1)
    return 
end

function Crowd_Wheelchair_Gatling262020Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
