local local0 = 0.7
local local1 = 1.3 - local0
local local2 = 5.9 - local0
local local3 = 1.3 - local0
local local4 = 6.1 - local0
local local5 = 1.3 - local0
local local6 = 5.4 - local0
local local7 = 1.3 - local0
local local8 = 4.2 - local0
local local9 = 1.3 - local0
local local10 = 5.1 - local0
local local11 = 1.3 - local0
local local12 = 5.2 - local0
local local13 = 1.3 - local0
local local14 = 7.7 - local0
local local15 = 5.8 - local0
local local16 = 1.3 - local0
local local17 = 1.3 - local0
function OnIf_313020(arg0, arg1, arg2)
    if arg2 == 0 then
        FleshGolem_Hook313020_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local15
function FleshGolem_Hook313020Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local5 = 0
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
    if arg0:GetEventRequest(0) == 1 then
        local0[11] = 100
    elseif arg0:GetNumber(0) == 1 then
        local0[7] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    elseif local4 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local4 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:GetNumber(0) == 0 then
        if 6 <= local3 then
            local0[1] = 20
            local0[2] = 50
            local0[4] = 30
            local0[8] = 0 * local5
            local0[9] = 0 * local5
            local0[10] = 0
        elseif 4 <= local3 then
            local0[1] = 20
            local0[2] = 30
            local0[4] = 35
            local0[8] = 0 * local5
            local0[9] = 0 * local5
            local0[10] = 5
        elseif 2 <= local3 then
            local0[1] = 45
            local0[2] = 20
            local0[4] = 30
            local0[8] = 0 * local5
            local0[9] = 0 * local5
            local0[10] = 5
        else
            local0[1] = 15
            local0[2] = 10
            local0[4] = 20
            local0[8] = 20 * local5
            local0[9] = 20 * local5
            local0[10] = 10
        end
    elseif arg0:GetRandam_Int(1, 100) <= 20 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) == true and local3 <= UPVAL0 then
        local0[6] = 100
    elseif 6 <= local3 then
        local0[1] = 15
        local0[2] = 30
        local0[3] = 40
        local0[5] = 15
        local0[7] = 0
        local0[8] = 0 * local5
        local0[9] = 0 * local5
        local0[10] = 0
    elseif 4 <= local3 then
        local0[1] = 20
        local0[2] = 10
        local0[3] = 20
        local0[5] = 30
        local0[7] = 5
        local0[8] = 0 * local5
        local0[9] = 0 * local5
        local0[10] = 5
    elseif 2 <= local3 then
        local0[1] = 45
        local0[2] = 20
        local0[3] = 0
        local0[5] = 30
        local0[7] = 5
        local0[8] = 0 * local5
        local0[9] = 0 * local5
        local0[10] = 5
    else
        local0[1] = 15
        local0[2] = 10
        local0[3] = 0
        local0[5] = 20
        local0[7] = 5
        local0[8] = 20 * local5
        local0[9] = 20 * local5
        local0[10] = 10
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) == false then
        local0[4] = 0
        local0[5] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, FleshGolem_Hook313020_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, FleshGolem_Hook313020_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, FleshGolem_Hook313020_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, FleshGolem_Hook313020_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, FleshGolem_Hook313020_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, FleshGolem_Hook313020_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, FleshGolem_Hook313020_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, FleshGolem_Hook313020_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, FleshGolem_Hook313020_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, FleshGolem_Hook313020_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, FleshGolem_Hook313020_Act11)
    local1[20] = REGIST_FUNC(arg0, arg1, FleshGolem_Hook313020_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, FleshGolem_Hook313020_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, FleshGolem_Hook313020_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, FleshGolem_Hook313020_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.8 - local0
local0 = 1.3 - local0
function FleshGolem_Hook313020_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = UPVAL0 + 999
    local local3 = UPVAL0 + 3
    local local4 = 0
    local local5 = arg0:GetRandam_Int(1, 100)
    if arg0:GetRandam_Int(1, 100) <= 40 then
        Approach_Act(arg0, arg1, local0, local2, local4, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
    else
        Approach_Act(arg0, arg1, local0, local2, local4, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        if arg0:GetRandam_Int(1, 100) <= 80 and 2 <= arg0:GetDist(TARGET_ENE_0) then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.4 - local0
local0 = 1.3 - local0
function FleshGolem_Hook313020_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 3, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 11.3 - local0
local0 = 1.3 - local0
function FleshGolem_Hook313020_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = UPVAL0 + 999
    local local4 = UPVAL0 - 6.5 + 3
    local local5 = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        Approach_Act(arg0, arg1, local1, local3, local5, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local4, 0, -1)
    else
        if arg0:GetRandam_Int(1, 100) <= 25 then
            local1 = local1 + 1
        end
        Approach_Act(arg0, arg1, local1, local3, local5, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local4, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function FleshGolem_Hook313020_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 999
    local local6 = UPVAL0 + 4
    local local7 = 0
    if local1 <= 10 then
        Approach_Act(arg0, arg1, local3, local5, local7, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local6, 0, -1)
    else
        if arg0:GetRandam_Int(1, 100) <= 25 then
            local3 = local3 + 1
        end
        Approach_Act(arg0, arg1, local3, local5, local7, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local6, 0, -1)
        if local1 <= 45 then
            if local2 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local6, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local6, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local6, 0)
            if local1 <= 80 then
                if local2 <= 30 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local6, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local6, 0)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local6, 0)
                if local1 <= 90 then
                    if local2 <= 30 then
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local6, 0)
                    else
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local6, 0)
                    end
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local6, 0)
                    if local2 <= 30 then
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local6, 0)
                    else
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local6, 0)
                    end
                end
            end
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function FleshGolem_Hook313020_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 999
    local local6 = UPVAL0 + 4
    local local7 = 0
    if local1 <= 0 then
        Approach_Act(arg0, arg1, local3, local5, local7, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local6, 0, -1)
    else
        if arg0:GetRandam_Int(1, 100) <= 25 then
            local3 = local3 + 1
        end
        Approach_Act(arg0, arg1, local3, local5, local7, 2)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local6, 0, -1)
        if local1 <= 20 then
            if local2 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local6, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local6, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local6, 0)
            if local1 <= 60 then
                if local2 <= 70 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local6, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local6, 0)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local6, 0)
                if local1 <= 80 then
                    if local2 <= 70 then
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local6, 0)
                    else
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local6, 0)
                    end
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local6, 0)
                    if local2 <= 70 then
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local6, 0)
                    else
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local6, 0)
                    end
                end
            end
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local15
local0 = 1.3 - local0
function FleshGolem_Hook313020_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 3, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 999 - local0
local0 = 1.6 - local0
function FleshGolem_Hook313020_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 999
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_NONE, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.1 - local0
local0 = 1.6 - local0
function FleshGolem_Hook313020_Act08(arg0, arg1, arg2)
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
function FleshGolem_Hook313020_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(0, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.6 - local0
local0 = 1.3 - local0
function FleshGolem_Hook313020_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FleshGolem_Hook313020_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3015, TARGET_ENE_0, 100, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.4 - local0
local0 = 3.7 - local0
function FleshGolem_Hook313020_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if local0 <= 4 and arg0:GetNumber(0) == 2 and arg0:GetRandam_Int(1, 100) <= 60 and arg0:IsFinishTimer(2) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_NONE, AttDist, 0, -1)
        arg0:SetTimer(2, 15)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local0 <= UPVAL0 then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3020, TARGET_ENE_0, DIST_None)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local0 <= UPVAL1 then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3021, TARGET_ENE_0, DIST_None)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FleshGolem_Hook313020_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FleshGolem_Hook313020_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FleshGolem_Hook313020_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(1.5, 2.5)
    local local5 = 0
    if arg0:GetNumber(0) == 0 and local0 > 3.5 and local0 <= 6 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function FleshGolem_Hook313020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function FleshGolem_Hook313020Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function FleshGolem_Hook313020Battle_Terminate(arg0, arg1)
    return 
