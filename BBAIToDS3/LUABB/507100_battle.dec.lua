local local0 = 0.3
local local1 = 0 - local0
local local2 = 15 - local0
local local3 = 0 - local0
local local4 = 15 - local0
function OnIf_507100(arg0, arg1, arg2)
    if arg2 == 0 then
        HalfBakedDevil507100_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function HalfBakedDevil507100Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg0:AddObserveRegion(0, TARGET_ENE_0, 2802810)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetEventRequest(0)
    local local5 = arg0:GetEventRequest(1)
    if arg0:GetNumber(0) == 0 then
        arg0:SetTimer(0, 5)
        arg0:SetNumber(0, 1)
    end
    if arg0:IsFinishTimer(0) == false then
        magica = 0
    end
    if arg0:GetEventRequest(2) == 1 then
        local0[21] = 10
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        if local5 == 1 then
            local0[21] = 10
        else
            local0[2] = 10
        end
    elseif local5 == 1 then
        local0[21] = 10
    elseif arg0:IsEventFlag(12804950) == true then
        local0[11] = 10
    elseif arg0:IsEventFlag(12804951) == true then
        local0[12] = 10
    elseif arg0:IsEventFlag(12804952) == true then
        local0[13] = 10
    elseif arg0:IsEventFlag(12804953) == true then
        local0[14] = 10
    elseif arg0:IsInsideObserve(0) then
        if 18 <= arg0:GetDist(TARGET_ENE_0) then
            local0[6] = 0
            local0[7] = 10
            local0[21] = 10
        else
            local0[6] = 10
            local0[7] = 0
            local0[21] = 10
        end
    else
        local0[6] = 0
        local0[7] = 10
        local0[21] = 10
    end
    local1[1] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507100_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507100_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507100_Act03)
    local1[6] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507100_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507100_Act07)
    local1[11] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507100_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507100_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507100_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507100_Act14)
    local1[21] = REGIST_FUNC(arg0, arg1, HalfBakedDevil507100_Act21)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, HalfBakedDevil507100_ActAfter_AdjustSpace), local2)
    return 
end

function HalfBakedDevil507100_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_NONE, DIST_None)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HalfBakedDevil507100_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, Dist_None, 0, -1)
    arg0:SetTimer(1, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HalfBakedDevil507100_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, Dist_None, 0, -1)
    arg0:SetTimer(2, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HalfBakedDevil507100_Act06(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_None, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HalfBakedDevil507100_Act07(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, DIST_None, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HalfBakedDevil507100_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HalfBakedDevil507100_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HalfBakedDevil507100_Act13(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HalfBakedDevil507100_Act14(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function HalfBakedDevil507100_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HalfBakedDevil507100_ActAfter_RealTime(arg0, arg1)
    return 
end

function HalfBakedDevil507100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function HalfBakedDevil507100Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function HalfBakedDevil507100Battle_Terminate(arg0, arg1)
    return 
end

function HalfBakedDevil507100Battle_Interupt(arg0, arg1)
    return false
end

return 
