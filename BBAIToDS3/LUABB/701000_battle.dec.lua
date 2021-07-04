local local0 = 0.5
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 3.5 - local0
local local6 = 0 - local0
local local7 = 3.8 - local0
local local8 = 0 - local0
local local9 = 4 - local0
function OnIf_701000(arg0, arg1, arg2)
    if arg2 == 0 then
        Avater_B_BoarKing701000_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        arg0:SetEventFlag(12015132, true)
        arg0:SetEventFlag(12915132, true)
        arg0:SetEventFlag(12925132, true)
    end
    if arg2 == 2 then
        arg0:SetNumber(0, 200)
    end
    if arg2 == 3 then
        arg0:SetNumber(2, 0)
    end
    return 
end

function Avater_B_BoarKing701000Battle_Activate(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetDist(TARGET_LOCALPLAYER)
    local local4 = local3 - 1.5
    local local5 = arg0:IsSearchTarget(TARGET_ENE_0)
    if arg0:GetNumber(2) == 1 and not arg0:HasSpecialEffectId(TARGET_SELF, 5800) and not arg0:HasSpecialEffectId(TARGET_SELF, 5801) and not arg0:HasSpecialEffectId(TARGET_SELF, 5802) and not arg0:HasSpecialEffectId(TARGET_SELF, 5803) and not arg0:HasSpecialEffectId(TARGET_SELF, 5810) and not arg0:HasSpecialEffectId(TARGET_SELF, 5811) and not arg0:HasSpecialEffectId(TARGET_SELF, 5812) and arg0:HasSpecialEffectId(TARGET_SELF, 5813) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_LOCALPLAYER, DIST_None, 1.5, 30)
        arg1:AddSubGoal(GOAL_COMMON_If, 10, 3)
    end
    if arg0:GetEventRequest(1) == 100 then
        arg0:SetNumber(1, 100)
    else
        arg0:SetNumber(1, 0)
    end
    if local3 <= 0.1 then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_LOCALPLAYER, 1, TARGET_LOCALPLAYER, true, -1)
        elseif local0 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_LOCALPLAYER, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(20, 25), true, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_LOCALPLAYER, 1, TARGET_LOCALPLAYER, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_LOCALPLAYER, 0, 0, 0)
        end
    elseif local3 <= 0.4 then
        if local0 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_LOCALPLAYER, 1, TARGET_LOCALPLAYER, true, -1)
        elseif local0 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_LOCALPLAYER, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(20, 25), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_LOCALPLAYER, 0, 0, 0)
        end
    elseif not not arg0:HasSpecialEffectId(TARGET_SELF, 5800) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5801) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5802) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5803) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5810) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5811) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5812) or arg0:HasSpecialEffectId(TARGET_SELF, 5813) then
        if 0 < arg0:GetTimer(0) then
            Avater_B_BoarKing701000Battle(arg0, arg1)
        elseif local5 == true and arg0:GetNumber(2) ~= 1 then
            if arg0:GetNumber(0) ~= 200 then
                if local3 <= 7 then
                    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_LOCALPLAYER, local4, TARGET_SELF, true, -1)
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_LOCALPLAYER, DIST_None, 1.5, 30)
                else
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_LOCALPLAYER, DIST_None, 1.5, 30)
                end
                arg1:AddSubGoal(GOAL_COMMON_If, 10, 2)
            else
                Avater_B_BoarKing701000Battle(arg0, arg1)
            end
        elseif arg0:GetNumber(0) ~= 200 then
            if local3 <= 7 then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_LOCALPLAYER, local4, TARGET_SELF, true, -1)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_LOCALPLAYER, DIST_None, 1.5, 30)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_LOCALPLAYER, DIST_None, 1.5, 30)
            end
            arg1:AddSubGoal(GOAL_COMMON_If, 10, 2)
            arg0:SetTimer(1, 6)
        elseif 0 < arg0:GetTimer(1) then
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
        else
            BoarKing_Sleep(arg0, arg1, paramTbl)
        end
    elseif not not arg0:HasSpecialEffectId(TARGET_SELF, 5820) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5821) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5822) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5823) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5830) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5831) or not not arg0:HasSpecialEffectId(TARGET_SELF, 5832) or arg0:HasSpecialEffectId(TARGET_SELF, 5833) then
        if arg0:GetNumber(0) ~= 300 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_LOCALPLAYER, DIST_None, 1.5, 30)
            arg0:SetNumber(0, 300)
        else
            Avater_B_BoarKing701000_Act10(arg0, arg1, paramTbl)
        end
    else
        arg0:SetNumber(0, 0)
        if local5 == true and 0 < arg0:GetTimer(0) then
            Avater_B_BoarKing701000Battle(arg0, arg1)
        elseif 3.6 <= local3 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_LOCALPLAYER, 2.6, TARGET_SELF, true, -1)
        else
            Avater_B_BoarKing701000_Act15(arg0, arg1, paramTbl)
        end
    end
    return 
