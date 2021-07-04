local local0 = 0.4
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 10.2 - local0
local local6 = 0 - local0
local local7 = 0 - local0
local local8 = 0 - local0
local local9 = 0 - local0
local local10 = 0 - local0
local local11 = 0 - local0
local local12 = 0 - local0
local local13 = 0 - local0
local local14 = 0 - local0
local local15 = 0 - local0
local local16 = 0 - local0
local local17 = 0 - local0
local local18 = 0 - local0
local local19 = 0 - local0
local local20 = 3.8 - local0
local local21 = 10.8 - local0
local local22 = 3.8 - local0
local local23 = 16 - local0
local local24 = 3.8 - local0
local local25 = 21.6 - local0
local local26 = 0 - local0
local local27 = 0 - local0
local local28 = 0 - local0
local local29 = 0 - local0
local local30 = 0 - local0
function OnIf_404000(arg0, arg1, arg2)
    if arg2 == 0 then
        DeepOnesA404000_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        DeepOnesA404000_AddAttack(arg0, arg1)
    end
    return 
end

function DeepOnesA404000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = 0
    local local6 = arg0:GetHpRate(TARGET_SELF)
    local local7 = 100
    if arg0:IsFinishTimer(0) == true then
        local5 = 1
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5022) then
        local7 = 1
    end
    if arg0:GetNpcThinkParamID() <= 404009 or arg0:GetNpcThinkParamID() == 404040 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 135) then
            local0[41] = 100
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5021) then
            local0[46] = 10
        elseif 6 <= local3 then
            if 404005 <= arg0:GetNpcThinkParamID() then
                local0[5] = 10
            elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                local0[45] = 10
            else
                local0[1] = 0
                local0[2] = 10
                local0[3] = 0
                local0[4] = 10
                local0[6] = 0
                local0[7] = 0
                local0[8] = 20 * local7
                local0[9] = 0 * local7
            end
        elseif 3.4 <= local3 then
            if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                local0[45] = 10
            else
                local0[1] = 10
                local0[2] = 0
                local0[3] = 0
                local0[4] = 10
                local0[6] = 0
                local0[7] = 0
                local0[8] = 20 * local7
                local0[9] = 0 * local7
            end
        elseif 2 <= local3 then
            if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                local0[45] = 10
            else
                local0[1] = 10
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[6] = 0
                local0[7] = 10
                local0[8] = 0 * local7
                local0[9] = 20 * local7
            end
        elseif 0.4 <= local3 then
            if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                local0[45] = 10
            else
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[6] = 10
                local0[7] = 10
                local0[8] = 0 * local7
                local0[9] = 20 * local7
            end
        elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            local0[45] = 10
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 10
            local0[4] = 0
            local0[6] = 10
            local0[7] = 10
            local0[8] = 0 * local7
            local0[9] = 30 * local7
        end
    elseif arg0:GetNpcThinkParamID() <= 404019 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 135) then
            local0[41] = 100
        elseif (404018 <= arg0:GetNpcThinkParamID() or 404019 <= arg0:GetNpcThinkParamID()) and (arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki) then
            local0[45] = 10
        elseif 4 <= local3 then
            local0[11] = 10
            local0[12] = 10
            local0[13] = 10
            local0[14] = 20 * local7
        elseif 2 <= local3 then
            local0[11] = 20
            local0[12] = 20
            local0[13] = 10
            local0[14] = 10 * local7
        else
            local0[11] = 10
            local0[12] = 10
            local0[13] = 20
            local0[14] = 10 * local7
        end
    elseif arg0:GetNpcThinkParamID() <= 404029 then
        if arg0:GetEventRequest() == 100 then
            local0[26] = 10
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 135) then
            local0[41] = 100
        elseif 9 <= local3 then
            if 404025 <= arg0:GetNpcThinkParamID() then
                local0[25] = 10
            else
                local0[21] = 10
                local0[22] = 10
                local0[23] = 10
                local0[24] = 20
                local0[25] = 40
            end
        elseif 5 <= local3 then
            if 404025 <= arg0:GetNpcThinkParamID() then
                local0[25] = 10
            else
                local0[21] = 10
                local0[22] = 10
                local0[23] = 10
                local0[24] = 20
                local0[25] = 10
            end
        elseif 2 <= local3 then
            local0[21] = 10
            local0[22] = 20
            local0[23] = 10
            local0[24] = 10
            local0[25] = 0
            local0[43] = 10
        else
            local0[21] = 10
            local0[22] = 10
            local0[23] = 10
            local0[24] = 0
            local0[25] = 0
            local0[43] = 10
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 135) then
        local0[41] = 100
    elseif 2 <= local3 then
        local0[31] = 10
        local0[32] = 20
        local0[33] = 10
        local0[34] = 10
        if local7 == 100 then
            local0[35] = 500
        else
            local0[35] = 500 * local5
        end
    elseif 1 <= local3 then
        local0[31] = 20
        local0[32] = 10
        local0[33] = 20
        local0[34] = 20
        if local7 == 100 then
            local0[35] = 700
        else
            local0[35] = 700 * local5
        end
    else
        local0[31] = 20
        local0[32] = 10
        local0[33] = 20
        local0[34] = 20
        if local7 == 100 then
            local0[35] = 700
        else
            local0[35] = 700 * local5
        end
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act09)
    local1[11] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act14)
    local1[21] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act26)
    local1[31] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act35)
    local1[41] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, DeepOnesA404000_Act46)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DeepOnesA404000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 4.2 - local0
