local local0 = 0.6
local local1 = 0 - local0
local local2 = 2.3 - local0
local local3 = 2.3 - local0
local local4 = 0 - local0
local local5 = 2 - local0
local local6 = 0 - local0
local local7 = 1.9 - local0
local local8 = 6.7 - local0
local local9 = 0 - local0
local local10 = 5 - local0
local local11 = 0 - local0
local local12 = 3.1 - local0
function OnIf_119000(arg0, arg1, arg2)
    if arg2 == 0 then
        WanderingInsanity_Medium119000_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        WanderingInsanity_Medium119000_LastRunaway(arg0, arg1)
    end
    if arg2 == 2 then
        WanderingInsanity_Medium119000_JunpAttack(arg0, arg1)
    end
    return 
end

local0 = 7
local0 = local7
function WanderingInsanity_Medium119000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = 0
    local local6 = 1
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 30) then
        local6 = 1
    else
        local6 = 0
    end
    if arg0:GetNumber(1) == 0 then
        arg0:SetTimer(0, UPVAL0)
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg0:SetNumber(4, 1)
        else
            arg0:SetNumber(4, 0)
        end
        arg0:SetNumber(1, 1)
    end
    if arg0:GetNumber(3) == 0 then
        if arg0:GetNumber(2) == 0 and arg0:IsFinishTimer(1) == true then
            arg0:SetNumber(2, 1)
            if arg0:GetRandam_Int(1, 100) <= 60 then
                arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 10, UPVAL1 + 5)
            end
        end
        arg0:DeleteObserve(2)
        if arg0:GetRandam_Int(1, 100) <= 70 and arg0:IsFinishTimer(1) == true then
            arg0:AddObserveArea(2, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 3.5)
        end
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            local0[7] = 100
        elseif arg0:IsFinishTimer(0) == false then
            if arg0:GetNumber(1) ~= 2 and arg0:GetNumber(4) == 1 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and 9 <= local4 then
                local0[5] = 100
            elseif arg0:GetRandam_Int(1, 100) <= 30 * local6 and local4 <= 4 then
                local0[6] = 100
            else
                arg1:AddSubGoal(GOAL_WanderingInsanity_Medium119000_Runaway, 1)
            end
        else
            local0[8] = 100
        end
    else
        arg1:AddSubGoal(GOAL_WanderingInsanity_Medium119000_Hide, 10)
    end
    local1[1] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act03)
    local1[5] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act20)
    local1[30] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_Act38)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, WanderingInsanity_Medium119000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
local0 = local3
function WanderingInsanity_Medium119000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL2 + 1, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local5
local0 = local4
function WanderingInsanity_Medium119000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local7
local0 = local6
function WanderingInsanity_Medium119000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 10
    local local3 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 10) and arg0:GetDist(TARGET_ENE_0) <= UPVAL0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_NONE, UPVAL0 + 1, 0, -1)
        arg0:SetNumber(2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function WanderingInsanity_Medium119000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = UPVAL0
    local local4 = UPVAL0 + 1
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_NONE, DIST_None)
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_If, 10, 2)
    end
    arg0:SetNumber(4, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WanderingInsanity_Medium119000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_NONE, DIST_None, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function WanderingInsanity_Medium119000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_NONE, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WanderingInsanity_Medium119000_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WanderingInsanity_Medium119000_Act09(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WanderingInsanity_Medium119000_Act10(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WanderingInsanity_Medium119000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WanderingInsanity_Medium119000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3000_Dist_min
    Approach_Act(arg0, arg1, Att3000_Dist_max, Att3000_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, Att3000_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function WanderingInsanity_Medium119000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local3
local0 = 0 - local0
function WanderingInsanity_Medium119000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local5
local0 = local4
function WanderingInsanity_Medium119000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local7
local0 = local6
function WanderingInsanity_Medium119000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 10
    local local3 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 10) and arg0:GetDist(TARGET_ENE_0) <= UPVAL0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_NONE, UPVAL0 + 1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
local0 = 0 - local0
function WanderingInsanity_Medium119000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function WanderingInsanity_Medium119000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WanderingInsanity_Medium119000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_NONE, DIST_None, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function WanderingInsanity_Medium119000_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_NONE, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WanderingInsanity_Medium119000_LastRunaway(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 100, TARGET_SELF, false, -1)
    arg0:SetNumber(3, 1)
    return 
end

local0 = local8
function WanderingInsanity_Medium119000_JunpAttack(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = 0
    if local0 <= UPVAL0 + 5 and UPVAL0 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, -1)
    end
    return 
end

function WanderingInsanity_Medium119000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = arg0:GetRandam_Float(2, 3)
    local local6 = 0
    return 
end

function WanderingInsanity_Medium119000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function WanderingInsanity_Medium119000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function WanderingInsanity_Medium119000Battle_Terminate(arg0, arg1)
    return 
end

local0 = 4
function WanderingInsanity_Medium119000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if not not arg0:IsInterupt(INTERUPT_Damaged) or arg0:IsInterupt(INTERUPT_Damaged_Stranger) then
        arg0:SetNumber(1, 2)
        arg0:SetTimer(0, UPVAL0)
        arg0:SetTimer(1, 0)
        arg0:SetNumber(2, 0)
        arg0:SetNumber(3, 0)
        arg0:Replaning()
    end
    if arg0:IsFinishTimer(0) == false and arg0:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg0:IsInsideObserve(1) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_NONE, AttDist, 0, -1)
            arg0:SetTimer(1, 4)
            arg0:DeleteObserve(1)
            arg0:DeleteObserve(2)
            return true
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_NONE, AttDist, 0, -1)
            arg0:SetTimer(1, 4)
            arg0:DeleteObserve(1)
            arg0:DeleteObserve(2)
            return true
        end
    else
        return false
    end
end

REGISTER_GOAL_NO_INTERUPT(GOAL_WanderingInsanity_Medium119000_Runaway, true)
function WanderingInsanity_Medium119000Runaway_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetLife(), TARGET_ENE_0, 100, TARGET_SELF, false, -1)
    return 
end

function WanderingInsanity_Medium119000Runaway_Update(arg0, arg1)
    if arg1:GetLastSubGoalResult() == GOAL_RESULT_Failed then
        return GOAL_RESULT_Success
    else
        return GOAL_RESULT_Continue
    end
end

function WanderingInsanity_Medium119000Runaway_Terminate(arg0, arg1)
    return 
end

function WanderingInsanity_Medium119000Runaway_Interupt(arg0, arg1)
    return false
end

REGISTER_GOAL_NO_UPDATE(GOAL_WanderingInsanity_Medium119000_Hide, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_WanderingInsanity_Medium119000_Hide, true)
function WanderingInsanity_Medium119000Hide_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg1:GetLife(), TARGET_ENE_0)
    return 
end

function WanderingInsanity_Medium119000Hide_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function WanderingInsanity_Medium119000Hide_Terminate(arg0, arg1)
    return 
end

function WanderingInsanity_Medium119000Hide_Interupt(arg0, arg1)
    return false
end

return 
