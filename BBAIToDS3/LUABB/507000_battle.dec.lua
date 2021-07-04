local local0 = 8
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 0 - local0
local local6 = 0 - local0
local local7 = 0 - local0
local local8 = 0 - local0
local local9 = 16 - local0
local local10 = 0 - local0
local local11 = 0 - local0
local local12 = 0 - local0
local local13 = 0 - local0
local local14 = 0 - local0
local local15 = 0 - local0
local local16 = 0 - local0
local local17 = 8 - local0
local local18 = 0 - local0
local local19 = 100 - local0
local local20 = 0 - local0
local local21 = 0 - local0
local local22 = 16 - local0
local local23 = 0 - local0
local local24 = 12 - local0
local local25 = 0 - local0
local local26 = 0 - local0
local local27 = 16 - local0
local local28 = 0 - local0
local local29 = 12 - local0
local local30 = 0 - local0
local local31 = 0 - local0
local local32 = 16 - local0
local local33 = 0 - local0
local local34 = 12 - local0
local local35 = 0 - local0
local local36 = 0 - local0
local local37 = 0 - local0
local local38 = 0 - local0
local local39 = 0 - local0
local local40 = 0 - local0
local local41 = 0 - local0
local local42 = 0 - local0
local local43 = 0 - local0
local local44 = 0 - local0
local local45 = 15 - local0
function OnIf_507000(arg0, arg1, arg2)
    if arg2 == 0 then
        HalfBakedDevil507000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function HalfBakedDevil507000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5026)
    arg0:AddObserveChrDmySphere(0, TARGET_ENE_0, 10, 3)
    arg0:AddObserveChrDmySphere(1, TARGET_ENE_0, 15, 3)
    arg0:AddObserveChrDmySphere(2, TARGET_ENE_0, 50, 3)
    arg0:AddObserveChrDmySphere(3, TARGET_ENE_0, 55, 3)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetDistY(TARGET_ENE_0)
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetEventRequest(0)
    local local8 = 1
    local local9 = 1
    local local10 = 1
    local local11 = 1
    if arg0:HasSpecialEffectId(TARGET_SELF, 5589) then
        local10 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5584) then
        local11 = 0
    end
    if arg0:GetEventRequest(1) == -1 or arg0:GetEventRequest(2) == 1 then
        local10 = 0
    end
    if local7 <= 1 then
        local9 = 0
    end
    if local7 == -1 then
        local8 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        if 9 <= local5 then
            local0[37] = 100
        elseif local10 == 1 then
            local0[31] = 1000
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
            if 6 <= local4 then
                local0[37] = 100
            else
                local0[29] = 50
                local0[37] = 50
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
            if 6 <= local4 then
                local0[26] = 100
            else
                local0[26] = 50
                local0[29] = 50
            end
        elseif 10 <= local4 then
            local0[21] = 10
            local0[22] = 10
            local0[23] = 0
            local0[24] = 10
            local0[25] = 500 * local9 * local11
            local0[27] = 0
            local0[28] = 10
            local0[29] = 0
            local0[30] = 0
            local0[31] = 1000 * local10
        elseif 6 <= local4 then
            local0[21] = 10
            local0[22] = 0
            local0[23] = 10
            local0[24] = 0
            local0[25] = 500 * local9 * local11
            local0[27] = 10
            local0[28] = 10
            local0[29] = 0
            local0[30] = 0
            local0[31] = 1000 * local10
        else
            local0[21] = 0
            local0[22] = 0
            local0[23] = 10
            local0[24] = 0
            local0[25] = 500 * local9 * local11
            local0[27] = 10
            local0[28] = 0
            local0[29] = 10
            local0[30] = 0
            local0[31] = 1000 * local10
        end
    elseif 12.5 <= local5 then
        local0[18] = 100
    elseif 11 <= local5 then
        local0[17] = 100
    elseif 9 <= local5 then
        local0[16] = 100
    elseif local10 == 1 then
        local0[11] = 1000
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
        if 6 <= local4 then
            if 1 <= local7 then
                local0[36] = 10
            else
                local0[38] = 10
            end
        elseif 1 <= local7 then
            local0[9] = 33
            local0[36] = 67
        else
            local0[9] = 67
            local0[38] = 33
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        if 6 <= local4 then
            local0[6] = 100
        else
            local0[6] = 50
            local0[9] = 50
        end
    elseif 10 <= local4 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 0
        local0[4] = 0
        local0[5] = 10
        local0[6] = 0
        local0[7] = 10 * local8
        local0[8] = 10 * local9
        local0[9] = 0
        local0[11] = 1000 * local10
    elseif 6 <= local4 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 10
        local0[4] = 10
        local0[5] = 10
        local0[6] = 0
        local0[7] = 10 * local8
        local0[8] = 10 * local9
        local0[9] = 0
        local0[11] = 1000 * local10
    else
        local0[1] = 0
        local0[2] = 10
        local0[3] = 10
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0 * local8
        local0[8] = 10 * local9
        local0[9] = 10
        local0[11] = 1000 * local10
    end
    local1[1] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act09)
    local1[11] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act11)
    local1[16] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act17)
    local1[18] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act18)
    local1[21] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act26)
    local1[27] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act29)
    local1[30] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act31)
    local1[36] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_Act38)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, HalfBakedDevil507000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 16 - local0
