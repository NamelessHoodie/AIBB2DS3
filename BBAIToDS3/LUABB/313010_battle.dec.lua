local local0 = 0.7
local local1 = 7.1 - local0
local local2 = 23.4 - local0
local local3 = 9.3 - local0
local local4 = 31.3 - local0
local local5 = 9.3 - local0
local local6 = 31.3 - local0
local local7 = 1.3 - local0
local local8 = 4.9 - local0
local local9 = 1.3 - local0
local local10 = 4.3 - local0
local local11 = 1.3 - local0
local local12 = 4.9 - local0
local local13 = 5.5 - local0
function OnIf_313010(arg0, arg1, arg2)
    if arg2 == 0 then
        FleshGolem_Cannon313010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local13
function FleshGolem_Cannon313010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local5 = 0
    local local6 = 0
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5540)
    arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5541)
    if arg0:GetNumber(0) ~= 2 and arg0:HasSpecialEffectId(TARGET_SELF, 5665) == true then
        arg0:SetNumber(0, 2)
        arg1:ClearSubGoal()
        arg0:Replaning()
    end
    if arg0:IsFinishTimer(0) == false then
        local5 = 0
    else
        local5 = 1
    end
    if arg0:IsFinishTimer(1) == false then
        local6 = 0
    else
        local6 = 1
    end
    if arg0:GetEventRequest(0) == 1 then
        local0[12] = 100
    elseif arg0:GetNumber(0) == 1 then
        local0[11] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    elseif local4 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local4 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif 10 <= local3 and 5 <= arg0:GetDistYSigned(TARGET_ENE_0) then
        local0[14] = 100
    elseif arg0:GetNumber(0) == 0 then
        if 15 <= local3 then
            local0[1] = 100
            local0[2] = 0
            local0[6] = 0
            local0[9] = 0 * local5
            local0[10] = 0 * local5
            local0[13] = 0
        elseif 10 <= local3 then
            local0[1] = 0
            local0[2] = 100
            local0[6] = 0
            local0[9] = 0 * local5
            local0[10] = 0 * local5
            local0[13] = 0
        elseif 8 <= local3 then
            local0[1] = 0
            local0[2] = 55
            local0[6] = 25
            local0[9] = 5 * local5
            local0[10] = 5 * local5
            local0[13] = 10
        elseif 2.5 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[6] = 40
            local0[9] = 15 * local5
            local0[10] = 15 * local5
            local0[13] = 30
        else
            local0[1] = 0
            local0[2] = 0
            local0[6] = 30
            local0[9] = 30 * local5
            local0[10] = 30 * local5
            local0[13] = 10
        end
    elseif arg0:GetRandam_Int(1, 100) <= 40 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) == true and local3 <= UPVAL0 then
        local0[8] = 100
    elseif 15 <= local3 then
        local0[1] = 100
        local0[2] = 0
        local0[3] = 0 * local6
        local0[7] = 0
        local0[9] = 0 * local5
        local0[10] = 0 * local5
        local0[11] = 0
        local0[13] = 0
    elseif 10 <= local3 then
        local0[1] = 0
        local0[2] = 100
        local0[3] = 0 * local6
        local0[7] = 0
        local0[9] = 0 * local5
        local0[10] = 0 * local5
        local0[11] = 0
        local0[13] = 0
    elseif 8 <= local3 then
        local0[1] = 0
        local0[2] = 45
        local0[3] = 25 * local6
        local0[7] = 20
        local0[9] = 0 * local5
        local0[10] = 0 * local5
        local0[11] = 0
        local0[13] = 10
    elseif 4 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 35 * local6
        local0[7] = 50
        local0[9] = 0 * local5
        local0[10] = 0 * local5
        local0[11] = 0
        local0[13] = 15
    elseif 1 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 35 * local6
        local0[7] = 35
        local0[9] = 5 * local5
        local0[10] = 5 * local5
        local0[11] = 5
        local0[13] = 15
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0 * local6
        local0[7] = 50
        local0[9] = 5 * local5
        local0[10] = 5 * local5
        local0[11] = 10
        local0[13] = 30
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) == false then
        local0[3] = 0
        local0[6] = 0
        local0[7] = 0
        local0[9] = 0
        local0[10] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act14)
    local1[20] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, FleshGolem_Cannon313010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 23.4 - local0
local0 = 7.1 - local0
function FleshGolem_Cannon313010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if local2 <= 20 then
        arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5541)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local4, 0)
    elseif local2 <= 40 then
        arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5541)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local4, 0)
    elseif local2 <= 70 then
        arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5541)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local4, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 31.3 - local0
local0 = 9.3 - local0
function FleshGolem_Cannon313010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if 5 <= arg0:GetDistYSigned(TARGET_ENE_0) then
        if arg0:GetRandam_Int(1, 100) <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local2, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local2, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local2, 0)
        end
    else
        arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5540)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local2, 0, -1)
    end
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 6.9 - local0
local0 = 1.3 - local0
function FleshGolem_Cannon313010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(1, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.1 - local0
local0 = 1.3 - local0
function FleshGolem_Cannon313010_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3 - local0
local0 = 1.3 - local0
function FleshGolem_Cannon313010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function FleshGolem_Cannon313010_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local3, 0, -1)
    elseif local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function FleshGolem_Cannon313010_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local3, 0, -1)
    elseif local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
