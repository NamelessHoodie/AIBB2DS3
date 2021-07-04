local local0 = 0.5
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 0 - local0
local local6 = 0 - local0
local local7 = 0 - local0
local local8 = 0 - local0
local local9 = 0 - local0
local local10 = 0 - local0
local local11 = 0 - local0
local local12 = 0 - local0
local local13 = 0 - local0
local local14 = 0 - local0
local local15 = 0 - local0
local local16 = 0 - local0
function OnIf_701010(arg0, arg1, arg2)
    if arg2 == 0 then
        Avater_B_Berserker701010_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        arg0:SetNumber(2, 1)
    end
    return 
end

function Avater_B_Berserker701010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetDist(TARGET_LOCALPLAYER)
    local local8 = arg0:IsSearchTarget(TARGET_ENE_0)
    local local9 = arg0:GetEventRequest(0)
    local local10 = arg0:GetNpcThinkParamID()
    local local11 = arg0:GetMovePointEffectRange()
    if arg0:GetEventRequest(1) == 100 then
        arg0:SetNumber(1, 100)
    else
        arg0:SetNumber(1, 0)
    end
    if arg0:GetNumber(3) == 1 or arg0:GetNumber(3) == 3 then
        if local3 <= 10 and arg0:IsFinishTimer(0) == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_None, 0, 0)
            arg0:SetTimer(0, 15)
            arg0:SetNumber(3, 2)
        end
    elseif arg0:GetNumber(3) == 2 and arg0:IsFinishTimer(0) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, DIST_None, 0, 0)
        arg0:SetNumber(3, 3)
    end
    if local7 <= 0.1 then
        if local3 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_LOCALPLAYER, 1, TARGET_LOCALPLAYER, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_LOCALPLAYER, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(20, 25), true, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_LOCALPLAYER, 1, TARGET_LOCALPLAYER, true, -1)
        end
    elseif local7 <= 0.4 then
        if local3 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_LOCALPLAYER, 1, TARGET_LOCALPLAYER, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_LOCALPLAYER, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(20, 25), true, true, -1)
        end
    elseif not not arg0:HasSpecialEffectId(TARGET_SELF, 5800) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5801) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5802) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5803) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5810) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5811) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5812) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5813) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5820) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5821) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5822) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5823) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5830) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5831) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5832) or arg0:HasSpecialEffectId(TARGET_SELF, 5833) then
        if not not arg0:HasSpecialEffectId(TARGET_SELF, 5800) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5801) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5802) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5803) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5810) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5811) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5812) or arg0:HasSpecialEffectId(TARGET_SELF, 5813) then
            if arg0:GetNumber(0) ~= 200 then
                arg0:SetNumber(2, 0)
                arg0:SetNumber(0, 200)
            end
        elseif arg0:GetNumber(0) ~= 300 then
            arg0:SetNumber(2, 0)
            arg0:SetNumber(0, 300)
        end
        if arg0:GetNumber(2) == 0 then
            if local8 == false then
                Avater_B_Berserker701010_Act18(arg0, arg1, paramTbl)
            end
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_LOCALPLAYER, DIST_None, 1.5, 30)
            arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
        end
        if local3 <= 80 and arg0:IsFinishTimer(2) == true then
            Berserker_idling(arg0, arg1, paramTbl)
        end
        local0[15] = 100
    else
        arg0:SetNumber(0, 0)
        arg0:SetNumber(2, 0)
        if arg0:GetEventRequest(3) == 100 and 5 <= local5 then
            arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.5, 2.5), TARGET_NONE, 0, 0, 0)
        elseif local8 == true then
            if 18 <= local7 then
                local0[19] = 100
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                local0[20] = 100
            elseif 8 <= local5 then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 30
                local0[4] = 50
                local0[5] = 10
                local0[16] = 10
            elseif 5 <= local5 then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 40
                local0[4] = 40
                local0[5] = 10
                local0[16] = 10
            elseif 4.1 <= local5 then
                local0[1] = 0
                local0[2] = 10
                local0[3] = 30
                local0[4] = 0
                local0[5] = 40
                local0[16] = 10
            elseif 3 <= local5 then
                local0[1] = 30
                local0[2] = 40
                local0[3] = 10
                local0[4] = 0
                local0[5] = 20
                local0[16] = 0
            else
                local0[1] = 50
                local0[2] = 30
                local0[3] = 0
                local0[4] = 10
                local0[5] = 10
                local0[16] = 0
            end
        elseif 8 <= local7 then
            local0[19] = 100
        elseif local7 <= 3 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_LOCALPLAYER, 8, TARGET_SELF, false, -1)
        else
            if local3 <= 80 and arg0:IsFinishTimer(2) == true then
                Berserker_idling(arg0, arg1, paramTbl)
            end
            if local3 <= 15 then
                arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 2), TARGET_NONE, 0, 0, 0)
            elseif local3 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(1.5, 2.5), TARGET_LOCALPLAYER, 1.5, TARGET_SELF, false, -1)
            elseif local3 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1, 2), TARGET_LOCALPLAYER, 30, TARGET_ENE_0, false, -1)
            elseif local3 <= 75 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_NONE, 0, 90, false, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_NONE, 1, 90, false, true, -1)
            end
        end
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Avater_B_Berserker701010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Avater_B_Berserker701010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Avater_B_Berserker701010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Avater_B_Berserker701010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Avater_B_Berserker701010_Act05)
    local1[7] = REGIST_FUNC(arg0, arg1, Avater_B_Berserker701010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Avater_B_Berserker701010_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Avater_B_Berserker701010_Act09)
    local1[15] = REGIST_FUNC(arg0, arg1, Avater_B_Berserker701010_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, Avater_B_Berserker701010_Act16)
    local1[18] = REGIST_FUNC(arg0, arg1, Avater_B_Berserker701010_Act18)
    local1[19] = REGIST_FUNC(arg0, arg1, Avater_B_Berserker701010_Act19)
    local1[20] = REGIST_FUNC(arg0, arg1, Avater_B_Berserker701010_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Avater_B_Berserker701010_ActAfter_AdjustSpace, atkAfterOddsTbl), local2)
    return 
