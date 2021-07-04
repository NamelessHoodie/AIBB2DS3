local local0 = 0.3
local local1 = 0 - local0
local local2 = 4.7 - local0
local local3 = 0 - local0
local local4 = 4.2 - local0
local local5 = 0 - local0
local local6 = 5 - local0
local local7 = 0 - local0
local local8 = 3.2 - local0
local local9 = 0 - local0
local local10 = 2.8 - local0
local local11 = 0 - local0
local local12 = 8.7 - local0
local local13 = 0 - local0
local local14 = 7.9 - local0
local local15 = 0 - local0
local local16 = 3.5 - local0
function OnIf_201010(arg0, arg1, arg2)
    if arg2 == 0 then
        Gravedigger_Pickaxe201010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Gravedigger_Pickaxe201010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = 0
    if arg0:GetHpRate(TARGET_SELF) <= 0.6 and arg0:HasSpecialEffectId(TARGET_SELF, 5702) and 0 < arg0:GetMp(TARGET_SELF) and arg0:IsFinishTimer(0) == true then
        local6 = 1
    else
        local6 = 0
    end
    if local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[28] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[29] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        if local3 <= 3 then
            local0[15] = 100
        else
            local0[20] = 100
        end
    elseif 10 <= local3 then
        local0[1] = 40
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 60
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 300 * local6
    elseif 7 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 35
        local0[5] = 20
        local0[6] = 45
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 300 * local6
    elseif 4 <= local3 then
        local0[1] = 35
        local0[2] = 0
        local0[3] = 0
        local0[4] = 35
        local0[5] = 25
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 300 * local6
    elseif 2 <= local3 then
        local0[1] = 35
        local0[2] = 0
        local0[3] = 0
        local0[4] = 35
        local0[5] = 25
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 300 * local6
    else
        local0[1] = 30
        local0[2] = 0
        local0[3] = 0
        local0[4] = 40
        local0[5] = 15
        local0[6] = 0
        local0[7] = 0
        local0[8] = 15
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 300 * local6
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act13)
    local1[20] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act20)
    local1[28] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act29)
    local1[30] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_Act44)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Gravedigger_Pickaxe201010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
function Gravedigger_Pickaxe201010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1.5
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0
    if local3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local3, UPVAL0 + 1, 0, 3)
    end
    if local0 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 180)
    elseif local0 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 180)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL0 + 1.5, 180)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
function Gravedigger_Pickaxe201010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
function Gravedigger_Pickaxe201010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
function Gravedigger_Pickaxe201010_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local0, 0, 180)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local0, 0, 70)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local0, 70)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
function Gravedigger_Pickaxe201010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
function Gravedigger_Pickaxe201010_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1.5, 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local14
function Gravedigger_Pickaxe201010_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1.5
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL0 + 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3006, TARGET_ENE_0, local1, -1, 40)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
local0 = local2
local0 = local4
local0 = local6
local0 = local8
local0 = local10
function Gravedigger_Pickaxe201010_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL1
    local local3 = UPVAL2
    local local4 = UPVAL3
    local local5 = UPVAL4
    local local6 = UPVAL5
    local local7 = UPVAL0
    if local7 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local7, UPVAL0 + 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3007, TARGET_ENE_0, AttDist, -1, 40)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, AttDist, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gravedigger_Pickaxe201010_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = Att3008_Dist_max
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, Att3008_Dist_max + 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, Att3008_Dist_max + 2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gravedigger_Pickaxe201010_Act10(arg0, arg1, arg2)
    local local0 = Att3009_Dist_max + 2
    local local1 = Att3009_Dist_max
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, Att3009_Dist_max + 1, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, local0, 0, 180)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local0, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, AttDist1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gravedigger_Pickaxe201010_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = Att3010_Dist_max
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, Att3010_Dist_max + 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, Att3010_Dist_max + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gravedigger_Pickaxe201010_Act12(arg0, arg1, arg2)
    local local0 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 3.1, TARGET_ENE_0, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:SetTimer(0, 8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gravedigger_Pickaxe201010_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if 10 <= local0 then
        Torimaki_Act(arg0, arg1, 0)
    elseif 3 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gravedigger_Pickaxe201010_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gravedigger_Pickaxe201010_Act20(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 140) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gravedigger_Pickaxe201010_Act28(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gravedigger_Pickaxe201010_Act29(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
function Gravedigger_Pickaxe201010_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
function Gravedigger_Pickaxe201010_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
function Gravedigger_Pickaxe201010_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
function Gravedigger_Pickaxe201010_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
function Gravedigger_Pickaxe201010_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
function Gravedigger_Pickaxe201010_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
function Gravedigger_Pickaxe201010_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
function Gravedigger_Pickaxe201010_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gravedigger_Pickaxe201010_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3008_Dist_max, Att3008_Dist_max + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, Att3008_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gravedigger_Pickaxe201010_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3009_Dist_max, Att3009_Dist_max + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, Att3009_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gravedigger_Pickaxe201010_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3010_Dist_max, Att3010_Dist_max + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, Att3010_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gravedigger_Pickaxe201010_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3011_Dist_max, Att3011_Dist_max + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, Att3011_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gravedigger_Pickaxe201010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= 4 then
        if local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif local0 <= 8 then
        if local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.8, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif local1 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 3.5, TARGET_SELF, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 3.5, TARGET_SELF, false, -1)
        end
    elseif local1 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 3.5, TARGET_SELF, false, -1)
    end
    return 
end

function Gravedigger_Pickaxe201010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Gravedigger_Pickaxe201010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Gravedigger_Pickaxe201010Battle_Terminate(arg0, arg1)
    return 
end

function Gravedigger_Pickaxe201010Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        if RebByOpGuard_Step(arg0, arg1, 20, 20, 40, 40, 4) then
            return true
        else
            return false
        end
    end
end

return 
