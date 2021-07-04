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
local local11 = 7.3 - local0
local local12 = 0.5 - local0
local local13 = 0.5 - local0
local local14 = 0.5 - local0
local local15 = 0.5 - local0
local local16 = 0.5 - local0
local local17 = 0.5 - local0
local local18 = 0.5 - local0
local local19 = 0.5 - local0
local local20 = 4.8 - local0
local local21 = 0.5 - local0
local local22 = 0.5 - local0
function OnIf_212030(arg0, arg1, arg2)
    if arg2 == 0 then
        DarkBrigade_Musket212030_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DarkBrigade_Musket212030Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest(0)
    local local5 = arg0:GetEventRequest(1)
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetHpRate(TARGET_SELF)
    if 5.5 <= local3 then
        local0[1] = 0
        local0[2] = 20
        local0[4] = 20
        local0[5] = 0
        local0[7] = 0
        local0[8] = 30
        local0[9] = 30
    elseif 3.5 <= local3 then
        local0[1] = 0
        local0[2] = 10
        local0[4] = 30
        local0[5] = 0
        local0[7] = 0
        local0[8] = 30
        local0[9] = 10
    elseif 1.5 <= local3 then
        local0[1] = 0
        local0[2] = 30
        local0[4] = 30
        local0[5] = 0
        local0[7] = 0
        local0[8] = 20
        local0[9] = 20
    else
        local0[1] = 0
        local0[2] = 20
        local0[4] = 30
        local0[5] = 0
        local0[7] = 30
        local0[8] = 10
        local0[9] = 10
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DarkBrigade_Musket212030_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DarkBrigade_Musket212030_Act02)
    local1[4] = REGIST_FUNC(arg0, arg1, DarkBrigade_Musket212030_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DarkBrigade_Musket212030_Act05)
    local1[7] = REGIST_FUNC(arg0, arg1, DarkBrigade_Musket212030_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DarkBrigade_Musket212030_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, DarkBrigade_Musket212030_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, DarkBrigade_Musket212030_Act10)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DarkBrigade_Musket212030_ActAfter_AdjustSpace), local2)
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
local0 = local20
local0 = 4.2 - local0
function DarkBrigade_Musket212030_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = UPVAL5 + 0.5
    local local5 = UPVAL0
    local local6 = 0
    local local7 = 0
    if 50 <= local1 then
        local5 = UPVAL4
    end
    if local1 <= 50 then
        Approach_Act(arg0, arg1, local5, local6, local7, 3)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 0.5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL1 + 0.5, 0, 0)
    else
        Approach_Act(arg0, arg1, local5, local6, local7, 3)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL4 + 0.5, 0)
    end
    if local3 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, UPVAL2 + 0.5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, UPVAL3 + 0.5, 0)
    elseif local3 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, UPVAL6 + 0.5, 0)
    elseif local3 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, UPVAL9 + 0.5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, UPVAL7 + 0.5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, UPVAL8 + 0.5, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.7 - local0
function DarkBrigade_Musket212030_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.1 - local0
function DarkBrigade_Musket212030_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
local0 = 3.6 - local0
function DarkBrigade_Musket212030_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 1
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
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

local0 = 1.1 - local0
function DarkBrigade_Musket212030_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
local0 = 4.2 - local0
local0 = local20
function DarkBrigade_Musket212030_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 0.5, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, UPVAL1 + 0.5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, UPVAL2 + 0.5, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5 - local0
function DarkBrigade_Musket212030_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 0.5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkBrigade_Musket212030_Act10(arg0, arg1, arg2)
    if arg0:GetRandam_Int(1, 100) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarkBrigade_Musket212030_IntervalStep(arg0, arg1)
    local local0 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 4, 0)
    local local1 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 4, 0)
    local local2 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 4, 0)
    if arg0:GetDist(TARGET_ENE_0) <= 6 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            if local0 ~= false or local1 ~= false or local2 ~= false then
                if local0 == false then
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
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if local2 == false and local0 == false then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, MoveTimeS, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), false, true, -1)
            elseif local2 == false then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            end
        elseif local1 == false and local0 == false then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, MoveTimeS, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), false, true, -1)
        elseif local1 == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    end
    return 
end

function DarkBrigade_Musket212030_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DarkBrigade_Musket212030_StepToEscape(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 10, TARGET_NONE, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 60, 0, 0)
    end
    return 
end

function DarkBrigade_Musket212030_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
        if 3 <= local0 then
            DarkBrigade_Musket212030_StepToEscape(arg0, arg1)
        elseif not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) or arg0:GetRandam_Int(1, 100) > 40 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 10, TARGET_NONE, false, -1)
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 60, 0, 0)
            else
                DarkBrigade_Musket212030_StepToEscape(arg0, arg1)
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            end
        end
    elseif local0 <= 8 then
        DarkBrigade_Musket212030_StepToEscape(arg0, arg1)
    end
    return 
end

function DarkBrigade_Musket212030Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DarkBrigade_Musket212030Battle_Terminate(arg0, arg1)
    return 
end

local0 = 8.5 - local0
function DarkBrigade_Musket212030Battle_Interupt(arg0, arg1)
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
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetDist(TARGET_ENE_0)
    local local7 = Shoot_2dist(arg0, arg1, 5, 20, 50, 80)
    if local7 == 1 then
        if local5 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local7 == 2 then
        local local8 = UPVAL0 + 1
        local local9 = UPVAL0
        local local10 = 0
        local local11 = 0
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
