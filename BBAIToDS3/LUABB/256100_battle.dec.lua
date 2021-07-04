local local0 = 0.1
function OnIf_256100(arg0, arg1, arg2)
    if arg2 == 0 then
        HozukiBullet256100_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function HozukiBullet256100Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local0[1] = 100
    local1[1] = REGIST_FUNC(arg0, arg1, HozukiBullet256100_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, HozukiBullet256100_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, HozukiBullet256100_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, HozukiBullet256100_Act04)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, HozukiBullet256100_ActAfter_AdjustSpace), local2)
    return 
end

function HozukiBullet256100_Act01(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HozukiBullet256100_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_None, 0, 0)
    arg0:SetTimer(0, 4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HozukiBullet256100_Act03(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HozukiBullet256100_Act04(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function HozukiBullet256100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function HozukiBullet256100_ActAfter_RealTime(arg0, arg1)
    return 
end

function HozukiBullet256100Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function HozukiBullet256100Battle_Terminate(arg0, arg1)
    return 
end

function HozukiBullet256100Battle_Interupt(arg0, arg1)
    return false
end

return 
