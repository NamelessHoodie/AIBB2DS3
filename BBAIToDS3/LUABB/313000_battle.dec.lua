local local0 = 0.7
local local1 = 1.6 - local0
local local2 = 6.3 - local0
local local3 = 1.6 - local0
local local4 = 5.8 - local0
local local5 = 1.6 - local0
local local6 = 6.1 - local0
local local7 = 1.6 - local0
local local8 = 7 - local0
local local9 = 3.2 - local0
local local10 = 1.6 - local0
local local11 = 6.8 - local0
local local12 = 1.6 - local0
local local13 = 3.3 - local0
local local14 = 1.6 - local0
local local15 = 3.4 - local0
function OnIf_313000(arg0, arg1, arg2)
    if arg2 == 0 then
        FleshGolem_Sword313000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local9
function FleshGolem_Sword313000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = 0
    if arg0:GetNumber(0) ~= 2 and arg0:HasSpecialEffectId(TARGET_SELF, 5665) == true then
        arg0:SetNumber(0, 2)
        arg1:ClearSubGoal()
        arg0:Replaning()
    end
    if arg0:IsFinishTimer(0) == false then
        local6 = 0
    else
        local6 = 1
    end
    if arg0:GetEventRequest(0) == 1 then
        local0[10] = 100
    elseif arg0:GetNumber(0) == 1 then
        local0[9] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:GetNumber(0) == 0 then
        if local4 <= 30 and arg0:IsFinishTimer(1) == true and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 20) == false and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) == true and local3 <= UPVAL0 then
            local0[5] = 100
        elseif 10 <= local3 then
            local0[1] = 10
            local0[2] = 0
            local0[3] = 35
            local0[6] = 25
            local0[7] = 0 * local6
            local0[8] = 0 * local6
            local0[11] = 30
        elseif 5 <= local3 then
            local0[1] = 20
            local0[2] = 0
            local0[3] = 45
            local0[6] = 35
            local0[7] = 0 * local6
            local0[8] = 0 * local6
            local0[11] = 0
        elseif 2 <= local3 then
            local0[1] = 60
            local0[2] = 0
            local0[3] = 20
            local0[6] = 20
            local0[7] = 0 * local6
            local0[8] = 0 * local6
            local0[11] = 0
        else
            local0[1] = 20
            local0[2] = 40
            local0[3] = 0
            local0[6] = 0
            local0[7] = 20 * local6
            local0[8] = 20 * local6
            local0[11] = 0
        end
    elseif local4 <= 60 and arg0:IsFinishTimer(1) == true and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 20) == false and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) == true and local3 <= UPVAL0 then
        local0[5] = 100
    elseif 10 <= local3 then
        local0[1] = 10
        local0[2] = 0
        local0[3] = 30
        local0[4] = 20
        local0[6] = 10
        local0[7] = 0 * local6
        local0[8] = 0 * local6
        local0[9] = 0
        local0[11] = 30
    elseif 5 <= local3 then
        local0[1] = 20
        local0[2] = 0
        local0[3] = 30
        local0[4] = 20
        local0[6] = 30
        local0[7] = 0 * local6
        local0[8] = 0 * local6
        local0[9] = 0
        local0[11] = 0
    elseif 2 <= local3 then
        local0[1] = 45
        local0[2] = 0
        local0[3] = 25
        local0[4] = 0
        local0[6] = 25
        local0[7] = 0 * local6
        local0[8] = 0 * local6
        local0[9] = 5
        local0[11] = 0
    else
        local0[1] = 20
        local0[2] = 35
        local0[3] = 0
        local0[4] = 0
        local0[6] = 0
        local0[7] = 20 * local6
        local0[8] = 20 * local6
        local0[9] = 5
        local0[11] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, FleshGolem_Sword313000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, FleshGolem_Sword313000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, FleshGolem_Sword313000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, FleshGolem_Sword313000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, FleshGolem_Sword313000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, FleshGolem_Sword313000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, FleshGolem_Sword313000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, FleshGolem_Sword313000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, FleshGolem_Sword313000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, FleshGolem_Sword313000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, FleshGolem_Sword313000_Act11)
    local1[20] = REGIST_FUNC(arg0, arg1, FleshGolem_Sword313000_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, FleshGolem_Sword313000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, FleshGolem_Sword313000_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, FleshGolem_Sword313000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 5.2 - local0
local0 = 1.6 - local0
local0 = local2
local0 = local4
local0 = local6
local0 = local8
local0 = local11
function FleshGolem_Sword313000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 10
    local local6 = UPVAL2 + 10
    local local7 = UPVAL3 + 10
    local local8 = UPVAL4 + 10
    local local9 = UPVAL5 + 10
    local local10 = UPVAL6 + 10
    local local11 = 0
    local local12 = 0
    local local13 = 0
    local local14 = 0
    local local15 = 0
    local local16 = 0
    local local17 = 0
    local local18 = 0
    local local19 = 0
    local local20 = 0
    local local21 = 0
    if arg0:GetNumber(0) == 0 then
        local11 = 0
        local12 = 25
        local13 = 35
        local14 = 35
        local15 = 0
        local16 = 0
    else
        local11 = 0
        local12 = 10
        local13 = 20
        local14 = 20
        local15 = 20
        local16 = 10
    end
    if arg0:GetNumber(0) == 0 then
        local17 = 70
        local18 = 30
        local19 = 70
        local20 = 0
        local21 = 30
    else
        local17 = 0
        local18 = 100
        local19 = 0
        local20 = 70
        local21 = 30
    end
    if arg0:GetRandam_Int(1, 100) <= 60 then
        local3 = local3 + arg0:GetRandam_Int(3, 5)
    end
    Approach_Act(arg0, arg1, local3, UPVAL0 + 999, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5717) == true then
        if local1 <= local11 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, local5, 0, -1)
        elseif local1 <= local11 + local12 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, local5, 0, -1)
            if local2 <= local17 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local6, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local9, 0)
            end
        elseif local1 <= local11 + local12 + local13 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, local5, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, local6, 0)
            if local2 <= local19 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local7, 0)
            elseif local2 <= local19 + local20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local8, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3034, TARGET_ENE_0, local10, 0)
            end
        elseif local1 <= local11 + local12 + local13 + local14 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, local5, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, local6, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, local7, 0)
            if local2 <= local17 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local6, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local9, 0)
            end
        elseif local1 <= local11 + local12 + local13 + local14 + local15 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, local5, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, local6, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, local7, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, local6, 0)
            if local2 <= local19 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local7, 0)
            elseif local2 <= local19 + local20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local8, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3034, TARGET_ENE_0, local10, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, local5, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, local6, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, local7, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, local6, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, local7, 0)
            if local2 <= local17 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local6, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local9, 0)
            end
        end
    elseif local1 <= local11 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
    elseif local1 <= local11 + local12 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
        if local2 <= local17 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local6, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local9, 0)
        end
    elseif local1 <= local11 + local12 + local13 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local6, 0)
        if local2 <= local19 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local7, 0)
        elseif local2 <= local19 + local20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local8, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local10, 0)
        end
    elseif local1 <= local11 + local12 + local13 + local14 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local7, 0)
        if local2 <= local17 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local6, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local9, 0)
        end
    elseif local1 <= local11 + local12 + local13 + local14 + local15 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local7, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local6, 0)
        if local2 <= local19 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local7, 0)
        elseif local2 <= local19 + local20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local8, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local10, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local7, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local7, 0)
        if local2 <= local17 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local6, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local9, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.2 - local0
