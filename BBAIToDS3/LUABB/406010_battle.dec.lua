local local0 = 0.4
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 0 - local0
local local6 = 0 - local0
local local7 = 0 - local0
local local8 = 0 - local0
local local9 = 16.8 - local0
local local10 = 2.4 - local0
function OnIf_406010(arg0, arg1, arg2)
    if arg2 == 0 then
        DeepOnesBig_Anchor_406010_ActAfter(arg0, arg1)
    end
    return 
end

function DeepOnesBig_Anchor_406010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetNumber(0)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025)
    if arg0:GetEventRequest() == 10 then
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[21] = 100
    elseif 9 <= local4 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 20
        local0[4] = 0
        local0[5] = 0
        local0[6] = 10
        local0[7] = 40
        local0[9] = 0
    elseif 6 <= local4 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 40
        local0[4] = 0
        local0[5] = 0
        local0[6] = 40
        local0[7] = 20
        local0[9] = 10
    elseif 3 <= local4 then
        local0[1] = 10
        local0[2] = 20
        local0[3] = 0
        local0[4] = 10
        local0[5] = 20
        local0[6] = 0
        local0[7] = 0
        local0[9] = 10
    else
        local0[1] = 20
        local0[2] = 10
        local0[3] = 0
        local0[4] = 40
        local0[5] = 10
        local0[6] = 0
        local0[7] = 0
        local0[9] = 0
    end
    if local6 == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if local6 == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if local6 == 3 and 0 < local0[3] then
        local0[3] = 1
    end
    if local6 == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if local6 == 5 and 0 < local0[5] then
        local0[5] = 1
    end
    if local6 == 6 and 0 < local0[6] then
        local0[6] = 1
    end
    if local6 == 7 and 0 < local0[7] then
        local0[7] = 1
    end
    if local6 == 8 and 0 < local0[8] then
        local0[8] = 1
    end
    if local6 == 9 and 0 < local0[9] then
        local0[9] = 1
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DeepOnesBig_Anchor_406010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DeepOnesBig_Anchor_406010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DeepOnesBig_Anchor_406010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DeepOnesBig_Anchor_406010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DeepOnesBig_Anchor_406010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DeepOnesBig_Anchor_406010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DeepOnesBig_Anchor_406010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DeepOnesBig_Anchor_406010_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, DeepOnesBig_Anchor_406010_Act09)
    local1[21] = REGIST_FUNC(arg0, arg1, DeepOnesBig_Anchor_406010_Act21)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DeepOnesBig_Anchor_406010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 7.4 - local0
function DeepOnesBig_Anchor_406010_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0 + 1
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
    if arg0:GetRandam_Int(1, 100) <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local1, 0)
    end
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8.4 - local0
function DeepOnesBig_Anchor_406010_Act02(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0 + 1
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1, 0)
    end
    arg0:SetNumber(0, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 15.4 - local0
function DeepOnesBig_Anchor_406010_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(0, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6.4 - local0
function DeepOnesBig_Anchor_406010_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local1, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 67 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0)
    end
    arg0:SetNumber(0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8.8 - local0
function DeepOnesBig_Anchor_406010_Act05(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 14.8 - local0
function DeepOnesBig_Anchor_406010_Act06(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(0, 6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local9
function DeepOnesBig_Anchor_406010_Act07(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local9
function DeepOnesBig_Anchor_406010_Act08(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.2 - local0
function DeepOnesBig_Anchor_406010_Act09(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
function DeepOnesBig_Anchor_406010_Act21(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeepOnesBig_Anchor_406010_ActAfter(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Float(2.5, 3.5)
    if arg0:GetDist(TARGET_ENE_0) <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function DeepOnesBig_Anchor_406010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DeepOnesBig_Anchor_406010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DeepOnesBig_Anchor_406010Battle_Terminate(arg0, arg1)
    return 
end

function DeepOnesBig_Anchor_406010Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025) then
        arg1:ClearSubGoal()
        arg0:Replaning()
        return true
    elseif Counter_Act(arg0, arg1, 4, 3020) then
        if 6 <= targetDist then
            if local0 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_None, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_None, 0, 0)
            end
        elseif 3 <= targetDist then
            if local0 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_None, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3035, TARGET_ENE_0, DIST_None, 0, 0)
            end
        elseif local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, DIST_None, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, DIST_None, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_None, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, DIST_None, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, DIST_None, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, DIST_None, 0)
        end
        return true
    else
        return false
    end
end

return 
