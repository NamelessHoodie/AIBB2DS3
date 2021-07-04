local local0 = 3.5
local local1 = 1.6 - local0
local local2 = 1.6 - local0
local local3 = 1.6 - local0
local local4 = 1.6 - local0
local local5 = 1.6 - local0
local local6 = 1.6 - local0
local local7 = 1.6 - local0
local local8 = 1.6 - local0
local local9 = 1.6 - local0
local local10 = 1.6 - local0
local local11 = 1.6 - local0
local local12 = 1.6 - local0
local local13 = 15.8 - local0
local local14 = 0.8 - local0
local local15 = 4.4 - local0
local local16 = 1.6 - local0
local local17 = 1.6 - local0
function OnIf_501000(arg0, arg1, arg2)
    if arg2 == 0 then
        FireBeast501000_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        FireBeast501000_Turn(arg0, arg1)
    end
    if arg2 == 2 then
        FireBeast501000_Magma(arg0, arg1)
    end
    return 
end

function FireBeast501000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetEventRequest(0)
    local local6 = 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 480) then
        arg0:SetNumber(0, 1)
    end
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 481) or arg0:HasSpecialEffectId(TARGET_SELF, 482) then
        arg0:SetNumber(1, 1)
    end
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 483) or arg0:HasSpecialEffectId(TARGET_SELF, 484) then
        arg0:SetNumber(2, 1)
    end
    if (not arg0:IsInsideTargetRegion(TARGET_SELF, 2912801) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2912801)) and (not arg0:IsInsideTargetRegion(TARGET_SELF, 2912802) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2912802)) and (not arg0:IsInsideTargetRegion(TARGET_SELF, 2912803) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2912803)) and (not arg0:IsInsideTargetRegion(TARGET_SELF, 2912804) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2912804)) and (not arg0:IsInsideTargetRegion(TARGET_SELF, 2912805) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2912805)) and (not arg0:IsInsideTargetRegion(TARGET_SELF, 2912806) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2912806)) and (not arg0:IsInsideTargetRegion(TARGET_SELF, 2912807) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2912807)) and (not arg0:IsInsideTargetRegion(TARGET_SELF, 2922801) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2922801)) and (not arg0:IsInsideTargetRegion(TARGET_SELF, 2922802) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2922802)) and (not arg0:IsInsideTargetRegion(TARGET_SELF, 2922803) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2922803)) and (not arg0:IsInsideTargetRegion(TARGET_SELF, 2922804) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2922804)) and (not arg0:IsInsideTargetRegion(TARGET_SELF, 2922805) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2922805)) and (not arg0:IsInsideTargetRegion(TARGET_SELF, 2922806) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2922806)) and (not arg0:IsInsideTargetRegion(TARGET_SELF, 2922807) or not arg0:IsInsideTargetRegion(TARGET_ENE_0, 2922807)) then
        local6 = 0
    end
    local local7 = arg0:GetTimer(0)
    local local8 = arg0:GetTimer(1)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 300) and 0.5 <= local3 then
        local0[20] = 100
    elseif arg0:GetEventRequest(1) == 1 then
        local0[15] = 100
    elseif arg0:GetHpRate(TARGET_SELF) < 0.4 then
        if arg0:IsFinishTimer(1) == true then
            local0[15] = 100
        else
            if local3 < 0 then
                local0[11] = 33
                local0[12] = 33
                local0[13] = 34
            elseif local3 < 15 then
                local0[1] = 10
                local0[2] = 10
                local0[3] = 10
                local0[4] = 10
                local0[5] = 15
                local0[6] = 15 * local6
                local0[7] = 15
                local0[10] = 15
            else
                local0[5] = 33
                local0[13] = 33
                local0[14] = 33
            end
            if not arg0:IsFinishTimer(0) == true or not not arg0:IsInsideTargetRegion(TARGET_SELF, 2922800) or arg0:IsInsideTargetRegion(TARGET_SELF, 2912800) then
                local0[5] = 20
                local0[6] = 20 * local6
                local0[7] = 0
                local0[10] = 20
            end
        end
    elseif arg0:GetHpRate(TARGET_SELF) < 0.7 then
        if local3 < 0 then
            local0[11] = 33
            local0[12] = 33
            local0[13] = 34
        elseif local3 < 15 then
            local0[1] = 25
            local0[2] = 25
            local0[3] = 25
            local0[10] = 25
            if arg0:GetNumber(0) == 1 then
                local0[1] = 15
                local0[2] = 15
                local0[3] = 15
                local0[4] = 15
                local0[5] = 20
                local0[10] = 20
            end
        else
            local0[13] = 100
            if arg0:GetNumber(0) == 1 and arg0:GetNumber(2) == 1 then
                local0[5] = 33
                local0[13] = 33
                local0[14] = 34
            elseif arg0:GetNumber(0) == 1 then
                local0[5] = 50
                local0[13] = 50
            elseif arg0:GetNumber(2) == 1 then
                local0[13] = 50
                local0[14] = 50
            end
        end
    elseif local3 < 0 then
        local0[11] = 25
        local0[12] = 25
        local0[13] = 25
        local0[6] = 25 * local6
    elseif local3 < 15 then
        local0[1] = 35
        local0[2] = 35
        local0[6] = 15 * local6
        local0[7] = 15
        if arg0:GetNumber(0) == 1 and arg0:GetNumber(1) == 1 then
            local0[1] = 15
            local0[2] = 15
            local0[3] = 10
            local0[6] = 20 * local6
            local0[7] = 20
            local0[10] = 25
        elseif arg0:GetNumber(0) == 1 then
            local0[1] = 30
            local0[2] = 30
            local0[3] = 30
            local0[6] = 25 * local6
            local0[7] = 15
        elseif arg0:GetNumber(1) == 1 then
            local0[1] = 30
            local0[2] = 30
            local0[6] = 25 * local6
            local0[7] = 15
            local0[10] = 30
        end
        if not arg0:IsFinishTimer(0) == true then
            local0[5] = 20
            local0[6] = 20 * local6
            local0[7] = 0
            local0[10] = 20
        end
    else
        local0[13] = 100
        if arg0:GetNumber(0) == 1 and arg0:GetNumber(2) == 1 then
            local0[5] = 33
            local0[13] = 33
            local0[14] = 34
        elseif arg0:GetNumber(0) == 1 then
            local0[5] = 50
            local0[13] = 50
        elseif arg0:GetNumber(2) == 1 then
            local0[13] = 50
            local0[14] = 50
        end
    end
    local1[1] = REGIST_FUNC(arg0, arg1, FireBeast501000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, FireBeast501000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, FireBeast501000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, FireBeast501000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, FireBeast501000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, FireBeast501000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, FireBeast501000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, FireBeast501000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, FireBeast501000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, FireBeast501000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, FireBeast501000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, FireBeast501000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, FireBeast501000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, FireBeast501000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, FireBeast501000_Act15)
    local1[20] = REGIST_FUNC(arg0, arg1, FireBeast501000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, FireBeast501000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 7 - local0
function FireBeast501000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    local local3 = UPVAL0
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    if arg0:GetHpRate(TARGET_SELF) < 0.5 or arg0:GetHpRate(TARGET_SELF) < 0.7 and arg0:GetNumber(0) == 1 then
        if local0 <= 33 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, DIST_Middle, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local3, 0)
        end
    elseif arg0:GetHpRate(TARGET_SELF) < 0.75 or arg0:GetNumber(0) == 1 then
        if local0 <= 33 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local3, 0)
        end
    elseif local0 <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.8 - local0
