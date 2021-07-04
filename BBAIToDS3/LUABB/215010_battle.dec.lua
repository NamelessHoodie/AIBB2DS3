local local0 = 0.3
local local1 = 0 - local0
local local2 = 5.1 - local0
local local3 = 0
function OnIf_215010(arg0, arg1, arg2)
    if arg2 == 0 then
        Evilspirit_of_Oldcastle_Choppedhead215010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local3
function Evilspirit_of_Oldcastle_Choppedhead215010Battle_Activate(arg0, arg1)
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
        local0[1] = 100
    else
        arg0:EndDash()
        local local4 = 1
        SETUPVAL 6 0 0
        local0[1] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Evilspirit_of_Oldcastle_Choppedhead215010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Evilspirit_of_Oldcastle_Choppedhead215010_Act02)
    local1[20] = REGIST_FUNC(arg0, arg1, Evilspirit_of_Oldcastle_Choppedhead215010_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Evilspirit_of_Oldcastle_Choppedhead215010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local3
local0 = local2
function Evilspirit_of_Oldcastle_Choppedhead215010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL1, 9999 * UPVAL0, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL1, 0, -1)
    GetWellSpace_Odds = 100 * UPVAL0
    return GetWellSpace_Odds
end

local0 = local2
function Evilspirit_of_Oldcastle_Choppedhead215010_Act02(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL0 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(5, 7), TARGET_ENE_0, UPVAL0, TARGET_ENE_0, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(5, 7), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(5, 7), TARGET_ENE_0, UPVAL0, TARGET_SELF, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(5, 7), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Evilspirit_of_Oldcastle_Choppedhead215010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Evilspirit_of_Oldcastle_Choppedhead215010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Evilspirit_of_Oldcastle_Choppedhead215010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(5, 7)
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

function Evilspirit_of_Oldcastle_Choppedhead215010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Evilspirit_of_Oldcastle_Choppedhead215010Battle_Terminate(arg0, arg1)
    return 
end

function Evilspirit_of_Oldcastle_Choppedhead215010Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = Shoot_2dist(arg0, arg1, 6, 20, 20, 40)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(1.5, 2.5)
    if local1 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif local1 == 2 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local2, arg0:GetRandam_Int(30, 45), true, true, -1)
        return true
    end
    return false
end

return 