local0 = 1.6 - local0
local0 = local2
local0 = local4
local0 = local6
local0 = local8
local0 = local11
function FleshGolem_Sword313000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 20
    local local6 = UPVAL2 + 10
    local local7 = UPVAL3 + 10
    local local8 = UPVAL4 + 10
    local local9 = UPVAL5 + 10
    local local10 = UPVAL6 + 10
    local local11 = 0
    local local12 = 0
    local local13 = 0
    local local14 = 0
    local local15 = 0
    local local16 = 0
    local local17 = 0
    local local18 = 0
    local local19 = 0
    local local20 = 0
    local local21 = 0
    if arg0:GetNumber(0) == 0 then
        local11 = 0
        local12 = 20
        local13 = 40
        local14 = 40
        local15 = 0
        local16 = 0
    else
        local11 = 0
        local12 = 10
        local13 = 20
        local14 = 20
        local15 = 20
        local16 = 20
    end
    if arg0:GetNumber(0) == 0 then
        local17 = 70
        local18 = 30
        local19 = 70
        local20 = 0
        local21 = 30
    else
        local17 = 0
        local18 = 100
        local19 = 0
        local20 = 70
        local21 = 30
    end
    if arg0:GetRandam_Int(1, 100) <= 60 then
        local3 = local3 + arg0:GetRandam_Int(3, 5)
    end
    Approach_Act(arg0, arg1, local3, UPVAL0 + 999, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5717) == true then
        if local1 <= local11 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, local5, 0, -1)
        elseif local1 <= local11 + local12 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3033, TARGET_ENE_0, local5, 0, -1)
            if local2 <= local17 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local6, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local9, 0)
            end
        elseif local1 <= local11 + local12 + local13 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3033, TARGET_ENE_0, local5, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, local6, 0)
            if local2 <= local19 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local7, 0)
            elseif local2 <= local19 + local20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local8, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3034, TARGET_ENE_0, local10, 0)
            end
        elseif local1 <= local11 + local12 + local13 + local14 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3033, TARGET_ENE_0, local5, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, local6, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, local7, 0)
            if local2 <= local17 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local6, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local9, 0)
            end
        elseif local1 <= local11 + local12 + local13 + local14 + local15 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3033, TARGET_ENE_0, local5, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, local6, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, local7, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, local6, 0)
            if local2 <= local19 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local7, 0)
            elseif local2 <= local19 + local20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local8, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3034, TARGET_ENE_0, local10, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3033, TARGET_ENE_0, local5, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, local6, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, local7, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, local6, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, local7, 0)
            if local2 <= local17 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local6, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local9, 0)
            end
        end
    elseif local1 <= local11 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local5, 0, -1)
    elseif local1 <= local11 + local12 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local5, 0, -1)
        if local2 <= local17 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local6, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local9, 0)
        end
    elseif local1 <= local11 + local12 + local13 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local6, 0)
        if local2 <= local19 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local7, 0)
        elseif local2 <= local19 + local20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local8, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local10, 0)
        end
    elseif local1 <= local11 + local12 + local13 + local14 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local7, 0)
        if local2 <= local17 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local6, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local9, 0)
        end
    elseif local1 <= local11 + local12 + local13 + local14 + local15 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local7, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local6, 0)
        if local2 <= local19 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local7, 0)
        elseif local2 <= local19 + local20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local8, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local10, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local7, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local7, 0)
        if local2 <= local17 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local6, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local9, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.9 - local0
