local local0 = 0.4
local local1 = 0 - local0
local local2 = 30.4 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 0 - local0
local local6 = 3 - local0
local local7 = 0 - local0
local local8 = 0 - local0
local local9 = 0 - local0
local local10 = 0 - local0
function OnIf_405000(arg0, arg1, arg2)
    if arg2 == 0 then
        DeepOnesB405000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DeepOnesB405000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNpcThinkParamID() <= 405009 then
        if local4 == 10 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            local0[31] = 100
        elseif 14 <= local3 then
            local0[1] = 60
            local0[2] = 40
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
        elseif 6 <= local3 then
            local0[1] = 80
            local0[2] = 20
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
        elseif 3 <= local3 then
            local0[1] = 30
            local0[2] = 0
            local0[4] = 70
            local0[5] = 0
            local0[6] = 0
        else
            local0[1] = 0
            local0[2] = 0
            local0[4] = 20
            local0[5] = 30
            local0[6] = 50
        end
    elseif arg0:GetNpcThinkParamID() <= 405019 then
        if local4 == 10 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            local0[31] = 100
        elseif 8 <= local3 then
            local0[11] = 10
            local0[12] = 20
            local0[13] = 0
            local0[5] = 0
            local0[6] = 0
        elseif 4 <= local3 then
            local0[11] = 20
            local0[12] = 10
            local0[13] = 0
            local0[5] = 0
            local0[6] = 0
        else
            local0[11] = 0
            local0[12] = 0
            local0[5] = 10
            local0[6] = 10
            if arg0:GetNpcThinkParamID() <= 405014 then
                local0[13] = 20
            else
                local0[13] = 0
            end
        end
    else
        local0[21] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DeepOnesB405000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DeepOnesB405000_Act02)
    local1[4] = REGIST_FUNC(arg0, arg1, DeepOnesB405000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DeepOnesB405000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DeepOnesB405000_Act06)
    local1[11] = REGIST_FUNC(arg0, arg1, DeepOnesB405000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, DeepOnesB405000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, DeepOnesB405000_Act13)
    local1[21] = REGIST_FUNC(arg0, arg1, DeepOnesB405000_Act21)
    local1[31] = REGIST_FUNC(arg0, arg1, DeepOnesB405000_Act31)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DeepOnesB405000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
function DeepOnesB405000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0
    local local3 = UPVAL0 + 2
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

local0 = 30.4 - local0
function DeepOnesB405000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0
    local local3 = UPVAL0 + 2
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, 180)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

local0 = 5 - local0
function DeepOnesB405000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 5
    local local4 = 0
    local local5 = UPVAL0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
function DeepOnesB405000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 1, 90)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

local0 = local6
function DeepOnesB405000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 0
    local local2 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 1, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local2, 1, 90)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

local0 = 30 - local0
function DeepOnesB405000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0
    local local3 = UPVAL0 + 2
    local local4 = 0
    local local5 = UPVAL0 + 1
    if arg0:GetNpcThinkParamID() <= 405014 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local5, 0, 90)
    end
    arg0:AddTopGoal(GOAL_COMMON_Wait, 3, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 30 - local0
function DeepOnesB405000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0
    local local3 = UPVAL0 + 2
    local local4 = 0
    local local5 = UPVAL0 + 1
    if arg0:GetNpcThinkParamID() <= 405014 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local5, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local5, 0, 90)
    end
    arg0:AddTopGoal(GOAL_COMMON_Wait, 5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 30 - local0
function DeepOnesB405000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0
    local local3 = UPVAL0 + 2
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    arg0:AddTopGoal(GOAL_COMMON_Wait, 3, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 30 - local0
function DeepOnesB405000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0
    local local3 = UPVAL0 + 2
    local local4 = 0
    local local5 = UPVAL0 + 1
    if arg0:GetNpcThinkParamID() == 405020 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, 90)
    elseif arg0:GetNpcThinkParamID() == 405021 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local5, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local5, 0, 90)
    end
    arg0:AddTopGoal(GOAL_COMMON_Wait, 6, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeepOnesB405000_Act31(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, DIST_None, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, 90)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeepOnesB405000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Float(2.5, 3.5)
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif 1 <= arg0:GetDist(POINT_INITIAL) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 0.5, TARGET_ENE_0, true, -1)
    end
    return 
end

function DeepOnesB405000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DeepOnesB405000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DeepOnesB405000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local2
function DeepOnesB405000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = Shoot_2dist(arg0, arg1, 10, 20, 0, 50)
    local local5 = UPVAL0 + 1
    return false
end

return 
