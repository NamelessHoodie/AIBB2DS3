local local0 = 0.2
local local1 = 0 - local0
local local2 = 2.8 - local0
local local3 = 0 - local0
local local4 = 0 - local0
local local5 = 2.2 - local0
local local6 = 0 - local0
local local7 = 3 - local0
local local8 = 0 - local0
local local9 = 3 - local0
local local10 = 0 - local0
local local11 = 2.9 - local0
local local12 = 0 - local0
local local13 = 2.9 - local0
local local14 = 0 - local0
local local15 = 2.9 - local0
local local16 = 0 - local0
local local17 = 2.9 - local0
local local18 = 0 - local0
local local19 = 3.2 - local0
local local20 = 0 - local0
local local21 = 3.6 - local0
local local22 = 0 - local0
local local23 = 6.2 - local0
local local24 = 0 - local0
local local25 = 2.3 - local0
local local26 = 0 - local0
local local27 = 0 - local0
local local28 = 0 - local0
local local29 = 0 - local0
local local30 = 5 - local0
function OnIf_216000(arg0, arg1, arg2)
    if arg2 == 0 then
        Devotee_of_a_RuinedFlame216000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function Devotee_of_a_RuinedFlame216000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetNpcThinkParamID()
    local local5 = arg0:GetNumber(0)
    local local6 = 1
    if arg0:GetNumber(1) == 1 then
        local6 = 100
    end
    if local4 == 216090 or local4 == 216091 then
        if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            local0[20] = 100
        elseif arg0:GetHpRate(TARGET_SELF) <= 0.7 and arg0:GetRandam_Int(1, 100) <= 50 and arg0:HasSpecialEffectId(TARGET_SELF, 5655) == false then
            local0[8] = 100
        elseif 6 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 20
            local0[4] = 0
            local0[5] = 30
            local0[6] = 30
            local0[7] = 0
        elseif 2 <= local3 then
            local0[1] = 15
            local0[2] = 15
            local0[3] = 20
            local0[4] = 0
            local0[5] = 30
            local0[6] = 20
            local0[7] = 0
        else
            local0[1] = 25
            local0[2] = 25
            local0[3] = 0
            local0[4] = 30
            local0[5] = 0
            local0[6] = 0
            local0[7] = 20
        end
    elseif not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        local0[20] = 100
    elseif 6 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 30
        local0[5] = 20
        local0[6] = 30
    elseif 4 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[3] = 10 + local6
        local0[5] = 40
        local0[6] = 10 + local6
    elseif 2 <= local3 then
        local0[1] = 30
        local0[2] = 30
        local0[5] = 20 + local6
        local0[6] = 10
    else
        local0[1] = 25 + local6
        local0[2] = 25 + local6
        local0[4] = 40
        local0[6] = 10
    end
    if local5 == 0 then
        local0[2] = 1
    end
    if local5 == 0 then
        local0[4] = 1
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Devotee_of_a_RuinedFlame216000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Devotee_of_a_RuinedFlame216000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Devotee_of_a_RuinedFlame216000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Devotee_of_a_RuinedFlame216000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Devotee_of_a_RuinedFlame216000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Devotee_of_a_RuinedFlame216000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Devotee_of_a_RuinedFlame216000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, Devotee_of_a_RuinedFlame216000_Act08)
    local1[20] = REGIST_FUNC(arg0, arg1, Devotee_of_a_RuinedFlame216000_Act20)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Devotee_of_a_RuinedFlame216000_ActAfter_AdjustSpace), local2)
    return 
end

