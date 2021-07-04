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
local local17 = 1 - local0
local local18 = 40.4 - local0
local local19 = 0.4 - local0
local local20 = 4.3 - local0
local local21 = 1 - local0
local local22 = 40.4 - local0
local local23 = 0.4 - local0
local local24 = 6.5 - local0
local local25 = 0.4 - local0
local local26 = 6.8 - local0
local local27 = 0.4 - local0
local local28 = 7.9 - local0
local local29 = 0 - local0
local local30 = 1
local local31 = 1
function OnIf_270000(arg0, arg1, arg2)
    if arg2 == 0 then
        Messenger_of_Church_Gun270000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local31
function Messenger_of_Church_Gun270000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = 1
    if arg0:GetMp(TARGET_SELF) <= 0 then
        local6 = 0
    else
        local6 = 1
    end
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 5618) or arg0:HasSpecialEffectId(TARGET_SELF, 5619) then
        local local7 = 0
        SETUPVAL 11 0 0
    end
    if arg0:GetNumber(0) == 0 and arg0:HasSpecialEffectId(TARGET_SELF, 5557) == false then
        if 4.5 <= local3 then
            local0[24] = 100
        else
            local0[25] = 100
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5695) and arg0:GetEventRequest() == 100 then
        local0[11] = 100
    elseif not not arg0:HasSpecialEffectId(TARGET_SELF, 5618) or arg0:HasSpecialEffectId(TARGET_SELF, 5619) then
        local0[9] = 10
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5695) then
        if 7 <= local3 then
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0
            local0[9] = 100
        elseif 4 <= local3 then
            local0[2] = 10
            local0[3] = 10
            local0[4] = 10
            local0[6] = 0
            local0[9] = 50
        elseif 2 <= local3 then
            local0[2] = 30
            local0[3] = 20
            local0[4] = 20
            local0[6] = 0
            local0[9] = 30 * local6
        else
            local0[2] = 30
            local0[3] = 20
            local0[4] = 20
            local0[6] = 0
            local0[9] = 30 * local6
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5697) then
        if 7 <= local3 then
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0
            local0[11] = 30
            local0[12] = 30
            local0[13] = 40
        elseif 4 <= local3 then
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0
            local0[11] = 50
            local0[12] = 30
            local0[13] = 20
        elseif 2.5 <= local3 then
            local0[2] = 5
            local0[3] = 5
            local0[4] = 5
            local0[6] = 5
            local0[7] = 5
            local0[8] = 5
            local0[11] = 45
            local0[12] = 25
            local0[13] = 0
        else
            local0[2] = 10
            local0[3] = 10
            local0[4] = 20
            local0[6] = 0
            local0[7] = 0
            local0[8] = 10
            local0[11] = 45
            local0[12] = 15
            local0[13] = 0
        end
    elseif 7 <= local3 then
        local0[2] = 10
        local0[3] = 10
        local0[4] = 30
        local0[6] = 30
        local0[7] = 20
        local0[8] = 10
    elseif 4 <= local3 then
        local0[2] = 10
        local0[3] = 10
        local0[4] = 20
        local0[6] = 20
        local0[7] = 30
        local0[8] = 20
    elseif 2.5 <= local3 then
        local0[2] = 25
        local0[3] = 10
        local0[4] = 25
        local0[6] = 15
        local0[7] = 10
        local0[8] = 25
    else
        local0[2] = 20
        local0[3] = 10
        local0[4] = 30
        local0[6] = 0
        local0[7] = 20
        local0[8] = 30
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act13)
    local1[20] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act25)
    local1[30] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act47)
    local1[48] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act48)
    local1[49] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act49)
    local1[50] = REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_Act50)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Messenger_of_Church_Gun270000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
local0 = local30
function Messenger_of_Church_Gun270000_Act01(arg0, arg1, arg2)
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
local0 = local30
function Messenger_of_Church_Gun270000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = UPVAL1
    local local5 = UPVAL0 + 2
    local local6 = UPVAL0 + 1
    if UPVAL2 == 0 then
        local5 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local5, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5695) then
        if local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local6, 0, -1)
        elseif local1 <= 60 then
            if local2 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local6, 0, -1)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local6, 0)
            elseif local2 <= 45 then
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local6, 0, -1)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local6, 0)
            elseif local2 <= 75 then
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local6, 0, -1)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local6, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local6, 0, -1)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local6, 0)
            end
        elseif local1 <= 90 then
            if local2 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local6, 0, -1)
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local6, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local6, 0)
            elseif local2 <= 45 then
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local6, 0, -1)
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local6, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local6, 0)
            elseif local2 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local6, 0, -1)
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local6, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, local6, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local6, 0, -1)
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, local6, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local6, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local6, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local6, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, local6, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local6, 0)
        end
    elseif local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local6, 0, -1)
    elseif local1 <= 70 then
        if local2 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local6, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local6, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local6, 0, -1)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local6, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local6, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local6, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local6, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
