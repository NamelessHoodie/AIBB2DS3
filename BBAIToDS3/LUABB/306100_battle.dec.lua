local local0 = 0.1
function OnIf_306100(arg0, arg1, arg2)
    if arg2 == 0 then
        DungeonResident_bride_fetus306100_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DungeonResident_bride_fetus306100Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = 1
    arg0:DeleteObserve(0)
    if arg0:IsFinishTimer(0) == false or arg0:GetEventRequest(0) == 100 then
        local4 = 0
    end
    if arg0:GetDist(TARGET_ENE_0) <= 2.7 then
        local0[1] = 99 * local4
        local0[2] = 1
    else
        local0[1] = 0 * local4
        local0[2] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DungeonResident_bride_fetus306100_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DungeonResident_bride_fetus306100_Act02)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DungeonResident_bride_fetus306100_ActAfter_AdjustSpace), local2)
    return 
end

function DungeonResident_bride_fetus306100_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 65 then
        arg0:SetTimer(0, arg0:GetRandam_Int(3, 7))
    else
        arg0:SetTimer(0, arg0:GetRandam_Int(15, 25))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_bride_fetus306100_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_NONE, 0, 0, 0)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 2.7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DungeonResident_bride_fetus306100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DungeonResident_bride_fetus306100_ActAfter_RealTime(arg0, arg1)
    return 
end

function DungeonResident_bride_fetus306100Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DungeonResident_bride_fetus306100Battle_Terminate(arg0, arg1)
    return 
end

function DungeonResident_bride_fetus306100Battle_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg0:IsInsideObserve(0) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(0)
            arg0:Replaning()
            return true
        else
            return false
        end
    else
        return false
    end
end

return 
