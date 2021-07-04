local local0 = 5.2
local local1 = 0.6 + 1
local local2 = 4.6 - local1
local local3 = 4.7 - local1
local local4 = 6.1 - local1
local local5 = 4.1 - local1
local local6 = 4.2 - local1
local local7 = 3.9 - local1
local local8 = 13.7 - local1
local local9 = 9.8 - local1
local local10 = 6.1 - local1
local local11 = 3.9 - local1
local local12 = 4.8 - local1
local local13 = 12.9 - local1
function OnIf_304050(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_Fatman_MorningStar304050_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DungeonResident_Fatman_MorningStar304050Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif 10 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 10
        local0[4] = 10
        local0[5] = 20
        local0[6] = 0
        local0[7] = 20
    elseif 6 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 0
        local0[4] = 10
        local0[5] = 20
        local0[6] = 10
        local0[7] = 20
    elseif 2.5 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 0
        local0[4] = 0
        local0[5] = 30
        local0[6] = 10
        local0[7] = 0
        local0[12] = 20
    else
        local0[12] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act07)
    local1[11] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act12)
    local1[20] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act23)
    local1[30] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act47)
    local1[48] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act48)
    local1[49] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act49)
    local1[50] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_Act50)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_MorningStar304050_ActAfter_AdjustSpace, atkAfterOddsTbl), local2)
    return 
end

local1 = local2
local1 = local3
local1 = local4
local1 = local11
local1 = local0
function DungeonResident_Fatman_MorningStar304050_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL1 + 1
    local local2 = UPVAL2
    local local3 = UPVAL0
    if local3 + UPVAL4 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, local3 + UPVAL4, 0)
    else
        Approach_Act(arg0, arg1, local3, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, UPVAL3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local1 = local5
local1 = local6
local1 = local7
local1 = local10
local1 = local0
function DungeonResident_Fatman_MorningStar304050_Act02(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL1 + 1
    local local2 = UPVAL2 + 1
    local local3 = UPVAL0
    if local3 + UPVAL4 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, local3 + UPVAL4, 0)
    else
        Approach_Act(arg0, arg1, local3, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local0, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local0, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, UPVAL3 + 1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local1 = local8
local1 = local11
local1 = local0
function DungeonResident_Fatman_MorningStar304050_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0
    if local0 + UPVAL2 - 3.7 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, local0 + UPVAL2 - 3.7, 0)
    else
        Approach_Act(arg0, arg1, local0, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, UPVAL1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local1 = local9
local1 = local10
local1 = local0
function DungeonResident_Fatman_MorningStar304050_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0 + 1
    local local2 = UPVAL1
    if local0 + UPVAL2 - 3.1 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, local0 + UPVAL2 - 3.1, 0)
    else
        Approach_Act(arg0, arg1, local0, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, AttDist8, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local1 = local10
function DungeonResident_Fatman_MorningStar304050_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, UPVAL0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local1 = local12
local1 = local0
function DungeonResident_Fatman_MorningStar304050_Act06(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 + UPVAL1 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, local0 + UPVAL1, 0)
    else
        Approach_Act(arg0, arg1, local0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local1 = local13
local1 = local0
function DungeonResident_Fatman_MorningStar304050_Act07(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL0 - 0.5
    if local0 + UPVAL1 - 3.5 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachStep, 10, 700, TARGET_ENE_0, local0 + UPVAL1 - 3.5, 0)
    else
        Approach_Act(arg0, arg1, local0, 0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, AttDist1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local1 = 0
function DungeonResident_Fatman_MorningStar304050_Act11(arg0, arg1, arg2)
    local local0 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 3.1, TARGET_ENE_0, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:SetNumber(1, UPVAL0)
    local local1 = UPVAL0 + 1
    SETUPVAL 5 0 0
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DungeonResident_Fatman_MorningStar304050_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif local1 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Fatman_MorningStar304050_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Fatman_MorningStar304050_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Fatman_MorningStar304050_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local1 = local2
local1 = 0.6 - local1
function DungeonResident_Fatman_MorningStar304050_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local1 = local3
local1 = 0.6 - local1
function DungeonResident_Fatman_MorningStar304050_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local1 = local4
local1 = 0.6 - local1
function DungeonResident_Fatman_MorningStar304050_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local1 = local5
local1 = 0.6 - local1
function DungeonResident_Fatman_MorningStar304050_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local1 = local6
local1 = 0.6 - local1
function DungeonResident_Fatman_MorningStar304050_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local1 = local7
local1 = 0.6 - local1
function DungeonResident_Fatman_MorningStar304050_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local1 = local8
local1 = 10 - local1
function DungeonResident_Fatman_MorningStar304050_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local1 = local9
local1 = 6.7 - local1
function DungeonResident_Fatman_MorningStar304050_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local1 = local10
local1 = 0.6 - local1
function DungeonResident_Fatman_MorningStar304050_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local1 = local11
local1 = 0.6 - local1
function DungeonResident_Fatman_MorningStar304050_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local1 = local12
local1 = 0.6 - local1
function DungeonResident_Fatman_MorningStar304050_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local1 = local13
local1 = 9.4 - local1
function DungeonResident_Fatman_MorningStar304050_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Fatman_MorningStar304050_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    if 10 <= local0 then
        if local1 <= 0 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            if local2 <= 0 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            end
        elseif local1 <= 35 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            if local2 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            if local2 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        end
    elseif 5 <= local0 then
        if local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            if local2 <= 0 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            end
        elseif local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            if local2 <= 35 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            if local2 <= 35 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        end
    elseif 2.5 <= local0 then
        if local1 <= 33 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            if local2 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            end
        elseif local1 <= 67 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            if local2 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        elseif local1 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            if local2 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        end
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        if local2 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    elseif local1 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        if local2 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    elseif local1 <= 100 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        if local2 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    end
    return 
end

function DungeonResident_Fatman_MorningStar304050_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_Fatman_MorningStar304050Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Fatman_MorningStar304050Battle_Terminate(arg0, arg1)
    return 
end

function DungeonResident_Fatman_MorningStar304050Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        if arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) and arg0:HasSpecialEffectId(TARGET_SELF, 5702) and (not not arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8) or arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)) and arg0:GetHpRate(TARGET_SELF) <= 0.6 and arg0:GetNumber(1) <= 1 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, DIST_None, 0, 0)
            arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5703)
            return true
        elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) and arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5703) then
            arg1:ClearSubGoal()
            arg0:SetNumber(1, arg0:GetNumber(1) + 1)
            arg0:Replaning()
            arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5703)
            return true
        else
            local local4 = arg0:GetRandam_Int(1, 100)
            local local5 = arg0:GetDist(TARGET_ENE_0)
            local local6 = Shoot_2dist(arg0, arg1, 4, 8, 40, 40)
            if local6 == 1 then
                DungeonResident_Fatman_MorningStar304050_Act05(arg0, arg1, paramTbl)
                return true
            elseif local6 == 2 then
                DungeonResident_Fatman_MorningStar304050_Act20(arg0, arg1, paramTbl)
                return true
            else
                return false
            end
        end
    end
end

return 
