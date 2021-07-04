local local0 = 0.4
local local1 = 0.4 - local0
local local2 = 2.8 - local0
local local3 = 0.4 - local0
local local4 = 3.2 - local0
local local5 = 0.4 - local0
local local6 = 3.5 - local0
local local7 = 0.4 - local0
local local8 = 4.3 - local0
local local9 = 0.4 - local0
local local10 = 3.8 - local0
local local11 = 0.4 - local0
local local12 = 5.5 - local0
local local13 = 0.4 - local0
local local14 = 4.7 - local0
local local15 = 0.4 - local0
local local16 = 3.5 - local0
local local17 = 0.4 - local0
local local18 = 10.4 - local0
local local19 = 0.4 - local0
local local20 = 10.4 - local0
local local21 = 0.4 - local0
local local22 = 10.4 - local0
local local23 = 0.4 - local0
local local24 = 4.2 - local0
local local25 = 0.4 - local0
local local26 = 1.4 - local0
local local27 = 0 - local0
local local28 = 1
function OnIf_270001(arg0, arg1, arg2)
    if arg2 == 0 then
        Messenger_of_Church_Lantern270001_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Messenger_of_Church_Lantern270001Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local7 = arg0:GetNpcThinkParamID()
    local local8 = 1
    local local9 = 0
    if arg0:GetNumber(0) == 0 then
        if 4.5 <= local3 then
            local0[24] = 100
        else
            local0[25] = 100
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local6 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5696) then
        if 6 <= local3 then
            local0[2] = 15
            local0[3] = 0
            local0[4] = 0
            local0[6] = 15
            local0[10] = 70
            local0[13] = 0
        elseif 4 <= local3 then
            local0[2] = 15
            local0[3] = 10
            local0[4] = 15
            local0[6] = 20
            local0[10] = 30
            local0[13] = 10
        elseif 2 <= local3 then
            local0[2] = 25
            local0[3] = 10
            local0[4] = 25
            local0[6] = 10
            local0[10] = 0
            local0[13] = 30
        else
            local0[2] = 20
            local0[3] = 10
            local0[4] = 30
            local0[6] = 0
            local0[10] = 0
            local0[13] = 30
        end
    elseif 10 <= local3 then
        local0[2] = 0
        local0[3] = 10
        local0[4] = 30
        local0[5] = 0
        local0[6] = 70
        local0[10] = 0
        local0[13] = 0
    elseif 7 <= local3 then
        local0[2] = 35
        local0[3] = 10
        local0[4] = 35
        local0[6] = 30
        local0[10] = 0
        local0[13] = 0
    elseif 3 <= local3 then
        local0[2] = 50
        local0[3] = 30
        local0[4] = 30
        local0[6] = 0
        local0[10] = 0
        local0[13] = 0
    else
        local0[2] = 30
        local0[3] = 20
        local0[4] = 30
        local0[6] = 0
        local0[10] = 0
        local0[13] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act08)
    local1[10] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act14)
    local1[20] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act25)
    local1[30] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act47)
    local1[48] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act48)
    local1[49] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act49)
    local1[50] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_Act50)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Messenger_of_Church_Lantern270001_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
local0 = local28
function Messenger_of_Church_Lantern270001_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 2
    local local3 = UPVAL0 + 1
    if UPVAL2 == 0 then
        local2 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
local0 = local28
function Messenger_of_Church_Lantern270001_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    local local4 = UPVAL0 + 1
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    if local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local4, 0, -1)
    elseif local1 <= 70 then
        if arg0:GetRandam_Int(1, 100) <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local4, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local4, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local4, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local4, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local4, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
local0 = local28
function Messenger_of_Church_Lantern270001_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
local0 = local28
function Messenger_of_Church_Lantern270001_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
local0 = local28
function Messenger_of_Church_Lantern270001_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
local0 = local28
function Messenger_of_Church_Lantern270001_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local14
local0 = local13
local0 = local28
function Messenger_of_Church_Lantern270001_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 2
    local local3 = UPVAL0 + 1
    if UPVAL2 == 0 then
        local2 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local2, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local3, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
local0 = local28
function Messenger_of_Church_Lantern270001_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    local local4 = UPVAL0 + 1
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    if local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, local4, 0, -1)
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, local4, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, local4, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local4, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local18
local0 = local17
local0 = local28
function Messenger_of_Church_Lantern270001_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, arg0:GetNumber(0) + 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
local0 = local19
local0 = local28
function Messenger_of_Church_Lantern270001_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    local local4 = UPVAL0 + 1
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local22
local0 = local21
local0 = local28
function Messenger_of_Church_Lantern270001_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    local local4 = UPVAL0 + 1
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local24
local0 = local23
local0 = local28
function Messenger_of_Church_Lantern270001_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    local local4 = UPVAL0 + 1
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local26
local0 = local25
local0 = local28
function Messenger_of_Church_Lantern270001_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    local local4 = UPVAL0 + 1
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Messenger_of_Church_Lantern270001_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Messenger_of_Church_Lantern270001_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Messenger_of_Church_Lantern270001_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 99 - local0
function Messenger_of_Church_Lantern270001_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 999
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3033, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Messenger_of_Church_Lantern270001_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, 20, 20, 0, 2)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Messenger_of_Church_Lantern270001_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Lantern270001_Act31(arg0, arg1, arg2)
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
function Messenger_of_Church_Lantern270001_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.4 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Lantern270001_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Lantern270001_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
function Messenger_of_Church_Lantern270001_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function Messenger_of_Church_Lantern270001_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Messenger_of_Church_Lantern270001_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
local0 = local11
function Messenger_of_Church_Lantern270001_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Lantern270001_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
local0 = local13
function Messenger_of_Church_Lantern270001_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.1 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Lantern270001_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function Messenger_of_Church_Lantern270001_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.5 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Lantern270001_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Lantern270001_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local18
local0 = local17
function Messenger_of_Church_Lantern270001_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 10.4 - local0
local0 = 0.4 - local0
function Messenger_of_Church_Lantern270001_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
local0 = local19
function Messenger_of_Church_Lantern270001_Act47(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local22
local0 = local21
function Messenger_of_Church_Lantern270001_Act48(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local24
local0 = local23
function Messenger_of_Church_Lantern270001_Act49(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local26
local0 = local25
function Messenger_of_Church_Lantern270001_Act50(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Messenger_of_Church_Lantern270001_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(1, 1.5)
    local local5 = arg0:GetRandam_Float(1, 2)
    local local6 = 0
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if local0 <= 2 then
            if local1 <= 0 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
            elseif local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
            elseif local1 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
            end
        elseif local0 <= 5 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
            end
        elseif local0 <= 10 and local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 4 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    end
    return 
end

function Messenger_of_Church_Lantern270001_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Messenger_of_Church_Lantern270001Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Messenger_of_Church_Lantern270001Battle_Terminate(arg0, arg1)
    return 
end

function Messenger_of_Church_Lantern270001Battle_Interupt(arg0, arg1)
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
