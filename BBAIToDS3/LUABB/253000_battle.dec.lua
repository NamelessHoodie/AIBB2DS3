local local0 = 0.6
local local1 = 8.6 - local0
local local2 = 11.3 - local0
local local3 = 1 - local0
local local4 = 21 - local0
local local5 = 1 - local0
local local6 = 2.1 - local0
local local7 = 5.9 - local0
local local8 = 16.6 - local0
local local9 = 5.1 - local0
local local10 = 5 - local0
local local11 = 21 - local0
local local12 = 3 - local0
local local13 = 0.1 - local0
local local14 = 20 - local0
local local15 = 0.1 - local0
local local16 = 20 - local0
local local17 = 0.6 - local0
local local18 = 7.5 - local0
function OnIf_253000(arg0, arg1, arg2)
    if arg2 == 0 then
        StarFlower253000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function StarFlower253000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5674) == true then
        local0[5] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5672) == true then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5619) == true then
            if 20 <= local3 then
                local0[7] = 100
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and 2 <= local3 then
                local0[20] = 100
            elseif 6 <= local3 then
                local0[3] = 100
            elseif 2 <= local3 then
                if arg0:GetNpcThinkParamID() == 253201 then
                    local0[9] = 100
                else
                    local0[1] = 50
                    local0[2] = 50
                end
            else
                local0[10] = 100
            end
        elseif local6 <= 0.99 and arg0:GetNumber(0) == 0 then
            local0[6] = 100
        elseif 20 <= local3 then
            local0[7] = 100
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            local0[20] = 100
        elseif 6 <= local3 then
            local0[3] = 100
        else
            local0[1] = 30
            local0[2] = 70
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5675) == true then
        local0[5] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5673) == true then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5619) == true then
            if 20 <= local3 then
                local0[7] = 100
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                local0[20] = 99
            elseif 7 <= local3 then
                local0[3] = 100
            else
                local0[4] = 100
            end
        elseif local6 <= 0.99 and arg0:GetNumber(0) == 0 then
            local0[6] = 100
        elseif 20 <= local3 then
            local0[7] = 100
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            local0[20] = 100
        elseif 7 <= local3 then
            local0[3] = 100
        else
            local0[4] = 100
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and local3 <= 0.5 then
        local0[24] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[25] = 100
    elseif 15 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 100
        local0[4] = 0
    elseif 11 <= local3 then
        local0[1] = 10
        local0[2] = 50
        local0[3] = 25
        local0[4] = 0
        local0[8] = 15
    elseif 5 <= local3 then
        local0[1] = 40
        local0[2] = 30
        local0[3] = 0
        local0[4] = 0
        local0[8] = 30
    elseif 3 <= local3 then
        local0[1] = 30
        local0[2] = 0
        local0[3] = 0
        local0[4] = 70
    else
        local0[1] = 15
        local0[2] = 0
        local0[3] = 0
        local0[4] = 85
    end
    local1[1] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act25)
    local1[30] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act47)
    local1[48] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act48)
    local1[49] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act49)
    local1[50] = REGIST_FUNC(arg0, arg1, StarFlower253000_Act50)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, StarFlower253000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local1
local0 = local9
local0 = local8
function StarFlower253000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL2
    local local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5672) == true then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, UPVAL1)
    else
        if local2 <= local0 then
            Approach_Act(arg0, arg1, local2, UPVAL2 + 1, local3, 1.5)
            arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, 10, 8)
        elseif local1 <= local0 then
            Approach_Act(arg0, arg1, local1, UPVAL0 + 3, local3, 1.5)
        end
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, UPVAL0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
local0 = local10
local0 = local8
function StarFlower253000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL0
    local local3 = UPVAL2
    local local4 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5672) == true then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, UPVAL1)
    else
        if local3 <= local0 then
            Approach_Act(arg0, arg1, local3, UPVAL2 + 1, local4, 1)
            arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, 10, 8)
        elseif local2 <= local0 then
            Approach_Act(arg0, arg1, local2, UPVAL0 + 5.5, local4, 1)
        end
        if arg0:GetRandam_Int(1, 100) <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, local1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3001, TARGET_ENE_0, local1, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
local0 = local11
function StarFlower253000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5672) == true then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, local3)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5673) == true then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, UPVAL2 + 1)
    else
        if local1 <= arg0:GetDist(TARGET_ENE_0) then
            Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 1)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
