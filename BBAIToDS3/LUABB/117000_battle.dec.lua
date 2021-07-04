local local0 = 0.5
local local1 = 5 - local0
local local2 = 2.5 - local0
local local3 = 2.5 - local0
local local4 = 3.8 - local0
local local5 = 1.8 - local0
local local6 = 2.5 - local0
local local7 = 3.2 - local0
local local8 = 15 - local0
function OnIf_117000(arg0, arg1, arg2)
    if arg2 == 0 then
        NecrophagyBird117000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function NecrophagyBird117000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:GetNpcThinkParamID() == 117401 and arg0:GetNumber(0) == 0 then
        local0[4] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5410) == true then
        local0[21] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[20] = 100
    elseif 9 <= local3 then
        local0[1] = 15
        local0[2] = 10
        local0[3] = 10
        local0[4] = 0
        local0[5] = 10
        local0[6] = 10
        local0[7] = 20
        local0[10] = 25
    elseif 5 <= local3 then
        local0[1] = 15
        local0[2] = 20
        local0[3] = 15
        local0[4] = 0
        local0[5] = 15
        local0[6] = 15
        local0[7] = 15
        local0[10] = 5
    elseif 2.5 <= local3 then
        local0[1] = 0
        local0[2] = 20
        local0[3] = 20
        local0[4] = 0
        local0[5] = 20
        local0[6] = 20
        local0[7] = 20
        local0[10] = 0
    elseif 1.8 <= local3 then
        local0[1] = 0
        local0[2] = 23
        local0[3] = 23
        local0[4] = 0
        local0[5] = 18
        local0[6] = 18
        local0[7] = 18
        local0[10] = 0
    else
        local0[1] = 0
        local0[2] = 25
        local0[3] = 25
        local0[4] = 0
        local0[5] = 30
        local0[6] = 20
        local0[7] = 0
        local0[10] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, NecrophagyBird117000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, NecrophagyBird117000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, NecrophagyBird117000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, NecrophagyBird117000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, NecrophagyBird117000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, NecrophagyBird117000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, NecrophagyBird117000_Act07)
    local1[10] = REGIST_FUNC(arg0, arg1, NecrophagyBird117000_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, NecrophagyBird117000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, NecrophagyBird117000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, NecrophagyBird117000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, NecrophagyBird117000_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, NecrophagyBird117000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 7 - local0
function NecrophagyBird117000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.5 - local0
function NecrophagyBird117000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4 - local0
function NecrophagyBird117000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7 - local0
function NecrophagyBird117000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.2 - local0
function NecrophagyBird117000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.2 - local0
function NecrophagyBird117000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.2 - local0
function NecrophagyBird117000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 20 - local0
function NecrophagyBird117000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 9999, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NecrophagyBird117000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NecrophagyBird117000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 3
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        if local0 < local2 then
            if local1 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 0, 0, 0)
            elseif local1 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 0, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 0, 0, 0)
            end
        elseif local0 < 5.5 then
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 0, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
            end
            arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, local2)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3600, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NecrophagyBird117000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NecrophagyBird117000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NecrophagyBird117000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function NecrophagyBird117000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    if arg0:GetDist(TARGET_ENE_0) <= 2.5 then
        if local0 <= 65 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(1, 2), TARGET_NONE, 0, 0, 0)
    end
    return 
end

function NecrophagyBird117000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function NecrophagyBird117000Battle_Terminate(arg0, arg1)
    return 
end

function NecrophagyBird117000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg0:IsInsideObserve(1) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(1)
            arg0:Replaning()
            return true
        elseif arg0:IsInsideObserve(2) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(2)
            arg0:Replaning()
            return true
        end
        arg0:Replaning()
    else
        if arg0:IsInterupt(INTERUPT_Damaged) and arg0:GetRandam_Int(1, 100) <= 33 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
            return true
        end
        local local3 = arg0:GetRandam_Int(1, 100)
        local local4 = arg0:GetRandam_Int(1, 100)
        local local5 = arg0:GetDist(TARGET_ENE_0)
        local local6 = Shoot_2dist(arg0, arg1, 6, 20, 5, 15)
        if local6 == 1 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        elseif local6 == 2 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        end
        if RebByOpGuard_Step(arg0, arg1, 10, 100, 0, 0, 4) then
            return true
        else
            return false
        end
    end
end

return 
