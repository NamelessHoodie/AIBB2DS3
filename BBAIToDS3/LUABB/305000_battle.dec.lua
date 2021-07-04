local local0 = 0.5
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 4.4 - local0
local local4 = 0 - local0
local local5 = 6.3 - local0
local local6 = 0 - local0
local local7 = 0 - local0
local local8 = 0 - local0
local local9 = 9 - local0
local local10 = 11 - local0
local local11 = 0 - local0
local local12 = 0 - local0
local local13 = 8
local local14 = 6.5
local local15 = 5
local local16 = 1
function OnIf_305000(arg0, arg1, arg2)
    if arg2 == 0 then
        FounderBeast305000_ActAfter(arg0, arg1)
    end
    return 
end

function DungeonResident_Lord_TwoSword305000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetNumber(0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif arg0:GetHpRate(TARGET_SELF) <= 0.5 and arg0:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        local0[10] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        if arg0:IsFinishTimer(0) == false then
            local0[1] = 25
            local0[2] = 25
            local0[3] = 25
            local0[8] = 25
        elseif 10 <= local4 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 30
            local0[5] = 15
            local0[6] = 25
            local0[7] = 30
            local0[8] = 0
        elseif 7 <= local4 then
            local0[1] = 5
            local0[2] = 5
            local0[3] = 5
            local0[4] = 20
            local0[5] = 15
            local0[6] = 25
            local0[7] = 20
            local0[8] = 5
        elseif 5 <= local4 then
            local0[1] = 20
            local0[2] = 20
            local0[3] = 20
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 30
        elseif 3 <= local4 then
            local0[3] = 25
            local0[8] = 15
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                local0[1] = 10
                local0[2] = 50
            else
                local0[1] = 50
                local0[2] = 10
            end
        else
            local0[3] = 25
            local0[8] = 25
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                local0[1] = 0
                local0[2] = 50
            else
                local0[1] = 50
                local0[2] = 0
            end
        end
    elseif arg0:IsFinishTimer(0) == false then
        local0[1] = 34
        local0[2] = 33
        local0[3] = 33
    elseif 7 <= local4 then
        local0[1] = 5
        local0[2] = 5
        local0[3] = 5
        local0[4] = 50
        local0[5] = 35
    elseif 5 <= local4 then
        local0[1] = 35
        local0[2] = 35
        local0[3] = 30
        local0[4] = 0
        local0[5] = 0
    elseif 3 <= local4 then
        local0[3] = 25
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local0[1] = 25
            local0[2] = 50
        else
            local0[1] = 50
            local0[2] = 25
        end
    else
        local0[3] = 10
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local0[1] = 30
            local0[2] = 60
        else
            local0[1] = 60
            local0[2] = 30
        end
    end
    if local5 == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if local5 == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if local5 == 3 and 0 < local0[3] then
        local0[3] = 1
    end
    if local5 == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if local5 == 5 and 0 < local0[5] then
        local0[5] = 1
    end
    if local5 == 6 and 0 < local0[6] then
        local0[6] = 1
    end
    if local5 == 7 and 0 < local0[7] then
        local0[7] = 1
    end
    if local5 == 8 and 0 < local0[8] then
        local0[8] = 1
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_TwoSword305000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_TwoSword305000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_TwoSword305000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_TwoSword305000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_TwoSword305000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_TwoSword305000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_TwoSword305000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_TwoSword305000_Act08)
    local1[10] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_TwoSword305000_Act10)
    local1[20] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_TwoSword305000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Lord_TwoSword305000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 4.8 - local0
local0 = local3
local0 = local5
local0 = local10
function DungeonResident_Lord_TwoSword305000_ComboCommonRoute(arg0, arg1)
    local local0 = UPVAL2
    local local1 = 3002
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) == true and arg0:GetRandam_Int(1, 100) <= 50 then
        local0 = UPVAL3
        local1 = 3015
    end
    local local2 = 1
    for local3 = 1 - local2, arg0:GetRandam_Int(1, 2), local2 do
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, UPVAL0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL1, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local0, 0)
    return 
end