end

local0 = 3.5 - local0
local0 = 3.5 - local0
function Avater_B_Berserker701010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    if arg0:GetNumber(3) ~= 2 then
        local1 = UPVAL0
        local2 = UPVAL0
        local3 = UPVAL0
    else
        local1 = UPVAL1
        local2 = UPVAL1
        local3 = UPVAL1
    end
    if arg0:GetNumber(1) == 100 then
        local3 = 1000
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local3, 0, 3)
    end
    if local0 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, local1, 0)
    elseif local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 1, 30, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0)
    elseif local0 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 1, 30, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 1, 30, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    end
    if arg0:GetNumber(3) == 0 then
        arg0:SetNumber(3, 1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.7 - local0
local0 = 3.9 - local0
function Avater_B_Berserker701010_Act02(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = 0
    if arg0:GetNumber(3) ~= 2 then
        local0 = UPVAL0
        local1 = UPVAL0
        local2 = UPVAL0
    else
        local0 = UPVAL1
        local1 = UPVAL1
        local2 = UPVAL1
    end
    if arg0:GetNumber(1) == 100 then
        local2 = 1000
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local0, 1, 30, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local0, 0)
    end
    if arg0:GetNumber(3) == 0 then
        arg0:SetNumber(3, 1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.4 - local0
local0 = 5.3 - local0
function Avater_B_Berserker701010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    if arg0:GetNumber(3) ~= 2 then
        local1 = UPVAL0
        local2 = UPVAL0
        local3 = UPVAL0
    else
        local1 = UPVAL1
        local2 = UPVAL1
        local3 = UPVAL1
    end
    if arg0:GetNumber(1) == 100 then
        local3 = 1000
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local1, 0, 0)
    if arg0:GetNumber(3) == 0 then
        arg0:SetNumber(3, 1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.9 - local0
local0 = 5.7 - local0
function Avater_B_Berserker701010_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    if arg0:GetNumber(3) ~= 2 then
        local1 = UPVAL0
        local2 = UPVAL0
        local3 = UPVAL0
    else
        local1 = UPVAL1
        local2 = UPVAL1
        local3 = UPVAL1
    end
    if arg0:GetNumber(1) == 100 then
        local3 = 1000
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local1, 0, 0)
    if arg0:GetNumber(3) == 0 then
        arg0:SetNumber(3, 1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.6 - local0
local0 = 4.3 - local0
function Avater_B_Berserker701010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    if arg0:GetNumber(3) ~= 2 then
        local1 = UPVAL0
        local2 = UPVAL0
        local3 = UPVAL0
    else
        local1 = UPVAL1
        local2 = UPVAL1
        local3 = UPVAL1
    end
    if arg0:GetNumber(1) == 100 then
        local3 = 1000
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local1, 0, 0)
    if arg0:GetNumber(3) == 0 then
        arg0:SetNumber(3, 1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.5 - local0
local0 = 3.4 - local0
function Avater_B_Berserker701010_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    local local2 = 0
    local local3 = 0 + 1000
    if arg0:GetNumber(3) ~= 2 then
        local1 = UPVAL0
        local2 = UPVAL0
        local3 = UPVAL0
    else
        local1 = UPVAL1
        local2 = UPVAL1
        local3 = UPVAL1
    end
    if arg0:GetNumber(1) == 100 then
        local3 = 1000
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
local0 = 3.5 - local0
function Avater_B_Berserker701010_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    local local2 = 0
    local local3 = 0 + 1000
    if arg0:GetNumber(3) ~= 2 then
        local1 = UPVAL0
        local2 = UPVAL0
        local3 = UPVAL0
    else
        local1 = UPVAL1
        local2 = UPVAL1
        local3 = UPVAL1
    end
    if arg0:GetNumber(1) == 100 then
        local3 = 1000
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4 - local0
local0 = 3.9 - local0
function Avater_B_Berserker701010_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    local local2 = 0
    local local3 = 0 + 1000
    if arg0:GetNumber(3) ~= 2 then
        local1 = UPVAL0
        local2 = UPVAL0
        local3 = UPVAL0
    else
        local1 = UPVAL1
        local2 = UPVAL1
        local3 = UPVAL1
    end
    if arg0:GetNumber(1) == 100 then
        local3 = 1000
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Avater_B_Berserker701010_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 0
    local local4 = 0
    local local5 = 0
    local local6 = 0
    if local1 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 2), TARGET_NONE, 0, 0, 0)
    elseif local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(1.5, 2.5), TARGET_LOCALPLAYER, 1.5, TARGET_SELF, true, -1)
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1.5, 2.5), TARGET_LOCALPLAYER, 30, TARGET_ENE_0, true, -1)
    elseif local1 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_LOCALPLAYER, 0, 90, true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_LOCALPLAYER, 1, 90, true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Avater_B_Berserker701010_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, 5.8, TARGET_ENE_0, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    if arg0:GetNumber(3) == 0 then
        arg0:SetNumber(3, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Avater_B_Berserker701010_Act18(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetDist(TARGET_LOCALPLAYER)
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNumber(1) == 100 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_LOCALPLAYER, 1.5, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_LOCALPLAYER, 1.5, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Avater_B_Berserker701010_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetDist(TARGET_LOCALPLAYER)
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNumber(1) == 100 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_LOCALPLAYER, 1.2, TARGET_SELF, true, -1)
    elseif 4 <= local1 then
        arg0:StartDash()
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_LOCALPLAYER, 1.2, TARGET_SELF, false, -1)
    elseif 2.5 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_LOCALPLAYER, 1.2, TARGET_SELF, false, -1)
    elseif 1.2 <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_LOCALPLAYER, 1.2, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.5, 2.5), TARGET_NONE, 0, 0, 0)
    end
    if arg0:GetNumber(3) == 0 then
        arg0:SetNumber(3, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Avater_B_Berserker701010_Act20(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.9, 604, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.9, 605, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    if arg0:GetNumber(3) == 0 then
        arg0:SetNumber(3, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Berserker_idling(arg0, arg1, arg2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_LOCALPLAYER, DIST_None, 1.5, 30)
        arg0:SetTimer(2, 7)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_LOCALPLAYER, DIST_None, 1.5, 30)
        arg0:SetTimer(2, 7)
    end
    return 
end

function Avater_B_Berserker701010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Avater_B_Berserker701010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2.5, 3.5)
    local local4 = arg0:GetRandam_Float(2, 3)
    local local5 = -1
    local local6 = true
    if arg0:GetNumber(1) == 100 then
        local6 = true
    else
        local6 = false
    end
    if local0 <= 1.8 then
        if local1 <= 10 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), local6, true, local5)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, local6, local5)
        end
    elseif local0 <= 2.8 then
        if local1 <= 20 and arg0:IsFinishTimer(2) == true then
            Berserker_idling(arg0, arg1, paramTbl)
        elseif local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, local6, local5)
        elseif local1 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 10, TARGET_ENE_0, local6, local5)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), local6, true, local5)
        end
    elseif local0 <= 5 then
        if local1 <= 20 and arg0:IsFinishTimer(2) == true then
            Berserker_idling(arg0, arg1, paramTbl)
        elseif local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 6, TARGET_ENE_0, local6, local5)
        elseif local1 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 10, TARGET_ENE_0, local6, local5)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), local6, true, local5)
        end
    elseif local0 <= 6.5 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 10, TARGET_ENE_0, local6, local5)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), local6, true, local5)
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, local6, local5)
        end
    elseif local0 <= 10 then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 10, TARGET_ENE_0, local6, local5)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), local6, true, local5)
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 6.5, TARGET_SELF, local6, local5)
        end
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8, TARGET_SELF, local6, local5)
    end
    return 
end

function Avater_B_Berserker701010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Avater_B_Berserker701010Battle_Terminate(arg0, arg1)
    return 
end

function Avater_B_Berserker701010Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    return false
end

return 