function DeepOnesA404000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local2 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, AttDist1, 0)
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

local0 = 7.2 - local0
function DeepOnesA404000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 25
    return GetWellSpace_Odds
end

local0 = 0.6 - local0
function DeepOnesA404000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 3, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
function DeepOnesA404000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 26.2 - local0
function DeepOnesA404000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if arg0:GetNpcThinkParamID() == 404006 then
        local1 = 16
    elseif arg0:GetNpcThinkParamID() == 404007 then
        local1 = 20
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) and local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 0
    end
    return GetWellSpace_Odds
end

local0 = 2.4 - local0
function DeepOnesA404000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 3, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
function DeepOnesA404000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 16 - local0
local0 = 11.4 - local0
local0 = 6 - local0
function DeepOnesA404000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0
    local local4 = 3010
    if 12 <= local0 then
        local2 = UPVAL0 + 1
        local3 = UPVAL0
        local4 = 3010
    elseif 8 <= local0 then
        local2 = UPVAL1 + 1
        local3 = UPVAL1
        local4 = 3011
    else
        local2 = UPVAL2 + 1
        local3 = UPVAL2
        local4 = 3012
    end
    if local3 <= local0 then
        Approach_Act(arg0, arg1, local3, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local4, TARGET_ENE_0, local2, 0, -1)
    arg0:SetNumber(1, 1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
function DeepOnesA404000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 - 1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(1, 1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
function DeepOnesA404000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0 + 4
    if 404018 <= arg0:GetNpcThinkParamID() then
        local3 = UPVAL0
    end
    if local3 <= local0 then
        Approach_Act(arg0, arg1, local3, 0, 0, 3)
    end
    if arg0:GetNpcThinkParamID() < 404018 then
        if local2 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, -1, AI_DIR_TYPE_F, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 0)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, AttDist1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
function DeepOnesA404000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0 + 4
    if 404018 <= arg0:GetNpcThinkParamID() then
        local3 = UPVAL0
    end
    if local3 <= local0 then
        Approach_Act(arg0, arg1, local3, 0, 0, 3)
    end
    if arg0:GetNpcThinkParamID() < 404018 then
        if local2 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, -1, AI_DIR_TYPE_F, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 0)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local2, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, AttDist1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.2 - local0
function DeepOnesA404000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0 + 4
    if 404018 <= arg0:GetNpcThinkParamID() then
        local3 = UPVAL0
    end
    if local3 <= local0 then
        Approach_Act(arg0, arg1, local3, 0, 0, 3)
    end
    if arg0:GetNpcThinkParamID() < 404018 then
        if local2 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, -1, AI_DIR_TYPE_F, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 0)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.8 - local0