local0 = local13
local0 = 4.4 - local0
local0 = local16
local0 = local3
local0 = local5
local0 = local10
function DungeonResident_Lord_TwoSword305000_Act01(arg0, arg1, arg2)
    local local0 = UPVAL4
    local local1 = 3002
    if 7 <= arg0:GetDist(TARGET_ENE_0) and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_F, UPVAL0, 3) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    end
    Approach_Act(arg0, arg1, UPVAL1, (UPVAL1 + 10) * UPVAL2, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) == true and arg0:GetRandam_Int(1, 100) <= 50 then
        local0 = UPVAL5
        local1 = 3015
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL3, 0)
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local1, TARGET_ENE_0, local0, 0)
    else
        DungeonResident_Lord_TwoSword305000_ComboCommonRoute(arg0, arg1)
    end
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
local0 = 5.5 - local0
local0 = local16
function DungeonResident_Lord_TwoSword305000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if 7 <= arg0:GetDist(TARGET_ENE_0) and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_F, UPVAL0, 3) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    end
    Approach_Act(arg0, arg1, UPVAL1, (UPVAL1 + 10) * UPVAL2, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL1, 0, -1)
    DungeonResident_Lord_TwoSword305000_ComboCommonRoute(arg0, arg1)
    arg0:SetNumber(0, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
local0 = 5.4 - local0
local0 = local16
function DungeonResident_Lord_TwoSword305000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if 7 <= arg0:GetDist(TARGET_ENE_0) and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_F, UPVAL0, 3) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    end
    Approach_Act(arg0, arg1, UPVAL1, (UPVAL1 + 10) * UPVAL2, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL1, 0, -1)
    DungeonResident_Lord_TwoSword305000_ComboCommonRoute(arg0, arg1)
    arg0:SetNumber(0, 3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
local0 = 14.8 - local0
local0 = local16
local0 = 10 - local0
function DungeonResident_Lord_TwoSword305000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL3 and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 3) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    Approach_Act(arg0, arg1, UPVAL1, (UPVAL1 + 10) * UPVAL2, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL1, 0, -1)
    DungeonResident_Lord_TwoSword305000_ComboCommonRoute(arg0, arg1)
    arg0:SetNumber(0, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
local0 = 14 - local0
local0 = local16
local0 = 7 - local0
function DungeonResident_Lord_TwoSword305000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL3 and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 3) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    Approach_Act(arg0, arg1, UPVAL1, (UPVAL1 + 10) * UPVAL2, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL1, 0, -1)
    arg0:SetNumber(0, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
local0 = 15.7 - local0
local0 = local16
local0 = 9 - local0
function DungeonResident_Lord_TwoSword305000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL3 and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 3) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    Approach_Act(arg0, arg1, UPVAL1, (UPVAL1 + 10) * UPVAL2, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL1, 0, -1)
    arg0:SetNumber(0, 6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
local0 = 16.2 - local0
local0 = local16
local0 = 10 - local0
function DungeonResident_Lord_TwoSword305000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL3 and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 3) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    Approach_Act(arg0, arg1, UPVAL1, (UPVAL1 + 10) * UPVAL2, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL1, 0, -1)
    arg0:SetNumber(0, 7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.6 - local0
local0 = local16
local0 = 5.8 - local0
function DungeonResident_Lord_TwoSword305000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, (UPVAL0 + 10) * UPVAL1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3019, TARGET_ENE_0, UPVAL0, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, UPVAL2, 0)
    arg0:SetNumber(0, 8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
local0 = local14
local0 = local15
local0 = local16
function DungeonResident_Lord_TwoSword305000_Act10(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 and arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 3) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 10, 0, -1)
    local local0 = 7
    SETUPVAL 6 1 0
    local0 = 0
    SETUPVAL 6 2 0
    local0 = 0
    SETUPVAL 6 3 0
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local5
function DungeonResident_Lord_TwoSword305000_Act20(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    if arg0:GetRandam_Int(1, 100) <= 50 and arg0:GetDist(TARGET_ENE_0) <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, local0, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local13
function DungeonResident_Lord_TwoSword305000_Dodge(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 3)
    local local3 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, UPVAL0, 3)
    local local4 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, UPVAL0, 3)
    if arg2 == 0 then
        if local3 and local4 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        elseif local3 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    elseif arg2 == 1 then
        if local2 and local3 and local4 then
            if local1 <= 33 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            elseif local1 <= 66 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            end
        elseif local2 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif local3 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    elseif local2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif local3 and local4 then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    elseif local3 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    return 
end

function DungeonResident_Lord_TwoSword305000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

local0 = local13
local0 = local14
function FounderBeast305000_ActAfter(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_F, UPVAL0, 3)
    local local2 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, UPVAL0, 3)
    local local3 = arg0:GetRandam_Float(2, 4)
    if arg0:GetDist(TARGET_ENE_0) <= UPVAL1 then
        if local0 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        elseif local0 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        elseif local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, UPVAL1, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    elseif local0 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif local0 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, local3, TARGET_ENE_0, UPVAL1, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    return 
end

function DungeonResident_Lord_TwoSword305000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Lord_TwoSword305000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local15
function DungeonResident_Lord_TwoSword305000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    if arg0:IsFinishTimer(0) == false then
        return false
    elseif FindAttack_Act(arg0, arg1, 3.5, 80) then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
            DungeonResident_Lord_TwoSword305000_Dodge(arg0, arg1, 1)
        else
            DungeonResident_Lord_TwoSword305000_Dodge(arg0, arg1)
        end
        arg0:SetTimer(0, UPVAL0)
        return true
    elseif Damaged_Act(arg0, arg1, 3.5, 80) then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
            DungeonResident_Lord_TwoSword305000_Dodge(arg0, arg1, 1)
        else
            DungeonResident_Lord_TwoSword305000_Dodge(arg0, arg1)
        end
        arg0:SetTimer(0, UPVAL0)
        return true
    else
        local local4 = Shoot_2dist(arg0, arg1, 10, 20, 50, 80)
        if local4 == 1 or local4 == 2 then
            DungeonResident_Lord_TwoSword305000_Dodge(arg0, arg1, 0)
            return true
        else
            return false
        end
    end
end

return 
