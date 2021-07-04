local local0 = 0.5
local local1 = 0 - local0
local local2 = 4 - local0
local local3 = 0 - local0
local local4 = 3.6 - local0
local local5 = 0 - local0
function OnIf_402200(arg0, arg1, arg2)
    if arg2 == 0 then
        PatientAOnlyHead402200_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function PatientAOnlyHead402200Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetEventRequest()
    local local6 = arg0:GetRandam_Int(1, 100)
    if 8 <= local4 then
        local0[1] = 40
        local0[2] = 30
        local0[3] = 0
        local0[14] = 0
        local0[15] = 20
        local0[16] = 0
    elseif 1 <= local4 then
        local0[1] = 40
        local0[2] = 30
        local0[3] = 40
        local0[14] = 0
        local0[15] = 20
        local0[16] = 0
    else
        local0[1] = 40
        local0[2] = 30
        local0[3] = 0
        local0[14] = 0
        local0[15] = 10
        local0[16] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, PatientAOnlyHead402200_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, PatientAOnlyHead402200_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, PatientAOnlyHead402200_Act03)
    local1[14] = REGIST_FUNC(arg0, arg1, PatientAOnlyHead402200_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, PatientAOnlyHead402200_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, PatientAOnlyHead402200_Act16)
    local1[20] = REGIST_FUNC(arg0, arg1, PatientAOnlyHead402200_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, PatientAOnlyHead402200_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, PatientAOnlyHead402200_Act22)
    local1[24] = REGIST_FUNC(arg0, arg1, PatientAOnlyHead402200_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, PatientAOnlyHead402200_Act25)
    local1[27] = REGIST_FUNC(arg0, arg1, PatientAOnlyHead402200_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, PatientAOnlyHead402200_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, PatientAOnlyHead402200_Act29)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, PatientAOnlyHead402200_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
function PatientAOnlyHead402200_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, 20)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
function PatientAOnlyHead402200_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0, 0, 360)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.9 - local0
function PatientAOnlyHead402200_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL0 + 5, 0, 3)
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, 0, 360)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, 360)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local1, 0, 360)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local1, 0, 360)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function PatientAOnlyHead402200_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(3, 4.5), TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientAOnlyHead402200_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientAOnlyHead402200_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
function PatientAOnlyHead402200_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 5
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
function PatientAOnlyHead402200_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 5
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
function PatientAOnlyHead402200_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 5
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientAOnlyHead402200_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3004_Dist_max + 5
    Approach_Act(arg0, arg1, Att3004_Dist_max, Att3004_Dist_max + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, Att3004_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientAOnlyHead402200_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3005_Dist_max + 5
    Approach_Act(arg0, arg1, Att3005_Dist_max, Att3005_Dist_max + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, Att3005_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientAOnlyHead402200_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3007_Dist_max + 5
    Approach_Act(arg0, arg1, Att3007_Dist_max, Att3007_Dist_max + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, Att3007_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientAOnlyHead402200_Act28(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3007_Dist_max + 5
    Approach_Act(arg0, arg1, Att3007_Dist_max, Att3007_Dist_max + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, Att3007_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientAOnlyHead402200_Act29(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3009_Dist_max + 5
    Approach_Act(arg0, arg1, Att3009_Dist_max, Att3009_Dist_max + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, Att3009_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientAOnlyHead402200_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function PatientAOnlyHead402200_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(0, 1)
    local local2 = arg0:GetRandam_Float(2, 3.5)
    local local3 = arg0:GetRandam_Float(2.5, 4)
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(90, 135), true, true, -1)
    end
    return 
end

function PatientAOnlyHead402200Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function PatientAOnlyHead402200Battle_Terminate(arg0, arg1)
    return 
end

function PatientAOnlyHead402200Battle_Interupt(arg0, arg1)
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
