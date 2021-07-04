local local0 = 0.5
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 6.1 - local0
local local4 = 0 - local0
local local5 = 0 - local0
local local6 = 0 - local0
local local7 = 6.8 - local0
local local8 = 0 - local0
local local9 = 5.4 - local0
local local10 = 0 - local0
local local11 = 0 - local0
local local12 = 9 - local0
local local13 = 13.5 - local0
local local14 = 0 - local0
local local15 = 0 - local0
local local16 = 14 - local0
local local17 = 0 - local0
local local18 = 11 - local0
local local19 = 11 - local0
local local20 = 5
local local21 = 0
function OnIf_305010(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_Lord_RodStaff305010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DungeonResident_Lord_RodStaff305010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetHpRate(TARGET_SELF)
    local local6 = arg0:GetNumber(0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif local5 <= 0.5 and arg0:HasSpecialEffectId(TARGET_SELF, 5021) == false then
        local0[10] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5403) == false then
        if 13 <= local4 then
            local0[4] = 60
            local0[11] = 10
            local0[12] = 10
            local0[13] = 10
            local0[14] = 10
        elseif 9 <= local4 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[4] = 30
            local0[11] = 10
            local0[12] = 10
            local0[13] = 10
            local0[14] = 10
        elseif 7.5 <= local4 then
            local0[1] = 20
            local0[2] = 40
            local0[3] = 20
            local0[11] = 5
            local0[12] = 5
            local0[13] = 5
            local0[14] = 5
        elseif 6 <= local4 then
            local0[1] = 30
            local0[2] = 30
            local0[3] = 20
            local0[11] = 5
            local0[12] = 5
            local0[13] = 5
            local0[14] = 5
        elseif 4.5 <= local4 then
            local0[1] = 40
            local0[2] = 30
            local0[3] = 10
            local0[11] = 5
            local0[12] = 5
            local0[13] = 5
            local0[14] = 5
        elseif 3 <= local4 then
            local0[11] = 5
            local0[12] = 5
            local0[13] = 5
            local0[14] = 5
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                local0[1] = 0
                local0[2] = 20
                local0[3] = 20
                local0[5] = 40
            else
                local0[1] = 40
                local0[2] = 20
                local0[3] = 20
                local0[5] = 0
            end
        else
            local0[11] = 10
            local0[12] = 10
            local0[13] = 10
            local0[14] = 10
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                local0[1] = 0
                local0[5] = 60
            else
                local0[1] = 60
                local0[5] = 0
            end
        end
    elseif 13 <= local4 then
        local0[1] = 20
        local0[4] = 40
        local0[6] = 20
        local0[8] = 10
        local0[9] = 10
        if arg0:GetNumber(1) == 1 then
            local0[8] = 15
            local0[9] = 0
            if local5 <= 0.3 then
                local0[8] = 30
            end
        elseif arg0:GetNumber(2) == 1 then
            local0[8] = 0
            local0[9] = 15
            if local5 <= 0.3 then
                local0[9] = 30
            end
        else
            local0[8] = 10
            local0[9] = 10
        end
    elseif 9 <= local4 then
        local0[1] = 30
        local0[2] = 10
        local0[4] = 20
        local0[6] = 10
        local0[7] = 10
        local0[8] = 10
        local0[9] = 10
        if arg0:GetNumber(1) == 1 then
            local0[8] = 15
            local0[9] = 0
            if local5 <= 0.3 then
                local0[8] = 30
            end
        elseif arg0:GetNumber(2) == 1 then
            local0[8] = 0
            local0[9] = 15
            if local5 <= 0.3 then
                local0[9] = 30
            end
        else
            local0[8] = 10
            local0[9] = 10
        end
    elseif 7.5 <= local4 then
        local0[1] = 30
        local0[2] = 20
        local0[6] = 10
        local0[7] = 10
        local0[9] = 10
        local0[11] = 5
        local0[12] = 5
        local0[13] = 5
        local0[14] = 5
        if arg0:GetNumber(1) == 1 then
            local0[9] = 0
        elseif arg0:GetNumber(2) == 1 and local5 <= 0.3 then
            local0[9] = 30
        else
            local0[9] = 10
        end
    elseif 6 <= local4 then
        local0[1] = 25
        local0[2] = 20
        local0[3] = 15
        local0[5] = 10
        local0[7] = 10
        local0[11] = 5
        local0[12] = 5
        local0[13] = 5
        local0[14] = 5
    elseif 4.5 <= local4 then
        local0[1] = 20
        local0[2] = 30
        local0[3] = 15
        local0[5] = 15
        local0[11] = 5
        local0[12] = 5
        local0[13] = 5
        local0[14] = 5
    elseif 3 <= local4 then
        local0[2] = 25
        local0[7] = 15
        local0[11] = 5
        local0[12] = 5
        local0[13] = 5
        local0[14] = 5
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local0[1] = 0
            local0[5] = 40
        else
            local0[1] = 40
            local0[5] = 0
        end
    else
        local0[7] = 10
        local0[11] = 10
        local0[12] = 10
        local0[13] = 10
        local0[14] = 10
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local0[1] = 10
            local0[5] = 40
        else
            local0[1] = 40
            local0[5] = 10
        end
    end
    if local6 == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if local6 == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if local6 == 3 and 0 < local0[3] then
        local0[3] = 1
    end
    if local6 == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if local6 == 5 and 0 < local0[5] then
        local0[5] = 1
    end
    if local6 == 6 and 0 < local0[6] then
        local0[6] = 1
    end
    if local6 == 7 and 0 < local0[7] then
        local0[7] = 1
    end
    if local6 == 8 and 0 < local0[8] then
        local0[8] = 1
    end
    if local6 == 9 and 0 < local0[9] then
        local0[9] = 1
    end
    if local6 == 11 and 0 < local0[11] then
        local0[11] = 1
    end
    if local6 == 11 and 0 < local0[12] then
        local0[12] = 1
    end
    if local6 == 11 and 0 < local0[13] then
        local0[13] = 1
    end
    if local6 == 11 and 0 < local0[14] then
        local0[14] = 1
    end
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 6) == false and 0 < local0[11] then
        local0[11] = 0
    end
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 6) == false and 0 < local0[12] then
        local0[12] = 0
    end
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 6) == false and 0 < local0[13] then
        local0[13] = 0
    end
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 6) == false and 0 < local0[14] then
        local0[14] = 0
    end
    if local5 <= 0.3 then
        local0[11] = 0
        local0[12] = 0
        local0[13] = 0
        local0[14] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_RodStaff305010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_RodStaff305010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_RodStaff305010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_RodStaff305010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_RodStaff305010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_RodStaff305010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_RodStaff305010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_RodStaff305010_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_RodStaff305010_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_RodStaff305010_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_RodStaff305010_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_RodStaff305010_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_RodStaff305010_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_RodStaff305010_Act14)
    local1[20] = REGIST_FUNC(arg0, arg1, DungeonResident_Lord_RodStaff305010_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Lord_RodStaff305010_ActAfter_AdjustSpace, atkAfterOddsTbl), local2)
    return 
