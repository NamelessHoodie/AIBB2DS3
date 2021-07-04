local local0 = 0.3
local local1 = 0.3 - local0
local local2 = 3.2 - local0
local local3 = 3.1 - local0
local local4 = 2.6 - local0
local local5 = 11.2 - local0
local local6 = 0.3 - local0
local local7 = 3.2 - local0
local local8 = 4.5 - local0
local local9 = 6.2 - local0
local local10 = 3 - local0
local local11 = 5.8 - local0
local local12 = 1.8 - local0
local local13 = 5 - local0
local local14 = 6.7 - local0
local local15 = 5.5 - local0
local local16 = 8.3 - local0
local local17 = 3 - local0
local local18 = 11.2 - local0
local local19 = 3 - local0
local local20 = 11.2 - local0
local local21 = 11.2 - local0
local local22 = 9 - local0
local local23 = 17.7 - local0
local local24 = 0.3 - local0
local local25 = 2.5 - local0
local local26 = 0.3 - local0
local local27 = 0.3 - local0
local local28 = 3 - local0
local local29 = 11.2 - local0
local local30 = 4 - local0
local local31 = 7.3 - local0
local local32 = 0.3 - local0
local local33 = 2.5 - local0
local local34 = 0.3 - local0
local local35 = 0.3 - local0
local local36 = 0.3 - local0
local local37 = 2.5 - local0
local local38 = 3 - local0
local local39 = 11.2 - local0
local local40 = 0.3 - local0
local local41 = 2.5 - local0
function OnIf_271000(arg0, arg1, arg2)
    if arg2 == 0 then
        Gascoyne271000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Gascoyne271000Battle_Activate(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetEventRequest(0)
    local local3 = arg0:GetNpcThinkParamID()
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetDist(TARGET_LOCALPLAYER)
    local local6 = arg0:IsSearchTarget(TARGET_ENE_0)
    local local7 = arg0:GetDist_Point(POINT_EVENT)
    local local8 = 0
    local local9 = 0
    local local10 = 0
    if local3 == 271010 then
        PointFrontOfWall = 2412800
        local10 = 2412807
        local8 = 0
        local9 = 0
    elseif local3 == 271011 then
        PointFrontOfWall = 3402930
        local10 = 3402945
        local8 = 0
        local9 = 0
    end
    if local3 ~= 271010 and local3 ~= 271011 then
        Gascoyne271000Battle(arg0, arg1)
    elseif local2 == 990 then
        if -0.5 <= local7 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, -0.5, TARGET_SELF, false, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_LOCALPLAYER, 0, 0, 0)
        end
    elseif local2 == 992 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_LOCALPLAYER, DIST_None, 2, 30)
    elseif local5 <= 0.1 then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_LOCALPLAYER, 1, TARGET_LOCALPLAYER, true, -1)
        elseif local0 <= 85 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_LOCALPLAYER, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(20, 25), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_LOCALPLAYER, 0, 0, 0)
        end
    elseif local5 <= 0.4 then
        if local0 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_LOCALPLAYER, 1, TARGET_LOCALPLAYER, true, -1)
        elseif local0 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_LOCALPLAYER, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(20, 25), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_LOCALPLAYER, 0, 0, 0)
        end
    elseif local8 ~= 0 and not arg0:IsInsideTargetRegion(TARGET_LOCALPLAYER, local8) and not arg0:IsInsideTargetRegion(TARGET_LOCALPLAYER, local9) then
        if 10 <= local4 or local6 == false then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 1, TARGET_SELF, true, 4)
            arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_SELF, 0, 0, 0)
            arg0:SetEventFlag(72410521, false)
        else
            Gascoyne271000Battle(arg0, arg1)
        end
    elseif 20 <= local5 or 10 <= local4 or local6 == false then
        local local11 = true
        if 2.2 <= local5 then
            local11 = false
        end
        if arg0:IsInsideTargetRegion(TARGET_LOCALPLAYER, local10) and not arg0:IsInsideTargetRegion(TARGET_SELF, local10) then
            if -0.5 <= local7 then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, -0.5, TARGET_SELF, false, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_LOCALPLAYER, 0, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_LOCALPLAYER, 1.2, TARGET_SELF, local11, -1)
        end
        arg0:SetEventFlag(72410521, false)
    else
        Gascoyne271000Battle(arg0, arg1)
    end
    return 
