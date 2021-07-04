local local0 = 0.6
local local1 = 1 - local0
local local2 = 3.4 - local0
local local3 = 6 - local0
local local4 = 10.2 - local0
local local5 = 1 - local0
local local6 = 3.6 - local0
local local7 = 1 - local0
local local8 = 5.1 - local0
local local9 = 1 - local0
local local10 = 1 - local0
local local11 = 2.9 - local0
local local12 = 1 - local0
local local13 = 5.1 - local0
local local14 = 1 - local0
local local15 = 5.1 - local0
local local16 = 1 - local0
local local17 = 1 - local0
function OnIf_116000(arg0, arg1, arg2)
    if arg2 == 0 then
        DemonDog116000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DemonDog116000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = 1
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:IsFinishTimer(1) == false then
        local5 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5410) == true then
        local0[21] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 220) and arg0:GetRandam_Int(1, 100) <= 90 then
        local0[20] = 100
    elseif 9 <= local3 then
        local0[1] = 40
        local0[2] = 30
        local0[6] = 0
        local0[8] = 20
        if arg0:GetNumber(0) == 0 then
            local0[1] = 0
            local0[2] = 45
            local0[6] = 10
            local0[8] = 45
        end
    elseif 4.5 <= local3 then
        local0[1] = 25
        local0[2] = 30
        local0[5] = 10 * local5
        local0[6] = 15
        local0[8] = 20
        if arg0:GetNumber(0) == 0 then
            local0[1] = 0
            local0[2] = 40
            local0[5] = 10 * local5
            local0[6] = 10
            local0[8] = 40
        end
    elseif 2 <= local3 then
        local0[1] = 40
        local0[4] = 10
        local0[5] = 15 * local5
        local0[6] = 25
        local0[7] = 10
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and (not not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 100) or arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 100)) then
            local0[1] = 10
            local0[4] = 10
            local0[5] = 40 * local5
            local0[6] = 15
            local0[7] = 25
        end
    else
        local0[1] = 50
        local0[4] = 20
        local0[5] = 15 * local5
        local0[7] = 10
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and (not not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 100) or arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 100)) then
            local0[1] = 15
            local0[4] = 10
            local0[5] = 40 * local5
            local0[7] = 35
        end
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DemonDog116000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DemonDog116000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DemonDog116000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DemonDog116000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DemonDog116000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DemonDog116000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DemonDog116000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DemonDog116000_Act08)
    local1[20] = REGIST_FUNC(arg0, arg1, DemonDog116000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, DemonDog116000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, DemonDog116000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, DemonDog116000_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DemonDog116000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local4
local0 = local6
local0 = local8
local0 = local13
function DemonDog116000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL2 + 1
    local local4 = UPVAL3 + 1
    local local5 = UPVAL4 + 1
    local local6 = UPVAL1
    if local6 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local6, TARGET_ENE_0, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL1 + 1, 0)
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local3, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local4, 0, 0)
        end
        if local2 <= 50 then
            if 50 <= local0 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local3, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local4, 0, 0)
            end
        end
        if local1 <= 33 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
        elseif local1 <= 66 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local5, 0)
            arg0:SetTimer(1, 10)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local4, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, UPVAL0, TARGET_ENE_0, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0)
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local3, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local4, 0, 0)
        end
        if local2 <= 50 then
            if 50 <= local0 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local3, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local4, 0, 0)
            end
        end
        if local1 <= 33 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
        elseif local0 <= 66 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local5, 0)
            arg0:SetTimer(1, 10)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local4, 0)
        end
    end
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
local0 = local8
local0 = 8.2 - local0
local0 = local13
function DemonDog116000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = UPVAL0 + 1
    local local7 = UPVAL1 + 1
    local local8 = UPVAL2 + 1
    local local9 = UPVAL3 + 1
    local local10 = UPVAL2
    local local11 = false
    if arg0:GetNumber(0) == 0 then
        local11 = true
    end
    if arg0:IsFinishTimer(2) == true then
        if local0 <= local10 then
            if local1 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, 0)
                arg0:SetTimer(2, 10)
                GetWellSpace_Odds = 0
            else
                if local2 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local8, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local8, 0, 0)
                end
                if local3 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local6, 0, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local7, 0, 0)
                end
                if local4 <= 50 then
                    if 50 <= local1 then
                        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local6, 0, 0)
                    else
                        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local7, 0, 0)
                    end
                end
                if local5 <= 33 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local6, 0)
                elseif local1 <= 66 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local9, 0)
                    arg0:SetTimer(1, 10)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local7, 0)
                end
                GetWellSpace_Odds = 100
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 6, TARGET_SELF, local11, -1)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, 0)
            arg0:SetTimer(2, 10)
            GetWellSpace_Odds = 0
        end
    else
        if local0 <= local10 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, local10, TARGET_SELF, local11, -1)
        end
        if local2 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local8, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local8, 0, 0)
        end
        if local3 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local6, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local7, 0, 0)
        end
        if local4 <= 50 then
            if 50 <= local1 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local6, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local7, 0, 0)
            end
        end
        if local5 <= 33 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local6, 0)
        elseif local1 <= 66 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local9, 0)
            arg0:SetTimer(1, 10)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local7, 0)
        end
        GetWellSpace_Odds = 100
    end
    arg0:SetNumber(0, 1)
    return GetWellSpace_Odds
