local local0 = 0.6
local local1 = 0 - local0
local local2 = 40 - local0
local local3 = 0 - local0
local local4 = 40 - local0
local local5 = 0 - local0
local local6 = 0 - local0
local local7 = 2.5 - local0
local local8 = 0 - local0
local local9 = 40 - local0
local local10 = 0 - local0
local local11 = 40 - local0
function TheServantOfKing_Staff233010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif arg0:GetEventRequest() == 100 then
        local0[2] = 100
    elseif 3 <= arg0:GetDist(TARGET_ENE_0) then
        local0[1] = 100
        local0[2] = 0
    else
        local0[1] = 0
        local0[2] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, TheServantOfKing_Staff233010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, TheServantOfKing_Staff233010_Act02)
    local1[20] = REGIST_FUNC(arg0, arg1, TheServantOfKing_Staff233010_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, TheServantOfKing_Staff233010_ActAfter_AdjustSpace, atkAfterOddsTbl), local2)
    return 
end

function TheServantOfKing_Staff233010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 3020
    local local3 = 3021
    if arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        local2 = 3024
        local3 = 3025
    end
    Shoot_Act(arg0, arg1, local2, local3, arg0:GetRandam_Int(1, 2))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.5 - local0
function TheServantOfKing_Staff233010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, local1, 0, 180)
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TheServantOfKing_Staff233010_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.5
function TheServantOfKing_Staff233010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    if arg0:GetRandam_Int(1, 100) <= 40 then
        if 5 <= arg0:GetDist(TARGET_ENE_0) then
            arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 3), TARGET_ENE_0, 0, 0, 0)
        elseif arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 5) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, UPVAL0)
        end
    end
    return 
end

function TheServantOfKing_Staff233010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function TheServantOfKing_Staff233010Battle_Terminate(arg0, arg1)
    return 
end

function TheServantOfKing_Staff233010Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    return false
end

return 
