local local0 = 0.4
local local1 = 0 - local0
local local2 = 0 - local0
local local3 = 2.4 - local0
local local4 = 0 - local0
local local5 = 0 - local0
local local6 = 2.6 - local0
local local7 = 0 - local0
local local8 = 0 - local0
local local9 = 2.4 - local0
local local10 = 0 - local0
local local11 = 2.8 - local0
local local12 = 0 - local0
local local13 = 2.8 - local0
local local14 = 0 - local0
local local15 = 0 - local0
local local16 = 0 - local0
local local17 = 0 - local0
local local18 = 0 - local0
local local19 = 5.7 - local0
function OnIf_250010(arg0, arg1, arg2)
    if arg2 == 0 then
        FromMoon_Boss250010_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function FromMoon_Boss250010Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg0:GetNpcThinkParamID() == 250060 then
        if arg0:GetEventRequest(1) == 40 then
            local0[29] = 100
        elseif arg0:GetNumber(0) == 1 then
            local0[26] = 100
        elseif arg0:IsFinishTimer(0) == true and local3 <= 1.5 then
            local0[25] = 100
        else
            local0[27] = 100
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[20] = 100
    elseif not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        if local3 <= 3 then
            local0[15] = 100
        else
            local0[20] = 100
        end
    elseif 6 <= local3 then
        local0[1] = 20
        local0[3] = 10
        local0[5] = 10
        local0[6] = 20
        local0[8] = 15
        local0[9] = 20
        local0[10] = 5
        local0[28] = 70
    elseif 3 <= local3 then
        local0[1] = 30
        local0[3] = 10
        local0[5] = 10
        local0[6] = 30
        local0[8] = 15
        local0[9] = 0
        local0[10] = 5
        local0[28] = 70
    else
        local0[1] = 25
        local0[3] = 15
        local0[5] = 15
        local0[6] = 20
        local0[8] = 20
        local0[9] = 0
        local0[10] = 5
        local0[28] = 70
    end
    local1[1] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act16)
    local1[20] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act20)
    local1[22] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act23)
    local1[25] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act26)
    local1[27] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act29)
    local1[36] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act36)
    local1[38] = REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_Act38)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, FromMoon_Boss250010_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 1.7 - local0
local0 = local3
local0 = local6
function FromMoon_Boss250010_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1.5
    local local3 = 0
    local local4 = UPVAL0 + 1.5
    local local5 = UPVAL1 + 1.5
    if arg0:HasSpecialEffectId(TARGET_SELF, 5686) then
        Approach_Act(arg0, arg1, 8, 999, local3, 1.5)
        Approach_Act(arg0, arg1, local2, local2, local3, 1.5)
    else
        Approach_Act(arg0, arg1, local2, UPVAL0 + 3, local3, 1.5)
    end
    if local1 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, UPVAL2 + 1.5, 0)
    elseif local1 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local4, 0, 180)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local3
function FromMoon_Boss250010_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 2, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1.5, 0, 90)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = 2.1 - local0
local0 = local6
function FromMoon_Boss250010_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 0
    local local2 = 0
    local local3 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5686) then
        Approach_Act(arg0, arg1, 8, 999, local2, 1.5)
        Approach_Act(arg0, arg1, local1, local1, local2, 1.5)
    else
        Approach_Act(arg0, arg1, local1, UPVAL0, local2, 2)
    end
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, local3, 0, 180)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local3, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, UPVAL1, 0)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local6
function FromMoon_Boss250010_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1.5, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1.5, 0, 180)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = 2.1 - local0
function FromMoon_Boss250010_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5686) then
        Approach_Act(arg0, arg1, 8, 999, local3, 1.5)
        Approach_Act(arg0, arg1, local2, local2, local3, 1.5)
    else
        Approach_Act(arg0, arg1, local2, UPVAL0, local3, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1.5, 0, 180)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local9
local0 = local11
function FromMoon_Boss250010_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = UPVAL0 + 1.5
    local local2 = 0
    local local3 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5686) then
        Approach_Act(arg0, arg1, 8, 999, local2, 1.5)
        Approach_Act(arg0, arg1, local1, local1, local2, 1.5)
    else
        Approach_Act(arg0, arg1, local1, UPVAL0 + 3, local2, 1.5)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, local3, 0, 180)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, UPVAL1 + 1.5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local3, 0, 180)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local11
function FromMoon_Boss250010_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1.5, 0, 1.5)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1.5, 0, 180)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = local13
function FromMoon_Boss250010_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5686) then
        Approach_Act(arg0, arg1, 8, 999, local3, 1.5)
        Approach_Act(arg0, arg1, local2, local2, local3, 1.5)
    else
        Approach_Act(arg0, arg1, local2, UPVAL0, local3, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1.5, 0, 180)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = 5 - local0
function FromMoon_Boss250010_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5686) then
        Approach_Act(arg0, arg1, 8, 999, local3, 1.5)
        Approach_Act(arg0, arg1, local2, local2, local3, 1.5)
    else
        Approach_Act(arg0, arg1, local2, UPVAL0, local3, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0, 0, 180)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = 2.8 - local0
function FromMoon_Boss250010_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5686) then
        Approach_Act(arg0, arg1, 8, 999, local3, 1.5)
        Approach_Act(arg0, arg1, local2, local2, local3, 1.5)
    else
        Approach_Act(arg0, arg1, local2, UPVAL0, local3, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1.5, 0, 180)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = 27.5 - local0
function FromMoon_Boss250010_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1.5, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0, 0, 180)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

local0 = 27.5 - local0
function FromMoon_Boss250010_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1.5, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0, 0, 180)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

function FromMoon_Boss250010_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

function FromMoon_Boss250010_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FromMoon_Boss250010_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FromMoon_Boss250010_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FromMoon_Boss250010_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FromMoon_Boss250010_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    arg0:SetTimer(0, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FromMoon_Boss250010_Act26(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 3, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FromMoon_Boss250010_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if 8 <= local0 then
        Approach_Act(arg0, arg1, 6, 8, 0, 2)
    elseif 5 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FromMoon_Boss250010_Act28(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if 4 <= local0 then
        Approach_Act(arg0, arg1, 2.5, 4, 0, 2)
    elseif 2 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 4, TARGET_ENE_0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function FromMoon_Boss250010_Act29(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_NONE, 999, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local9
function FromMoon_Boss250010_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 0.8, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local13
function FromMoon_Boss250010_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 10, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, 180)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5609) then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

function FromMoon_Boss250010_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5686) then
        if local3 <= 4 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 5)
        end
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 9, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 4.5), TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5608) then
        if local3 <= 3 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
            elseif local1 <= 100 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
            end
        elseif local3 <= 9 then
            if local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
            end
        elseif local3 <= 12 and local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
        end
    elseif local3 <= 1 then
        if local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
        end
    elseif local3 <= 3 then
        if local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), false, true, -1)
        elseif local1 <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
        end
    elseif local3 <= 9 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), false, true, -1)
    elseif local3 <= 12 then
        if local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), true, true, -1)
        elseif local1 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, bLeft, arg0:GetRandam_Int(120, 120), true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 12, TARGET_ENE_0, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, local2, arg0:GetRandam_Int(120, 120), false, true, -1)
    end
    return 
end

function FromMoon_Boss250010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function FromMoon_Boss250010Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function FromMoon_Boss250010Battle_Terminate(arg0, arg1)
    return 
end

function FromMoon_Boss250010Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        if RebByOpGuard_Step(arg0, arg1, 20, 20, 40, 40, 4) then
            return true
        else
            return false
        end
    end
end

return 
