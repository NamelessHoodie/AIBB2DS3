local local0 = 0.4
local local1 = 2.4 - local0
local local2 = 20.6 - local0
local local3 = 4 - local0
local local4 = 20.6 - local0
local local5 = 2.3 - local0
local local6 = 4.6 - local0
function OnIf_210010(arg0, arg1, arg2)
    if arg2 == 0 then
        EyeCollector210010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function EyeCollector210010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        if local3 <= 3.2 then
            local0[3] = 100
            local0[20] = 100
        else
            local0[20] = 100
        end
    elseif 8 <= local3 then
        local0[1] = 0
        local0[2] = 30
        local0[3] = 0
        local0[4] = 0
        local0[5] = 30
        local0[10] = 0
        local0[11] = 30
    elseif 5 <= local3 then
        local0[1] = 0
        local0[2] = 50
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[10] = 0
        local0[11] = 50
    elseif 3.2 <= local3 then
        local0[1] = 0
        local0[2] = 25
        local0[3] = 25
        local0[4] = 0
        local0[5] = 0
        local0[10] = 0
        local0[11] = 50
    elseif 2.4 <= local3 then
        local0[1] = 0
        local0[2] = 30
        local0[3] = 40
        local0[4] = 0
        local0[5] = 0
        local0[10] = 30
        local0[11] = 0
    else
        local0[1] = 50
        local0[2] = 0
        local0[3] = 30
        local0[4] = 0
        local0[5] = 0
        local0[10] = 30
        local0[11] = 0
    end
    if 0.1 <= arg0:GetDistY(TARGET_ENE_0) then
        local0[10] = 0
        local0[11] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act05)
    local1[10] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act11)
    local1[15] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act15)
    local1[20] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act20)
    local1[30] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, EyeCollector210010_Act38)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, EyeCollector210010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local1
function EyeCollector210010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = 9999
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AttDist0, 0, 120)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AttDist1_8, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, AttDist8, 0)
    end
    GetWellSpace_Odds = 70
    return GetWellSpace_Odds
end

local0 = local2
function EyeCollector210010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 9999
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 0, 120)
    GetWellSpace_Odds = 70
    return GetWellSpace_Odds
end

local0 = local3
function EyeCollector210010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 9999
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, 120)
    GetWellSpace_Odds = 70
    return GetWellSpace_Odds
end

local0 = local4
function EyeCollector210010_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 9999
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 70
    return GetWellSpace_Odds
end

local0 = local4
function EyeCollector210010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 9999
    local local4 = 0
    local local5 = UPVAL0
    local local6 = arg0:GetRandam_Int(0, 1)
    local local7 = arg0:GetRandam_Float(2, 3)
    if local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local7, TARGET_ENE_0, local6, arg0:GetRandam_Int(120, 120), true, true, -1)
    elseif local1 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(2, 3.5), TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
    elseif local1 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local7, TARGET_ENE_0, local6, arg0:GetRandam_Int(120, 120), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local5
function EyeCollector210010_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 70
    return GetWellSpace_Odds
end

local0 = local6
function EyeCollector210010_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 5)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 70
    return GetWellSpace_Odds
end

function EyeCollector210010_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EyeCollector210010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2.5, TARGET_ENE_0, 30, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local1
local0 = 0 - local0
function EyeCollector210010_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.3 - local0
local0 = 0 - local0
function EyeCollector210010_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = 0 - local0
function EyeCollector210010_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local3
local0 = 0 - local0
function EyeCollector210010_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = 0 - local0
function EyeCollector210010_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local5
local0 = 0 - local0
function EyeCollector210010_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = 0 - local0
function EyeCollector210010_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EyeCollector210010_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3007_Dist_min
    Approach_Act(arg0, arg1, Att3007_Dist_max - 0.5, Att3007_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, Att3007_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EyeCollector210010_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3008_Dist_min
    Approach_Act(arg0, arg1, Att3008_Dist_max, Att3008_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, Att3008_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EyeCollector210010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = arg0:GetRandam_Float(2, 3)
    local local6 = 0
    if local0 <= 3 then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif local0 <= 8 then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif local0 <= 30 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    end
    return 
end

function EyeCollector210010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function EyeCollector210010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function EyeCollector210010Battle_Terminate(arg0, arg1)
    return 
end

function EyeCollector210010Battle_Interupt(arg0, arg1)
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
