local local0 = 1.9
local local1 = 0.3 - local0
local local2 = 0.3 - local0
local local3 = 0.3 - local0
local local4 = 0.3 - local0
local local5 = 0.3 - local0
local local6 = 4.7 - local0
local local7 = 0.3 - local0
local local8 = 4.7 - local0
local local9 = 0.3 - local0
local local10 = 4.7 - local0
local local11 = 0.3 - local0
local local12 = 4.7 - local0
local local13 = 0.3 - local0
local local14 = 4.7 - local0
local local15 = 0.3 - local0
local local16 = 4.7 - local0
local local17 = 0.3 - local0
local local18 = 8.3 - local0
function OnIf_510000(arg0, arg1, arg2)
    if arg2 == 0 then
        IdiocySpider510000_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        arg0:SetNumber(0, 1)
    end
    if arg2 == 2 then
        arg0:SetNumber(0, 2)
    end
    return 
end

function IdiocySpider510000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    if local4 == 100 or local4 == 110 then
        local0[10] = 100
    elseif local4 == 111 then
        if 16 <= local3 then
            local0[1] = 65
            local0[19] = 35
        elseif 8 <= local3 then
            local0[1] = 30
            local0[3] = 50
            local0[19] = 20
        elseif 6 <= local3 then
            local0[1] = 0
            local0[2] = 60
            local0[3] = 40
        elseif 3 <= local3 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                local0[2] = 30
                local0[4] = 10
                local0[5] = 10
                local0[6] = 0
                local0[7] = 10
                local0[8] = 0
                local0[9] = 30
            else
                local0[2] = 50
                local0[4] = 0
                local0[5] = 20
                local0[6] = 10
                local0[7] = 20
                local0[8] = 0
                local0[9] = 0
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            local0[2] = 30
            local0[4] = 20
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 20
            local0[9] = 30
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            local0[2] = 25
            local0[4] = 35
            local0[5] = 20
            local0[6] = 0
            local0[7] = 20
            local0[8] = 0
        else
            local0[2] = 25
            local0[4] = 0
            local0[5] = 20
            local0[6] = 35
            local0[7] = 20
            local0[8] = 0
        end
    elseif local4 == 101 then
        if 14 <= local3 then
            local0[1] = 50
            local0[2] = 0
            local0[3] = 0
            local0[11] = 50
        elseif 8 <= local3 then
            local0[1] = 15
            local0[2] = 0
            local0[3] = 35
            local0[11] = 50
        elseif 4 <= local3 then
            local0[1] = 0
            local0[2] = 35
            local0[3] = 15
            local0[11] = 50
        else
            local0[1] = 0
            local0[2] = 50
            local0[3] = 0
            local0[11] = 50
        end
    else
        local0[11] = 100
    end
    local1[1] = REGIST_FUNC(arg0, arg1, IdiocySpider510000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, IdiocySpider510000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, IdiocySpider510000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, IdiocySpider510000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, IdiocySpider510000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, IdiocySpider510000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, IdiocySpider510000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, IdiocySpider510000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, IdiocySpider510000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, IdiocySpider510000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, IdiocySpider510000_Act11)
    local1[19] = REGIST_FUNC(arg0, arg1, IdiocySpider510000_Act19)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, IdiocySpider510000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 50 - local0
function IdiocySpider510000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.1 - local0
function IdiocySpider510000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 14 - local0
function IdiocySpider510000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function IdiocySpider510000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 15, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function IdiocySpider510000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 15, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function IdiocySpider510000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 15
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function IdiocySpider510000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 15, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function IdiocySpider510000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 15
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 0.3 - local0
local0 = 8.8 - local0
function IdiocySpider510000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 15
    if UPVAL0 <= local0 then
        local2 = UPVAL1
        DashDist = 0
    end
    if UPVAL0 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, local2, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function IdiocySpider510000_Act10(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, 0)
    if arg0:GetNumber(0) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    else
        arg1:AddSubGoal(GOAL_COMMON_If, 10, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function IdiocySpider510000_Act11(arg0, arg1, arg2)
    local local0 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_B, 2, 2)
    local local1 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 2, 2)
    local local2 = arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 2, 2)
    if local0 == false and local1 == false and local2 == false then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    elseif local0 == false then
        if local1 == false and local2 == true then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1, true)
        elseif local2 == false and local1 == true then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1, true)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1, true)
        end
    elseif arg0:GetDist(TARGET_ENE_0) <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 30, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function IdiocySpider510000_Act19(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function IdiocySpider510000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

local0 = 4.7 - local0
function IdiocySpider510000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(1.5, 2.5)
    local local3 = arg0:GetRandam_Float(2.5, 3.5)
    local local4 = UPVAL0 + 1
    if local0 <= 4 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and local1 <= 35 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local1 <= 35 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local1 <= 35 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local0 <= 12 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) and local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 16, TARGET_ENE_0, true, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function IdiocySpider510000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function IdiocySpider510000Battle_Terminate(arg0, arg1)
    return 
end

function IdiocySpider510000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInterupt(INTERUPT_Damaged) and arg0:GetNumber(0) <= 1 and arg0:GetRandam_Int(1, 100) <= 20 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
        return true
    end
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    local local6 = Shoot_2dist(arg0, arg1, 7, 20, 20, 40)
    if local6 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, AttDist, 0, -1)
    elseif local6 == 2 then
        if arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_R, 1, 5) == true then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, -1)
        elseif arg0:IsOnNearMesh(TARGET_SELF, AI_DIR_TYPE_L, 1, 5) == true then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, -1)
        end
        return true
    end
    return false
end

return 