local0 = local30
function Messenger_of_Church_Gun270000_Act03(arg0, arg1, arg2)
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
local0 = local30
function Messenger_of_Church_Gun270000_Act04(arg0, arg1, arg2)
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
local0 = local30
function Messenger_of_Church_Gun270000_Act05(arg0, arg1, arg2)
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
local0 = local30
function Messenger_of_Church_Gun270000_Act06(arg0, arg1, arg2)
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
local0 = local30
function Messenger_of_Church_Gun270000_Act07(arg0, arg1, arg2)
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
local0 = local30
function Messenger_of_Church_Gun270000_Act08(arg0, arg1, arg2)
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

local0 = local17
local0 = local18
local0 = local30
local0 = local31
function Messenger_of_Church_Gun270000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 18
    local local4 = UPVAL1 + 2
    local local5 = UPVAL1 + 1
    local local6 = 50
    local local7 = arg0:GetMp(TARGET_SELF)
    if UPVAL2 == 0 then
        local4 = 999
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5618) then
        local5 = DIST_None
        local3 = 9999
        local6 = 100
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5619) then
        local3 = UPVAL1
    end
    if 1 <= local7 then
        if UPVAL3 == 0 and local3 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
        elseif UPVAL3 == 1 then
            if local0 <= UPVAL0 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 1.5, TARGET_ENE_0, true, -1)
            else
                Approach_Act(arg0, arg1, local3, local4, 0, 3)
            end
        end
        if 2 <= local7 and local1 <= 35 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, local5, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local5, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, local5, 0, 0)
        end
    else
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(5, 10), true, true, -1)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, local5, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local18
function Messenger_of_Church_Gun270000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(POINT_EVENT)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, POINT_EVENT, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local24
local0 = local23
local0 = local30
function Messenger_of_Church_Gun270000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local26
local0 = local25
local0 = local30
function Messenger_of_Church_Gun270000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0, local3, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local28
local0 = local27
local0 = local30
function Messenger_of_Church_Gun270000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 2
    if UPVAL2 == 0 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL0 - 1.5, local3, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Messenger_of_Church_Gun270000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Messenger_of_Church_Gun270000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Messenger_of_Church_Gun270000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 99 - local0
function Messenger_of_Church_Gun270000_Act24(arg0, arg1, arg2)
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