end

function Gascoyne271000Battle(arg0, arg1)
    arg0:SetEventFlag(72410521, true)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg0:GetEventRequest(0)
    local local7 = arg0:GetEventRequest(1)
    if local6 == 40 and arg0:GetNpcThinkParamID() ~= 271010 then
        local0[29] = 100
    elseif local6 == 60 then
        local0[27] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            local0[21] = 100
        elseif 9 <= local3 then
            local0[14] = 5
            local0[15] = 5
            local0[16] = 5
            local0[17] = 0
            local0[18] = 20
            local0[19] = 5
            local0[22] = 30
            local0[23] = 30
        elseif 5 <= local3 then
            local0[14] = 15
            local0[15] = 15
            local0[16] = 15
            local0[17] = 5
            local0[18] = 15
            local0[19] = 15
            local0[22] = 20
            local0[23] = 0
        else
            local0[14] = 25
            local0[15] = 20
            local0[16] = 15
            local0[17] = 20
            local0[18] = 0
            local0[19] = 20
            local0[22] = 0
            local0[23] = 0
        end
    elseif arg0:GetHpRate(TARGET_SELF) <= 0.67 then
        local0[28] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[20] = 100
    elseif 9 <= local3 then
        local0[1] = 5
        local0[2] = 5
        local0[3] = 15
        local0[4] = 15
        local0[7] = 15
        local0[8] = 15
        local0[9] = 10
        local0[10] = 0
        local0[12] = 20
    elseif 5.5 <= local3 then
        local0[1] = 15
        local0[2] = 15
        local0[3] = 15
        local0[4] = 15
        local0[7] = 15
        local0[8] = 10
        local0[9] = 5
        local0[10] = 0
        local0[12] = 10
    else
        local0[1] = 25
        local0[2] = 25
        local0[3] = 10
        local0[4] = 10
        local0[7] = 10
        local0[8] = 15
        local0[9] = 0
        local0[10] = 0
        local0[12] = 5
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act04)
    local1[7] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act10)
    local1[12] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act17)
    local1[18] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act18)
    local1[19] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act19)
    local1[20] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act23)
    local1[27] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act29)
    local1[30] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act47)
    local1[48] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act48)
    local1[49] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act49)
    local1[50] = REGIST_FUNC(arg0, arg1, Gascoyne271000_Act50)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Gascoyne271000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local1
local0 = local3
local0 = local4
local0 = local5
function Gascoyne271000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    local local4 = UPVAL2 + 1
    local local5 = UPVAL3 + 1
    local local6 = UPVAL4 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if local1 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local5, 0)
    elseif local1 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local6, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local6, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local7
local0 = local6
local0 = local9
function Gascoyne271000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, UPVAL2 + 1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local9
local0 = local8
local0 = local7
local0 = local21
function Gascoyne271000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, UPVAL2 + 1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, UPVAL3 + 1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local11
local0 = local10
local0 = local14
local0 = local7
function Gascoyne271000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, UPVAL2 + 1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, UPVAL3 + 1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local14
local0 = local13
local0 = local11
function Gascoyne271000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, UPVAL2 + 1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
local0 = local12
function Gascoyne271000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, UPVAL2 + 1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local18
local0 = local17
function Gascoyne271000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, local3, 0, -1)
    elseif local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, local3, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local20
local0 = local19
function Gascoyne271000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, local2, 0, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local23
local0 = local22
function Gascoyne271000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local25
local0 = local24
function Gascoyne271000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
local0 = 0.3 - local0
local0 = 2.8 - local0
local0 = 3.7 - local0
local0 = local30
function Gascoyne271000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    local local3 = UPVAL0 + 1
    local local4 = UPVAL2 + 1
    local local5 = UPVAL3 + 1
    local local6 = UPVAL4 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local5, 0)
    elseif local1 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local6, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local6, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 4.5 - local0
