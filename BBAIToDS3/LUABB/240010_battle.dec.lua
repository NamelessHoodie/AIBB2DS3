local local0 = 0.5
local local1 = 3.4 - local0
local local2 = 0.5 - local0
local local3 = 4.2 - local0
local local4 = 0.5 - local0
local local5 = 2.7 - local0
local local6 = 9.2 - local0
local local7 = 0.5 - local0
local local8 = 2.5 - local0
local local9 = 0.5 - local0
local local10 = 2.5 - local0
local local11 = 3.7 - local0
local local12 = 6.5 - local0
local local13 = 5.7 - local0
local local14 = 17.6 - local0
local local15 = 7.5 - local0
local local16 = 19.6 - local0
local local17 = 0.5 - local0
local local18 = 15 - local0
local local19 = 0.5 - local0
local local20 = 3.7 - local0
local local21 = 0.5 - local0
local local22 = 2.7 - local0
local local23 = 3.5 - local0
local local24 = 6.5 - local0
local local25 = 5.4 - local0
local local26 = 17.1 - local0
local local27 = 7.2 - local0
local local28 = 19.2 - local0
local local29 = 0.5 - local0
local local30 = 15 - local0
function OnIf_240000(arg0, arg1, arg2)
    if arg2 == 0 then
        AbandonedGiant_Thrower240010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function AbandonedGiant_Thrower240010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif 10 <= local3 then
        local0[10] = 100
    elseif 7 <= local3 then
        local0[1] = 20
        local0[2] = 5
        local0[3] = 15
        local0[4] = 15
        local0[8] = 20
    elseif 3 <= local3 then
        local0[1] = 30
        local0[2] = 10
        local0[3] = 15
        local0[4] = 20
        local0[8] = 5
    else
        local0[1] = 35
        local0[2] = 10
        local0[3] = 15
        local0[4] = 15
        local0[8] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, AbandonedGiant_Thrower240010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, AbandonedGiant_Thrower240010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, AbandonedGiant_Thrower240010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, AbandonedGiant_Thrower240010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, AbandonedGiant_Thrower240010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, AbandonedGiant_Thrower240010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, AbandonedGiant_Thrower240010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, AbandonedGiant_Thrower240010_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, AbandonedGiant_Thrower240010_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, AbandonedGiant_Thrower240010_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, AbandonedGiant_Thrower240010_Act11)
    local1[15] = REGIST_FUNC(arg0, arg1, AbandonedGiant_Thrower240010_Act15)
    local1[20] = REGIST_FUNC(arg0, arg1, AbandonedGiant_Thrower240010_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, AbandonedGiant_Thrower240010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 4.7 - local0
local0 = 0.5 - local0
local0 = local1
local0 = 0.5 - local0
function AbandonedGiant_Thrower240010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local2 = UPVAL1
        local local3 = UPVAL0 + 1
        Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, 20)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local3, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0)
        end
    else
        local local2 = UPVAL3
        local local3 = UPVAL2 + 1
        Approach_Act(arg0, arg1, UPVAL2, 999, 0, 2)
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, 20)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
local0 = 0.5 - local0
local0 = 3.5 - local0
local0 = 0.5 - local0
function AbandonedGiant_Thrower240010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, 12, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.3 - local0
local0 = 0.5 - local0
local0 = 2.9 - local0
local0 = 0.5 - local0
function AbandonedGiant_Thrower240010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, 999, 0, 3.5)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, 12, 0, 3.5)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.3 - local0
local0 = 0.5 - local0
local0 = 3 - local0
local0 = 0.5 - local0
function AbandonedGiant_Thrower240010_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local2 = UPVAL1
        Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0, 0, -1)
    else
        local local2 = UPVAL3
        Approach_Act(arg0, arg1, UPVAL2, 999, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.9 - local0
local0 = 0.5 - local0
function AbandonedGiant_Thrower240010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
local0 = 0.5 - local0
function AbandonedGiant_Thrower240010_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 1.5, 20)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 11.6 - local0
local0 = 5 - local0
function AbandonedGiant_Thrower240010_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(1, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9.5 - local0
local0 = 5.7 - local0
local0 = local6
local0 = 5.7 - local0
function AbandonedGiant_Thrower240010_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5671) == true then
        local local2 = UPVAL1
        if arg0:IsFinishTimer(0) ~= false then
            Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 5)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local2 = UPVAL3
        if arg0:IsFinishTimer(0) == false then
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.9, TARGET_ENE_0, 0, 0, 0)
        else
            Approach_Act(arg0, arg1, UPVAL2, UPVAL2, 0, 5)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    arg0:SetTimer(1, 7)
    arg0:SetTimer(0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AbandonedGiant_Thrower240010_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = DIST_None
    if 5 <= arg0:GetDistYSigned(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, local2, 0, -1)
    elseif 35 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, local2, 0, -1)
    elseif 25 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, local2, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AbandonedGiant_Thrower240010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AbandonedGiant_Thrower240010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function AbandonedGiant_Thrower240010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg0:SetTimer(0, 2)
    end
    return 
end

function AbandonedGiant_Thrower240010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function AbandonedGiant_Thrower240010Battle_Terminate(arg0, arg1)
    return 
end

local0 = local1
local0 = local6
function AbandonedGiant_Thrower240010Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        if UseItem_Act(arg0, arg1, 10, 40) then
            arg1:ClearSubGoal()
            if arg0:GetDist(TARGET_ENE_0) < 5.2 then
                Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 3.5)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, -1)
            else
                Approach_Act(arg0, arg1, UPVAL1, UPVAL1, 0, 3.5)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL1, 0, -1)
            end
            return true
        else
            local local3 = arg0:GetRandam_Int(1, 100)
            local local4 = arg0:GetRandam_Int(1, 100)
            local local5 = arg0:GetDist(TARGET_ENE_0)
            local local6 = Shoot_2dist(arg0, arg1, 6, 20, 20, 40)
            if local6 == 1 then
                Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 3.5)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, -1)
                return true
            elseif local6 == 2 then
                Approach_Act(arg0, arg1, UPVAL1, UPVAL1, 0, 3.5)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL1, 0, -1)
                return true
            else
                return false
            end
        end
    end
end

return 