end

local0 = 5.9 - local0
local0 = 8 - local0
local0 = 11.9 - local0
local0 = local13
local0 = local18
function DungeonResident_Lord_RodStaff305010_ComboCommonRoute(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = 3001
    local local5 = 3002
    if arg0:HasSpecialEffectId(TARGET_SELF, 5403) == true then
        if local0 <= 65 then
            local4 = 3004
            local2 = UPVAL2
        end
        if local1 <= 65 then
            local5 = 3005
            local3 = UPVAL3
        end
        local2 = UPVAL4
    else
        if local0 <= 30 then
            local4 = 3004
        end
        if local1 <= 30 then
            local5 = 3005
        end
    end
    if arg2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local4, TARGET_ENE_0, local2, 0)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5403) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, local5, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, local5, TARGET_ENE_0, local3, 0)
    end
    return 
end

local0 = 7 - local0
local0 = local18
function DungeonResident_Lord_RodStaff305010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5403) == true then
        if UPVAL0 + 2 <= arg0:GetDist(TARGET_ENE_0) then
            local1 = UPVAL1
        end
        local2 = UPVAL1
    end
    Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
    DungeonResident_Lord_RodStaff305010_ComboCommonRoute(arg0, arg1, true)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7.8 - local0
local0 = 9 - local0
function DungeonResident_Lord_RodStaff305010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5403) == true then
        local2 = UPVAL1
    end
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local2, 0, -1)
    DungeonResident_Lord_RodStaff305010_ComboCommonRoute(arg0, arg1, true)
    arg0:SetNumber(0, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.7 - local0
function DungeonResident_Lord_RodStaff305010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, -1)
    DungeonResident_Lord_RodStaff305010_ComboCommonRoute(arg0, arg1, false)
    arg0:SetNumber(0, 3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DungeonResident_Lord_RodStaff305010_Act04(arg0, arg1, arg2)
    local local0 = 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5403) == true then
        local0 = arg0:GetRandam_Int(2, 5)
    end
    Shoot_Act(arg0, arg1, 3007, 3017, local0)
    arg0:SetNumber(0, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.7 - local0
function DungeonResident_Lord_RodStaff305010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetNumber(0, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
function DungeonResident_Lord_RodStaff305010_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetNumber(0, 6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 999 - local0
function DungeonResident_Lord_RodStaff305010_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetNumber(0, 7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 17.4 - local0
function DungeonResident_Lord_RodStaff305010_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetNumber(0, 8)
    arg0:SetNumber(1, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 11.8 - local0
function DungeonResident_Lord_RodStaff305010_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetNumber(0, 9)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DungeonResident_Lord_RodStaff305010_Act10(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 10) == false then
            DungeonResident_Lord_RodStaff305010_Act11(arg0, arg1, arg2)
        else
            DungeonResident_Lord_RodStaff305010_Act12(arg0, arg1, arg2)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
function DungeonResident_Lord_RodStaff305010_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= 4 then
        if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 710, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
        end
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, UPVAL0)
    elseif local0 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    elseif local0 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 710, TARGET_ENE_0, 0, AI_DIR_TYPE_F, UPVAL0)
    end
    arg0:SetNumber(0, 11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
function DungeonResident_Lord_RodStaff305010_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= 4 then
        if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, UPVAL0)
    elseif local0 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, UPVAL0)
    elseif local0 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    end
    arg0:SetNumber(0, 11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
function DungeonResident_Lord_RodStaff305010_Act13(arg0, arg1, arg2)
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 10) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    end
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, UPVAL0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, UPVAL0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, UPVAL0)
    end
    arg0:SetNumber(0, 11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
function DungeonResident_Lord_RodStaff305010_Act14(arg0, arg1, arg2)
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 10) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, UPVAL0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_L, UPVAL0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, UPVAL0)
    end
    arg0:SetNumber(0, 11)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Lord_RodStaff305010_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Lord_RodStaff305010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_Lord_RodStaff305010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    return 
end

function DungeonResident_Lord_RodStaff305010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Lord_RodStaff305010Battle_Terminate(arg0, arg1)
    return 
end

function DungeonResident_Lord_RodStaff305010Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 5.5
    if arg0:IsInterupt(INTERUPT_Damaged) and arg0:HasSpecialEffectId(TARGET_SELF, 5341) == false and arg0:GetDist(TARGET_ENE_0) <= 6 and local0 <= 40 then
        arg0:SetNumber(0, 11)
        arg1:ClearSubGoal()
        if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 3) == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 710, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        elseif arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 3) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        elseif local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
        return true
    else
        return false
    end
end

return 