local0 = 1.3 - local0
function FleshGolem_Cannon313010_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.1 - local0
local0 = 1.3 - local0
function FleshGolem_Cannon313010_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(0, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
local0 = 1.3 - local0
function FleshGolem_Cannon313010_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(0, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 999 - local0
local0 = 1.3 - local0
function FleshGolem_Cannon313010_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_NONE, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FleshGolem_Cannon313010_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3015, TARGET_ENE_0, 100, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.3 - local0
local0 = 1.3 - local0
function FleshGolem_Cannon313010_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    local local3 = 0
    if arg0:GetNumber(0) == 0 then
        local3 = 30
    else
        local3 = 80
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= local3 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 34.7 - local0
local0 = 25.7 - local0
function FleshGolem_Cannon313010_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    if local3 <= local0 then
        Approach_Act(arg0, arg1, local3, UPVAL0 + 1, 0, 2)
    elseif local0 <= local4 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, local4, TARGET_ENE_0, true, -1)
    end
    if local2 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local5, 0, -1)
    elseif local2 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local5, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FleshGolem_Cannon313010_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 3.5 then
        if arg0:GetNumber(0) == 2 then
            if local0 <= 40 and arg0:IsFinishTimer(2) == true then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_NONE, AttDist, 0, -1)
                arg0:SetTimer(2, 15)
            elseif local0 <= 70 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, AttDist, 0, -1)
                else
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, AttDist, 0, -1)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 50, 0, 0)
            end
        elseif local0 <= 70 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, AttDist, 0, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, AttDist, 0, -1)
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

function FleshGolem_Cannon313010_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FleshGolem_Cannon313010_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FleshGolem_Cannon313010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(1.5, 2.5)
    local local5 = arg0:GetRandam_Float(1.5, 2.5)
    local local6 = 0
    if arg0:GetNumber(0) == 2 then
        if local0 <= 4.5 then
            if local1 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, Dist_None, 0, -1)
            elseif local1 <= 50 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 90)
                else
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
                end
            end
        end
    elseif local0 <= 2 then
        if local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 90)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
            end
        end
    elseif local0 <= 6 then
        if local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif local0 <= 13 then
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 80 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, Dist_None, 0, -1)
        end
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
    end
    return 
end

function FleshGolem_Cannon313010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function FleshGolem_Cannon313010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function FleshGolem_Cannon313010Battle_Terminate(arg0, arg1)
    return 
end

function FleshGolem_Cannon313010Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:GetHpRate(TARGET_SELF) <= 0.5 and arg0:GetNumber(0) == 0 then
        arg0:SetNumber(0, 1)
        arg1:ClearSubGoal()
        arg0:Replaning()
        return true
    elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) then
        if (not not arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5540) or arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5541)) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 7) then
            arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5540)
            arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5541)
            arg1:ClearSubGoal()
            arg0:Replaning()
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5541) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 18) then
            arg1:ClearSubGoal()
            arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5541)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 100, 0, 0)
            return true
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5540) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 14) == false then
            arg1:ClearSubGoal()
            arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5540)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 100, 0, 0)
            return true
        end
    end
    local local3 = 0
    if arg0:GetNumber(0) == 2 then
        local3 = 60
    else
        local3 = 30
    end
    if UseItem_Act(arg0, arg1, 30, local3) then
        arg1:ClearSubGoal()
        if arg0:GetDist(TARGET_ENE_0) <= 6 then
            if arg0:GetNumber(0) == 2 then
                FleshGolem_Cannon313010_Act03(arg0, arg1, paramTbl)
            else
                FleshGolem_Cannon313010_Act10(arg0, arg1, paramTbl)
            end
        else
            FleshGolem_Cannon313010_Act01(arg0, arg1, paramTbl)
        end
        return true
    end
    local local4 = 0
    if arg0:GetNumber(0) == 2 then
        local4 = 80
    else
        local4 = 40
    end
    local local5 = arg0:GetRandam_Int(1, 100)
    if GuardBreak_Act(arg0, arg1, 20, local4) then
        if arg0:GetDist(TARGET_ENE_0) <= 6 then
            if arg0:GetNumber(0) == 2 then
                FleshGolem_Cannon313010_Act03(arg0, arg1, paramTbl)
            else
                FleshGolem_Cannon313010_Act10(arg0, arg1, paramTbl)
            end
        else
            FleshGolem_Cannon313010_Act01(arg0, arg1, paramTbl)
        end
        return true
    end
    local local6 = 0
    local local7 = 0
    if arg0:GetNumber(0) == 2 then
        local6 = 40
        local7 = 80
    else
        local6 = 20
        local7 = 40
    end
    local local8 = arg0:GetRandam_Int(1, 100)
    local local9 = arg0:GetDist(TARGET_ENE_0)
    local local10 = Shoot_2dist(arg0, arg1, 6, 20, local6, local7)
    if local10 == 1 then
        if arg0:GetNumber(0) == 2 then
            FleshGolem_Cannon313010_Act03(arg0, arg1, paramTbl)
        else
            FleshGolem_Cannon313010_Act06(arg0, arg1, paramTbl)
        end
        return true
    elseif local10 == 2 then
        FleshGolem_Cannon313010_Act01(arg0, arg1, paramTbl)
        return true
    else
        return false
    end
end

return 
