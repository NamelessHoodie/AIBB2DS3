local local0 = 0.6
local local1 = 0.6 - local0
local local2 = 6.1 - local0
local local3 = 0.6 - local0
local local4 = 5.6 - local0
local local5 = 0.6 - local0
local local6 = 6.4 - local0
local local7 = 45 - local0
local local8 = 30 - local0
local local9 = 0.6 - local0
local local10 = 6.4 - local0
local local11 = 0.6 - local0
local local12 = 2.5 - local0
function OnIf_257000(arg0, arg1, arg2)
    if arg2 == 0 then
        FromMoon_Big257000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function FromMoon_Big257000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = 1
    local local7 = 1
    if arg0:IsFinishTimer(0) == false or arg0:GetNpcThinkParamID() == 257090 then
        local6 = 0
    else
        local6 = 1
    end
    if 5.5 <= arg0:GetDistYSigned(TARGET_ENE_0) then
        local7 = 0
    else
        local7 = 1
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        if arg0:GetNpcThinkParamID() == 257090 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) == false then
            local0[12] = 100
        elseif arg0:GetEventRequest() == 40 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[11] = 30 * local7
            local0[12] = 30
            local0[13] = 40 * local6
        elseif 9 <= local3 then
            local0[1] = 35
            local0[2] = 5
            local0[3] = 5
            local0[4] = 5
            local0[5] = 5
            local0[11] = 15 * local7
            local0[12] = 15
            local0[13] = 15 * local6
        elseif 3.5 <= local3 then
            local0[1] = 45
            local0[2] = 20
            local0[3] = 10
            local0[4] = 15
            local0[5] = 10
            local0[11] = 0 * local7
            local0[12] = 0
            local0[13] = 0 * local6
        else
            local0[1] = 40
            local0[2] = 20
            local0[3] = 15
            local0[4] = 10
            local0[5] = 15
            local0[11] = 0 * local7
            local0[12] = 0
            local0[13] = 0 * local6
        end
    elseif 8 <= local3 then
        local0[1] = 65
        local0[2] = 10
        local0[3] = 10
        local0[4] = 10
        local0[5] = 5
    elseif 3.5 <= local3 then
        local0[1] = 45
        local0[2] = 20
        local0[3] = 10
        local0[4] = 15
        local0[5] = 10
    else
        local0[1] = 40
        local0[2] = 20
        local0[3] = 15
        local0[4] = 10
        local0[5] = 15
    end
    local1[1] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act13)
    local1[20] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act23)
    local1[30] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act47)
    local1[48] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act48)
    local1[49] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act49)
    local1[50] = REGIST_FUNC(arg0, arg1, FromMoon_Big257000_Act50)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, FromMoon_Big257000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
function FromMoon_Big257000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 999, 0, 2)
    if local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function FromMoon_Big257000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
function FromMoon_Big257000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function FromMoon_Big257000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function FromMoon_Big257000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FromMoon_Big257000_Act06(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FromMoon_Big257000_Act07(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FromMoon_Big257000_Act08(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FromMoon_Big257000_Act09(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FromMoon_Big257000_Act10(arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local7
function FromMoon_Big257000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 999
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0, 0, 180)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local8
function FromMoon_Big257000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 999
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0, 0, 180)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

function FromMoon_Big257000_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_NONE, 999, 0, -1)
    arg0:SetTimer(0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FromMoon_Big257000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FromMoon_Big257000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FromMoon_Big257000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function FromMoon_Big257000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6.4 - local0
local0 = 0.6 - local0
function FromMoon_Big257000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function FromMoon_Big257000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 7.3 - local0
local0 = 0.6 - local0
function FromMoon_Big257000_Act33(arg0, arg1, arg2)
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
function FromMoon_Big257000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9 - local0
local0 = 0.6 - local0
function FromMoon_Big257000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9 - local0
local0 = 0.6 - local0
function FromMoon_Big257000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9 - local0
local0 = 0.6 - local0
function FromMoon_Big257000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9 - local0
local0 = 0.6 - local0
function FromMoon_Big257000_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9 - local0
local0 = 0.6 - local0
function FromMoon_Big257000_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local7
local0 = 0.6 - local0
function FromMoon_Big257000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
local0 = 0.6 - local0
function FromMoon_Big257000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 999 - local0
local0 = 0.6 - local0
function FromMoon_Big257000_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9 - local0
local0 = 0.6 - local0
function FromMoon_Big257000_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function FromMoon_Big257000_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function FromMoon_Big257000_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9 - local0
local0 = 0.6 - local0
function FromMoon_Big257000_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9 - local0
local0 = 0.6 - local0
function FromMoon_Big257000_Act47(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9 - local0
local0 = 0.6 - local0
function FromMoon_Big257000_Act48(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9 - local0
local0 = 0.6 - local0
function FromMoon_Big257000_Act49(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9 - local0
local0 = 0.6 - local0
function FromMoon_Big257000_Act50(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FromMoon_Big257000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = arg0:GetRandam_Float(2, 3)
    local local6 = 0
    return 
end

function FromMoon_Big257000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function FromMoon_Big257000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function FromMoon_Big257000Battle_Terminate(arg0, arg1)
    return 
end

function FromMoon_Big257000Battle_Interupt(arg0, arg1)
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