function HalfBakedDevil507000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8 - local0
function HalfBakedDevil507000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 7 - local0
function HalfBakedDevil507000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local2, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 11 - local0
function HalfBakedDevil507000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 15 - local0
function HalfBakedDevil507000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8 - local0
function HalfBakedDevil507000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 9999
    local local4 = UPVAL0 + 1
    local local5 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, local4, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 10 - local0
function HalfBakedDevil507000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 13 - local0
function HalfBakedDevil507000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6 - local0
function HalfBakedDevil507000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 9999
    local local4 = UPVAL0 + 1
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, Dist_None, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local19
function HalfBakedDevil507000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 9999
    local local4 = UPVAL0 + 1
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, Dist_None, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 16 - local0
function HalfBakedDevil507000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 2)
    end
    if local0 <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, local2, 0, -1)
    elseif local0 <= 67 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, local2, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 16 - local0
function HalfBakedDevil507000_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 2)
    end
    if local0 <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, local2, 0, -1)
    elseif local0 <= 67 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, local2, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 16 - local0
function HalfBakedDevil507000_Act18(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = UPVAL0 + 1
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 2)
    end
    if local0 <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, local2, 0, -1)
    elseif local0 <= 67 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3037, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, local2, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 15 - local0
function HalfBakedDevil507000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 22 - local0
function HalfBakedDevil507000_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 10 - local0
function HalfBakedDevil507000_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 25 - local0
function HalfBakedDevil507000_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 100 - local0
local0 = 0 - local0
function HalfBakedDevil507000_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = 9999
    local local5 = UPVAL0 + 1
    local local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, Dist_None, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 15 - local0
function HalfBakedDevil507000_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 9999
    local local4 = UPVAL0 + 1
    local local5 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, local4, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, local4, 0, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 10 - local0
function HalfBakedDevil507000_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 14 - local0
function HalfBakedDevil507000_Act28(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 9999, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6 - local0
function HalfBakedDevil507000_Act29(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 9999
    local local4 = UPVAL0 + 1
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, Dist_None, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 100 - local0
function HalfBakedDevil507000_Act30(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 9999, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local19
function HalfBakedDevil507000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 9999
    local local4 = UPVAL0 + 1
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, Dist_None, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HalfBakedDevil507000_Act36(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3020, TARGET_NONE, DIST_None)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HalfBakedDevil507000_Act37(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3021, TARGET_NONE, DIST_None)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HalfBakedDevil507000_Act38(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HalfBakedDevil507000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function HalfBakedDevil507000_ActAfter_RealTime(arg0, arg1)
    return 
end

function HalfBakedDevil507000Battle_Update(arg0, arg1)
    arg0:SetEventFlag(12804950, false)
    arg0:SetEventFlag(12804951, false)
    arg0:SetEventFlag(12804952, false)
    arg0:SetEventFlag(12804953, false)
    if arg0:IsInsideObserve(3) then
        arg0:SetEventFlag(12804953, true)
    elseif arg0:IsInsideObserve(2) then
        arg0:SetEventFlag(12804952, true)
    elseif arg0:IsInsideObserve(1) then
        arg0:SetEventFlag(12804951, true)
    elseif arg0:IsInsideObserve(0) then
        arg0:SetEventFlag(12804950, true)
    end
    return GOAL_RESULT_Continue
end

function HalfBakedDevil507000Battle_Terminate(arg0, arg1)
    return 
end

local0 = 6 - local0
local0 = 16 - local0
local0 = 10 - local0
local0 = 8 - local0
function HalfBakedDevil507000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = UPVAL0 + 1
    local local5 = UPVAL2 + 1
    if arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025) then
        arg1:ClearSubGoal()
        if local4 <= local3 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, UPVAL1 + 1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local4, 0)
        end
        arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5020)
        return true
    elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5026) then
        arg1:ClearSubGoal()
        if local5 <= local3 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local5, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, UPVAL3 + 1, 0)
        end
        arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5021)
        return true
    else
        return false
    end
end

return 
