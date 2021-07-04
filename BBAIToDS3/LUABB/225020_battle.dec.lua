local local0 = 0.3
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 0 - local0
local local4 = 0 - local0
function OnIf_225020(arg0, arg1, arg2)
    if arg2 == 0 then
        WarderA_Whip225020_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function WarderA_Whip225020Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif 5.5 <= local3 then
        local0[1] = 0
        local0[2] = 5
        local0[3] = 90
        local0[4] = 5
    elseif 3.2 <= local3 then
        local0[1] = 15
        local0[2] = 50
        local0[3] = 0
        local0[4] = 35
    else
        local0[1] = 15
        local0[2] = 35
        local0[3] = 0
        local0[4] = 50
    end
    local1[1] = REGIST_FUNC(arg0, arg1, WarderA_Whip225020_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, WarderA_Whip225020_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, WarderA_Whip225020_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, WarderA_Whip225020_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, WarderA_Whip225020_Act05)
    local1[20] = REGIST_FUNC(arg0, arg1, WarderA_Whip225020_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, WarderA_Whip225020_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, WarderA_Whip225020_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, WarderA_Whip225020_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2 - local0
local0 = 0 - local0
local0 = 1.7 - local0
local0 = 2.8 - local0
function WarderA_Whip225020_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    local local4 = UPVAL2 + 1
    local local5 = UPVAL3 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 0.5, 0, 4)
    if local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local3, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local3, 0, -1)
        if local1 <= 65 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local4, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local4, 0)
            if local1 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local5, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local5, 0)
                if local1 <= 90 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local4, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local4, 0)
                    if local1 <= 95 then
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local5, 0)
                    else
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local5, 0)
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local4, 0)
                    end
                end
            end
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.2 - local0
local0 = 0 - local0
function WarderA_Whip225020_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 0.5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.5 - local0
local0 = 0 - local0
function WarderA_Whip225020_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) == false then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.1 - local0
local0 = 0 - local0
local0 = 1.6 - local0
local0 = 2.4 - local0
function WarderA_Whip225020_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 0.5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, UPVAL2 + 1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, UPVAL3 + 1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.2 - local0
local0 = 0 - local0
function WarderA_Whip225020_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3027, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WarderA_Whip225020_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_Whip225020_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_Whip225020_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WarderA_Whip225020_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(0, 1)
    local local2 = arg0:GetRandam_Float(2, 3.5)
    local local3 = arg0:GetRandam_Float(2, 3)
    local local4 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 3.2 then
        if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_B, 120) then
            if local0 <= 33 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            elseif local0 <= 66 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local1, arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        elseif local0 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
        elseif local0 <= 20 then
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            end
        elseif local0 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, local1, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function WarderA_Whip225020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function WarderA_Whip225020Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function WarderA_Whip225020Battle_Terminate(arg0, arg1)
    return 
end

function WarderA_Whip225020Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if Damaged_Step(arg0, arg1, 3, 15, 40, 30, 30, 4) then
        return true
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    local local6 = Shoot_2dist(arg0, arg1, 5, 20, 20, 40)
    if local6 == 1 then
        if local4 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local6 == 2 then
        if local4 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
        return true
    end
    return false
end

return 
