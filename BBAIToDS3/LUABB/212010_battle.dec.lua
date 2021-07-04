local local0 = 0.3
local local1 = 0.5 - local0
local local2 = 0.5 - local0
local local3 = 0.5 - local0
local local4 = 0.5 - local0
local local5 = 0.5 - local0
local local6 = 0.5 - local0
local local7 = 0.5 - local0
local local8 = 0.5 - local0
local local9 = 0.5 - local0
local local10 = 0.5 - local0
local local11 = 0.5 - local0
local local12 = 0.5 - local0
local local13 = 0.5 - local0
local local14 = 0.5 - local0
local local15 = 8.5 - local0
local local16 = 0.5 - local0
local local17 = 1.1 - local0
local local18 = 0.5 - local0
local local19 = 2.5
function OnIf_212010(arg0, arg1, arg2)
    if arg2 == 0 then
        DarkBrigade_SwordAndCandle212010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DarkBrigade_SwordAndCandle212010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest(0)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        local0[10] = 100
    elseif 5 <= local3 then
        local0[1] = 18.75
        local0[2] = 6.25
        local0[4] = 18.75
        local0[5] = 6.25
        local0[8] = 50
    elseif 3.8 <= local3 then
        local0[1] = 12.5
        local0[2] = 12.5
        local0[4] = 12.5
        local0[5] = 12.5
        local0[8] = 50
    else
        local0[1] = 6.25
        local0[2] = 18.75
        local0[4] = 6.25
        local0[5] = 18.75
        local0[8] = 50
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle212010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle212010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle212010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle212010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle212010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle212010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle212010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle212010_Act08)
    local1[10] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle212010_Act10)
    local1[13] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle212010_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle212010_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle212010_Act15)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DarkBrigade_SwordAndCandle212010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 4.1 - local0
local0 = 3.8 - local0
local0 = 3.8 - local0
local0 = 3.3 - local0
local0 = 4.3 - local0
local0 = 9.9 - local0
local0 = 3.8 - local0
local0 = 4.5 - local0
function DarkBrigade_SwordAndCandle212010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = 10
    local local5 = 0
    if 50 <= local1 then
        local3 = UPVAL4
    end
    if local1 <= 50 then
        Approach_Act(arg0, arg1, local3, local4, local5, 3)
        if arg0:GetRandam_Int(1, 100) <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 0.5, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL5 + 0.5, 0)
        end
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL1 + 0.5, 0, 0)
    else
        Approach_Act(arg0, arg1, local3, local4, local5, 3)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL4 + 0.5, 0)
    end
    if local2 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, UPVAL2 + 0.5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, UPVAL3 + 0.5, 0)
    elseif local2 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, UPVAL6 + 0.5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, UPVAL7 + 0.5, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.7 - local0
function DarkBrigade_SwordAndCandle212010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 10, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.3 - local0
function DarkBrigade_SwordAndCandle212010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.1 - local0
function DarkBrigade_SwordAndCandle212010_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 10, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
local0 = 3.6 - local0
function DarkBrigade_SwordAndCandle212010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 10, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 65 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, UPVAL1 + 1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local15
function DarkBrigade_SwordAndCandle212010_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local15
function DarkBrigade_SwordAndCandle212010_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetTimer(2, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5 - local0
function DarkBrigade_SwordAndCandle212010_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 10, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkBrigade_SwordAndCandle212010_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(1, 2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), false, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), false, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkBrigade_SwordAndCandle212010_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, DIST_None, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkBrigade_SwordAndCandle212010_Act14(arg0, arg1, arg2)
    local local0 = arg0:IsOnNearMesh(TARGET_ENE_0, AI_DIR_TYPE_B, 5, 2)
    local local1 = arg0:IsOnNearMesh(TARGET_ENE_0, AI_DIR_TYPE_L, 4, 2)
    local local2 = arg0:IsOnNearMesh(TARGET_ENE_0, AI_DIR_TYPE_R, 4, 2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 4)
    if local0 == false and local1 == false and local2 == false then
        if arg0:GetDist(TARGET_ENE_0) <= 10 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
        end
    elseif local0 == false then
        if local1 == false and local2 == true then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 5, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_R, 4)
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        elseif local2 == false and local1 == true then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 5, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_L, 4)
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        elseif arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 5, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_L, 4)
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 5, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_R, 4)
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 5, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_B, 5)
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkBrigade_SwordAndCandle212010_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarkBrigade_SwordAndCandle212010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DarkBrigade_SwordAndCandle212010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(0.5, 1.5)
    if local0 <= 1.5 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and arg0:IsFinishTimer(2) == true then
        DarkBrigade_SwordAndCandle212010_Act07(arg0, arg1, paramTbl)
    elseif local0 <= 3.8 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function DarkBrigade_SwordAndCandle212010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DarkBrigade_SwordAndCandle212010Battle_Terminate(arg0, arg1)
    return 
end

function DarkBrigade_SwordAndCandle212010Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    if arg0:IsInterupt(INTERUPT_Damaged) and arg0:GetRandam_Int(1, 100) <= 40 and arg0:HasSpecialEffectId(TARGET_SELF, 5659) == false then
        arg1:ClearSubGoal()
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if right ~= false or back ~= false then
                if right == false then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                end
            end
        elseif left ~= false or back ~= false then
            if left == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        end
        return true
    end
    local local4 = Shoot_2dist(arg0, arg1, 4, 20, 50, 80)
    if local4 == 1 then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local4 == 2 then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
        return true
    end
    return false
end

return 
