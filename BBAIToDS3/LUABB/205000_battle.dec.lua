local local0 = 0.4
local local1 = 0.4 - local0
local local2 = 3.2 - local0
local local3 = 0.4 - local0
local local4 = 4.3 - local0
local local5 = 0.4 - local0
local local6 = 3.6 - local0
local local7 = 0.4 - local0
local local8 = 3.8 - local0
local local9 = 0.4 - local0
local local10 = 3.6 - local0
local local11 = 0.4 - local0
local local12 = 2.3 - local0
local local13 = 0.4 - local0
local local14 = 3.6 - local0
local local15 = 0.4 - local0
local local16 = 3.2 - local0
local local17 = 0.4 - local0
local local18 = 4.5 - local0
local local19 = 0.4 - local0
local local20 = 6.9 - local0
local local21 = 0.4 - local0
local local22 = 9.3 - local0
local local23 = 0.4 - local0
local local24 = 4.5 - local0
local local25 = 0.4 - local0
local local26 = 4.2 - local0
local local27 = 0.4 - local0
local local28 = 12.7 - local0
local local29 = 0.4 - local0
local local30 = 12.3 - local0
local local31 = 0.4 - local0
local local32 = 3.8 - local0
function OnIf_205000(arg0, arg1, arg2)
    if arg2 == 0 then
        Deranged_Evil_Spirit205000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = false
function Deranged_Evil_Spirit205000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest(0)
    local local5 = 1
    local local6 = 1
    local local7 = 1
    if arg0:IsFinishTimer(4) == false then
        local local8 = true
        SETUPVAL 11 0 0
    else
        local local8 = false
        SETUPVAL 11 0 0
    end
    if arg0:IsFinishTimer(0) == false then
        local5 = 20
    else
        local5 = 1
    end
    if arg0:IsFinishTimer(1) == false then
        local6 = 0
    else
        local6 = 1
    end
    if arg0:IsFinishTimer(3) == false then
        local7 = 4
    else
        local7 = 1
    end
    if arg0:GetRandam_Int(1, 100) <= 40 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[20] = 100
    elseif UPVAL0 == true then
        local0[10] = 100
    elseif 9 <= local3 then
        local0[1] = 0
        local0[2] = 10
        local0[3] = 20
        local0[4] = 0
        local0[5] = 0
        local0[6] = 40
        local0[7] = 0 * local6
        local0[8] = 20
        local0[9] = 10
    elseif 5 <= local3 then
        local0[1] = 0
        local0[2] = 20
        local0[3] = 20
        local0[4] = 0
        local0[5] = 0
        local0[6] = 25
        local0[7] = 0 * local6
        local0[8] = 20
        local0[9] = 15
    elseif 2.5 <= local3 then
        local0[1] = 10
        local0[2] = 25
        local0[3] = 0
        local0[4] = 5
        local0[5] = 5
        local0[6] = 0
        local0[7] = 5 * local6
        local0[8] = 20
        local0[9] = 30
    else
        local0[1] = 10
        local0[2] = 10
        local0[3] = 0
        local0[4] = 5
        local0[5] = 10 * local7
        local0[6] = 0
        local0[7] = 10 * local5 * local6
        local0[8] = 15
        local0[9] = 40
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act20)
    local1[25] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act26)
    local1[27] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act29)
    local1[30] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_Act46)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Deranged_Evil_Spirit205000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local16
