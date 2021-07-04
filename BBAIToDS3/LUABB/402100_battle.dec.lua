local local0 = 0.5
local local1 = 0 - local0
local local2 = 2.2 - local0
local local3 = 0 - local0
local local4 = 1.9 - local0
local local5 = 0 - local0
local local6 = 0 - local0
local local7 = 2.1 - local0
local local8 = 0 - local0
local local9 = 2.1 - local0
local local10 = 0 - local0
local local11 = 5.1 - local0
local local12 = 0 - local0
local local13 = 0 - local0
local local14 = 4.5 - local0
function OnIf_402100(arg0, arg1, arg2)
    if arg2 == 0 then
        PatientACrawling402100_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local7
local0 = local9
function PatientACrawling402100Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetEventRequest()
    local local6 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNpcThinkParamID() == 402102 or arg0:GetNpcThinkParamID() == 402103 then
        tentacle = 20
    else
        tentacle = 0
    end
    if arg0:GetNpcThinkParamID() == 402103 and arg0:GetNumber(5) == 0 then
        local0[17] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 100) and local4 <= UPVAL0 then
        local0[4] = 60
        local0[15] = 40
        local0[16] = 0
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 100) and local4 <= UPVAL1 then
        local0[5] = 60
        local0[15] = 40
        local0[16] = 0
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) == false and local4 <= UPVAL0 then
        local0[15] = 100
        local0[16] = 0
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) == false then
        local0[15] = 30
        local0[16] = 70
    elseif 8 <= local4 then
        local0[6] = 0 + tentacle
        local0[7] = 0 + tentacle
        local0[8] = 10 + tentacle
        local0[15] = 30
        local0[16] = 60
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
    elseif 3 <= local4 then
        local0[6] = 10 + tentacle
        local0[7] = 10 + tentacle
        local0[8] = 20 + tentacle
        local0[15] = 0
        local0[16] = 0
        local0[1] = 30
        local0[2] = 15
        local0[3] = 15
    else
        local0[6] = 0 + tentacle
        local0[7] = 0 + tentacle
        local0[8] = 0 + tentacle
        local0[1] = 40
        local0[2] = 30
        local0[3] = 30
        local0[15] = 0
        local0[16] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act08)
    local1[14] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act17)
    local1[20] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act22)
    local1[24] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act25)
    local1[27] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, PatientACrawling402100_Act29)
    Common_Battle_Activate(arg0, arg1, local0, local1, atkAfterFunc, local2)
    return 
end

local0 = local2
function PatientACrawling402100_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
function PatientACrawling402100_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0, 0, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 1.9 - local0
function PatientACrawling402100_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL0 + 5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, 20)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local7
function PatientACrawling402100_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 5
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local9
function PatientACrawling402100_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 5
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local11
function PatientACrawling402100_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.1 - local0
function PatientACrawling402100_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL0 + 5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local1, 0, 20)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
function PatientACrawling402100_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0, 0, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientACrawling402100_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(3, 4.5), TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientACrawling402100_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientACrawling402100_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
function PatientACrawling402100_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0, 0, 20)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
function PatientACrawling402100_Act20(arg0, arg1, arg2)
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
function PatientACrawling402100_Act21(arg0, arg1, arg2)
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
function PatientACrawling402100_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 5
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local7
function PatientACrawling402100_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 5
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local9
function PatientACrawling402100_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 5
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local11
function PatientACrawling402100_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 5
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local11
function PatientACrawling402100_Act28(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 5
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
function PatientACrawling402100_Act29(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 5
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function PatientACrawling402100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function PatientACrawling402100_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 3.5)
    local local4 = arg0:GetRandam_Float(2.5, 4)
    if local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    elseif local1 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_SELF, 0, 0, 0)
    end
    return 
end

function PatientACrawling402100Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function PatientACrawling402100Battle_Terminate(arg0, arg1)
    return 
end

function PatientACrawling402100Battle_Interupt(arg0, arg1)
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