function FireBeast501000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    local local3 = UPVAL0
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    if arg0:GetHpRate(TARGET_SELF) < 0.5 or arg0:GetHpRate(TARGET_SELF) < 0.7 and arg0:GetNumber(0) == 1 then
        if local0 <= 33 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, DIST_Middle, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local3, 0)
        end
    elseif arg0:GetHpRate(TARGET_SELF) < 0.75 or arg0:GetNumber(0) == 1 then
        if local0 <= 33 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, local3, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, local3, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, local3, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.6 - local0
function FireBeast501000_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 9999
    local local2 = UPVAL0
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local1 = 0
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    if arg0:GetHpRate(TARGET_SELF) < 0.5 or arg0:GetHpRate(TARGET_SELF) < 0.7 and arg0:GetNumber(0) == 1 then
        if arg0:GetRandam_Int(1, 100) <= 33 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, local2, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local2, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.6 - local0
function FireBeast501000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 10.4 - local0
function FireBeast501000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 12.6 - local0
function FireBeast501000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 15.8 - local0
function FireBeast501000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    local local3 = UPVAL0
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FireBeast501000_Magma(arg0, arg1)
    if not arg0:IsInsideTargetRegion(TARGET_SELF, 2922800) and not arg0:IsInsideTargetRegion(TARGET_SELF, 2912800) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, AttDist, 0, 360)
        arg0:SetTimer(0, arg0:GetRandam_Int(55, 65))
    end
    return 