local0 = local15
function Deranged_Evil_Spirit205000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 11 then
        Approach_Act(arg0, arg1, local1, UPVAL0, local3, 1)
    else
        Approach_Act(arg0, arg1, local1, 100, local3, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local18
local0 = local17
function Deranged_Evil_Spirit205000_Act02(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    local local3 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 11 then
        Approach_Act(arg0, arg1, local0, UPVAL0, local3, 1)
    else
        Approach_Act(arg0, arg1, local0, 100, local3, 2)
    end
    if arg0:GetRandam_Int(1, 100) <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, local2, 0, -1)
        arg0:SetTimer(3, 7)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
local0 = local19
local0 = local22
local0 = local21
function Deranged_Evil_Spirit205000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= 7 then
        local local2 = UPVAL0
        local local3 = UPVAL1
        local local4 = 0
        if local0 <= 11 then
            Approach_Act(arg0, arg1, local2, UPVAL0, local4, 1)
        else
            Approach_Act(arg0, arg1, local2, 100, local4, 2)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    else
        local local2 = UPVAL2
        local local3 = UPVAL3
        local local4 = 0
        if local0 <= 11 then
            Approach_Act(arg0, arg1, local2, UPVAL2, local4, 1)
        else
            Approach_Act(arg0, arg1, local2, 100, local4, 2)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local24
local0 = local23
function Deranged_Evil_Spirit205000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 11 then
        Approach_Act(arg0, arg1, local1, UPVAL0, local3, 1)
    else
        Approach_Act(arg0, arg1, local1, 100, local3, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local26
local0 = local25
function Deranged_Evil_Spirit205000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 11 then
        Approach_Act(arg0, arg1, local1, UPVAL0, local3, 1)
    else
        Approach_Act(arg0, arg1, local1, 100, local3, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local28
local0 = local27
local0 = local30
local0 = local29
function Deranged_Evil_Spirit205000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        local local1 = UPVAL0
        local local2 = UPVAL1
        local local3 = 0
        if local0 <= 11 then
            Approach_Act(arg0, arg1, local1, UPVAL0, local3, 1)
        else
            Approach_Act(arg0, arg1, local1, 100, local3, 2)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
        GetWellSpace_Odds = 100
    else
        local local1 = UPVAL2
        local local2 = UPVAL3
        local local3 = 0
        if local0 <= 11 then
            Approach_Act(arg0, arg1, local1, UPVAL2, local3, 1)
        else
            Approach_Act(arg0, arg1, local1, 100, local3, 2)
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
        arg0:SetTimer(0, 7)
        GetWellSpace_Odds = 0
    end
    return GetWellSpace_Odds
end

local0 = local32
local0 = local31
function Deranged_Evil_Spirit205000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = 0
    if local0 <= local2 and arg0:IsFinishTimer(0) == false then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.9, TARGET_ENE_0, 0, 0, 0)
    elseif local0 <= 11 then
        Approach_Act(arg0, arg1, local2, UPVAL0, local4, 1)
    else
        Approach_Act(arg0, arg1, local2, 100, local4, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(1, 7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Deranged_Evil_Spirit205000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    local local6 = 0
    if local0 > 4 or local1 > 50 then
        if local0 <= 11 then
            Approach_Act(arg0, arg1, local3, UPVAL0, local6, 1)
        else
            Approach_Act(arg0, arg1, local3, 100, local6, 2)
        end
    end
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
    elseif local1 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local5, 0)
        if local2 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local5, 0)
        elseif local2 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local5, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local5, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Deranged_Evil_Spirit205000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL0 + 1
    local local6 = 0
    if local0 > 4 or local1 > 25 then
        if local0 <= 11 then
            Approach_Act(arg0, arg1, local3, UPVAL0, local6, 1)
        else
            Approach_Act(arg0, arg1, local3, 100, local6, 2)
        end
    end
    if local1 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local5, 0, -1)
        if local2 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local5, 0)
        elseif local2 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local5, 0)
        elseif local2 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local5, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local5, 0)
        end
    elseif local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local5, 0)
        if local2 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local5, 0)
        elseif local2 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local5, 0)
        elseif local2 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local5, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local5, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, local5, 0)
        if local2 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local5, 0)
        elseif local2 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local5, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local5, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function Deranged_Evil_Spirit205000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, 9999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local26
function Deranged_Evil_Spirit205000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 2 and local0 <= 70 then
        if local0 <= 60 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0, 0, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 1.5, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Deranged_Evil_Spirit205000_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Deranged_Evil_Spirit205000_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Deranged_Evil_Spirit205000_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Deranged_Evil_Spirit205000_Act28(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Deranged_Evil_Spirit205000_Act29(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Deranged_Evil_Spirit205000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Deranged_Evil_Spirit205000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Deranged_Evil_Spirit205000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Deranged_Evil_Spirit205000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Deranged_Evil_Spirit205000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Deranged_Evil_Spirit205000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function Deranged_Evil_Spirit205000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function Deranged_Evil_Spirit205000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local18
local0 = local17
function Deranged_Evil_Spirit205000_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
local0 = local19
function Deranged_Evil_Spirit205000_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local22
local0 = local21
function Deranged_Evil_Spirit205000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local24
local0 = local23
function Deranged_Evil_Spirit205000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local26
local0 = local25
function Deranged_Evil_Spirit205000_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local28
local0 = local27
function Deranged_Evil_Spirit205000_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local30
local0 = local29
function Deranged_Evil_Spirit205000_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local32
local0 = local31
function Deranged_Evil_Spirit205000_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
local0 = 0.4 - local0
function Deranged_Evil_Spirit205000_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deranged_Evil_Spirit205000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 3.5)
    local local4 = arg0:GetRandam_Float(2, 3)
    local local5 = 0
    if local1 <= 100 then
        arg0:SetTimer(4, 7)
    end
    if arg0:GetDist(TARGET_ENE_0) <= 1.8 then
        if local0 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, AttDist, 1, 30)
        elseif local0 <= 45 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 4)
            end
        elseif local0 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
        end
    end
    return 
end

function Deranged_Evil_Spirit205000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Deranged_Evil_Spirit205000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Deranged_Evil_Spirit205000Battle_Terminate(arg0, arg1)
    return 
end

function Deranged_Evil_Spirit205000Battle_Interupt(arg0, arg1)
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
