local local0 = 0.7
local local1 = 1 - local0
local local2 = 1 - local0
local local3 = 1 - local0
local local4 = 1 - local0
local local5 = 1 - local0
local local6 = 1 - local0
local local7 = 1 - local0
local local8 = 3.7 - local0
function OnIf_115000(arg0, arg1, arg2)
    if arg2 == 0 then
        Slime115000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Slime115000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest(0)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:GetNpcThinkParamID() == 115010 then
        if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            local0[14] = 100
        elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            local0[3] = 20
            local0[14] = 80
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            local0[15] = 100
        elseif 8 <= local3 then
            local0[1] = 5
            local0[2] = 5
            local0[3] = 0
            local0[4] = 20
            local0[5] = 20
            local0[7] = 70
            local0[11] = 70
            local0[12] = 0
            local0[13] = 0
        elseif 5.6 <= local3 then
            local0[1] = 5
            local0[2] = 5
            local0[3] = 0
            local0[4] = 20
            local0[5] = 20
            local0[7] = 70
            local0[11] = 70
            local0[12] = 0
            local0[13] = 0
        elseif 3.4 <= local3 then
            local0[1] = 5
            local0[2] = 5
            local0[3] = 0
            local0[4] = 20
            local0[5] = 20
            local0[7] = 15
            local0[11] = 15
            local0[12] = 70
            local0[13] = 70
        elseif 2 <= local3 then
            local0[1] = 5
            local0[2] = 5
            local0[3] = 0
            local0[4] = 20
            local0[5] = 20
            local0[7] = 10
            local0[11] = 10
            local0[12] = 70
            local0[13] = 70
        else
            local0[1] = 5
            local0[2] = 5
            local0[3] = 0
            local0[4] = 20
            local0[5] = 20
            local0[7] = 0
            local0[11] = 0
            local0[12] = 70
            local0[13] = 70
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        local0[14] = 100
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        local0[9] = 20
        local0[14] = 80
    elseif 2 <= local3 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[15] = 100
    elseif 8 <= local3 then
        local0[7] = 15
        local0[8] = 30
        local0[9] = 30
        local0[10] = 25
        local0[11] = 0
        local0[12] = 0
        local0[13] = 0
    elseif 5.6 <= local3 then
        local0[7] = 20
        local0[8] = 20
        local0[9] = 25
        local0[10] = 35
        local0[11] = 0
        local0[12] = 0
        local0[13] = 0
    elseif 3.4 <= local3 then
        local0[7] = 10
        local0[8] = 20
        local0[9] = 30
        local0[10] = 30
        local0[11] = 0
        local0[12] = 10
        local0[13] = 0
    elseif 2 <= local3 then
        local0[7] = 5
        local0[8] = 0
        local0[9] = 0
        local0[10] = 30
        local0[11] = 5
        local0[12] = 35
        local0[13] = 25
    else
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 20
        local0[11] = 0
        local0[12] = 40
        local0[13] = 40
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Slime115000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Slime115000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Slime115000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Slime115000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Slime115000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Slime115000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Slime115000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Slime115000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Slime115000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Slime115000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Slime115000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, Slime115000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, Slime115000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, Slime115000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, Slime115000_Act15)
    local1[20] = REGIST_FUNC(arg0, arg1, Slime115000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, Slime115000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, Slime115000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Slime115000_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, Slime115000_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, Slime115000_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, Slime115000_Act26)
    local1[27] = REGIST_FUNC(arg0, arg1, Slime115000_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, Slime115000_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, Slime115000_Act29)
    local1[30] = REGIST_FUNC(arg0, arg1, Slime115000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Slime115000_Act31)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Slime115000_ActAfter_AdjustSpace), local2)
    return 
end

function Slime115000_Act01(arg0, arg1, arg2)
    local local0 = Att3000_Dist_max
    local local1 = Att3000_Dist_max + 1
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, Att3000_Dist_max, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, AttDist1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Slime115000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = Att3002_Dist_max
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, Att3002_Dist_max, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, Att3002_Dist_max + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Slime115000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = Att3003_Dist_max
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, Att3003_Dist_max, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, Att3003_Dist_max + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Slime115000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = Att3004_Dist_max
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, Att3004_Dist_max, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, Att3004_Dist_max + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Slime115000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = Att3005_Dist_max
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, Att3005_Dist_max, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, Att3005_Dist_max + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Slime115000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = Att3006_Dist_max
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, Att3006_Dist_max, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, Att3006_Dist_max + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3 - local0
function Slime115000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 8, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0.3, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3 - local0
function Slime115000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 8, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0.3, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 5.1 - local0
function Slime115000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 8, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0.3, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4 - local0
function Slime115000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 8, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.7 - local0
function Slime115000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 8
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3 - local0
function Slime115000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if arg0:GetRandam_Int(1, 100) <= 70 then
        local1 = local1 + arg0:GetRandam_Float(1, 2)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 8, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0.3, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
function Slime115000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 8
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Slime115000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, 3, 8, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local8
function Slime115000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0
    local local2 = 8
    local local3 = 0
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Slime115000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Slime115000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(0.5, 1.5)
    return 
end

function Slime115000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Slime115000Battle_Terminate(arg0, arg1)
    return 
end

function Slime115000Battle_Interupt(arg0, arg1)
    return false
end

return 
