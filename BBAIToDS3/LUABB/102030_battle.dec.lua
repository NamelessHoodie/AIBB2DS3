local local0 = 0.3
local local1 = 0.3 - local0
local local2 = 0.3 - local0
local local3 = 0.3 - local0
local local4 = 0.3 - local0
local local5 = 0.3 - local0
local local6 = 0.3 - local0
local local7 = 0.3 - local0
local local8 = 0.3 - local0
local local9 = 0.3 - local0
local local10 = 0.3 - local0
local local11 = 0.3 - local0
local local12 = 10.3 - local0
local local13 = 50.3 - local0
local local14 = 0.3 - local0
local local15 = 50.3 - local0
local local16 = 1
function OnIf_102030(arg0, arg1, arg2)
    if arg2 == 0 then
        CrowdA_Saber102030_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local16
function CrowdA_Saber102030Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5618) or arg0:HasSpecialEffectId(TARGET_SELF, 5619) then
        local local6 = 0
        SETUPVAL 9 0 0
    end
    if local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_kankyaku then
        local0[10] = 50
        local0[11] = 50
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[2] = 5
        local0[5] = 5
        local0[6] = 0
        local0[10] = 45
        local0[11] = 45
        if not arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true and arg0:HasSpecialEffectId(TARGET_SELF, 5615) == true then
            local0[2] = 0
            local0[5] = 0
            local0[6] = 10
            local0[10] = 45
            local0[11] = 45
        end
    elseif arg0:GetEventRequest(0) == 100 then
        local0[13] = 100
    elseif not not arg0:HasSpecialEffectId(TARGET_SELF, 5618) or arg0:HasSpecialEffectId(TARGET_SELF, 5619) then
        local0[6] = 10
    elseif not (arg0:HasSpecialEffectId(TARGET_SELF, 5615) ~= true or arg0:HasSpecialEffectId(TARGET_SELF, 5611) ~= true or 5 > local3) or arg0:HasSpecialEffectId(TARGET_SELF, 5615) == true and not arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true and local3 <= 5 then
        local0[12] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif 5 <= local3 and not arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true and arg0:HasSpecialEffectId(TARGET_SELF, 5615) == true then
        local0[6] = 100
    elseif 5.5 <= local3 then
        local0[1] = 15
        local0[2] = 15
        local0[3] = 0
        local0[4] = 0
        local0[5] = 35
        local0[7] = 20
        local0[8] = 15
    elseif 3.5 <= local3 then
        local0[1] = 15
        local0[2] = 30
        local0[3] = 0
        local0[4] = 0
        local0[5] = 25
        local0[7] = 15
        local0[8] = 15
    elseif 2 <= local3 then
        local0[1] = 25
        local0[2] = 5
        local0[3] = 0
        local0[4] = 0
        local0[5] = 30
        local0[7] = 25
        local0[8] = 15
    else
        local0[1] = 15
        local0[2] = 5
        local0[3] = 20
        local0[4] = 0
        local0[5] = 30
        local0[7] = 15
        local0[8] = 15
    end
    if arg0:IsFinishTimer(1) == false then
        local0[5] = 0
    end
    if arg0:GetNumber(0) == 1 then
        local0[1] = 0
        local0[3] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, CrowdA_Saber102030_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, CrowdA_Saber102030_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, CrowdA_Saber102030_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, CrowdA_Saber102030_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, CrowdA_Saber102030_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, CrowdA_Saber102030_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, CrowdA_Saber102030_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, CrowdA_Saber102030_Act08)
    local1[10] = REGIST_FUNC(arg0, arg1, CrowdA_Saber102030_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, CrowdA_Saber102030_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, CrowdA_Saber102030_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, CrowdA_Saber102030_Act13)
    local1[20] = REGIST_FUNC(arg0, arg1, CrowdA_Saber102030_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, CrowdA_Saber102030_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.3 - local0
local0 = 3.1 - local0
local0 = 3.6 - local0
function CrowdA_Saber102030_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 1.5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, UPVAL1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, UPVAL2, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.4 - local0
function CrowdA_Saber102030_Act02(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 1.5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.1 - local0
function CrowdA_Saber102030_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.8 - local0
function CrowdA_Saber102030_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 1.5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.9 - local0
function CrowdA_Saber102030_Act05(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 1.5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0, 0, 0)
    arg0:SetTimer(1, 7)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
local0 = 0.3 - local0
local0 = local16
function CrowdA_Saber102030_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    local local2 = 18
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = 50
    if arg0:HasSpecialEffectId(TARGET_SELF, 5618) then
        local1 = DIST_None
        local2 = 9999
        ShootNum = 6
        local4 = 100
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5619) then
        local2 = 50
    end
    if UPVAL2 == 0 and local2 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    elseif UPVAL2 == 1 then
        if local0 <= UPVAL1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 1.5, TARGET_ENE_0, true, -1)
        else
            Approach_Act(arg0, arg1, local2, UPVAL0 + 2, 0, 3)
        end
    end
    if local0 <= 5 then
        if local3 <= 65 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, local1, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3031, TARGET_ENE_0, local1, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, local1, 0)
        end
    elseif arg0:GetRandam_Int(1, 100) <= local4 then
        if local3 <= 65 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, local1, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3031, TARGET_ENE_0, local1, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, local1, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.4 - local0
local0 = 2.5 - local0
function CrowdA_Saber102030_Act07(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 1.5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, UPVAL1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.1 - local0
function CrowdA_Saber102030_Act08(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 1.5, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function CrowdA_Saber102030_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 12, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_Saber102030_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_Saber102030_Act12(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, DIST_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, DIST_None, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local13
function CrowdA_Saber102030_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(POINT_EVENT)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_EVENT, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_Saber102030_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(0, 1)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local0 = 0
    else
        local0 = 1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0, local0, arg0:GetRandam_Int(45, 60), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrowdA_Saber102030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function CrowdA_Saber102030_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(1, 1.5)
    local local4 = arg0:GetRandam_Float(1.5, 2.5)
    if arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer) == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            if local0 > 2 then
                if local0 <= 3.5 then
                    if local1 <= 30 then
                        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
                    elseif local1 <= 80 then
                        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
                    end
                elseif local0 <= 5.5 then
                    if local1 <= 70 then
                        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
                    end
                elseif local0 <= 7.5 then
                    if local1 <= 50 then
                        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
                        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
                    end
                elseif local1 <= 70 then
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
                end
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 1, arg0:GetRandam_Int(45, 60), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 0, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif local0 <= 6 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
    end
    return 
end

function CrowdA_Saber102030Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function CrowdA_Saber102030Battle_Terminate(arg0, arg1)
    return 
end

function CrowdA_Saber102030Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        return false
    end
end

return 
