local local0 = 3
local local1 = 10.4 - local0
local local2 = 10 - local0
local local3 = 13.2 - local0
local local4 = 6 - local0
local local5 = 9.3 - local0
local local6 = 6 - local0
local local7 = 11.4 - local0
local local8 = 8.8 - local0
local local9 = 8.7 - local0
local local10 = 13.3 - local0
local local11 = 25.3 - local0
local local12 = 20 - local0
local local13 = 20 - local0
local local14 = 7.7 - local0
local local15 = 3 - local0
local local16 = 14.5 - local0
local local17 = 10.4 - local0
local local18 = 9.5 - local0
local local19 = 10.4 - local0
local local20 = 10 - local0
local local21 = 13 - local0
local local22 = 0 - local0
local local23 = 0 - local0
local local24 = 0 - local0
local local25 = 18.8 - local0
local local26 = 13.3 - local0
local local27 = 13.3 - local0
local local28 = 7.1 - local0
local local29 = 13.3 - local0
local local30 = 9 - local0
local local31 = 13.3 - local0
local local32 = 9 - local0
local local33 = 13.3 - local0
local local34 = 10.9 - local0
local local35 = 19 - local0
local local36 = 13.3 - local0
local local37 = 19 - local0
function OnIf_508000(arg0, arg1, arg2)
    if arg2 == 0 then
        StormBeast_Bone508000_ActAfter(arg0, arg1)
    end
    return 
end

function StormBeast_Bone508000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetEventRequest(1)
    local local6 = 1
    local local7 = arg0:GetNumber(0)
    local local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 10)
    local local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 10)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 3)
    if arg0:GetEventRequest(0) == 110 then
        local0[16] = 100
    elseif arg0:GetEventRequest(2) == 100 and arg0:HasSpecialEffectId(TARGET_SELF, 5402) == true then
        local0[17] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        local0[19] = 100
    elseif 15 <= local3 then
        local0[1] = 0
        local0[2] = 0
        local0[5] = 30
        local0[6] = 30
        local0[7] = 15
        local0[8] = 15
        local0[9] = 30
        local0[10] = 0
        local0[14] = 0
        local0[15] = 0
    elseif 10 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 10
        local0[10] = 20
        local0[14] = 0
        local0[15] = 0
    elseif 7.5 <= local3 then
        local0[1] = 25
        local0[2] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 15
        local0[10] = 30
        local0[13] = 0
        local0[14] = 10
        local0[15] = 0
    elseif 5 <= local3 then
        local0[1] = 20
        local0[2] = 20
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 30
        local0[13] = 0
        local0[14] = 30
        local0[15] = 0
    else
        local0[1] = 10
        local0[2] = 20
        local0[3] = 30
        local0[4] = 30
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 10
        local0[13] = 0
        local0[14] = 0
        local0[15] = 0
    end
    if local7 == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if local7 == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if local7 == 3 and 0 < local0[3] then
        local0[3] = 1
    end
    if local7 == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if local7 == 5 and 0 < local0[5] then
        local0[5] = 1
    end
    if local7 == 6 and 0 < local0[6] then
        local0[6] = 1
    end
    if local7 == 7 and 0 < local0[7] then
        local0[7] = 1
    end
    if local7 == 8 and 0 < local0[8] then
        local0[8] = 1
    end
    if local7 == 9 and 0 < local0[9] then
        local0[9] = 1
    end
    if local7 == 10 and 0 < local0[10] then
        local0[10] = 1
    end
    if local7 == 11 and 0 < local0[11] then
        local0[11] = 1
    end
    if local7 == 12 and 0 < local0[12] then
        local0[12] = 1
    end
    if local7 == 13 and 0 < local0[13] then
        local0[13] = 1
    end
    if local7 == 14 and 0 < local0[14] then
        local0[14] = 1
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5400) == true then
        local0[6] = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5400) == true then
        local0[10] = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5400) == true then
        local0[12] = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5400) == true then
        local0[14] = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        local0[6] = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        local0[10] = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        local0[14] = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5402) == true then
        local0[14] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act17)
    local1[19] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act19)
    local1[20] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act26)
    local1[27] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act29)
    local1[30] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act47)
    local1[48] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act48)
    local1[49] = REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_Act49)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, StormBeast_Bone508000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local3
