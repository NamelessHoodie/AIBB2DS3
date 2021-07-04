local local0 = 0.4
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 9999 - local0
local local6 = 0 - local0
local local7 = 0 - local0
local local8 = 0 - local0
function OnIf_105000(arg0, arg1, arg2)
    if arg2 == 0 then
        WanderingWidow105000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function WanderingWidow105000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = 1
    local local5 = 1
    local local6 = 0
    if arg0:IsFinishTimer(0) == false then
        local4 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 9100) and arg0:IsFinishTimer(1) == true then
        local6 = 1
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[23] = 100
    elseif arg0:GetNpcThinkParamID() == 105900 then
        if local3 <= 2 then
            local0[1] = 40
            local0[2] = 40
            local0[4] = 20
            local0[11] = 0 * local4
            local0[12] = 0 * local5
            local0[21] = 100
            local0[22] = 0
            local0[31] = 1000 * local6
        elseif local3 <= 6 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[11] = 0 * local4
            local0[12] = 0 * local5
            local0[21] = 50
            local0[22] = 50
            local0[31] = 1000 * local6
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[11] = 0 * local4
            local0[12] = 0 * local5
            local0[21] = 0
            local0[22] = 100
            local0[31] = 1000 * local6
        end
    elseif 105080 <= arg0:GetNpcThinkParamID() then
        if arg0:GetEventRequest(0) == 100 then
            local0[32] = 100
        elseif local3 <= 2 then
            local0[1] = 40
            local0[2] = 40
            local0[4] = 20
            local0[11] = 100 * local4
            local0[12] = 0 * local5
            local0[21] = 100
            local0[22] = 0
        elseif local3 <= 6 then
            local0[1] = 20
            local0[2] = 30
            local0[3] = 40
            local0[4] = 10
            local0[11] = 100 * local4
            local0[12] = 0 * local5
            local0[21] = 50
            local0[22] = 50
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[11] = 100 * local4
            local0[12] = 0 * local5
            local0[21] = 0
            local0[22] = 100
        end
    elseif 105805 <= arg0:GetNpcThinkParamID() then
        if local3 <= 2 then
            local0[1] = 40
            local0[2] = 40
            local0[3] = 0
            local0[4] = 20
        elseif local3 <= 6 then
            local0[1] = 20
            local0[2] = 30
            local0[3] = 40
            local0[4] = 10
        else
            local0[12] = 70
            local0[22] = 30
        end
    elseif local3 <= 2 then
        local0[1] = 40
        local0[2] = 40
        local0[4] = 20
        local0[11] = 100 * local4
        local0[12] = 0 * local5
        local0[21] = 100
        local0[22] = 0
    elseif local3 <= 6 then
        local0[1] = 20
        local0[2] = 30
        local0[3] = 40
        local0[4] = 10
        local0[11] = 100 * local4
        local0[12] = 0 * local5
        local0[21] = 50
        local0[22] = 50
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[11] = 100 * local4
        local0[12] = 0 * local5
        local0[21] = 0
        local0[22] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, WanderingWidow105000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, WanderingWidow105000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, WanderingWidow105000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, WanderingWidow105000_Act04)
    local1[11] = REGIST_FUNC(arg0, arg1, WanderingWidow105000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, WanderingWidow105000_Act12)
    local1[21] = REGIST_FUNC(arg0, arg1, WanderingWidow105000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, WanderingWidow105000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, WanderingWidow105000_Act23)
    local1[31] = REGIST_FUNC(arg0, arg1, WanderingWidow105000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, WanderingWidow105000_Act32)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, WanderingWidow105000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2 - local0
function WanderingWidow105000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.4 - local0
function WanderingWidow105000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 9999, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, AttDist2, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.4 - local0
function WanderingWidow105000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.6 - local0
function WanderingWidow105000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5 - local0
function WanderingWidow105000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetTimer(0, 20)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 20 - local0
function WanderingWidow105000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 9999
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WanderingWidow105000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, arg0:GetRandam_Float(3, 6), TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WanderingWidow105000_Act22(arg0, arg1, arg2)
    arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 6)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 6), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, 12, 16, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WanderingWidow105000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WanderingWidow105000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, Dist_None, 0, -1)
    arg0:SetTimer(1, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WanderingWidow105000_Act32(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, Dist_None, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WanderingWidow105000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function WanderingWidow105000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 4)
    if local0 <= 3 then
        if local1 <= 33 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif local0 <= 6 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function WanderingWidow105000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function WanderingWidow105000Battle_Terminate(arg0, arg1)
    return 
end

function WanderingWidow105000Battle_Interupt(arg0, arg1)
    return false
end

return 
