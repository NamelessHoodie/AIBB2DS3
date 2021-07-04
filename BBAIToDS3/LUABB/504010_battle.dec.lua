local local0 = 1
local local1 = 1.5 - local0
local local2 = 1.5 - local0
local local3 = 1.5 - local0
local local4 = 6.7 - local0
local local5 = 1.5 - local0
local local6 = 10 - local0
local local7 = 1.5 - local0
local local8 = 1.5 - local0
function OnIf_504010(arg0, arg1, arg2)
    if arg2 == 0 then
        StormBeast_Ruins504010_ActAfter(arg0, arg1)
    end
    if arg2 == 1 then
        StormBeast_Ruins504010_AddAttack(arg0, arg1)
    end
    return 
end

function StormBeast_Ruins504010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetEventRequest(0)
    local local6 = 1
    arg0:SetNumber(6, 0)
    if arg0:IsFinishTimer(0) == false then
        local6 = 0
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[20] = 100
    elseif 15 <= local3 then
        local0[1] = 15
        local0[2] = 10
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 20
        local0[7] = 30
        local0[8] = 0
        local0[9] = 5
    elseif 10 <= local3 then
        local0[1] = 20
        local0[2] = 10
        local0[3] = 10
        local0[4] = 10
        local0[5] = 0
        local0[6] = 15
        local0[7] = 15
        local0[8] = 10
        local0[9] = 5
    elseif 6 <= local3 then
        local0[1] = 20
        local0[2] = 15
        local0[3] = 10
        local0[4] = 10
        local0[5] = 15
        local0[6] = 5
        local0[7] = 5
        local0[8] = 10
        local0[9] = 10
    elseif 3 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 15
        local0[4] = 15
        local0[5] = 10
        local0[6] = 5
        local0[7] = 5
        local0[8] = 20
        local0[9] = 10
    elseif 1.5 <= local3 then
        local0[1] = 15
        local0[2] = 20
        local0[3] = 20
        local0[4] = 20
        local0[5] = 0
        local0[6] = 5
        local0[7] = 5
        local0[8] = 10
        local0[9] = 5
    else
        local0[20] = 60
        local0[4] = 30
        local0[3] = 10 * local6
    end
    if arg0:IsFinishTimer(1) == false then
        local0[8] = 0
    end
    if arg0:IsFinishTimer(3) == false then
        local0[5] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, StormBeast_Ruins504010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, StormBeast_Ruins504010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, StormBeast_Ruins504010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, StormBeast_Ruins504010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, StormBeast_Ruins504010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, StormBeast_Ruins504010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, StormBeast_Ruins504010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, StormBeast_Ruins504010_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, StormBeast_Ruins504010_Act09)
    local1[12] = REGIST_FUNC(arg0, arg1, StormBeast_Ruins504010_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, StormBeast_Ruins504010_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, StormBeast_Ruins504010_Act14)
    local1[20] = REGIST_FUNC(arg0, arg1, StormBeast_Ruins504010_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, StormBeast_Ruins504010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 9.3 - local0
local0 = 6.3 - local0
local0 = 8.6 - local0
local0 = local4
local0 = 1.5 - local0
function StormBeast_Ruins504010_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL1 + 1
    local local2 = UPVAL2 + 1
    local local3 = UPVAL3 + 1
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL4 and arg0:GetNumber(6) == 0 then
        StormBeast_Ruins504010_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL0 + 1, 10, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        if fate2 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, 0, 90)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, 90)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local3, 0)
        end
    elseif fate2 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2, 0)
    elseif fate2 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, 90)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local2, 0)
    elseif fate2 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, 90)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local2, 0, 90)
    end
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 9.1 - local0
local0 = 0 - local0
function StormBeast_Ruins504010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 and arg0:GetNumber(6) == 0 then
        StormBeast_Ruins504010_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL0 + 1, 10, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 0 - local0
local0 = 8.3 - local0
function StormBeast_Ruins504010_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1 + 1
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 10, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL1 + 1, 0, -1)
    arg0:SetTimer(0, 10)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 1.5 - local0
local0 = 6.1 - local0
function StormBeast_Ruins504010_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL0 then
        StormBeast_Ruins504010_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL1 + 1, 10, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL1 + 1, 0, -1)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 8.5 - local0
local0 = 3.3 - local0
function StormBeast_Ruins504010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        StormBeast_Ruins504010_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL0 + 1, 10, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetTimer(3, 20)
    arg0:SetNumber(6, 1)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormBeast_Ruins504010_AddAttack(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 2.5 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 40) then
        if local0 <= 30 then
            StormBeast_Ruins504010_Act02(arg0, arg1, paramTbl)
        elseif local0 <= 60 then
            StormBeast_Ruins504010_Act09(arg0, arg1, paramTbl)
        else
            StormBeast_Ruins504010_Act01(arg0, arg1, paramTbl)
        end
    end
    arg0:SetNumber(6, 0)
    return 
end

local0 = 14.7 - local0
local0 = local4
local0 = 11.6 - local0
function StormBeast_Ruins504010_Act06(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL2 then
        StormBeast_Ruins504010_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL0, 10, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, UPVAL1, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 16.3 - local0
local0 = 10 - local0
function StormBeast_Ruins504010_Act07(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        StormBeast_Ruins504010_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL0, 10, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 7.6 - local0
local0 = 4.7 - local0
function StormBeast_Ruins504010_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        StormBeast_Ruins504010_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL0, 10, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetTimer(0, 20)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 7.6 - local0
local0 = 7.1 - local0
local0 = 1.5 - local0
function StormBeast_Ruins504010_Act09(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL2 and arg0:GetNumber(6) == 0 then
        StormBeast_Ruins504010_SpaceAdjustment(arg0, arg1)
    else
        Approach_Act(arg0, arg1, UPVAL0, 10, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, UPVAL1, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 50 - local0
function StormBeast_Ruins504010_Act12(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 999, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 3 - local0
function StormBeast_Ruins504010_Act13(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 10, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 3 - local0
function StormBeast_Ruins504010_Act14(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 10, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function StormBeast_Ruins504010_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        if local0 <= 3 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, AttDist, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        if local0 <= 3 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, AttDist, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormBeast_Ruins504010_SpaceAdjustment(arg0, arg1)
    local local0 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 5.5, 2)
    local local1 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 5.5, 2)
    local local2 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 5.5, 2)
    if arg0:GetDist(TARGET_ENE_0) <= 6 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            if local0 == false and local1 == false and local2 == false then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
            elseif local0 == false then
                if local1 == false and local2 == true then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                elseif local2 == false and local1 == true then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                elseif arg0:GetRandam_Int(1, 100) <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) then
            if local2 == false and local1 == false then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 0)
            elseif local2 == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            elseif local1 == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if local2 == false and local0 == false then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_None, 0, 0)
            elseif local0 == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            end
        elseif local1 == false and local0 == false then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, 0)
        elseif local0 == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.7, 2.3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function StormBeast_Ruins504010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function StormBeast_Ruins504010_ActAfter(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function StormBeast_Ruins504010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function StormBeast_Ruins504010Battle_Terminate(arg0, arg1)
    return 
end

function StormBeast_Ruins504010Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetDist(TARGET_ENE_0)
    local local7 = Shoot_2dist(arg0, arg1, 6, 20, 20, 40)
    if local7 == 1 then
        if local5 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local7 == 2 then
        if local5 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
        return true
    end
    return false
end

return 
