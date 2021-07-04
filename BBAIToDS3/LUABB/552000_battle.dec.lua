local local0 = 1
local local1 = 6.4 - local0
local local2 = 7.9 - local0
local local3 = 13.2 - local0
local local4 = 4.9 - local0
local local5 = 8.2 - local0
local local6 = 15.5 - local0
local local7 = 100 - local0
function OnIf_552000(arg0, arg1, arg2)
    if arg2 == 0 then
        LesserDemonVariation552000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function LesserDemonVariation552000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = 0
    if arg0:GetNumber(0) == 1 and arg0:HasSpecialEffectId(TARGET_SELF, 5620) == false then
        local6 = 1
    else
        local6 = 0
    end
    if arg0:GetHpRate(TARGET_SELF) <= 0.5 and arg0:GetNumber(0) == 0 then
        arg0:SetNumber(0, 1)
        local0[7] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif 15 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 30
        local0[4] = 0
        local0[5] = 10
        local0[6] = 40
        local0[7] = 10 * local6
    elseif 8 <= local3 then
        local0[1] = 10
        local0[2] = 30
        local0[3] = 30
        local0[4] = 0
        local0[5] = 30
        local0[6] = 0
        local0[7] = 10 * local6
    elseif 2.5 <= local3 then
        local0[1] = 40
        local0[2] = 30
        local0[3] = 0
        local0[4] = 10
        local0[5] = 30
        local0[6] = 0
        local0[7] = 10 * local6
    else
        local0[1] = 20
        local0[2] = 10
        local0[3] = 0
        local0[4] = 70
        local0[5] = 0
        local0[6] = 0
        local0[7] = 10 * local6
    end
    local1[1] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act07)
    local1[20] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act20)
    local1[30] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act38)
    local1[40] = REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_Act40)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, LesserDemonVariation552000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local1
function LesserDemonVariation552000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0)
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
    elseif local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
function LesserDemonVariation552000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local3
function LesserDemonVariation552000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
function LesserDemonVariation552000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local5
function LesserDemonVariation552000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
function LesserDemonVariation552000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local7
function LesserDemonVariation552000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LesserDemonVariation552000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local1
local0 = 0 - local0
function LesserDemonVariation552000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6.7 - local0
local0 = 0 - local0
function LesserDemonVariation552000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6.4 - local0
local0 = 0 - local0
function LesserDemonVariation552000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = 0 - local0
function LesserDemonVariation552000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9.3 - local0
local0 = 0 - local0
function LesserDemonVariation552000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local3
local0 = 0 - local0
function LesserDemonVariation552000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = 0 - local0
function LesserDemonVariation552000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local5
local0 = 0 - local0
function LesserDemonVariation552000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = 0 - local0
function LesserDemonVariation552000_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local7
local0 = 0 - local0
function LesserDemonVariation552000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LesserDemonVariation552000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function LesserDemonVariation552000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= 3 then
        if local1 <= 50 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 12, 15) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 1)
        elseif local1 <= 50 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 12, 15) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 1)
        elseif local1 <= 50 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 12, 15) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 1)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif local0 <= 8 and local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function LesserDemonVariation552000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function LesserDemonVariation552000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local6
function LesserDemonVariation552000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if GuardBreak_Attack(arg0, arg1, 8, 50, 3003) then
        return true
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    local local6 = Shoot_2dist(arg0, arg1, 6, 20, 20, 30)
    if local6 == 1 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local6 == 2 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, UPVAL0, 0)
        return true
    end
    return false
end

return 
