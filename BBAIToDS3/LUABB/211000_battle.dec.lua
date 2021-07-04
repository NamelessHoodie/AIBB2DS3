local local0 = 0.4
local local1 = 0.5 - local0
local local2 = 0.5 - local0
local local3 = 0.5 - local0
local local4 = 0.5 - local0
local local5 = 0.5 - local0
local local6 = 0.5 - local0
local local7 = 0.5 - local0
local local8 = 0.5 - local0
local local9 = 0.5 - local0
local local10 = 4.2 - local0
local local11 = 0.5 - local0
local local12 = 6 - local0
local local13 = 0.5 - local0
local local14 = 0.5 - local0
local local15 = 0.5 - local0
local local16 = 0.5 - local0
local local17 = 0.5 - local0
function OnIf_211000(arg0, arg1, arg2)
    if arg2 == 0 then
        CthulhuSpider211000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function CthulhuSpider211000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetHpRate(TARGET_SELF)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[10] = 100
    elseif arg0:GetNumber(0) == 0 then
        local0[8] = 100
    elseif arg0:GetEventRequest() == 1 then
        local0[8] = 100
    elseif 8 <= local3 then
        local0[1] = 40
        local0[2] = 40
        local0[7] = 0
        local0[8] = 20
    elseif 5.5 <= local3 then
        local0[1] = 20
        local0[2] = 60
        local0[7] = 10
        local0[8] = 10
    elseif 2.5 <= local3 then
        local0[1] = 50
        local0[2] = 30
        local0[7] = 20
        local0[8] = 0
    else
        local0[1] = 80
        local0[2] = 20
        local0[7] = 0
        local0[8] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, CthulhuSpider211000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, CthulhuSpider211000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, CthulhuSpider211000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, CthulhuSpider211000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, CthulhuSpider211000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, CthulhuSpider211000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, CthulhuSpider211000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, CthulhuSpider211000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, CthulhuSpider211000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, CthulhuSpider211000_Act10)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, CthulhuSpider211000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.6 - local0
local0 = 3.1 - local0
local0 = 2.2 - local0
local0 = 2.7 - local0
local0 = 2.6 - local0
function CthulhuSpider211000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    local local2 = UPVAL0 + 0.5
    local local3 = UPVAL3 + 0.5
    if local0 <= 50 then
        local1 = UPVAL0
    elseif local0 <= 80 then
        local1 = UPVAL2
    else
        local1 = UPVAL4
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    if local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL1 + 0.5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local2, 0)
    elseif local0 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL2 + 0.5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL4 + 0.5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.5 - local0
function CthulhuSpider211000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9.4 - local0
function CthulhuSpider211000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.7 - local0
function CthulhuSpider211000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9 - local0
function CthulhuSpider211000_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9 - local0
function CthulhuSpider211000_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.3 - local0
function CthulhuSpider211000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.3 - local0
function CthulhuSpider211000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 30 - local0
function CthulhuSpider211000_Act09(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CthulhuSpider211000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CthulhuSpider211000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function CthulhuSpider211000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(2.5, 3.5)
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 443) then
        if local0 <= 3 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
                end
            end
        elseif local0 <= 6 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    end
    return 
end

function CthulhuSpider211000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function CthulhuSpider211000Battle_Terminate(arg0, arg1)
    return 
end

function CthulhuSpider211000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return false
    end
end

return 