function DeepOnesA404000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0 + 4
    if 404018 <= arg0:GetNpcThinkParamID() then
        local3 = UPVAL0
    end
    if local3 <= local0 then
        Approach_Act(arg0, arg1, local3, 0, 0, 3)
    end
    if arg0:GetNpcThinkParamID() < 404018 then
        if local2 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, -1, AI_DIR_TYPE_F, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 0)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local2, 0, -1)
    arg0:SetNumber(1, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.4 - local0
function DeepOnesA404000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, AttDist1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
function DeepOnesA404000_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, AttDist1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.4 - local0
function DeepOnesA404000_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.4 - local0
function DeepOnesA404000_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local21
local0 = local25
local0 = local23
function DeepOnesA404000_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDistXZ(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0
    local local4 = local3 + 3
    local local5 = 3016
    if 20 <= local0 then
        local2 = UPVAL1 + 1
        local3 = UPVAL1
        local5 = 3018
    elseif 14 <= local0 then
        local2 = UPVAL2 + 1
        local3 = UPVAL2
        local5 = 3017
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) and local3 <= local0 then
        Approach_Act(arg0, arg1, local3, local3 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local5, TARGET_ENE_0, local2, 0, -1)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 0
    end
    return GetWellSpace_Odds
end

local0 = local21
local0 = local25
local0 = local23
function DeepOnesA404000_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetDistXZ(TARGET_EVENT)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0 + 3
    local local4 = 
    local local5 = 3016
    if 20 <= local0 then
        local2 = UPVAL1 + 1
        local4 = UPVAL1
        local5 = 3018
    elseif 14 <= local0 then
        local2 = UPVAL2 + 1
        local4 = UPVAL2
        local5 = 3017
    else
        local2 = UPVAL0 + 1
        local4 = UPVAL0
        local5 = 3016
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) and local4 <= local0 then
        Approach_Act(arg0, arg1, local4, local4 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local5, TARGET_EVENT, local2, 0, -1)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 0
    end
    return GetWellSpace_Odds
end

local0 = 2.6 - local0
function DeepOnesA404000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, local2 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, local1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, local1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, AttDist1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.2 - local0
function DeepOnesA404000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.6 - local0
function DeepOnesA404000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 1.8 - local0
function DeepOnesA404000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local1 + 3, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
function DeepOnesA404000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(0, 15)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DeepOnesA404000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetNpcThinkParamID() <= 404009 then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    elseif arg0:GetNpcThinkParamID() <= 404019 then
        if arg0:GetNpcThinkParamID() < 404018 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
        end
    elseif arg0:GetNpcThinkParamID() <= 404029 then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeepOnesA404000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeepOnesA404000_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 9999
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeepOnesA404000_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(2.5, 3.5)
    if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeepOnesA404000_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 10
    local local3 = 9999
    local local4 = 8
    local local5 = arg0:GetRandam_Float(2.5, 3.5)
    if local2 <= local0 then
        Approach_Act(arg0, arg1, local2, 12, 0, 3)
    elseif local4 <= local0 then
        if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, local4, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeepOnesA404000_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 12
    local local3 = 9999
    local local4 = arg0:GetRandam_Float(2.5, 3.5)
    if arg0:GetNumber(1) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 16, TARGET_ENE_0, true, -1)
        arg0:SetNumber(1, 1)
    elseif local2 <= local0 then
        Approach_Act(arg0, arg1, local2, 16, 0, 5)
    elseif 8 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        if 3.4 > local0 then
            if 2 <= local0 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_None, 0, -1)
            elseif 0.2 <= local0 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 0, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0, -1)
            end
        end
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DeepOnesA404000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DeepOnesA404000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Float(2.5, 3.5)
    local local4 = arg0:GetRandam_Float(2.5, 3.5)
    local local5 = arg0:GetNpcThinkParamID()
    if arg0:GetNpcThinkParamID() <= 404009 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
        elseif local0 <= 4 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        elseif arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif arg0:GetNpcThinkParamID() <= 404019 then
        if arg0:GetNpcThinkParamID() < 404018 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
                if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 0)
                end
            elseif local0 <= 4 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 0)
            elseif arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 0)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
        elseif local0 <= 4 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        elseif arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif arg0:GetNpcThinkParamID() <= 404029 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
        elseif local0 <= 4 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        elseif arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 0)
        end
    elseif local0 <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 0)
    elseif arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 0)
    end
    return 
end

function DeepOnesA404000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DeepOnesA404000Battle_Terminate(arg0, arg1)
    return 
end

function DeepOnesA404000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetDist(TARGET_ENE_0)
        if arg0:GetNpcThinkParamID() > 404009 and arg0:GetNpcThinkParamID() > 404019 and arg0:GetNpcThinkParamID() <= 404029 and Damaged_Step(arg0, arg1, 3, 67, 100, 0, 0, 0) then
            return true
        else
            return false
        end
    end
end

return 
