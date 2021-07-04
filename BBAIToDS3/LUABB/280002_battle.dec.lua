local local0 = 0
local local1 = 0.5
local local2 = 0 - local1
local local3 = 4.8 - local1
local local4 = 0 - local1
local local5 = 0 - local1
local local6 = 0 - local1
local local7 = 4.9 - local1
local local8 = 0 - local1
local local9 = 0 - local1
local local10 = 10 - local1
local local11 = 0 - local1
local local12 = 0 - local1
local local13 = 8 - local1
local local14 = 6.4 - local1
local local15 = 0 - local1
local local16 = 0 - local1
local local17 = 0 - local1
local local18 = 5.9 - local1
local local19 = 0
local0 = local19
function BurnedWarriorVariationPoison_Spear280002Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:HasSpecialEffectId(TARGET_SELF, 4671) then
        local local5 = 1
        SETUPVAL 8 0 0
    else
        local local5 = 0
        SETUPVAL 8 0 0
    end
    if local4 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local4 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:GetRandam_Int(1, 100) <= 50 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[9] = 100
    elseif 8 <= local3 then
        local0[1] = 30
        local0[2] = 10
        local0[3] = 40
        local0[4] = 10
        local0[5] = 0
        local0[6] = 10
        local0[10] = 0
    elseif 5 <= local3 then
        local0[1] = 70
        local0[2] = 10
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 20
        local0[10] = 0
    elseif 2.5 <= local3 then
        local0[1] = 70
        local0[2] = 20
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 10
        local0[10] = 0
    else
        local0[1] = 30
        local0[2] = 10
        local0[3] = 0
        local0[4] = 0
        local0[5] = 30
        local0[6] = 30
        local0[10] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act06)
    local1[9] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act10)
    local1[22] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act23)
    local1[30] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, BurnedWarriorVariationPoison_Spear280002_Act47)
    local local5 = {0, 30, 30, 40, 0, 0, 0}
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, HumanCommon_ActAfter_AdjustSpace, local5), local2)
    return 
end

local0 = local3
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    local local3 = UPVAL0 + 1
    if UPVAL1 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0)
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    elseif local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local3, 0)
    elseif local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3, 0)
    elseif local1 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local7
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 9999
    local local2 = UPVAL0 + 1
    if UPVAL1 == 1 then
        local1 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local1, 0)
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 9999
    local local2 = UPVAL0 + 1
    if UPVAL1 == 1 then
        local1 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local1, 0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BurnedWarriorVariationPoison_Spear280002_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, AttDist, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, AttDist, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, AttDist, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local18
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BurnedWarriorVariationPoison_Spear280002_Act09(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 2 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, AttDist, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, AttDist, 0, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BurnedWarriorVariationPoison_Spear280002_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if 6 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Float(30, 50), true, true, 9910)
    elseif 3 <= local0 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Float(30, 50), true, true, 9910)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 9910)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(3, 3.5), TARGET_ENE_0, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BurnedWarriorVariationPoison_Spear280002_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BurnedWarriorVariationPoison_Spear280002_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local3
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4 - local1
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5 - local1
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local7
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4 - local1
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 10.4 - local1
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.4 - local1
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.2 - local1
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.3 - local1
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local18
local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL1 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL0 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, Att3012_Dist_max, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, Att3012_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL0 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, Att3013_Dist_max, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, Att3013_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL0 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, Att3014_Dist_max, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, Att3014_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL0 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, Att3015_Dist_max, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, Att3015_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL0 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, Att3016_Dist_max, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, Att3016_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local19
function BurnedWarriorVariationPoison_Spear280002_Act47(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 9999
    if UPVAL0 == 1 then
        local2 = 0
    end
    Approach_Act(arg0, arg1, Att3017_Dist_max, local2, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, Att3017_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BurnedWarriorVariationPoison_Spear280002Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function BurnedWarriorVariationPoison_Spear280002Battle_Terminate(arg0, arg1)
    return 
end

function BurnedWarriorVariationPoison_Spear280002Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        if SuccessGuard_Attack(arg0, arg1, 3.5, 80, 3004) then
            return true
        elseif GuardBreak_Attack(arg0, arg1, 3.5, 30, 3001) then
            return true
        elseif Damaged_Step_or_Guard(arg0, arg1, 3, 20, 100, 40, 30, 30, 4, 50, 4.5, 2.5) then
            return true
        elseif RebByOpGuard_Step(arg0, arg1, 10, 30, 35, 35, 4) then
            return true
        else
            return false
        end
    end
end

return 
