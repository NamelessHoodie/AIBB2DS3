local local0 = 0.2
local local1 = 0 - local0
local local2 = 3.1 - local0
local local3 = 1.9 - local0
local local4 = 0 - local0
local local5 = 2.9 - local0
local local6 = 3.1 - local0
local local7 = 0 - local0
local local8 = 2.4 - local0
local local9 = 2.1 - local0
local local10 = 0 - local0
local local11 = 2.8 - local0
local local12 = 0 - local0
local local13 = 4.7 - local0
local local14 = 1.2 - local0
local local15 = 2.2 - local0
local local16 = 8.4 - local0
local local17 = 8.4 - local0
function OnIf_301012(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_Slave_HatchetThrow301012_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DungeonResident_Slave_HatchetThrow301012Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = math.abs(arg0:GetDistYSigned(TARGET_ENE_0))
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif arg0:IsInsideTargetRegion(TARGET_ENE_0, 2702550) == true then
        local0[8] = 50
        local0[9] = 50
    elseif arg0:GetNpcThinkParamID() == 301732 then
        local0[10] = 50
        local0[11] = 50
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif 5 <= local3 then
        local0[1] = 10
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 50
        local0[7] = 40
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
    elseif 2.5 <= local3 then
        local0[1] = 30
        local0[2] = 20
        local0[3] = 10
        local0[4] = 10
        local0[5] = 0
        local0[6] = 20
        local0[7] = 10
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
    else
        local0[1] = 30
        local0[2] = 30
        local0[3] = 20
        local0[4] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act11)
    local1[20] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act23)
    local1[30] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act44)
    local1[44] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_Act47)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Slave_HatchetThrow301012_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
local0 = local3
local0 = local5
local0 = local6
function DungeonResident_Slave_HatchetThrow301012_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = UPVAL2 + 1
    local local6 = UPVAL3 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 - 1, 0, 2)
    if local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local4, 0, -1)
        if local1 <= 70 then
            if local2 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local5, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local6, 0)
            end
        else
            if local2 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local5, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local6, 0)
            end
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, UPVAL4 + 1, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local5
local0 = local4
local0 = local6
function DungeonResident_Slave_HatchetThrow301012_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 - 1, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, local3, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, UPVAL2 + 1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
local0 = local9
local0 = local5
local0 = local6
function DungeonResident_Slave_HatchetThrow301012_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = UPVAL2 + 1
    local local6 = UPVAL3 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 - 1, 0, 2)
    if local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, local4, 0, -1)
        if local1 <= 70 then
            if local2 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local5, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local6, 0)
            end
        else
            if local2 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, local5, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local6, 0)
            end
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, UPVAL4 + 1, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local11
local0 = local10
local0 = local5
local0 = local6
function DungeonResident_Slave_HatchetThrow301012_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = UPVAL2 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 - 1, 0, 2)
    if local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, local4, 0, -1)
        if local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local5, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local5, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, UPVAL3 + 1, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
local0 = local12
function DungeonResident_Slave_HatchetThrow301012_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function DungeonResident_Slave_HatchetThrow301012_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 - 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, UPVAL0 + 15, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function DungeonResident_Slave_HatchetThrow301012_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 15
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 - 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3032, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3033, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 28.4 - local0
local0 = 2.2 - local0
function DungeonResident_Slave_HatchetThrow301012_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 30
    local local3 = UPVAL1
    local local4 = UPVAL0 + 30
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, UPVAL0 + 15, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 28.4 - local0
local0 = 2.2 - local0
function DungeonResident_Slave_HatchetThrow301012_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 30
    local local3 = UPVAL1
    local local4 = UPVAL0 + 30
    local local5 = UPVAL0 + 20
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3032, TARGET_ENE_0, local5, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3033, TARGET_ENE_0, local5, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 30.4 - local0
local0 = 0 - local0
function DungeonResident_Slave_HatchetThrow301012_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 30
    local local3 = UPVAL1
    local local4 = UPVAL0 + 30
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, UPVAL0 + 20, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 30.4 - local0
local0 = 0 - local0
function DungeonResident_Slave_HatchetThrow301012_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 30
    local local3 = UPVAL1
    local local4 = UPVAL0 + 30
    local local5 = UPVAL0 + 20
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3030, TARGET_ENE_0, local5, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3031, TARGET_ENE_0, local5, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DungeonResident_Slave_HatchetThrow301012_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_HatchetThrow301012_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Slave_HatchetThrow301012_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function DungeonResident_Slave_HatchetThrow301012_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local3
local0 = 0 - local0
function DungeonResident_Slave_HatchetThrow301012_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local5
local0 = local4
function DungeonResident_Slave_HatchetThrow301012_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = 0 - local0
function DungeonResident_Slave_HatchetThrow301012_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function DungeonResident_Slave_HatchetThrow301012_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local9
local0 = 0 - local0
function DungeonResident_Slave_HatchetThrow301012_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local11
local0 = local10
function DungeonResident_Slave_HatchetThrow301012_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local13
local0 = local12
function DungeonResident_Slave_HatchetThrow301012_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
local0 = 0 - local0
function DungeonResident_Slave_HatchetThrow301012_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 10
    local local3 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 30) and arg0:GetDist(TARGET_ENE_0) <= UPVAL0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 1.2 - local0
local0 = 0 - local0
function DungeonResident_Slave_HatchetThrow301012_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 10
    local local3 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 30) and arg0:GetDist(TARGET_ENE_0) <= UPVAL0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function DungeonResident_Slave_HatchetThrow301012_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function DungeonResident_Slave_HatchetThrow301012_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function DungeonResident_Slave_HatchetThrow301012_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function DungeonResident_Slave_HatchetThrow301012_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local11
local0 = local10
function DungeonResident_Slave_HatchetThrow301012_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function DungeonResident_Slave_HatchetThrow301012_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local17
local0 = 2.2 - local0
function DungeonResident_Slave_HatchetThrow301012_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
local0 = local17
function DungeonResident_Slave_HatchetThrow301012_Act47(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, UPVAL2 + 1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
function DungeonResident_Slave_HatchetThrow301012_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(1.5, 2.5)
    local local5 = arg0:GetRandam_Float(1.5, 2.5)
    local local6 = 0
    if local0 <= UPVAL0 and local1 <= 20 and (arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) == true or arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) == true) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, DIST_None, 0, 90)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, DIST_None, 0, 90)
        end
    elseif local0 <= 5 then
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
        end
    elseif local0 <= 8 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function DungeonResident_Slave_HatchetThrow301012_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_Slave_HatchetThrow301012Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Slave_HatchetThrow301012Battle_Terminate(arg0, arg1)
    return 
end

function DungeonResident_Slave_HatchetThrow301012Battle_Interupt(arg0, arg1)
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
