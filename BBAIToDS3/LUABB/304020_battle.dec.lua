local local0 = 0.6
local local1 = 0.6 - local0
local local2 = 3.6 - local0
local local3 = 0.6 - local0
local local4 = 5.2 - local0
local local5 = 0.6 - local0
local local6 = 9 - local0
local local7 = 0.6 - local0
local local8 = 5.2 - local0
local local9 = 0.6 - local0
local local10 = 11 - local0
local local11 = 0.6 - local0
local local12 = 5.3 - local0
local local13 = 0.6 - local0
local local14 = 0.6 - local0
function OnIf_304020(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_Fatman_Shotgun_Hatchet304020_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DungeonResident_Fatman_Shotgun_Hatchet304020Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8)
    arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)
    if local6 <= 0.3 and arg0:HasSpecialEffectId(TARGET_SELF, 5612) == false then
        local0[13] = 100
    elseif 0.3 < local6 and arg0:HasSpecialEffectId(TARGET_SELF, 5612) == true then
        local0[14] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[22] = 100
    elseif local5 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[23] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5612) == true then
        if 8 <= local3 then
            local0[1] = 20
            local0[2] = 15
            local0[3] = 10
            local0[4] = 10
            local0[5] = 0
            local0[6] = 25
            local0[7] = 20
            local0[8] = 0
            local0[12] = 0
        elseif 4 <= local3 then
            local0[1] = 20
            local0[2] = 15
            local0[3] = 5
            local0[4] = 10
            local0[5] = 0
            local0[6] = 20
            local0[7] = 30
            local0[8] = 0
            local0[12] = 0
        else
            local0[1] = 25
            local0[2] = 10
            local0[3] = 0
            local0[4] = 10
            local0[5] = 0
            local0[6] = 30
            local0[7] = 25
            local0[8] = 0
            local0[12] = 0
        end
    elseif 1.5 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 95
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[12] = 5
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 80
        local0[12] = 20
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act08)
    local1[11] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act14)
    local1[20] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act23)
    local1[30] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_Act40)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_Fatman_Shotgun_Hatchet304020_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = UPVAL0 + 3
    if arg0:GetRandam_Int(1, 100) <= 60 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 2)
    end
    if local0 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    elseif local0 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = UPVAL0 + 3
    if arg0:GetRandam_Int(1, 100) <= 60 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 2)
    end
    if local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, -1)
    elseif local0 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 3, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = UPVAL1
    local local2 = UPVAL0 + 3
    if arg0:GetRandam_Int(1, 100) <= 60 then
        local0 = local0 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, UPVAL0 + 10, 0, 2)
    end
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL1 + 0.5
    local local2 = UPVAL0 + 3
    if arg0:GetDist(TARGET_ENE_0) <= local1 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, local1, TARGET_ENE_0, true, -1)
    else
        Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    end
    if local0 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, local2, 0, -1)
    elseif local0 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local2, 0)
    elseif local0 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.8 - local0
local0 = 0.6 - local0
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    local local3 = UPVAL0 + 3
    if arg0:GetRandam_Int(1, 100) <= 60 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 2)
    end
    if local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local3, 0)
    elseif local0 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.3 - local0
local0 = 0.6 - local0
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL1
    if arg0:GetRandam_Int(1, 100) <= 60 then
        local1 = local1 + arg0:GetRandam_Float(-0.5, 0.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, UPVAL0 + 3, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 1.5 - local0
local0 = 0.6 - local0
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 10
    local local4 = 0
    if arg0:GetRandam_Int(1, 100) <= 60 then
        local local5 = UPVAL0 + arg0:GetRandam_Float(-0.5, 0.5)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 0
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act11(arg0, arg1, arg2)
    local local0 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 3.1, TARGET_ENE_0, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:SetNumber(1, UPVAL0)
    local local1 = UPVAL0 + 1
    SETUPVAL 5 0 0
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DungeonResident_Fatman_Shotgun_Hatchet304020_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if 10 <= local0 then
        Torimaki_Act(arg0, arg1, 0)
    elseif 3 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Fatman_Shotgun_Hatchet304020_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Fatman_Shotgun_Hatchet304020_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3 - local0
local0 = 2.5 - local0
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 0
    if arg0:GetRandam_Int(1, 100) <= 60 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5612) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local0 <= UPVAL0 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0, 0, -1)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local0 <= UPVAL1 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL1, 0, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, DIST_None, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Fatman_Shotgun_Hatchet304020_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Fatman_Shotgun_Hatchet304020_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.9 - local0
local0 = 0.6 - local0
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
local0 = 0.6 - local0
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = local3
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.5 - local0
local0 = 0.6 - local0
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
local0 = local5
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
local0 = local7
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 10.6 - local0
local0 = 0.6 - local0
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
local0 = local9
function DungeonResident_Fatman_Shotgun_Hatchet304020_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, local3, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, local3, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Fatman_Shotgun_Hatchet304020_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3010_Dist_min
    Approach_Act(arg0, arg1, Att3010_Dist_max, Att3010_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, Att3010_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_Fatman_Shotgun_Hatchet304020_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(1.5, 2.5)
    local local5 = arg0:GetRandam_Float(2.5, 3.5)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5612) == true then
        if local0 <= 3 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
                elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
                end
            end
        elseif local0 <= 6 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        end
    elseif local0 <= 6 then
        if local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
        elseif local1 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local4, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif local0 <= 11 then
        if local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif local1 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local3, arg0:GetRandam_Int(120, 120), true, true, -1)
    end
    return 
end

function DungeonResident_Fatman_Shotgun_Hatchet304020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_Fatman_Shotgun_Hatchet304020Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_Fatman_Shotgun_Hatchet304020Battle_Terminate(arg0, arg1)
    return 
end

function DungeonResident_Fatman_Shotgun_Hatchet304020Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        if arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) and arg0:HasSpecialEffectId(TARGET_SELF, 5702) and (not not arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8) or arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)) and arg0:GetHpRate(TARGET_SELF) <= 0.6 and arg0:GetNumber(1) <= 1 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, DIST_None, 0, 0)
            arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5703)
            return true
        elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) and arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5703) then
            arg1:ClearSubGoal()
            arg0:SetNumber(1, arg0:GetNumber(1) + 1)
            arg0:Replaning()
            arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5703)
            return true
        else
            return false
        end
    end
end

return 