function Messenger_of_Church_Gun270000_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, 20, 20, 0, 2)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Messenger_of_Church_Gun270000_Act30(arg0, arg1, arg2)
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
function Messenger_of_Church_Gun270000_Act31(arg0, arg1, arg2)
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
function Messenger_of_Church_Gun270000_Act32(arg0, arg1, arg2)
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
function Messenger_of_Church_Gun270000_Act33(arg0, arg1, arg2)
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
function Messenger_of_Church_Gun270000_Act34(arg0, arg1, arg2)
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
function Messenger_of_Church_Gun270000_Act35(arg0, arg1, arg2)
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
function Messenger_of_Church_Gun270000_Act36(arg0, arg1, arg2)
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
function Messenger_of_Church_Gun270000_Act37(arg0, arg1, arg2)
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
function Messenger_of_Church_Gun270000_Act38(arg0, arg1, arg2)
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
function Messenger_of_Church_Gun270000_Act39(arg0, arg1, arg2)
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
function Messenger_of_Church_Gun270000_Act40(arg0, arg1, arg2)
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
function Messenger_of_Church_Gun270000_Act41(arg0, arg1, arg2)
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
function Messenger_of_Church_Gun270000_Act42(arg0, arg1, arg2)
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
function Messenger_of_Church_Gun270000_Act43(arg0, arg1, arg2)
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
function Messenger_of_Church_Gun270000_Act44(arg0, arg1, arg2)
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
function Messenger_of_Church_Gun270000_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 40.4 - local0
local0 = 1 - local0
function Messenger_of_Church_Gun270000_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9999
local0 = 0.4 - local0
function Messenger_of_Church_Gun270000_Act47(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local24
local0 = local23
function Messenger_of_Church_Gun270000_Act48(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local26
local0 = local25
function Messenger_of_Church_Gun270000_Act49(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local28
local0 = local27
function Messenger_of_Church_Gun270000_Act50(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Messenger_of_Church_Gun270000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(1.5, 2.5)
    local local5 = arg0:GetRandam_Float(1, 1.5)
    local local6 = 0
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5695) then
            if local0 <= 5 then
                if local1 <= 20 then
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
                elseif local1 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
                elseif local1 <= 60 then
                    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
                end
            elseif local0 <= 8 then
                if local1 <= 10 then
                    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
                end
            elseif local0 <= 10 and local1 <= 10 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
            end
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5697) then
            if local0 <= 2 then
                if local1 <= 20 then
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
                elseif local1 <= 30 then
                    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
                elseif local1 <= 35 then
                    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
                end
            elseif local0 <= 6 then
                if local1 <= 30 then
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
                elseif local1 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
                elseif local1 <= 60 then
                    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
                end
            elseif local0 <= 10 and local1 <= 10 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
            end
        elseif local0 <= 2 then
            if local1 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
            elseif local1 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
            elseif local1 <= 35 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 3.5, TARGET_ENE_0, true, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
            end
        elseif local0 <= 5 then
            if local1 <= 30 then
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

function Messenger_of_Church_Gun270000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Messenger_of_Church_Gun270000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Messenger_of_Church_Gun270000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local12
local0 = local4
local0 = local24
local0 = local18
function Messenger_of_Church_Gun270000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        local local4 = arg0:GetMp(TARGET_SELF)
        if UseItem_Act(arg0, arg1, 10, 100) then
            arg1:ClearSubGoal()
            if arg0:HasSpecialEffectId(TARGET_SELF, 5695) then
                if 4 <= local3 then
                    if 1 <= local4 then
                        arg1:AddSubGoal(GOAL_COMMON_Attack, 1, 3015, TARGET_ENE_0, DIST_Middle, 0)
                    else
                        Approach_Act(arg0, arg1, UPVAL0 - 0.5, 9999, 0, 2)
                        arg1:AddSubGoal(GOAL_COMMON_Attack, 1, 3008, TARGET_ENE_0, UPVAL0, 0)
                    end
                else
                    Approach_Act(arg0, arg1, UPVAL1, 9999, 0, 2)
                    arg1:AddSubGoal(GOAL_COMMON_Attack, 1, 3002, TARGET_ENE_0, UPVAL1, 0)
                end
            elseif arg0:HasSpecialEffectId(TARGET_SELF, 5697) then
                if 4 <= local3 then
                    Approach_Act(arg0, arg1, UPVAL2 - 0.5, 9999, 0, 2)
                    arg1:AddSubGoal(GOAL_COMMON_Attack, 1, 3021, TARGET_ENE_0, UPVAL2, 0)
                else
                    Approach_Act(arg0, arg1, UPVAL1, 9999, 0, 2)
                    arg1:AddSubGoal(GOAL_COMMON_Attack, 1, 3002, TARGET_ENE_0, UPVAL1, 0)
                end
            elseif 5 <= local3 then
                Approach_Act(arg0, arg1, UPVAL0 - 0.5, 9999, 0, 2)
                arg1:AddSubGoal(GOAL_COMMON_Attack, 1, 3008, TARGET_ENE_0, UPVAL0, 0)
            else
                Approach_Act(arg0, arg1, UPVAL1, 9999, 0, 2)
                arg1:AddSubGoal(GOAL_COMMON_Attack, 1, 3002, TARGET_ENE_0, UPVAL1, 0)
            end
            return true
        else
            local local5 = arg0:GetRandam_Int(1, 100)
            local local6 = arg0:GetDist(TARGET_ENE_0)
            if GuardBreak_Act(arg0, arg1, 10, 50) then
                if arg0:HasSpecialEffectId(TARGET_SELF, 5695) then
                    if 1 <= local4 then
                        arg1:AddSubGoal(GOAL_COMMON_Attack, 1, 3015, TARGET_ENE_0, UPVAL3, 0)
                    else
                        Approach_Act(arg0, arg1, UPVAL0 - 0.5, 9999, 0, 2)
                        arg1:AddSubGoal(GOAL_COMMON_Attack, 1, 3008, TARGET_ENE_0, UPVAL0, 0)
                    end
                elseif arg0:HasSpecialEffectId(TARGET_SELF, 5697) then
                    if 4 <= local6 then
                        Approach_Act(arg0, arg1, UPVAL2 - 0.5, 9999, 0, 2)
                        arg1:AddSubGoal(GOAL_COMMON_Attack, 1, 3021, TARGET_ENE_0, UPVAL2, 0)
                    else
                        Approach_Act(arg0, arg1, UPVAL1, 9999, 0, 2)
                        arg1:AddSubGoal(GOAL_COMMON_Attack, 1, 3002, TARGET_ENE_0, UPVAL1, 0)
                    end
                elseif 5 <= local6 then
                    Approach_Act(arg0, arg1, UPVAL0 - 0.5, 9999, 0, 2)
                    arg1:AddSubGoal(GOAL_COMMON_Attack, 1, 3008, TARGET_ENE_0, UPVAL0, 0)
                else
                    Approach_Act(arg0, arg1, UPVAL1, 9999, 0, 2)
                    arg1:AddSubGoal(GOAL_COMMON_Attack, 1, 3002, TARGET_ENE_0, UPVAL1, 0)
                end
                return true
            else
                return false
            end
        end
    end
end

return 