local0 = local12
function StarFlower253000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 5
    local local5 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5673) == true then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, UPVAL2 + 1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, -1, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StarFlower253000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetHpRate(TARGET_SELF)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5674) == true then
        if local0 <= 5 then
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3020, TARGET_ENE_0, Dist_None)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
        end
    elseif local0 <= 7 then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3025, TARGET_ENE_0, Dist_None)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StarFlower253000_Act06(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5672) == true then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3021, TARGET_ENE_0, AttDist)
    else
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3026, TARGET_ENE_0, AttDist)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StarFlower253000_Act07(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5672) == true then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3022, TARGET_ENE_0, AttDist)
    else
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3027, TARGET_ENE_0, AttDist)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local7
local0 = local8
function StarFlower253000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1 - 2.7
    local local2 = UPVAL0
    local local3 = UPVAL1 - 2.7
    local local4 = 0
    if local3 <= local0 then
        Approach_Act(arg0, arg1, local3, UPVAL1 - 2.7, local4, 1.5)
        arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, 10, 8)
    elseif local2 <= local0 then
        Approach_Act(arg0, arg1, local2, UPVAL0 + 1, local4, 1.5)
    end
    arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, UPVAL0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.5 - local0
local0 = 0.8 - local0
function StarFlower253000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = UPVAL0 + 1
    local local6 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_ENE_0, local5)
    else
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 999 - local0
local0 = 0.6 - local0
function StarFlower253000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, UPVAL0 + 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StarFlower253000_Act20(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5672) == true then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5673) == true then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StarFlower253000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StarFlower253000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StarFlower253000_Act24(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StarFlower253000_Act25(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local1
local0 = 1 - local0
function StarFlower253000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = 1 - local0
function StarFlower253000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
local0 = 0.6 - local0
function StarFlower253000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function StarFlower253000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
local0 = local12
function StarFlower253000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5673) == true then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, UPVAL2 + 1)
    else
        if local1 <= arg0:GetDist(TARGET_ENE_0) then
            Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 2)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local7
local0 = 0.8 - local0
function StarFlower253000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
local0 = 0.6 - local0
function StarFlower253000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local9
local0 = 0.1 - local0
function StarFlower253000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = 0.1 - local0
function StarFlower253000_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 21 - local0
local0 = 0.1 - local0
function StarFlower253000_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local11
local0 = 0.1 - local0
function StarFlower253000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
local0 = 0.1 - local0
function StarFlower253000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StarFlower253000_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3012_Dist_min
    Approach_Act(arg0, arg1, Att3012_Dist_max, Att3012_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, Att3012_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StarFlower253000_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3013_Dist_min
    Approach_Act(arg0, arg1, Att3013_Dist_max, Att3013_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, Att3013_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StarFlower253000_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3014_Dist_min
    Approach_Act(arg0, arg1, Att3014_Dist_max, Att3014_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, Att3014_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StarFlower253000_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3015_Dist_min
    Approach_Act(arg0, arg1, Att3015_Dist_max, Att3015_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, Att3015_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StarFlower253000_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3016_Dist_min
    Approach_Act(arg0, arg1, Att3016_Dist_max, Att3016_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, Att3016_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StarFlower253000_Act47(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3017_Dist_min
    Approach_Act(arg0, arg1, Att3017_Dist_max, Att3017_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, Att3017_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StarFlower253000_Act48(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3018_Dist_min
    Approach_Act(arg0, arg1, Att3018_Dist_max, Att3018_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, Att3018_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StarFlower253000_Act49(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3019_Dist_min
    Approach_Act(arg0, arg1, Att3019_Dist_max, Att3019_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, Att3019_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 20 - local0
local0 = 0.1 - local0
function StarFlower253000_Act50(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StarFlower253000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function StarFlower253000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = arg0:GetRandam_Float(2, 3)
    local local6 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5672) == true or arg0:HasSpecialEffectId(TARGET_SELF, 5673) == true then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
        end
    elseif local0 <= 1.5 then
        if local1 <= 60 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 2.5 then
        if local1 <= 40 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            end
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 4.5 then
        if local1 <= 40 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            end
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
        elseif local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 6.5 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 4.5, TARGET_SELF, true, -1)
        end
    elseif local0 <= 10 then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    end
    return 
end

function StarFlower253000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function StarFlower253000Battle_Terminate(arg0, arg1)
    return 
end

function StarFlower253000Battle_Interupt(arg0, arg1)
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
