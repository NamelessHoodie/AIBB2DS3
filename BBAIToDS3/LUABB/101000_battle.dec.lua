local local0 = 0.4
local local1 = 0 - local0
local local2 = 30.4 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 0 - local0
function OnIf_101000(arg0, arg1, arg2)
    if arg2 == 0 then
        Shisai101000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Shisai101000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 50 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif arg0:GetNpcThinkParamID() == 101080 or arg0:GetNpcThinkParamID() == 101081 or arg0:GetNpcThinkParamID() == 101082 then
        if 14 <= local3 then
            local0[1] = 40
            local0[2] = 40
            local0[3] = 0
            local0[4] = 20
        elseif 11 <= local3 then
            local0[1] = 50
            local0[2] = 30
            local0[3] = 0
            local0[4] = 20
        elseif 3 <= local3 then
            local0[1] = 50
            local0[2] = 20
            local0[3] = 0
            local0[4] = 30
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 100
            local0[4] = 0
        end
    elseif 14 <= local3 then
        local0[1] = 20
        local0[2] = 60
        local0[3] = 0
        local0[4] = 20
    elseif 11 <= local3 then
        local0[1] = 40
        local0[2] = 20
        local0[3] = 0
        local0[4] = 40
    elseif 3 <= local3 then
        local0[1] = 30
        local0[2] = 0
        local0[3] = 0
        local0[4] = 70
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 100
        local0[4] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Shisai101000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Shisai101000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Shisai101000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Shisai101000_Act04)
    local1[20] = REGIST_FUNC(arg0, arg1, Shisai101000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Shisai101000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
function Shisai101000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0
    local local3 = UPVAL0 + 2
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, 90, 10, 10)
    if arg0:GetNpcThinkParamID() == 101080 then
        GetWellSpace_Odds = 70
    elseif arg0:GetNpcThinkParamID() == 101082 then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 80
    end
    return GetWellSpace_Odds
end

local0 = 30.4 - local0
function Shisai101000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0
    local local3 = UPVAL0 + 2
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, 180)
    if arg0:GetNpcThinkParamID() == 101080 then
        GetWellSpace_Odds = 70
    elseif arg0:GetNpcThinkParamID() == 101082 then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 80
    end
    return GetWellSpace_Odds
end

local0 = 2.4 - local0
function Shisai101000_Act03(arg0, arg1, arg2)
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
    if arg0:GetNpcThinkParamID() == 101080 then
        GetWellSpace_Odds = 70
    elseif arg0:GetNpcThinkParamID() == 101082 then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 80
    end
    return GetWellSpace_Odds
end

local0 = 30.4 - local0
function Shisai101000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 5
    local local4 = 0
    local local5 = UPVAL0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0, 180, 15, 10)
    if arg0:GetNpcThinkParamID() == 101080 then
        GetWellSpace_Odds = 70
    elseif arg0:GetNpcThinkParamID() == 101082 then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

function Shisai101000_Act20(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_None, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_None, 0, 90)
    end
    return 
end

function Shisai101000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetNpcThinkParamID() == 101080 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4.5), TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
    else
        local local4 = arg0:GetRandam_Float(1.8, 3)
        if local3 <= 2 then
            if local1 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
            end
        elseif local3 <= 5 then
            if local1 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            end
        elseif local3 <= 10 then
            if local1 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            end
        elseif local3 <= 18 then
            if local1 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            end
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
        end
    end
    return 
end

function Shisai101000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Shisai101000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Shisai101000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local2
function Shisai101000Battle_Interupt(arg0, arg1)
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
