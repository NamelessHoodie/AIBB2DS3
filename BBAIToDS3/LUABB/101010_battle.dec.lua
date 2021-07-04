local local0 = 0.4
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 0 - local0
local local4 = 0 - local0
function OnIf_101010(arg0, arg1, arg2)
    if arg2 == 0 then
        Sniper_Priest101010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Sniper_Priest101010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    if arg0:GetEventRequest() == 100 then
        local0[4] = 100
    elseif arg0:GetRandam_Int(1, 100) <= 50 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif 6 <= arg0:GetDist(TARGET_ENE_0) then
        local0[1] = 50
        local0[2] = 50
        local0[3] = 0
    else
        local0[1] = 33
        local0[2] = 33
        local0[3] = 34
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Sniper_Priest101010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Sniper_Priest101010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Sniper_Priest101010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Sniper_Priest101010_Act04)
    local1[20] = REGIST_FUNC(arg0, arg1, Sniper_Priest101010_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Sniper_Priest101010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 50.4 - local0
function Sniper_Priest101010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0
    local local3 = UPVAL0 + 2
    local local4 = 0
    local local5 = UPVAL0 + 1
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 0, 180)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 50.4 - local0
function Sniper_Priest101010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 5
    local local4 = 0
    local local5 = UPVAL0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_None, 0, 180)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 2.4 - local0
function Sniper_Priest101010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 0
    local local2 = UPVAL0 + 2
    local local3 = 0
    local local4 = UPVAL0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local4, 1, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local4, 1, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local4, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Sniper_Priest101010_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_EVENT, Dist_None, 0, 90, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Sniper_Priest101010_Act20(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_None, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_None, 0, 90)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Sniper_Priest101010_ActAfter_RealTime(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(1.5, 2.5), TARGET_NONE, 0, 0, 0)
    return 
end

function Sniper_Priest101010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Sniper_Priest101010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Sniper_Priest101010Battle_Terminate(arg0, arg1)
    return 
end

local0 = 50.4 - local0
function Sniper_Priest101010Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = Shoot_2dist(arg0, arg1, 10, 20, 0, 50)
    if local4 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
    elseif local4 == 2 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, 90, 10, 10)
        return true
    end
    return false
end

return 