local0 = 1.6 - local0
local0 = local4
local0 = local6
local0 = local8
local0 = local11
function FleshGolem_Sword313000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 10
    local local6 = UPVAL2 + 10
    local local7 = UPVAL3 + 10
    local local8 = UPVAL4 + 10
    local local9 = UPVAL5 + 10
    local local10 = 0
    local local11 = 0
    local local12 = 0
    local local13 = 0
    local local14 = 0
    local local15 = 0
    local local16 = 0
    local local17 = 0
    local local18 = 0
    local local19 = 0
    local local20 = 0
    local local21 = 0
    local local22 = 0
    if arg0:GetNumber(0) == 0 then
        local10 = 0
        local11 = 20
        local12 = 40
        local13 = 40
        local14 = 0
        local15 = 0
    else
        local10 = 0
        local11 = 10
        local12 = 20
        local13 = 20
        local14 = 20
        local15 = 20
    end
    if arg0:GetNumber(0) == 0 then
        local16 = 70
        local17 = 30
        local18 = 70
        local19 = 0
        local20 = 30
    else
        local16 = 0
        local17 = 100
        local18 = 0
        local19 = 70
        local20 = 30
    end
    if arg0:GetNumber(0) == 0 then
        local21 = 100
        local22 = 0
    else
        local21 = 0
        local22 = 100
    end
    if arg0:GetRandam_Int(1, 100) <= 60 then
        local3 = local3 + arg0:GetRandam_Int(3, 5)
    end
    Approach_Act(arg0, arg1, local3, UPVAL0 + 999, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5717) == true then
        if local1 <= local10 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, local5, 0, -1)
        elseif local1 <= local10 + local11 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, local5, 0, -1)
            if local2 <= local21 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local6, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local7, 0)
            end
        elseif local1 <= local10 + local11 + local12 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, local5, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, local6, 0)
            if local2 <= local16 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, AttDist1, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local8, 0)
            end
        elseif local1 <= local10 + local11 + local12 + local13 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, local5, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, local6, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, AttDist1, 0)
            if local2 <= local18 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local6, 0)
            elseif local2 <= local18 + local19 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local7, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3034, TARGET_ENE_0, local9, 0)
            end
        elseif local1 <= local10 + local11 + local12 + local13 + local14 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, local5, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, local6, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, AttDist1, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, local6, 0)
            if local2 <= local16 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, AttDist1, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local8, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, local5, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, local6, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, AttDist1, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, local6, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, AttDist1, 0)
            if local2 <= local18 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local6, 0)
            elseif local2 <= local18 + local19 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local7, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3034, TARGET_ENE_0, local9, 0)
            end
        end
    elseif local1 <= local10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local5, 0, -1)
    elseif local1 <= local10 + local11 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local5, 0, -1)
        if local2 <= local21 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local6, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local7, 0)
        end
    elseif local1 <= local10 + local11 + local12 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local6, 0)
        if local2 <= local16 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, AttDist1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local8, 0)
        end
    elseif local1 <= local10 + local11 + local12 + local13 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AttDist1, 0)
        if local2 <= local18 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local6, 0)
        elseif local2 <= local18 + local19 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local7, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local9, 0)
        end
    elseif local1 <= local10 + local11 + local12 + local13 + local14 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AttDist1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local6, 0)
        if local2 <= local16 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, AttDist1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local8, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AttDist1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, AttDist1, 0)
        if local2 <= local18 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local6, 0)
        elseif local2 <= local18 + local19 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local7, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local9, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 10.1 - local0