end

local0 = 6.4 - local0
function FireBeast501000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.2 - local0
function FireBeast501000_Act09(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 9999
    local local2 = UPVAL0
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local1 = 0
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 15.8 - local0
function FireBeast501000_Act10(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 9999
    local local2 = UPVAL0
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local1 = 0
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    if arg0:GetHpRate(TARGET_SELF) < 0.5 or arg0:GetHpRate(TARGET_SELF) < 0.7 and arg0:GetNumber(1) == 1 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, local2, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local2, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.8 - local0
function FireBeast501000_Act11(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 9999
    local local2 = UPVAL0
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local1 = 0
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    if arg0:GetHpRate(TARGET_SELF) < 0.5 or arg0:GetHpRate(TARGET_SELF) < 0.7 and arg0:GetNumber(1) == 1 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local2, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
function FireBeast501000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    local local3 = UPVAL0
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    if arg0:GetHpRate(TARGET_SELF) < 0.5 or arg0:GetHpRate(TARGET_SELF) < 0.7 and arg0:GetNumber(2) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 15.8 - local0
function FireBeast501000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    local local3 = UPVAL0
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    if arg0:GetHpRate(TARGET_SELF) < 0.5 or arg0:GetHpRate(TARGET_SELF) < 0.7 and arg0:GetNumber(2) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 16.6 - local0
function FireBeast501000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 15.8 - local0
function FireBeast501000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 9999
    if arg0:GetHpRate(TARGET_SELF) < 0.5 then
        local2 = 0
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0, 0, 360)
    arg0:SetTimer(1, arg0:GetRandam_Int(60, 70))
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function FireBeast501000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    return 
end

function FireBeast501000_Turn(arg0, arg1)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 30)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FireBeast501000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function FireBeast501000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetHpRate(TARGET_SELF) >= 0.5 then
        if arg0:GetHpRate(TARGET_SELF) < 0.75 then
            if local3 <= 0 then
                if local1 <= 50 then
                    FireBeast501000_Turn(arg0, arg1)
                end
            elseif local3 <= 4 then
                if local1 <= 25 then
                    FireBeast501000_Turn(arg0, arg1)
                end
            elseif local3 <= 8 and local1 <= 13 then
                FireBeast501000_Turn(arg0, arg1)
            end
        elseif local3 <= 0 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 30)
            end
        elseif local3 <= 8 then
            if local1 <= 75 then
                arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 30)
            end
        elseif local1 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 30)
        end
    end
    return 
end

function FireBeast501000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function FireBeast501000Battle_Terminate(arg0, arg1)
    return 
end

function FireBeast501000Battle_Interupt(arg0, arg1)
    if Damaged_Act(arg0, arg1, 8, 20) then
        if arg0:GetHpRate(TARGET_SELF) < 0.5 or arg0:GetHpRate(TARGET_SELF) < 0.7 and arg0:GetNumber(2) == 1 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, AttDist, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, AttDist, 0, 0)
        end
        return true
    else
        return false
    end
end

return 