end

function FleshGolem_Hook313020Battle_Interupt(arg0, arg1)
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
    end
    local local3 = 0
    if arg0:GetNumber(0) == 2 then
        local3 = 60
    else
        local3 = 30
    end
    if UseItem_Act(arg0, arg1, 15, local3) then
        arg1:ClearSubGoal()
        if arg0:GetDist(TARGET_ENE_0) <= 4 then
            if arg0:GetNumber(0) == 2 then
                FleshGolem_Hook313020_Act05(arg0, arg1, paramTbl)
            else
                FleshGolem_Hook313020_Act09(arg0, arg1, paramTbl)
            end
        elseif arg0:GetNumber(0) == 2 then
            FleshGolem_Hook313020_Act03(arg0, arg1, paramTbl)
        else
            FleshGolem_Hook313020_Act02(arg0, arg1, paramTbl)
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
    local local6 = arg0:GetDist(TARGET_ENE_0)
    if GuardBreak_Act(arg0, arg1, 3.5, local4) then
        FleshGolem_Hook313020_Act10(arg0, arg1, paramTbl)
        return true
    end
    local local7 = 0
    local local8 = 0
    if arg0:GetNumber(0) == 2 then
        local7 = 40
        local8 = 80
    else
        local7 = 20
        local8 = 40
    end
    local local9 = arg0:GetRandam_Int(1, 100)
    local local10 = arg0:GetDist(TARGET_ENE_0)
    local local11 = Shoot_2dist(arg0, arg1, 3.5, 20, local7, local8)
    if local11 == 1 then
        if arg0:GetNumber(0) == 2 then
            FleshGolem_Hook313020_Act10(arg0, arg1, paramTbl)
        else
            FleshGolem_Hook313020_Act02(arg0, arg1, paramTbl)
        end
        return true
    elseif local11 == 2 then
        if arg0:GetNumber(0) == 2 then
            FleshGolem_Hook313020_Act06(arg0, arg1, paramTbl)
        else
            FleshGolem_Hook313020_Act01(arg0, arg1, paramTbl)
        end
        return true
    else
        return false
    end
end

return 
