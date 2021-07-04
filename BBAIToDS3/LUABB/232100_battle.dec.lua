local local0 = 0.3
local local1 = 0 - local0
local local2 = 30 - local0
local local3 = 0 - local0
local local4 = 30 - local0
local local5 = 0 - local0
local local6 = 30 - local0
local local7 = 0 - local0
local local8 = 30 - local0
local local9 = 0 - local0
local local10 = 30 - local0
local local11 = 0 - local0
local local12 = 30 - local0
local local13 = 0 - local0
local local14 = 30 - local0
local local15 = 0 - local0
local local16 = 30 - local0
local local17 = 0 - local0
local local18 = 30 - local0
local local19 = 0 - local0
local local20 = 30 - local0
function OnIf_232100(arg0, arg1, arg2)
    if arg2 == 0 then
        KingReaper_sword232100_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function KingReaper_sword232100Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local0[1] = 100
    local1[1] = REGIST_FUNC(arg0, arg1, KingReaper_sword232100_Act01)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, KingReaper_sword232100_ActAfter_AdjustSpace), local2)
    return 
end

function KingReaper_sword232100_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function KingReaper_sword232100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function KingReaper_sword232100_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(0, 1)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = arg0:GetDist(TARGET_FRI_0)
    local local4 = arg0:GetRandam_Int(4, 10)
    local local5 = arg0:GetRandam_Int(60, 90)
    return 
end

function KingReaper_sword232100Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function KingReaper_sword232100Battle_Terminate(arg0, arg1)
    return 
end

function KingReaper_sword232100Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    return false
end

return 
