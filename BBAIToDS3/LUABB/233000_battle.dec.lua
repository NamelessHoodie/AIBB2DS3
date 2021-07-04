local local0 = 0.6
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 3.6 - local0
local local4 = 0 - local0
local local5 = 3.4 - local0
local local6 = 0 - local0
local local7 = 3.2 - local0
local local8 = 0 - local0
local local9 = 2.9 - local0
local local10 = 5 - local0
local local11 = 0 - local0
local local12 = 3.3 - local0
local local13 = 0 - local0
local local14 = 3.9 - local0
local local15 = 0 - local0
local local16 = 4.4 - local0
local local17 = 5.5
local local18 = 0
function OnIf_233000(arg0, arg1, arg2)
    if arg2 == 0 then
        TheServantOfKing_Sword233000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

local0 = local18
function TheServantOfKing_Sword233000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    if arg0:GetRandam_Int(1, 100) <= 33 then
        local local3 = 0
        SETUPVAL 7 0 0
    else
        local local3 = 5
        SETUPVAL 7 0 0
    end
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif 5 <= arg0:GetDist(TARGET_ENE_0) then
        local0[1] = 15
        local0[2] = 40
        local0[3] = 30
        local0[4] = 0
        local0[5] = 15
    elseif arg0:IsTargetGuard(TARGET_ENE_0) == true then
        local0[1] = 30
        local0[2] = 0
        local0[3] = 35
        local0[4] = 0
        local0[5] = 35
    else
        local0[1] = 40
        local0[2] = 0
        local0[3] = 30
        local0[4] = 0
        local0[5] = 30
    end
    local1[1] = REGIST_FUNC(arg0, arg1, TheServantOfKing_Sword233000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, TheServantOfKing_Sword233000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, TheServantOfKing_Sword233000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, TheServantOfKing_Sword233000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, TheServantOfKing_Sword233000_Act05)
    local1[20] = REGIST_FUNC(arg0, arg1, TheServantOfKing_Sword233000_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, TheServantOfKing_Sword233000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, TheServantOfKing_Sword233000_Act23)
    local1[30] = REGIST_FUNC(arg0, arg1, TheServantOfKing_Sword233000_Act30)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, TheServantOfKing_Sword233000_ActAfter_AdjustSpace, atkAfterOddsTbl), local2)
    return 
end

local0 = 3.4 - local0
local0 = local18
function TheServantOfKing_Sword233000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 * UPVAL1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.3 - local0
local0 = local18
function TheServantOfKing_Sword233000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 * UPVAL1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local1, 0, -1)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
local0 = local18
function TheServantOfKing_Sword233000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 * UPVAL1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local14
local0 = local18
function TheServantOfKing_Sword233000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 * UPVAL1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
local0 = local18
function TheServantOfKing_Sword233000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 * UPVAL1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function TheServantOfKing_Sword233000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 2.5 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_None, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TheServantOfKing_Sword233000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function TheServantOfKing_Sword233000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local17
function TheServantOfKing_Sword233000_Act30(arg0, arg1)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, UPVAL0, 5) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, UPVAL0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, UPVAL0)
        end
    elseif arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, UPVAL0, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, UPVAL0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, UPVAL0)
    end
    return true
end

local0 = local17
local0 = local14
function TheServantOfKing_Sword233000_Act31(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 5) == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL1 + 1, 0, -1)
        else
            return TheServantOfKing_Sword233000_Act30(arg0, arg1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_None, 0, -1)
    end
    return true
end

function TheServantOfKing_Sword233000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

local0 = local14
local0 = local17
function TheServantOfKing_Sword233000_ActAfter_RealTime(arg0, arg1)
    if arg0:GetRandam_Int(1, 100) <= 65 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and arg0:GetDist(TARGET_ENE_0) <= UPVAL0 and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL1, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 2), TARGET_NONE, 0, 0, 0)
    end
    return 
end

function TheServantOfKing_Sword233000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function TheServantOfKing_Sword233000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local14
local0 = local16
local0 = local12
function TheServantOfKing_Sword233000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    if FindAttack_Act(arg0, arg1, UPVAL0, 60) then
        return TheServantOfKing_Sword233000_Act31(arg0, arg1)
    elseif GuardBreak_Act(arg0, arg1, UPVAL1, 90) then
        arg1:ClearSubGoal()
        if arg0:GetRandam_Int(1, 100) <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL2 + 1, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL1 + 1, 0, -1)
        end
        return true
    else
        local local3 = Shoot_2dist(arg0, arg1, 5, 20, 60, 80)
        if local3 == 1 or local3 == 2 then
            arg1:ClearSubGoal()
            return TheServantOfKing_Sword233000_Act30(arg0, arg1)
        else
            return false
        end
    end
end

return 