local0 = 1.6 - local0
function FleshGolem_Sword313000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5717) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, local3, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local3, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local9
local0 = 1.6 - local0
function FleshGolem_Sword313000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 999
    local local5 = UPVAL0 + 1
    local local6 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5717) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, local5, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local5, 0, -1)
    end
    arg0:SetTimer(1, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.6 - local0
local0 = 1.6 - local0
function FleshGolem_Sword313000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    local local4 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 999, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5717) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, local3, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, local3, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.1 - local0
local0 = 1.6 - local0
function FleshGolem_Sword313000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(0, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
local0 = 1.6 - local0
function FleshGolem_Sword313000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(0, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 999 - local0
local0 = 1.6 - local0
function FleshGolem_Sword313000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_NONE, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FleshGolem_Sword313000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3015, TARGET_ENE_0, 100, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 16.6 - local0
local0 = 9.7 - local0
function FleshGolem_Sword313000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5717) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, local3, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, local3, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FleshGolem_Sword313000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5717) == true then
        if local0 <= 3.5 then
            if arg0:GetNumber(0) == 2 then
                if local1 <= 40 and arg0:IsFinishTimer(2) == true then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_NONE, AttDist, 0, -1)
                    arg0:SetTimer(2, 15)
                elseif local1 <= 70 then
                    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3037, TARGET_ENE_0, AttDist, 0, -1)
                    else
                        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, AttDist, 0, -1)
                    end
                else
                    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 50, 0, 0)
                end
            elseif local1 <= 70 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3037, TARGET_ENE_0, AttDist, 0, -1)
                else
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, AttDist, 0, -1)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 50, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 50, 0, 0)
        end
    elseif local0 <= 3.5 then
        if arg0:GetNumber(0) == 2 then
            if local1 <= 40 and arg0:IsFinishTimer(2) == true then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_NONE, AttDist, 0, -1)
                arg0:SetTimer(2, 15)
            elseif local1 <= 70 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, AttDist, 0, -1)
                else
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, AttDist, 0, -1)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 50, 0, 0)
            end
        elseif local1 <= 50 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, AttDist, 0, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, AttDist, 0, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 50, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 50, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FleshGolem_Sword313000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FleshGolem_Sword313000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FleshGolem_Sword313000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(1.5, 2.5)
    local local5 = arg0:GetRandam_Float(1.5, 2.5)
    local local6 = 0
    if arg0:GetNumber(0) == 2 then
        if local0 <= 4.5 and arg0:IsFinishTimer(0) == true and local1 <= 30 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 90)
                arg0:SetTimer(0, 10)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
                arg0:SetTimer(0, 10)
            end
        end
    elseif local0 <= 2 then
        if local1 <= 30 and arg0:IsFinishTimer(0) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 90)
                arg0:SetTimer(0, 10)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
                arg0:SetTimer(0, 10)
            end
        end
    elseif local0 <= 5.5 then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
    end
    return 
end

function FleshGolem_Sword313000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function FleshGolem_Sword313000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function FleshGolem_Sword313000Battle_Terminate(arg0, arg1)
    return 
end

function FleshGolem_Sword313000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetHpRate(TARGET_SELF) <= 0.5 and arg0:GetNumber(0) == 0 then
        arg0:SetNumber(0, 1)
        arg1:ClearSubGoal()
        arg0:Replaning()
        return true
    end
    local local4 = 0
    if arg0:GetNumber(0) == 2 then
        local4 = 60
    else
        local4 = 30
    end
    if UseItem_Act(arg0, arg1, 15, local4) then
        arg1:ClearSubGoal()
        if local3 <= 9 then
            FleshGolem_Sword313000_Act11(arg0, arg1, paramTbl)
        elseif local3 <= 4 then
            if arg0:GetNumber(0) == 2 then
                FleshGolem_Sword313000_Act06(arg0, arg1, paramTbl)
            else
                FleshGolem_Sword313000_Act08(arg0, arg1, paramTbl)
            end
        elseif arg0:GetNumber(0) == 2 then
            FleshGolem_Sword313000_Act04(arg0, arg1, paramTbl)
        else
            FleshGolem_Sword313000_Act06(arg0, arg1, paramTbl)
        end
        return true
    else
        return false
    end
end

return 