end

function Avater_B_BoarKing701000Battle(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetEventRequest(3) == 100 and 5 <= local5 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.5, 2.5), TARGET_NONE, 0, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif 8 <= local5 then
        local0[1] = 50
        local0[2] = 20
        local0[6] = 0
        local0[16] = 30
    elseif 4.9 <= local5 then
        local0[1] = 40
        local0[2] = 30
        local0[6] = 0
        local0[16] = 30
    elseif 2.5 <= local5 then
        local0[1] = 45
        local0[2] = 35
        local0[6] = 0
        local0[16] = 20
    elseif 1 <= local5 then
        local0[1] = 20
        local0[2] = 35
        local0[6] = 25
        local0[16] = 20
    else
        local0[1] = 10
        local0[2] = 20
        local0[6] = 50
        local0[16] = 20
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Avater_B_BoarKing701000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Avater_B_BoarKing701000_Act02)
    local1[6] = REGIST_FUNC(arg0, arg1, Avater_B_BoarKing701000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Avater_B_BoarKing701000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Avater_B_BoarKing701000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Avater_B_BoarKing701000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Avater_B_BoarKing701000_Act10)
    local1[15] = REGIST_FUNC(arg0, arg1, Avater_B_BoarKing701000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, Avater_B_BoarKing701000_Act16)
    local1[20] = REGIST_FUNC(arg0, arg1, Avater_B_BoarKing701000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Avater_B_BoarKing701000_ActAfter_AdjustSpace, atkAfterOddsTbl), local2)
    return 
end

local0 = 3.5 - local0
function Avater_B_BoarKing701000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        BoarKing_Approach_Act2(arg0, arg1, local2, UPVAL0 + 1000, 0, 3)
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
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.7 - local0
function Avater_B_BoarKing701000_Act02(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        BoarKing_Approach_Act2(arg0, arg1, local2, UPVAL0 + 1000, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 1, 30, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.2 - local0
function Avater_B_BoarKing701000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        BoarKing_Approach_Act2(arg0, arg1, local1, UPVAL0 + 1000, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Avater_B_BoarKing701000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        BoarKing_Approach_Act2(arg0, arg1, local1, 0 + 1000, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Avater_B_BoarKing701000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        BoarKing_Approach_Act2(arg0, arg1, local1, 0 + 1000, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Avater_B_BoarKing701000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        BoarKing_Approach_Act2(arg0, arg1, local1, 0 + 1000, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Avater_B_BoarKing701000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_LOCALPLAYER, DIST_None)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Avater_B_BoarKing701000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetEventRequest(3) == 100 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.5, 2.5), TARGET_NONE, 0, 0, 0)
    elseif local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.7, 1.3), TARGET_NONE, 0, 0, 0)
    else
        if 5 <= arg0:GetDist(TARGET_LOCALPLAYER) then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_LOCALPLAYER, arg0:GetRandam_Float(5, 5.5), TARGET_SELF, true, -1, GUARD_GOAL_DESIRE_RET_Success, true)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_LOCALPLAYER, arg0:GetRandam_Float(5, 5.5), TARGET_ENE_0, true, -1, GUARD_GOAL_DESIRE_RET_Success, true)
        end
        if local1 <= 70 and arg0:IsFinishTimer(2) == true then
            BoarKing_idling(arg0, arg1, arg2)
        end
        if arg0:GetRandam_Int(1, 100) <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.7, 1.3), TARGET_NONE, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4), TARGET_LOCALPLAYER, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Float(30, 50), true, true, -1)
        end
        if local1 <= 70 and arg0:IsFinishTimer(2) == true then
            BoarKing_idling(arg0, arg1, arg2)
        end
        if arg0:GetRandam_Int(1, 100) <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.7, 1.3), TARGET_NONE, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4), TARGET_LOCALPLAYER, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Float(30, 50), true, true, -1)
        end
        if local1 <= 70 and arg0:IsFinishTimer(2) == true then
            BoarKing_idling(arg0, arg1, arg2)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Avater_B_BoarKing701000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, 5.8, TARGET_ENE_0, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Avater_B_BoarKing701000_Act20(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.9, 604, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.9, 605, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BoarKing_Approach_Act2(arg0, arg1, arg2, arg3, arg4, arg5)
    if arg5 == nil then
        arg5 = 10
    end
    local local0 = true
    if arg0:GetNumber(1) == 100 then
        local0 = true
    elseif arg0:GetNumber(0) == 200 and arg2 + 1 < arg0:GetDist(TARGET_ENE_0) then
        local0 = false
    end
    local local1 = -1
    if arg0:GetRandam_Int(1, 100) <= arg4 then
        local1 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg5, TARGET_ENE_0, arg2, TARGET_SELF, local0, local1)
    return 
