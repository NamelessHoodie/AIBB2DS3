local local0 = 0.3
local local1 = 0 - local0
function OnIf_104001(arg0, arg1, arg2)
    if arg2 == 0 then
        Shousitai_Fist_Posession104001_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Shousitai_Fist_Posession104001Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetEventRequest()
    local local4 = arg0:GetRandam_Int(1, 100)
    if 0 <= arg0:GetDist(TARGET_FRI_0) then
        local0[1] = 100
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 50, TARGET_SELF, false, -1)
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Shousitai_Fist_Posession104001_Act01)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Shousitai_Fist_Posession104001_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 1.3 - local0
function Shousitai_Fist_Posession104001_Act01(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0.5
    if local1 <= arg0:GetDist(TARGET_FRI_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_FRI_0, local1, TARGET_FRI_0, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_FRI_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Shousitai_Fist_Posession104001_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Shousitai_Fist_Posession104001_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(2, 4)
    return 
end

function Shousitai_Fist_Posession104001Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Shousitai_Fist_Posession104001Battle_Terminate(arg0, arg1)
    return 
end

function Shousitai_Fist_Posession104001Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        return false
    end
end

return 