local0 = local5
local0 = local7
local0 = 6 - local0
local0 = local1
function StormBeast_Bone508000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetEventRequest(1)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = UPVAL1
    local local5 = UPVAL2
    local local6 = 30
    local local7 = UPVAL3
    local local8 = 0
    if local0 <= 2 then
        local8 = 999
    else
        local3 = UPVAL0 + 10
        local4 = UPVAL1 + 10
        local5 = UPVAL2 + 10
    end
    Approach_Act(arg0, arg1, UPVAL4, local8, 0)
    if local2 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local6, 0, 0)
    elseif local2 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local6, 0)
    elseif local0 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, local6, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local6, 0)
    end
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local34
local0 = 6 - local0
local0 = local8
function StormBeast_Bone508000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetEventRequest(1)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 30
    local local4 = UPVAL1
    local local5 = 0
    if local0 <= 2 then
        local5 = 999
    end
    Approach_Act(arg0, arg1, UPVAL2, local5, 0)
    if local0 ~= 3 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3035, TARGET_ENE_0, local3, 0)
    end
    arg0:SetNumber(0, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 6 - local0
local0 = local9
function StormBeast_Bone508000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 30
    local local2 = UPVAL0
    local local3 = 0
    local local4 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 10)
    local local5 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 10)
    if arg0:GetEventRequest(1) <= 2 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL1, local3, 0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, local1, 0, -1)
    end
    arg0:SetNumber(0, 3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3 - local0
local0 = local14
function StormBeast_Bone508000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 30
    local local2 = UPVAL0
    local local3 = 0
    local local4 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 10)
    local local5 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 10)
    if arg0:GetEventRequest(1) <= 2 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL1, local3, 0)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, local1, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, local1, 0, -1)
    end
    arg0:SetNumber(0, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 13.3 - local0
local0 = local25
function StormBeast_Bone508000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 30
    local local3 = UPVAL0
    local local4 = 0
    if arg0:GetEventRequest(1) <= 2 then
        local4 = 999
    end
    Approach_Act(arg0, arg1, UPVAL1, local4, 0)
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 10) == true and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 10) == true then
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, -1)
        elseif local1 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, local2, 0, -1)
        end
    elseif arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 10) == false then
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, local2, 0, -1)
        end
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, local2, 0, -1)
    end
    arg0:SetNumber(0, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 24 - local0
local0 = local11
function StormBeast_Bone508000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    if arg0:GetEventRequest(1) <= 2 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL1, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 30, 0, 0)
    arg0:SetNumber(0, 6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 16 - local0
local0 = local12
function StormBeast_Bone508000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = UPVAL0
    local local3 = 0
    if arg0:GetEventRequest(1) <= 2 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL1, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 30, 0, 0)
    arg0:SetNumber(0, 7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 16 - local0
local0 = local13
function StormBeast_Bone508000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    if arg0:GetEventRequest(1) <= 2 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL1, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 30, 0, 0)
    arg0:SetNumber(0, 8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 0 - local0
local0 = local16
function StormBeast_Bone508000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetEventRequest(1)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    Approach_Act(arg0, arg1, UPVAL1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 30, 0, 0)
    arg0:SetNumber(0, 9)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local19
local0 = local21
local0 = 12 - local0
local0 = local17
function StormBeast_Bone508000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetEventRequest(1)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL2
    local local5 = 0
    if local0 <= 2 then
        local5 = 999
    else
        local2 = UPVAL0 + 10
        local3 = UPVAL1 + 10
    end
    Approach_Act(arg0, arg1, UPVAL3, local5, 0)
    if arg0:GetRandam_Int(1, 100) <= 50 and local0 == 3 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 30, 0)
    elseif arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, local3, 0)
    end
    arg0:SetNumber(0, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormBeast_Bone508000_Act11(arg0, arg1, arg2)
    local local0 = 30
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, local0, 0, 0)
    end
    arg0:SetNumber(0, 11)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormBeast_Bone508000_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3030, TARGET_ENE_0, 30, 0, -1)
    arg0:SetNumber(0, 12)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local37
function StormBeast_Bone508000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetEventRequest(1)
    local local1 = 30
    if UPVAL0 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3037, TARGET_ENE_0, local1, 0, 0)
    end
    arg0:SetNumber(0, 13)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 13.3 - local0
local0 = local28
function StormBeast_Bone508000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    if arg0:GetEventRequest(1) <= 2 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL1, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 30, 0, 0)
    arg0:SetNumber(0, 14)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 13.3 - local0
