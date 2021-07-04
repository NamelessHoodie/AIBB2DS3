local local0 = 0.6
local local1 = 0.6 - local0
local local2 = 0.6 - local0
local local3 = 0.6 - local0
local local4 = 0.6 - local0
function OnIf_254000(arg0, arg1, arg2)
    if arg2 == 0 then
        CrawlsAndComes_Small254000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function CrawlsAndComes_Small254000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetEventRequest()
    local local6 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[3] = 30
        local0[20] = 70
    elseif 8 <= local4 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 10
        local0[4] = 70
    elseif 6 <= local4 then
        local0[1] = 15
        local0[2] = 15
        local0[3] = 15
        local0[4] = 55
    elseif 4 <= local4 then
        local0[1] = 25
        local0[2] = 25
        local0[3] = 25
        local0[4] = 55
    elseif 2 <= local4 then
        local0[1] = 20
        local0[2] = 40
        local0[3] = 35
        local0[4] = 0
    else
        local0[1] = 45
        local0[2] = 20
        local0[3] = 35
        local0[4] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, CrawlsAndComes_Small254000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, CrawlsAndComes_Small254000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, CrawlsAndComes_Small254000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, CrawlsAndComes_Small254000_Act04)
    local1[20] = REGIST_FUNC(arg0, arg1, CrawlsAndComes_Small254000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, CrawlsAndComes_Small254000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.6 - local0
function CrawlsAndComes_Small254000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6.5, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
function CrawlsAndComes_Small254000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5.5, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.9 - local0
function CrawlsAndComes_Small254000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4.5, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8.8 - local0
function CrawlsAndComes_Small254000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 8.4, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrawlsAndComes_Small254000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function CrawlsAndComes_Small254000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function CrawlsAndComes_Small254000_ActAfter_RealTime(arg0, arg1)
    return 
end

function CrawlsAndComes_Small254000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function CrawlsAndComes_Small254000Battle_Terminate(arg0, arg1)
    return 
end

function CrawlsAndComes_Small254000Battle_Interupt(arg0, arg1)
    return false
end

return 