end

function BoarKing_Sleep(arg0, arg1, arg2)
    if arg0:GetNumber(2) ~= 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_LOCALPLAYER, DIST_None, 1.5, 30)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 100, 0)
        arg0:SetNumber(2, 1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3025, TARGET_LOCALPLAYER, DIST_None, 1.5, 30)
    end
    return 
end

function BoarKing_idling(arg0, arg1, arg2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_LOCALPLAYER, DIST_None, 1.5, 30)
        arg0:SetTimer(2, 7)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_LOCALPLAYER, DIST_None, 1.5, 30)
        arg0:SetTimer(2, 7)
    end
    return 
end

function Avater_B_BoarKing701000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Avater_B_BoarKing701000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 3
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(0, 1)
    local local6 = 0
    local local7 = 0
    local local8 = -1
    if arg0:GetNumber(0) == 0 or arg0:GetNumber(0) == 300 then
        local6 = arg0:GetRandam_Float(1.5, 2)
        local7 = arg0:GetRandam_Float(1, 1.5)
        local8 = -1
    elseif arg0:GetNumber(0) == 200 then
        local6 = arg0:GetRandam_Float(2.5, 3.5)
        local7 = arg0:GetRandam_Float(2, 3)
        local8 = 9910
    else
        local6 = arg0:GetRandam_Float(2, 2.5)
        local7 = arg0:GetRandam_Float(2, 2.5)
        local8 = 9910
    end
    if local3 <= 1.8 then
        if local4 <= 10 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg0:GetRandam_Float(7, 8.5), TARGET_SELF, true, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local6, TARGET_ENE_0, 3, TARGET_ENE_0, true, local8)
        end
    elseif local3 <= 2.8 then
        if local4 <= 10 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg0:GetRandam_Float(8, 9.5), TARGET_SELF, true, -1)
            end
        elseif local4 <= 20 and arg0:IsFinishTimer(2) == true then
            BoarKing_idling(arg0, arg1, paramTbl)
        elseif local4 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local6, TARGET_ENE_0, 3, TARGET_ENE_0, true, local8)
        elseif local4 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 10, TARGET_ENE_0, true, 9910, GUARD_GOAL_DESIRE_RET_Success, true)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local7, TARGET_ENE_0, local5, arg0:GetRandam_Int(120, 120), true, true, local8)
        end
    elseif local3 <= 5 then
        if local4 <= 20 and arg0:IsFinishTimer(2) == true then
            BoarKing_idling(arg0, arg1, paramTbl)
        elseif local4 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local6, TARGET_ENE_0, 6, TARGET_ENE_0, true, local8)
        elseif local4 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 10, TARGET_ENE_0, true, 9910, GUARD_GOAL_DESIRE_RET_Success, true)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local7, TARGET_ENE_0, local5, arg0:GetRandam_Int(120, 120), true, true, local8)
        end
    elseif local3 <= 6.5 then
        if local4 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 10, TARGET_ENE_0, true, 9910, GUARD_GOAL_DESIRE_RET_Success, true)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local7, TARGET_ENE_0, local5, arg0:GetRandam_Int(120, 120), true, true, local8)
        elseif local4 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, true, local8)
        end
    elseif local3 <= 10 then
        if local4 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 10, TARGET_ENE_0, true, 9910, GUARD_GOAL_DESIRE_RET_Success, true)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local7, TARGET_ENE_0, local5, arg0:GetRandam_Int(120, 120), true, true, local8)
        elseif local4 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 6.5, TARGET_SELF, true, local8)
        end
    elseif local4 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8, TARGET_SELF, false, local8)
    end
    return 
end

function Avater_B_BoarKing701000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Avater_B_BoarKing701000Battle_Terminate(arg0, arg1)
    return 
end

function Avater_B_BoarKing701000Battle_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_Damaged) and arg0:GetDist(TARGET_ENE_0) < 20 and arg0:GetRandam_Int(1, 100) <= 100 then
        arg1:ClearSubGoal()
        arg0:SetTimer(0, 15)
        arg0:SetNumber(2, 0)
        arg0:Replaning()
        return true
    else
        return false
    end
end

return 