end

local0 = local11
function DemonDog116000_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNumber(0) == 0 then
        local2 = 9999
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local0, 0)
        arg0:SetTimer(1, 10)
    end
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
function DemonDog116000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNumber(0) == 0 then
        local2 = 9999
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetTimer(1, 10)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local15
function DemonDog116000_Act06(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNumber(0) == 0 then
        local2 = 9999
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local0, 0)
        arg0:SetTimer(1, 10)
    end
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2 - local0
function DemonDog116000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNumber(0) == 0 then
        local2 = 9999
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.3 - local0
local0 = local6
local0 = local8
local0 = local13
function DemonDog116000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL2
    local local4 = UPVAL0
    local local5 = 0
    if arg0:GetNumber(0) == 0 then
        local5 = 9999
    end
    if local4 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local4, local5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0, 0)
    if local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local3, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        if 50 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local2, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local3, 0, 0)
        end
    end
    if local1 <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2, 0)
    elseif local1 <= 66 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, UPVAL3, 0)
        arg0:SetTimer(1, 10)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3, 0)
    end
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DemonDog116000_Act20(arg0, arg1, arg2)
    arg0:SetNumber(0, 1)
    if 3.5 <= arg0:GetDist(TARGET_ENE_0) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 10, TARGET_NONE, false, -1)
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 10, TARGET_NONE, false, -1)
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
function DemonDog116000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 15
    local local4 = UPVAL0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        if local0 < local4 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 0, 0, 0)
        elseif local0 < local3 then
            if arg0:GetRandam_Int(1, 100) <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local4, TARGET_SELF, true, -1)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 0, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local4, TARGET_SELF, true, -1)
            end
            arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, local4)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, local3, TARGET_SELF, true, -1, GUARD_GOAL_DESIRE_RET_Continue, true)
            arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, local3)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3600, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DemonDog116000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DemonDog116000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DemonDog116000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DemonDog116000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= 3 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
            end
        end
    elseif local0 <= 6 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) and local1 <= 60 then
            if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_F, 6, 5) == true then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 10, TARGET_NONE, false, -1)
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 60, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
            end
        end
    elseif local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function DemonDog116000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DemonDog116000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local11
local0 = local8
local0 = local4
local0 = local15
function DemonDog116000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInterupt(INTERUPT_Damaged) and local0 <= 45 then
        arg1:ClearSubGoal()
        if not not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 4) or arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and local0 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 10, TARGET_NONE, false, -1)
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 60, 0, 0)
        elseif arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_F, 6, 5) == true then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 2, TARGET_SELF, AI_DIR_TYPE_F, 1, TARGET_NONE, false)
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 60, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
        end
        return true
    elseif arg0:IsInterupt(INTERUPT_MissSwingSelf) and local0 <= 60 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_ENE_0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL1 + 1, 0, 0)
        return true
    elseif arg0:IsInterupt(INTERUPT_UseItem) and local0 <= 70 then
        arg1:ClearSubGoal()
        Approach_Act(arg0, arg1, UPVAL2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
        return true
    elseif arg0:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg0:IsInsideObserve(0) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(0)
            arg0:Replaning()
            return true
        end
        arg0:Replaning()
    else
        local local4 = arg0:GetRandam_Int(1, 100)
        local local5 = arg0:GetRandam_Int(1, 100)
        local local6 = arg0:GetDist(TARGET_ENE_0)
        local local7 = Shoot_2dist(arg0, arg1, 5, 20, 50, 80)
        if local7 == 1 then
            local local8 = UPVAL3 + 1
            if local5 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, local8, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, local8, 0, 0)
            end
        elseif local7 == 2 then
            local local8 = UPVAL2 + 1
            local local9 = UPVAL2
            if local5 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, local9, TARGET_SELF, false, -1)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local8, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, local9, TARGET_SELF, false, -1)
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local8, 0, 0)
            end
            return true
        end
        if RebByOpGuard_Step(arg0, arg1, 80, 70, 15, 15, 4) then
            return true
        else
            return false
        end
    end
end

return 
