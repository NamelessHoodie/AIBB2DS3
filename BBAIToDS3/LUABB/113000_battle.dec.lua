local local0 = 0.6
local local1 = 0.5 - local0
local local2 = 0.5 - local0
local local3 = 3.3 - local0
local local4 = 0.5 - local0
local local5 = 0.5 - local0
local local6 = 3.7 - local0
local local7 = 0.5 - local0
local local8 = 0.5 - local0
local local9 = 0.5 - local0
local local10 = 0.5 - local0
local local11 = 2 - local0
local local12 = 2 - local0
local local13 = 0.5 - local0
local local14 = 0.5 - local0
local local15 = 0.5 - local0
function OnIf_113000(arg0, arg1, arg2)
    if arg2 == 0 then
        DemonsFanatic113000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DemonsFanatic113000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:GetEventRequest() == 100 then
        local0[10] = 100
    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) == false then
            local0[15] = 100
        else
            local0[9] = 20
            local0[10] = 20
            local0[11] = 60
            local0[22] = 0
        end
    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) == false then
            local0[15] = 100
        else
            local0[1] = 0
            local0[4] = 5
            local0[7] = 5
            local0[8] = 5
            local0[9] = 45
            local0[10] = 40
            local0[23] = 0
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[15] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 60) then
        if local4 <= 3 then
            local0[5] = 66
            local0[15] = 33
        else
            local0[11] = 70
            local0[15] = 30
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) then
        if local4 <= 3 then
            local0[6] = 66
            local0[15] = 33
        else
            local0[11] = 70
            local0[15] = 30
        end
    elseif 10 <= local4 then
        local0[1] = 0
        local0[2] = 0
        local0[3] = 0
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 100
        local0[15] = 0
    elseif 7 <= local4 then
        local0[1] = 20
        local0[2] = 0
        local0[3] = 0
        local0[4] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 20
        local0[8] = 30
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[15] = 0
    elseif 3 <= local4 then
        local0[1] = 20
        local0[2] = 0
        local0[3] = 0
        local0[4] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 30
        local0[8] = 20
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[15] = 0
    else
        local0[1] = 40
        local0[2] = 20
        local0[3] = 20
        local0[4] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[15] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DemonsFanatic113000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DemonsFanatic113000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DemonsFanatic113000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DemonsFanatic113000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DemonsFanatic113000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DemonsFanatic113000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DemonsFanatic113000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DemonsFanatic113000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, DemonsFanatic113000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, DemonsFanatic113000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, DemonsFanatic113000_Act11)
    local1[15] = REGIST_FUNC(arg0, arg1, DemonsFanatic113000_Act15)
    local1[22] = REGIST_FUNC(arg0, arg1, DemonsFanatic113000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, DemonsFanatic113000_Act23)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DemonsFanatic113000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 3.2 - local0
function DemonsFanatic113000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    if local0 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
    elseif local0 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local1, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.3 - local0
function DemonsFanatic113000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.7 - local0
function DemonsFanatic113000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.7 - local0
function DemonsFanatic113000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.1 - local0
function DemonsFanatic113000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.3 - local0
function DemonsFanatic113000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.5 - local0
function DemonsFanatic113000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 12.5 - local0
function DemonsFanatic113000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 20 - local0
function DemonsFanatic113000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 20 - local0
function DemonsFanatic113000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 40 - local0
function DemonsFanatic113000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DemonsFanatic113000_Act15(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, AttDist, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, AttDist, 0, -1)
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, AttDist, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, AttDist, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DemonsFanatic113000_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DemonsFanatic113000_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DemonsFanatic113000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DemonsFanatic113000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    end
    return 
end

function DemonsFanatic113000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DemonsFanatic113000Battle_Terminate(arg0, arg1)
    return 
end

function DemonsFanatic113000Battle_Interupt(arg0, arg1)
    return false
end

return 