function Devotee_of_a_RuinedFlame216000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    if local0 <= 25 and arg0:GetNumber(0) == 1 then
        Devotee_of_a_RuinedFlame216000_Act10(arg0, arg1)
    elseif local0 <= 50 then
        Devotee_of_a_RuinedFlame216000_Act11(arg0, arg1)
    elseif local0 <= 75 then
        Devotee_of_a_RuinedFlame216000_Act12(arg0, arg1)
    else
        Devotee_of_a_RuinedFlame216000_Act13(arg0, arg1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local21
function Devotee_of_a_RuinedFlame216000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local23
function Devotee_of_a_RuinedFlame216000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local25
function Devotee_of_a_RuinedFlame216000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 1
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.9 - local0
function Devotee_of_a_RuinedFlame216000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 1, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6.2 - local0
function Devotee_of_a_RuinedFlame216000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6 - local0
function Devotee_of_a_RuinedFlame216000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Devotee_of_a_RuinedFlame216000_Act08(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, AttDist, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
function Devotee_of_a_RuinedFlame216000_Act10(arg0, arg1)
    local local0 = UPVAL0 + 1
    local local1 = 8
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local0, 0)
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    end
    arg0:SetNumber(0, 0)
    return 
end

local0 = local2
function Devotee_of_a_RuinedFlame216000_Act11(arg0, arg1)
    local local0 = UPVAL0 + 1
    local local1 = 8
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 1, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local0, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local0, 0)
        if arg0:GetRandam_Int(1, 100) <= 65 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local0, 0)
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local1, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local1, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0)
    end
    arg0:SetNumber(0, 1)
    return 
end

local0 = local2
local0 = local15
function Devotee_of_a_RuinedFlame216000_Act12(arg0, arg1)
    local local0 = UPVAL0 + 1
    local local1 = 8
    Approach_Act(arg0, arg1, UPVAL1, 999, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, local0, 0)
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local0, 0)
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local1, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local1, 0)
    end
    arg0:SetNumber(0, 1)
    return 
end

local0 = local2
local0 = 2.6 - local0
local0 = local15
function Devotee_of_a_RuinedFlame216000_Act13(arg0, arg1)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL1 + 1
    Approach_Act(arg0, arg1, UPVAL2, 999, 0, 3)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, local0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, local0, 0)
    if arg0:GetRandam_Int(1, 100) <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local0, 0)
        if arg0:GetRandam_Int(1, 100) <= 65 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local0, 0)
            if arg0:GetRandam_Int(1, 100) <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local1, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local1, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local1, 0)
    end
    arg0:SetNumber(0, 1)
    return 
end

function Devotee_of_a_RuinedFlame216000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Float(1, 2)
    local local2 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 2)
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 2) == true then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            elseif local2 == true then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
            end
        elseif arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 2) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif local2 == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
    end
    arg0:SetNumber(1, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Devotee_of_a_RuinedFlame216000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Devotee_of_a_RuinedFlame216000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetRandam_Float(1.5, 2.5)
    if arg0:GetDist(TARGET_ENE_0) <= 6 then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            Devotee_of_a_RuinedFlame216000_Act20(arg0, arg1, paramTbl)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    return 
end

function Devotee_of_a_RuinedFlame216000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Devotee_of_a_RuinedFlame216000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local23
local0 = local2
local0 = local21
local0 = local25
function Devotee_of_a_RuinedFlame216000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = Shoot_2dist(arg0, arg1, 6, 20, 20, 40)
    if local3 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702 + local2, TARGET_ENE_0, 0, AI_DIR_TYPE_L + local2, 0)
    elseif local3 == 2 then
        local local4 = UPVAL0 + 1
        local local5 = UPVAL0
        local local6 = 0
        local local7 = 0
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            Approach_Act(arg0, arg1, local5, local6, local7)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, local4, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            Approach_Act(arg0, arg1, local5, local6, local7)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, local4, 0, -1)
        end
        return true
    end
    if arg0:IsInterupt(INTERUPT_Damaged) and local0 <= 50 then
        local local4 = UPVAL1 + 1
        local local5 = UPVAL2 + 1
        arg1:ClearSubGoal()
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            if local0 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL3 + 1, 0, -1)
            else
                Devotee_of_a_RuinedFlame216000_Act20(arg0, arg1, paramTbl)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702 + local2, TARGET_ENE_0, 0, AI_DIR_TYPE_L + local2, 0)
        end
        return true
    else
        return false
    end
end

return 
