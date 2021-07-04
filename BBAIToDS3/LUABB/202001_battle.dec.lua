local local0 = 0.4
local local1 = 0.4 - local0
local local2 = 3.4 - local0
local local3 = 4 - local0
local local4 = 0.4 - local0
local local5 = 30 - local0
local local6 = 2.4 - local0
local local7 = 3.7 - local0
local local8 = 1.5 - local0
function OnIf_202001(arg0, arg1, arg2)
    if arg2 == 0 then
        Abductor_202001_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Abductor_202001Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetEventRequest(0)
    local local6 = arg0:GetRandam_Int(1, 100)
    if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        local0[20] = 100
    elseif arg0:IsInsideTargetRegion(TARGET_ENE_0, 2401030) == true then
        local0[2] = 100
    elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 404) == true then
        local0[1] = 100
    elseif 12 <= local4 then
        local0[30] = 0
        local0[31] = 0
        local0[32] = 0
        local0[33] = 0
        local0[34] = 0
        local0[35] = 0
        local0[36] = 0
    elseif 8 <= local4 then
        local0[30] = 20
        local0[31] = 0
        local0[32] = 20
        local0[33] = 30
        local0[34] = 0
        local0[35] = 0
        local0[36] = 0
    elseif 4 <= local4 then
        local0[30] = 30
        local0[31] = 20
        local0[32] = 20
        local0[33] = 0
        local0[34] = 10
        local0[35] = 0
        local0[36] = 0
    else
        local0[1] = 0
        local0[30] = 30
        local0[31] = 30
        local0[32] = 20
        local0[33] = 0
        local0[34] = 10
        local0[35] = 0
        local0[36] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act02)
    local1[20] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act20)
    local1[30] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act45)
    local1[99] = REGIST_FUNC(arg0, arg1, Abductor_202001_Act99)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Abductor_202001_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
function Abductor_202001_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = UPVAL0 + 1
    local local6 = 0
    if 12 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 7, TARGET_SELF, true, -1)
    elseif 6 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, false, -1)
    elseif 3 <= local0 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
        end
    elseif local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
    elseif local1 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 15, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Abductor_202001_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(POINT_EVENT)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = UPVAL0 + 1
    local local6 = 0
    if 6 <= local0 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 3, TARGET_SELF, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, POINT_EVENT, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, false, -1)
        end
    elseif 3 <= local0 then
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, POINT_EVENT, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, false, -1)
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, POINT_EVENT, 5, POINT_EVENT, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 3, TARGET_SELF, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, POINT_EVENT, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Abductor_202001_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Abductor_202001_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0 + 1
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3 - local0
local0 = 0.4 - local0
function Abductor_202001_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local3
local0 = 0.4 - local0
function Abductor_202001_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 9.5 - local0
local0 = 5.4 - local0
function Abductor_202001_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 1
    local local4 = 0
    if UPVAL1 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_KeepDist, 3, TARGET_ENE_0, 4, 8, TARGET_ENE_0, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 2.4 - local0
local0 = 0.4 - local0
function Abductor_202001_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.6 - local0
local0 = 0.4 - local0
function Abductor_202001_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 18 - local0
local0 = 0.4 - local0
function Abductor_202001_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function Abductor_202001_Act37(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, Dist_None, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 2.9 - local0
local0 = 1 - local0
function Abductor_202001_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.7 - local0
local0 = 0.4 - local0
function Abductor_202001_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.5 - local0
local0 = 5.4 - local0
local0 = local3
function Abductor_202001_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = UPVAL0 + 1
    local local6 = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_ENE_0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local5, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.5 - local0
local0 = 0.4 - local0
function Abductor_202001_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
local0 = 0.4 - local0
function Abductor_202001_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.7 - local0
local0 = 0.4 - local0
function Abductor_202001_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = 0.4 - local0
function Abductor_202001_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
function Abductor_202001_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Abductor_202001_Act99(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2, TARGET_SELF, false, -1)
    return 
end

function Abductor_202001_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Abductor_202001_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = 0
    local local5 = 0
    if local0 <= 2 then
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 8 then
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif local0 <= 20 then
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2, TARGET_SELF, false, -1)
        end
    elseif local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function Abductor_202001Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Abductor_202001Battle_Terminate(arg0, arg1)
    return 
end

function Abductor_202001Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        return false
    end
end

return 