local0 = local35
function StormBeast_Bone508000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    if arg0:GetEventRequest(1) <= 2 then
        local3 = 999
    end
    Approach_Act(arg0, arg1, UPVAL1, local3, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, 30, 0, 0)
    arg0:SetNumber(0, 15)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function StormBeast_Bone508000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetEventRequest(1)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    elseif arg0:GetDist(TARGET_ENE_0) <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    if local0 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_None, 0, 0)
    elseif local0 == 2 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, DIST_None, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, DIST_None, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormBeast_Bone508000_Act17(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    elseif arg0:GetDist(TARGET_ENE_0) <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormBeast_Bone508000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetEventRequest(1)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = 30
    local local3 = arg0:GetRandam_Int(1, 100)
    if local0 == 1 then
        if local1 <= 5 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, local2, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, local2, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif local0 == 2 then
        if local1 <= 5 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, local2, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, local2, 0, 0)
            end
        elseif local1 <= 10 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 10) == true and local3 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 10) == true and local3 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif local1 <= 5 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, local2, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, local2, 0, 0)
        end
    elseif local1 <= 10 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 10) == true and local3 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 10) == true and local3 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local2, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local1
function StormBeast_Bone508000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local3
function StormBeast_Bone508000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local5
function StormBeast_Bone508000_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local7
function StormBeast_Bone508000_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
function StormBeast_Bone508000_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local9
function StormBeast_Bone508000_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 18.8 - local0
function StormBeast_Bone508000_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local11
function StormBeast_Bone508000_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormBeast_Bone508000_Act28(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3008_Dist_max, Att3008_Dist_max + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, Att3008_Dist_max + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, Att3008_Dist_max + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
function StormBeast_Bone508000_Act29(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local13
function StormBeast_Bone508000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
function StormBeast_Bone508000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 7.7 - local0
function StormBeast_Bone508000_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
function StormBeast_Bone508000_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 17.6 - local0
function StormBeast_Bone508000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormBeast_Bone508000_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3015_Dist_max, Att3015_Dist_max + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, Att3015_Dist_max + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, Att3015_Dist_max + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local17
function StormBeast_Bone508000_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local19
function StormBeast_Bone508000_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local21
function StormBeast_Bone508000_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 11.8 - local0
function StormBeast_Bone508000_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8 - local0
function StormBeast_Bone508000_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8 - local0
function StormBeast_Bone508000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local28
function StormBeast_Bone508000_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local34
function StormBeast_Bone508000_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local35
function StormBeast_Bone508000_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local37
function StormBeast_Bone508000_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3037, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8.7 - local0
function StormBeast_Bone508000_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local25
function StormBeast_Bone508000_Act47(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormBeast_Bone508000_Act48(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3028_Dist_max, Att3028_Dist_max + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, Att3028_Dist_max + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, Att3028_Dist_max + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormBeast_Bone508000_Act49(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3029_Dist_max, Att3029_Dist_max + 10, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, Att3029_Dist_max + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, Att3029_Dist_max + 3, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function StormBeast_Bone508000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function StormBeast_Bone508000_ActAfter(arg0, arg1)
    local local0 = arg0:GetEventRequest(1)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = 30
    if arg0:HasSpecialEffectId(TARGET_SELF, 5400) == true then
        if local1 <= 6 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                if local2 <= 30 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    if local3 <= 50 then
                        if local4 <= 50 then
                            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                        else
                            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                        end
                    end
                end
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, local5, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, local5, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif local1 <= 6 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            if local2 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                if local3 <= 50 then
                    if local4 <= 50 then
                        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                    else
                        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                    end
                end
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, local5, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, local5, 0, 0)
        end
    elseif local1 <= 10 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 10)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local5, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 10)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, local5, 0, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    return 
end

function StormBeast_Bone508000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function StormBeast_Bone508000Battle_Terminate(arg0, arg1)
    return 
end

function StormBeast_Bone508000Battle_Interupt(arg0, arg1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = Shoot_2dist(arg0, arg1, 6, 20, 20, 40)
    if local2 == 1 then
        if local0 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local2 == 2 then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
        return true
    end
    if arg0:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg0:IsInsideObserve(0) then
            arg1:ClearSubGoal()
            arg0:DeleteObserve(0)
            if arg0:GetRandam_Int(1, 100) <= 40 and arg0:HasSpecialEffectId(TARGET_SELF, 5400) == false then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, DIST_None, 0, 0)
            elseif local0 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            elseif local0 <= 75 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
            return true
        end
        arg0:Replaning()
    else
        return false
    end
end

return 
