local local0 = 1
local local1 = 0 - local0
local local2 = 6.8 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 7.1 - local0
local local6 = 0 - local0
local local7 = 3 - local0
local local8 = 0 - local0
local local9 = 3 - local0
function OnIf_552100(arg0, arg1, arg2)
    if arg2 == 0 then
        LesserDemonVariation_LHead552100_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function LesserDemonVariation_LHead552100Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetEventRequest()
    local local6 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        if 8 <= local4 then
            local0[1] = 0
            local0[2] = 100
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
        elseif 2 <= local4 then
            local0[1] = 60
            local0[2] = 0
            local0[3] = 40
            local0[4] = 0
            local0[5] = 0
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 50
            local0[5] = 50
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    end
    local1[1] = REGIST_FUNC(arg0, arg1, LesserDemonVariation_LHead552100_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, LesserDemonVariation_LHead552100_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, LesserDemonVariation_LHead552100_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, LesserDemonVariation_LHead552100_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, LesserDemonVariation_LHead552100_Act05)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, LesserDemonVariation_LHead552100_ActAfter_AdjustSpace), local2)
    return 
end

function LesserDemonVariation_LHead552100_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 5), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LesserDemonVariation_LHead552100_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_None)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 5), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LesserDemonVariation_LHead552100_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_None)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 5), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LesserDemonVariation_LHead552100_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_None)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 5), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LesserDemonVariation_LHead552100_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_None)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(3, 5), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LesserDemonVariation_LHead552100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    return 
end

function LesserDemonVariation_LHead552100_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    return 
end

function LesserDemonVariation_LHead552100Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function LesserDemonVariation_LHead552100Battle_Terminate(arg0, arg1)
    return 
end

local0 = 17.5 - local0
function LesserDemonVariation_LHead552100Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    elseif UseItem_Act(arg0, arg1, 10, 30) and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, UPVAL0, 0)
        return true
    else
        return false
    end
end

return 
