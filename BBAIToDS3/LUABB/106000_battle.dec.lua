local local0 = 0.4
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 20.4 - local0
local local6 = 0 - local0
local local7 = 0 - local0
local local8 = 0 - local0
local local9 = 30 - local0
local local10 = 0 - local0
local local11 = 0 - local0
function OnIf_106000(arg0, arg1, arg2)
    if arg2 == 0 then
        BrainEater106000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function BrainEater106000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetEventRequest(1)
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = 1
    local local8 = 1
    local local9 = arg0:GetTimer(0)
    local local10 = 1
    if arg0:IsFinishTimer(1) == false then
        local7 = 0
    else
        local7 = 1
    end
    if arg0:IsFinishTimer(2) == false then
        local8 = 0
    else
        local8 = 1
    end
    if 106010 <= arg0:GetNpcThinkParamID() and arg0:GetNpcThinkParamID() <= 106019 then
        if 6 <= local3 then
            local0[1] = 0
            local0[7] = 100
            local0[23] = 0
        elseif 3 <= local3 then
            local0[1] = 0
            local0[7] = 100
            local0[23] = 0
        elseif 1.5 <= local3 then
            local0[1] = 0
            local0[7] = 100
            local0[23] = 0
        else
            local0[1] = 70
            local0[7] = 10
            local0[23] = 20
        end
    elseif not (106020 > arg0:GetNpcThinkParamID() or arg0:GetNpcThinkParamID() > 106029) or arg0:GetNpcThinkParamID() == 106090 or arg0:GetNpcThinkParamID() == 106095 or arg0:GetNpcThinkParamID() == 106200 then
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 440) then
            if 11.6 <= local3 then
                local0[11] = 100
            elseif 2.8 <= local3 then
                local0[12] = 100
            else
                local0[10] = 100
            end
        elseif arg0:GetNumber(2) == 1 then
            local0[23] = 100
        elseif arg0:GetNpcThinkParamID() == 106095 and arg0:GetHpRate(TARGET_SELF) < 0.5 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) == false then
            local0[8] = 100
        elseif 11.6 <= local3 then
            local0[3] = 30
            local0[11] = 10
        elseif 2.6 <= local3 then
            local0[3] = 30
            local0[12] = 10
        else
            local0[1] = 10
            local0[2] = 10
            local0[4] = 60
            local0[10] = 20
            local0[5] = 20
        end
    elseif arg0:GetNumber(2) == 1 then
        local0[23] = 100
    elseif 6 <= local3 then
        local0[1] = 55
        local0[2] = 15
        local0[10] = 0
        local0[12] = 10
        local0[23] = 20
    elseif 3 <= local3 then
        local0[1] = 40
        local0[2] = 30
        local0[10] = 0
        local0[12] = 10
        local0[23] = 20
    elseif 1.5 <= local3 then
        local0[1] = 40
        local0[2] = 50
        local0[10] = 10
        local0[12] = 0
    else
        local0[1] = 30
        local0[2] = 60
        local0[10] = 10
        local0[12] = 0
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local0[5] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, BrainEater106000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, BrainEater106000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, BrainEater106000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, BrainEater106000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, BrainEater106000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, BrainEater106000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, BrainEater106000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, BrainEater106000_Act08)
    local1[10] = REGIST_FUNC(arg0, arg1, BrainEater106000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, BrainEater106000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, BrainEater106000_Act12)
    local1[20] = REGIST_FUNC(arg0, arg1, BrainEater106000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, BrainEater106000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, BrainEater106000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, BrainEater106000_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, BrainEater106000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.8 - local0
function BrainEater106000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0
    local local3 = 9999
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local2 = local2 + arg0:GetRandam_Float(1.5, 2.5)
    end
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5401) or arg0:GetNpcThinkParamID() == 106010 then
        local3 = 0
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local3, 0, 3)
    end
    if arg0:GetNpcThinkParamID() == 106030 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0)
    end
    if not (106020 > arg0:GetNpcThinkParamID() or arg0:GetNpcThinkParamID() > 106029) or arg0:GetNpcThinkParamID() == 106090 or arg0:GetNpcThinkParamID() == 106095 then
        GetWellSpace_Odds = 25
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = 1.8 - local0
function BrainEater106000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(1.5, 2.5)
    end
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5401) or arg0:GetNpcThinkParamID() == 106010 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, -1)
    if not (106020 > arg0:GetNpcThinkParamID() or arg0:GetNpcThinkParamID() > 106029) or arg0:GetNpcThinkParamID() == 106090 or arg0:GetNpcThinkParamID() == 106095 then
        GetWellSpace_Odds = 25
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local5
function BrainEater106000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetTimer(1, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.6 - local0
function BrainEater106000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetTimer(2, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.8 - local0
function BrainEater106000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(1.5, 2.5)
    end
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5401) or arg0:GetNpcThinkParamID() == 106010 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0, 0, -1)
    if not (106020 > arg0:GetNpcThinkParamID() or arg0:GetNpcThinkParamID() > 106029) or arg0:GetNpcThinkParamID() == 106090 or arg0:GetNpcThinkParamID() == 106095 then
        GetWellSpace_Odds = 25
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

function BrainEater106000_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, AttDist, 0, -1)
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BrainEater106000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    local local3 = 9999
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 2.5), TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local5
function BrainEater106000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetTimer(1, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.8 - local0
function BrainEater106000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    arg0:SetNumber(0, 1)
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

local0 = 11.6 - local0
function BrainEater106000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    arg0:SetNumber(0, 1)
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

local0 = 4 - local0
function BrainEater106000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    arg0:SetNumber(0, 1)
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

function BrainEater106000_Act20(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, DIST_None, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, DIST_None, 0, -1)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, DIST_None, 0, -1)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BrainEater106000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BrainEater106000_Act22(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, 11.6, 9999, 0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BrainEater106000_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 1
    arg0:SetNumber(2, 0)
    if arg0:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, local1) then
        if arg0:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, local1) then
            if arg0:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, local1) then
                if local0 <= 3 then
                    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(15, 30), true, true, -1)
                end
            elseif local0 <= 3 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 1, arg0:GetRandam_Int(15, 30), true, true, -1)
            end
        elseif arg0:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, local1) then
            if local0 <= 3 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 0, arg0:GetRandam_Int(15, 30), true, true, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
        end
    elseif arg0:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, local1) then
        if arg0:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, local1) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(15, 30), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 1, arg0:GetRandam_Int(15, 30), true, true, -1)
        end
    elseif arg0:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, local1) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 0, arg0:GetRandam_Int(15, 30), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BrainEater106000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function BrainEater106000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 3.5)
    local local4 = arg0:GetRandam_Float(2, 3)
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 440) then
        if local0 <= 1.8 then
            if local1 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
            elseif local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
            end
        elseif local0 <= 2.8 then
            if local1 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
            elseif local1 <= 90 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
            end
        elseif local0 <= 7 and local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    end
    return 
end

function BrainEater106000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function BrainEater106000Battle_Terminate(arg0, arg1)
    return 
end

function BrainEater106000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = 0
    local local5 = 0
    local local6 = 0
    local local7 = 0
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return 
    end
end

return 
