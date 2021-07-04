local local0 = 0.2
local local1 = 0.2 - local0
local local2 = 3.9 - local0
local local3 = 0.2 - local0
local local4 = 4 - local0
function OnIf_219000(arg0, arg1, arg2)
    if arg2 == 0 then
        Parasite219000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Parasite219000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    else
        local0[1] = 60
        local0[2] = 40
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Parasite219000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Parasite219000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Parasite219000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Parasite219000_Act04)
    local1[20] = REGIST_FUNC(arg0, arg1, Parasite219000_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, Parasite219000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Parasite219000_Act23)
    local1[30] = REGIST_FUNC(arg0, arg1, Parasite219000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Parasite219000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, Parasite219000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, Parasite219000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, Parasite219000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, Parasite219000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, Parasite219000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, Parasite219000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, Parasite219000_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, Parasite219000_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, Parasite219000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, Parasite219000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, Parasite219000_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, Parasite219000_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, Parasite219000_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, Parasite219000_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, Parasite219000_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, Parasite219000_Act47)
    local1[48] = REGIST_FUNC(arg0, arg1, Parasite219000_Act48)
    local1[49] = REGIST_FUNC(arg0, arg1, Parasite219000_Act49)
    local1[50] = REGIST_FUNC(arg0, arg1, Parasite219000_Act50)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Parasite219000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
function Parasite219000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function Parasite219000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Parasite219000_Act03(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Parasite219000_Act04(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Parasite219000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Parasite219000_Act30(arg0, arg1, arg2)
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
function Parasite219000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3002_Dist_min
    Approach_Act(arg0, arg1, Att3002_Dist_max, Att3002_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, Att3002_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3003_Dist_min
    Approach_Act(arg0, arg1, Att3003_Dist_max, Att3003_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, Att3003_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3004_Dist_min
    Approach_Act(arg0, arg1, Att3004_Dist_max, Att3004_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, Att3004_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3005_Dist_min
    Approach_Act(arg0, arg1, Att3005_Dist_max, Att3005_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, Att3005_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3006_Dist_min
    Approach_Act(arg0, arg1, Att3006_Dist_max, Att3006_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, Att3006_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3007_Dist_min
    Approach_Act(arg0, arg1, Att3007_Dist_max, Att3007_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, Att3007_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3008_Dist_min
    Approach_Act(arg0, arg1, Att3008_Dist_max, Att3008_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, Att3008_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3009_Dist_min
    Approach_Act(arg0, arg1, Att3009_Dist_max, Att3009_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, Att3009_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3010_Dist_min
    Approach_Act(arg0, arg1, Att3010_Dist_max, Att3010_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, Att3010_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3011_Dist_min
    Approach_Act(arg0, arg1, Att3011_Dist_max, Att3011_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, Att3011_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3012_Dist_min
    Approach_Act(arg0, arg1, Att3012_Dist_max, Att3012_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, Att3012_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3013_Dist_min
    Approach_Act(arg0, arg1, Att3013_Dist_max, Att3013_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, Att3013_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3014_Dist_min
    Approach_Act(arg0, arg1, Att3014_Dist_max, Att3014_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, Att3014_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3015_Dist_min
    Approach_Act(arg0, arg1, Att3015_Dist_max, Att3015_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, Att3015_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3016_Dist_min
    Approach_Act(arg0, arg1, Att3016_Dist_max, Att3016_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, Att3016_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act47(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3017_Dist_min
    Approach_Act(arg0, arg1, Att3017_Dist_max, Att3017_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, Att3017_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act48(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3018_Dist_min
    Approach_Act(arg0, arg1, Att3018_Dist_max, Att3018_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, Att3018_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act49(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3019_Dist_min
    Approach_Act(arg0, arg1, Att3019_Dist_max, Att3019_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, Att3019_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_Act50(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3020_Dist_min
    Approach_Act(arg0, arg1, Att3020_Dist_max, Att3020_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, Att3020_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Parasite219000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 3.5)
    local local4 = arg0:GetRandam_Float(2, 3)
    local local5 = 0
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
    end
    return 
end

function Parasite219000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Parasite219000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Parasite219000Battle_Terminate(arg0, arg1)
    return 
end

function Parasite219000Battle_Interupt(arg0, arg1)
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
