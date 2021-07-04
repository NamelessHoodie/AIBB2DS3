local local0 = 0.1
function OnIf_311200(arg0, arg1, arg2)
    if arg2 == 0 then
        EvilSpiritsBullet311200_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function EvilSpiritsBullet311200Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetEventRequest(0)
    local local6 = 1
    if arg0:IsFinishTimer(0) == false or local5 == 100 then
        local6 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        if local5 == 100 then
            local0[3] = 100
        elseif local4 <= 6 then
            local0[2] = 99 * local6
            local0[4] = 1
        elseif local4 <= 12 then
            local0[2] = 50 * local6
            local0[4] = 50
        else
            local0[2] = 0 * local6
            local0[4] = 100
        end
    else
        local0[1] = 75 * local6
        local0[4] = 25
    end
    local1[1] = REGIST_FUNC(arg0, arg1, EvilSpiritsBullet311200_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, EvilSpiritsBullet311200_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, EvilSpiritsBullet311200_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, EvilSpiritsBullet311200_Act04)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, EvilSpiritsBullet311200_ActAfter_AdjustSpace), local2)
    return 
end

function EvilSpiritsBullet311200_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EvilSpiritsBullet311200_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:SetTimer(0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EvilSpiritsBullet311200_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EvilSpiritsBullet311200_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function EvilSpiritsBullet311200_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function EvilSpiritsBullet311200_ActAfter_RealTime(arg0, arg1)
    return 
end

function EvilSpiritsBullet311200Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function EvilSpiritsBullet311200Battle_Terminate(arg0, arg1)
    return 
end

function EvilSpiritsBullet311200Battle_Interupt(arg0, arg1)
    return false
end

return 
