local local0 = 0.4
local local1 = 0.4 - local0
local local2 = 39 - local0
local local3 = 0.4 - local0
local local4 = 38 - local0
local local5 = 0.4 - local0
local local6 = 2.4 - local0
local local7 = 0.4 - local0
local local8 = 39 - local0
local local9 = 0.4 - local0
local local10 = 150 - local0
local local11 = 0.4 - local0
local local12 = 14.5 - local0
local local13 = 0.4 - local0
local local14 = 29 - local0
local local15 = 0.4 - local0
local local16 = 16.5 - local0
function OnIf_101090(arg0, arg1, arg2)
    if arg2 == 0 then
        Priest_Boss101090_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Priest_Boss101090Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = 0
    local local6 = 0
    local local7 = 0
    local local8 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:IsFinishTimer(0) == false then
        local5 = 0
    elseif arg0:IsFinishTimer(1) == true then
        local5 = 10
    else
        local5 = 1
    end
    if arg0:IsFinishTimer(2) == false then
        local6 = 0
    else
        local6 = 1
    end
    if arg0:IsFinishTimer(3) == false then
        local7 = 0
    else
        local7 = 1
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[2] = 15
        local0[5] = 25
        local0[8] = 10
        local0[20] = 50
    elseif 38 <= local3 then
        local0[1] = 0 * local5
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 100 * local6
        local0[8] = 0 * local7
    elseif 28 <= local3 then
        local0[1] = 0 * local5
        local0[2] = 0
        local0[3] = 20
        local0[4] = 20
        local0[5] = 0
        local0[6] = 20
        local0[7] = 40 * local6
        local0[8] = 0 * local7
    elseif 18 <= local3 then
        local0[1] = 5 * local5
        local0[2] = 0
        local0[3] = 10
        local0[4] = 20
        local0[5] = 0
        local0[6] = 20
        local0[7] = 35 * local6
        local0[8] = 0 * local7
    elseif 15 <= local3 then
        local0[1] = 5 * local5
        local0[2] = 30
        local0[3] = 20
        local0[4] = 10
        local0[5] = 0
        local0[6] = 10
        local0[7] = 25 * local6
        local0[8] = 0 * local7
    elseif 2.5 <= local3 then
        local0[1] = 10 * local5
        local0[2] = 25
        local0[3] = 20
        local0[4] = 10
        local0[5] = 0
        local0[6] = 10
        local0[7] = 10 * local6
        local0[8] = 35 * local7
    else
        local0[1] = 10 * local5
        local0[2] = 15
        local0[3] = 0
        local0[4] = 0
        local0[5] = 45
        local0[6] = 0
        local0[7] = 0 * local6
        local0[8] = 30 * local7
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act20)
    local1[30] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act47)
    local1[48] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act48)
    local1[49] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act49)
    local1[50] = REGIST_FUNC(arg0, arg1, Priest_Boss101090_Act50)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Priest_Boss101090_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local14
local0 = local13
function Priest_Boss101090_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = UPVAL0 + 1
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_NONE, local5, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_NONE, local5, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_NONE, local5, 0, -1)
    arg0:SetTimer(0, 30)
    arg0:SetTimer(1, 50)
    arg0:SetTimer(2, 7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function Priest_Boss101090_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    local local4 = UPVAL0 + 1
    local local5 = 0
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local4, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Priest_Boss101090_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function Priest_Boss101090_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
function Priest_Boss101090_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    local local4 = UPVAL0 + 1
    local local5 = 0
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local4, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function Priest_Boss101090_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Priest_Boss101090_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function Priest_Boss101090_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 1
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(3, 20)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Priest_Boss101090_Act09(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Priest_Boss101090_Act10(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Priest_Boss101090_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Priest_Boss101090_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function Priest_Boss101090_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
function Priest_Boss101090_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Priest_Boss101090_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3003_Dist_min
    Approach_Act(arg0, arg1, Att3003_Dist_max, Att3003_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, Att3003_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function Priest_Boss101090_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Priest_Boss101090_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3005_Dist_min
    Approach_Act(arg0, arg1, Att3005_Dist_max, Att3005_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, Att3005_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Priest_Boss101090_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function Priest_Boss101090_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Priest_Boss101090_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3008_Dist_min
    Approach_Act(arg0, arg1, Att3008_Dist_max, Att3008_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, Att3008_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Priest_Boss101090_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3009_Dist_min
    Approach_Act(arg0, arg1, Att3009_Dist_max, Att3009_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, Att3009_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
local0 = local13
function Priest_Boss101090_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Priest_Boss101090_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3011_Dist_min
    Approach_Act(arg0, arg1, Att3011_Dist_max, Att3011_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, Att3011_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function Priest_Boss101090_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 18 - local0
local0 = 0.4 - local0
function Priest_Boss101090_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Priest_Boss101090_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3014_Dist_min
    Approach_Act(arg0, arg1, Att3014_Dist_max, Att3014_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, Att3014_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Priest_Boss101090_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3015_Dist_min
    Approach_Act(arg0, arg1, Att3015_Dist_max, Att3015_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, Att3015_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Priest_Boss101090_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3016_Dist_min
    Approach_Act(arg0, arg1, Att3016_Dist_max, Att3016_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, Att3016_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Priest_Boss101090_Act47(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3017_Dist_min
    Approach_Act(arg0, arg1, Att3017_Dist_max, Att3017_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, Att3017_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Priest_Boss101090_Act48(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3018_Dist_min
    Approach_Act(arg0, arg1, Att3018_Dist_max, Att3018_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, Att3018_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Priest_Boss101090_Act49(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3019_Dist_min
    Approach_Act(arg0, arg1, Att3019_Dist_max, Att3019_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, Att3019_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Priest_Boss101090_Act50(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3020_Dist_min
    Approach_Act(arg0, arg1, Att3020_Dist_max, Att3020_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, Att3020_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Priest_Boss101090_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = arg0:GetRandam_Float(2, 3)
    local local6 = 0
    return 
end

function Priest_Boss101090_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Priest_Boss101090Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Priest_Boss101090Battle_Terminate(arg0, arg1)
    return 
end

function Priest_Boss101090Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if UseItem_Act(arg0, arg1, 50, 60) then
        arg1:ClearSubGoal()
        Priest_Boss101090_Act07(arg0, arg1, paramTbl)
        return true
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    local local6 = Shoot_2dist(arg0, arg1, 10, 30, 50, 50)
    if local6 == 1 then
        Priest_Boss101090_Act07(arg0, arg1, paramTbl)
    elseif local6 == 2 then
        Priest_Boss101090_Act07(arg0, arg1, paramTbl)
        return true
    end
    return false
end

return 
