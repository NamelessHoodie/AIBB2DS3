local local0 = 0.3
local local1 = 0.5
local local2 = 0 - local0 + local1
local local3 = 0 - local0 + local1
local local4 = 0 - local0 + local1
local local5 = 0 - local0 + local1
local local6 = 0 - local0 + local1
local local7 = 0 - local0 + local1
local local8 = 0
function OnIf_215000(arg0, arg1, arg2)
    if arg2 == 0 then
        Evilspirit_of_Oldcastle_Knife215000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local8
function Evilspirit_of_Oldcastle_Knife215000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[20] = 100
    elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 444) == true then
        local0[2] = 100
    elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 4652) == true then
        arg0:StartDash()
        local local4 = 0
        SETUPVAL 6 0 0
        if 2.5 <= local3 then
            local0[1] = 10
            local0[2] = 20
            local0[3] = 40
            local0[4] = 10
            local0[6] = 20
        else
            local0[1] = 30
            local0[2] = 0
            local0[3] = 0
            local0[4] = 40
            local0[6] = 30
        end
    else
        arg0:EndDash()
        local local4 = 1
        SETUPVAL 6 0 0
        if 2.5 <= local3 then
            local0[1] = 40
            local0[2] = 0
            local0[3] = 0
            local0[4] = 30
            local0[6] = 30
        else
            local0[1] = 60
            local0[2] = 0
            local0[3] = 0
            local0[4] = 30
            local0[6] = 20
        end
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Evilspirit_of_Oldcastle_Knife215000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Evilspirit_of_Oldcastle_Knife215000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Evilspirit_of_Oldcastle_Knife215000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Evilspirit_of_Oldcastle_Knife215000_Act04)
    local1[6] = REGIST_FUNC(arg0, arg1, Evilspirit_of_Oldcastle_Knife215000_Act06)
    local1[20] = REGIST_FUNC(arg0, arg1, Evilspirit_of_Oldcastle_Knife215000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Evilspirit_of_Oldcastle_Knife215000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local8
local0 = 1.9 - local0 + local1
local0 = 1.9 - local0 + local1
function Evilspirit_of_Oldcastle_Knife215000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL1, 9999 * UPVAL0, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, UPVAL2, 0, -1)
    GetWellSpace_Odds = 100 * UPVAL0
    return GetWellSpace_Odds
end

local0 = local8
local0 = 3.9 - local0 + local1
function Evilspirit_of_Oldcastle_Knife215000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL1, 9999 * UPVAL0, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL1, 0, -1)
    GetWellSpace_Odds = 100 * UPVAL0
    return GetWellSpace_Odds
end

local0 = 4 - local0 + local1
local0 = local8
function Evilspirit_of_Oldcastle_Knife215000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 9999 * UPVAL1, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100 * UPVAL1
    return GetWellSpace_Odds
end

local0 = 1 - local0 + local1
local0 = local8
function Evilspirit_of_Oldcastle_Knife215000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 9999 * UPVAL1, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100 * UPVAL1
    return GetWellSpace_Odds
end

local0 = 3.6 - local0 + local1
local0 = local8
function Evilspirit_of_Oldcastle_Knife215000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 9999 * UPVAL1, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100 * UPVAL1
    return GetWellSpace_Odds
end

function Evilspirit_of_Oldcastle_Knife215000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Evilspirit_of_Oldcastle_Knife215000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Evilspirit_of_Oldcastle_Knife215000_ActAfter_RealTime(arg0, arg1)
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

function Evilspirit_of_Oldcastle_Knife215000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Evilspirit_of_Oldcastle_Knife215000Battle_Terminate(arg0, arg1)
    return 
end

function Evilspirit_of_Oldcastle_Knife215000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = Shoot_2dist(arg0, arg1, 6, 20, 20, 40)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(1.5, 2.5)
    if local1 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif local1 == 2 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 444) == true then
        if fate <= 50 then
            actPerArr[2] = 100
            local local4 = true
            return true
        else
            return true
        end
    end
    return false
end

return 