local0 = 0.3 - local0
function Gascoyne271000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 4 - local0
local0 = 0.3 - local0
function Gascoyne271000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = local30
local0 = 0.3 - local0
local0 = local31
function Gascoyne271000_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, UPVAL2 + 1, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = local31
local0 = 5 - local0
local0 = 4 - local0
local0 = 4.9 - local0
function Gascoyne271000_Act18(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, UPVAL2 + 1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, UPVAL3 + 1, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 6.7 - local0
local0 = 3 - local0
local0 = local39
function Gascoyne271000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, UPVAL2 + 1, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function Gascoyne271000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= 2.5 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 30) and local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Near, 0, -1)
    elseif local0 <= 5 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 70) and local1 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Near, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gascoyne271000_Act21(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 3.5 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) and arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Near, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 8.8 - local0
local0 = 5 - local0
local0 = local39
function Gascoyne271000_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL1
    local local2 = UPVAL0 + 1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, UPVAL2 + 1, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

local0 = 17.6 - local0
local0 = 9 - local0
function Gascoyne271000_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function Gascoyne271000_Act27(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3031, TARGET_NONE, DIST_None)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gascoyne271000_Act28(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3028, TARGET_NONE, DIST_None)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Gascoyne271000_Act29(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_NONE, 999, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
local0 = local1
function Gascoyne271000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local3
local0 = 0.3 - local0
function Gascoyne271000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
local0 = 0.3 - local0
function Gascoyne271000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local5
local0 = 3 - local0
function Gascoyne271000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local7
local0 = local6
function Gascoyne271000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local9
local0 = local8
function Gascoyne271000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local11
local0 = local10
function Gascoyne271000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
local0 = 0.3 - local0
function Gascoyne271000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 0.8 - local0
local0 = 0.3 - local0
function Gascoyne271000_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
local0 = local13
function Gascoyne271000_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gascoyne271000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3010_Dist_min
    Approach_Act(arg0, arg1, Att3010_Dist_max, Att3010_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, Att3010_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gascoyne271000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3011_Dist_min
    Approach_Act(arg0, arg1, Att3011_Dist_max, Att3011_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, Att3011_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
local0 = local15
function Gascoyne271000_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local23
local0 = local22
function Gascoyne271000_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local25
local0 = local24
function Gascoyne271000_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local18
local0 = local17
function Gascoyne271000_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 11.2 - local0
local0 = 5 - local0
function Gascoyne271000_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
local0 = local19
function Gascoyne271000_Act47(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 11.2 - local0
local0 = 3 - local0
function Gascoyne271000_Act48(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gascoyne271000_Act49(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = Att3019_Dist_min
    Approach_Act(arg0, arg1, Att3019_Dist_max, Att3019_Dist_max + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, Att3019_Dist_max + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local21
local0 = 3 - local0
function Gascoyne271000_Act50(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Gascoyne271000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 0
    if local0 > 4 then
        if local0 <= 7 then
            if local1 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(0.5, 1.5), TARGET_ENE_0, 2, TARGET_ENE_0, true, -1)
            elseif local1 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 1.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(120, 120), true, true, -1)
            end
        elseif local0 <= 10 and local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
        end
    end
    return 
end

function Gascoyne271000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Gascoyne271000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Gascoyne271000Battle_Terminate(arg0, arg1)
    return 
end

function Gascoyne271000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if Damaged_Act(arg0, arg1, 3.5, 50) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            if local0 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3020, TARGET_ENE_0, DIST_None, 0, 0)
            elseif local0 <= 75 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3017, TARGET_ENE_0, DIST_None, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3018, TARGET_ENE_0, DIST_None, 0, 0)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            if local0 <= 100 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3017, TARGET_ENE_0, DIST_None, 0, 0)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            if local0 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3007, TARGET_ENE_0, DIST_None, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3018, TARGET_ENE_0, DIST_None, 0, 0)
            end
        elseif local0 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3007, TARGET_ENE_0, DIST_None, 0, 0)
        elseif local0 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3008, TARGET_ENE_0, DIST_None, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 710, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
        end
        return true
    end
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetDist(TARGET_ENE_0)
    local local6 = Shoot_2dist(arg0, arg1, 5, 20, 20, 40)
    if local6 == 1 then
        if local4 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local6 == 2 then
        if local4 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
        return true
    end
    return false
end

return 
