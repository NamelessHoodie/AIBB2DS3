local local0 = 0.4
local local1 = 0.4 - local0
local local2 = 7.8 - local0
local local3 = 0.4 - local0
local local4 = 3.2 - local0
local local5 = 0.4 - local0
local local6 = 2.9 - local0
local local7 = 0.4 - local0
local local8 = 3.1 - local0
local local9 = 0.4 - local0
local local10 = 0.4 - local0
local local11 = 0.4 - local0
local local12 = 7.6 - local0
local local13 = 0.4 - local0
local local14 = 8.1 - local0
local local15 = 0.4 - local0
local local16 = 3.8 - local0
local local17 = 0.4 - local0
local local18 = 7.8 - local0
local local19 = 0.4 - local0
local local20 = 6.8 - local0
local local21 = 0.4 - local0
local local22 = 0 - local0
local local23 = 10.1 - local0
local local24 = 0.4 - local0
local local25 = 8.9 - local0
local local26 = 0.4 - local0
local local27 = 3.5 - local0
local local28 = 0.4 - local0
local local29 = 3.4 - local0
local local30 = 0.4 - local0
local local31 = 0.4 - local0
local local32 = 4 - local0
local local33 = 0.4 - local0
local local34 = 7.8 - local0
local local35 = 0.4 - local0
local local36 = 3.2 - local0
local local37 = 0.4 - local0
local local38 = 3.5 - local0
local local39 = 0.4 - local0
local local40 = 0.4 - local0
local local41 = 0.4 - local0
local local42 = 4.8 - local0
local local43 = 0.4 - local0
local local44 = 8.4 - local0
local local45 = 0.4 - local0
local local46 = 7.1 - local0
local local47 = 0.4 - local0
local local48 = 5.2 - local0
local local49 = 0.4 - local0
local local50 = 1.5 - local0
local local51 = 0.4 - local0
local local52 = 3.5 - local0
local local53 = 0 - local0
local local54 = 0.4 - local0
local local55 = 15 - local0
local local56 = 0.4 - local0
local local57 = 0.4 - local0
local local58 = 3 - local0
function OnIf_400003(arg0, arg1, arg2)
    if arg2 == 0 then
        DarksideHunter400003_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DarksideHunter400003Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetHpRate(TARGET_SELF)
    local local7 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 4)
    local local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 4)
    local local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 4)
    local local10 = arg0:GetNumber(0)
    if arg0:GetNumber(0) == 1 then
        arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5403) then
        local0[18] = 100
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5020) == true then
        magic = 1
    else
        magic = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
        fire = 1
    else
        fire = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
            local0[9] = 100
        elseif 9 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 30
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0
            local0[17] = 30
            local0[50] = 100 * magic
            local0[51] = 0 * fire
        elseif 6 <= local3 then
            local0[1] = 30
            local0[2] = 10
            local0[3] = 20
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0
            local0[17] = 20
            local0[50] = 50 * magic
            local0[51] = 0 * fire
        elseif 3 <= local3 then
            local0[1] = 30
            local0[2] = 0
            local0[3] = 0
            local0[4] = 10
            local0[5] = 0
            local0[6] = 0
            local0[7] = 10
            local0[8] = 10
            local0[17] = 0
            local0[50] = 30 * magic
            local0[51] = 0 * fire
        else
            local0[1] = 30
            local0[2] = 0
            local0[3] = 0
            local0[4] = 10
            local0[5] = 0
            local0[6] = 0
            local0[7] = 10
            local0[8] = 10
            local0[17] = 0
            local0[50] = 0 * magic
            local0[51] = 20 * fire
        end
        if arg0:IsFinishTimer(0) == true and arg0:GetNumber(1) == 1 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 30
            local0[6] = 0
            local0[7] = 0
            local0[8] = 0
            local0[17] = 0
            arg0:SetNumber(1, 0)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5612) == true then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            local0[19] = 100
        elseif 9 <= local3 then
            local0[10] = 30
            local0[11] = 0
            local0[12] = 0
            local0[13] = 0
            local0[14] = 0
            local0[15] = 70
            local0[16] = 0
            local0[50] = 100 * magic
            local0[51] = 0 * fire
        elseif 6 <= local3 then
            local0[10] = 40
            local0[11] = 0
            local0[12] = 0
            local0[13] = 0
            local0[14] = 0
            local0[15] = 40
            local0[16] = 0
            local0[50] = 80 * magic
            local0[51] = 0 * fire
        elseif 3 <= local3 then
            local0[10] = 20
            local0[11] = 10
            local0[12] = 0
            local0[13] = 10
            local0[14] = 10
            local0[15] = 20
            local0[16] = 0
            local0[50] = 40 * magic
            local0[51] = 0 * fire
        else
            local0[10] = 0
            local0[11] = 50
            local0[12] = 0
            local0[13] = 25
            local0[14] = 25
            local0[15] = 0
            local0[16] = 0
            local0[50] = 0 * magic
            local0[51] = 20 * fire
        end
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act07)
    local1[8] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act08)
    local1[9] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act17)
    local1[18] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act18)
    local1[19] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act19)
    local1[50] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act50)
    local1[51] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act50)
    local1[20] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act26)
    local1[27] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act29)
    local1[30] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act31)
    local1[32] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act32)
    local1[33] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act33)
    local1[34] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act34)
    local1[35] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act35)
    local1[36] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act36)
    local1[37] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act37)
    local1[38] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act38)
    local1[39] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act39)
    local1[40] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act40)
    local1[41] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act41)
    local1[42] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act42)
    local1[43] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act43)
    local1[44] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act44)
    local1[45] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act45)
    local1[46] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act46)
    local1[47] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act47)
    local1[48] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act48)
    local1[49] = REGIST_FUNC(arg0, arg1, DarksideHunter400003_Act49)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DarksideHunter400003_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local2
local0 = local4
local0 = local6
local0 = local8
local0 = local20
local0 = local16
function DarksideHunter400003_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0
    local local4 = 10
    local local5 = UPVAL1 + 1
    local local6 = UPVAL3 + 1
    local local7 = UPVAL4 + 1
    local local8 = arg0:GetHpRate(TARGET_SELF)
    if local0 <= UPVAL5 + 1 then
        local3 = UPVAL5
    end
    if local3 <= local0 then
        Approach_Act(arg0, arg1, local3, 999, 0, 3)
    end
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5026)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5027)
    if UPVAL5 + 1 < local0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, local5, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL2 + 1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
local0 = local14
function DarksideHunter400003_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 10
    local local3 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 4)
    local local4 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 4)
    if local3 == false or 50 < local0 then
        local1 = UPVAL1
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    if local3 == true and local4 == true then
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3006, TARGET_ENE_0, local2, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3007, TARGET_ENE_0, local2, 0, 0)
        end
    elseif local4 == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3006, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3007, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local25
function DarksideHunter400003_Act03(arg0, arg1, arg2)
    local local0 = UPVAL0
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, 3013, TARGET_ENE_0, 10, 0, 0)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local27
function DarksideHunter400003_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3014, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarksideHunter400003_Act05(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 3 and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 4.5) == true and arg0:GetRandam_Int(1, 100) <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3015, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local55
function DarksideHunter400003_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 4)
    local local4 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 4)
    local local5 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local29
function DarksideHunter400003_Act07(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 10
    local local2 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 4)
    local local3 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 4)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 999, 0, 3)
    end
    if local2 == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3017, TARGET_ENE_0, local1, 0, 0)
    elseif local3 == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3016, TARGET_ENE_0, local1, 0, 0)
    elseif local2 ~= false or local3 ~= false then
        if arg0:GetRandam_Int(1, 100) <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3017, TARGET_ENE_0, local1, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3016, TARGET_ENE_0, local1, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local32
function DarksideHunter400003_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3018, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local12
function DarksideHunter400003_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 4)
    local local4 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 4)
    if local0 <= 4 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 == true and local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3016, TARGET_ENE_0, local2, 0, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local4 == true and local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3017, TARGET_ENE_0, local2, 0, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            if local1 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            elseif local1 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 90, true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            end
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
            if local1 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            elseif local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3037, TARGET_ENE_0, local2, 0, 0)
            elseif local1 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 90, true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            end
        elseif local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        elseif local1 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 90, true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif local0 <= 7 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and local3 == true and local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3006, TARGET_ENE_0, local2, 0, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and local4 == true and local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3007, TARGET_ENE_0, local2, 0, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            if local1 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 90, true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
            end
        elseif local1 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 90, true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local18
local0 = local4
local0 = local6
local0 = local8
local0 = local20
function DarksideHunter400003_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 10
    local local4 = UPVAL3 + 1
    local local5 = UPVAL4 + 1
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, UPVAL0 + 999, 0, 3)
    end
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5026)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL1 + 1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL2 + 1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local38
local0 = local42
local0 = local36
function DarksideHunter400003_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 10
    local local2 = UPVAL1 + 1
    local local3 = UPVAL2
    if local3 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local3, UPVAL2 + 999, 0, 3)
    end
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5028)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, local2, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local44
function DarksideHunter400003_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3025, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local46
function DarksideHunter400003_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, 3026, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local48
function DarksideHunter400003_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, UPVAL0 + 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3027, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function DarksideHunter400003_Act15(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 3 and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 4.5) == true and arg0:GetRandam_Int(1, 100) <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3029, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local55
function DarksideHunter400003_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 999
    local local4 = 0
    local local5 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 4)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3035, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local34
function DarksideHunter400003_Act17(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3019, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 999 - local0
function DarksideHunter400003_Act18(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 999
    local local4 = 0
    local local5 = 10
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3035, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local46
local0 = local50
function DarksideHunter400003_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = UPVAL0 + 1
    local local4 = UPVAL1 + 1
    if local0 <= 3 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            if arg0:HasSpecialEffectId(TARGET_SELF, 5021) == true then
                if local1 <= 30 then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3028, TARGET_ENE_0, local4, 0, 0)
                elseif local1 <= 60 then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3037, TARGET_ENE_0, local4, 0, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
                end
            elseif local1 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3028, TARGET_ENE_0, local4, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            if local1 <= 33 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3026, TARGET_ENE_0, local3, 0, 0)
            elseif local1 <= 66 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 90, true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            if local1 <= 33 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3026, TARGET_ENE_0, local3, 0, 0)
            elseif local1 <= 66 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 90, true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
        end
    elseif local0 <= 6 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            if local1 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3026, TARGET_ENE_0, local3, 0, 0)
            elseif local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, 90, true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
            end
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if local1 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3026, TARGET_ENE_0, local3, 0, 0)
            elseif local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, 90, true, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 30, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local23
function DarksideHunter400003_Act50(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 10
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3012, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.7 - local0
function DarksideHunter400003_Act51(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 10
    local local2 = UPVAL0
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 999, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3036, TARGET_ENE_0, AttDist, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local2
function DarksideHunter400003_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
function DarksideHunter400003_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
function DarksideHunter400003_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
function DarksideHunter400003_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.7 - local0
function DarksideHunter400003_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 1.1 - local0
function DarksideHunter400003_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
function DarksideHunter400003_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
function DarksideHunter400003_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
function DarksideHunter400003_Act28(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local18
function DarksideHunter400003_Act29(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
function DarksideHunter400003_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.1 - local0
function DarksideHunter400003_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local23
function DarksideHunter400003_Act32(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local25
function DarksideHunter400003_Act33(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local27
function DarksideHunter400003_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarksideHunter400003_Act35(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3015_Dist_max, Att3015_Dist_max + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, Att3015_Dist_max + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, Att3015_Dist_max + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local29
function DarksideHunter400003_Act36(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.4 - local0
function DarksideHunter400003_Act37(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local32
function DarksideHunter400003_Act38(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local34
function DarksideHunter400003_Act39(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local36
function DarksideHunter400003_Act40(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local38
function DarksideHunter400003_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
function DarksideHunter400003_Act42(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.8 - local0
function DarksideHunter400003_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local42
function DarksideHunter400003_Act44(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local44
function DarksideHunter400003_Act45(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local46
function DarksideHunter400003_Act46(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local48
function DarksideHunter400003_Act47(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local50
function DarksideHunter400003_Act48(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, UPVAL0 + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarksideHunter400003_Act49(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, Att3029_Dist_max, Att3029_Dist_max + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, Att3029_Dist_max + 1, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 30, TARGET_ENE_0, Att3029_Dist_max + 3, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarksideHunter400003_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function DarksideHunter400003_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(0, 1)
    arg0:SetNumber(2, 0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
        if 6 <= local0 then
            if local1 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
            end
        elseif 3 <= local0 then
            if local1 <= 65 then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
                end
            end
        elseif local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
        elseif local1 <= 50 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            end
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5612) == true then
        if 6 <= local0 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(35, 45), true, true, -1)
        elseif 3 <= local0 then
            if local1 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
            end
        elseif local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
        end
    end
    return 
end

function DarksideHunter400003Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DarksideHunter400003Battle_Terminate(arg0, arg1)
    return 
end

function DarksideHunter400003Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInterupt(INTERUPT_Outside_ObserveArea) then
        arg0:SetNumber(1, 1)
        arg0:SetTimer(0, 5)
        return true
    elseif arg0:IsInterupt(INTERUPT_Inside_ObserveArea) and arg0:GetNumber(2) == 0 then
        arg0:SetNumber(1, 0)
        return true
    elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5403) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3035, TARGET_ENE_0, AttDist, 0, 0)
    end
    if arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) then
        if arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025) then
            arg1:ClearSubGoal()
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 3.5) then
                if local0 <= 70 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, AttDist, 0, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, AttDist, 0, 0)
                end
            elseif local0 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, AttDist, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, AttDist, 0, 0)
            end
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5026) then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 3.5) then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, AttDist, 0, 0)
            elseif local0 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, AttDist, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, AttDist, 0, 0)
            end
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5027) then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 3.5) then
                if local0 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, AttDist, 0, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, AttDist, 0, 0)
                end
            elseif local0 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, AttDist, 0, 0)
            elseif local0 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, AttDist, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, AttDist, 0, 0)
            end
        end
        if arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5028) then
            arg1:ClearSubGoal()
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 3) then
                if local0 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, AttDist, 0, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3030, TARGET_ENE_0, AttDist, 0, 0)
                end
            elseif arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 5) then
                if local0 <= 20 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, AttDist, 0, 0)
                elseif local0 <= 40 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3030, TARGET_ENE_0, AttDist, 0, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, AttDist, 0, 0)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, AttDist, 0, 0)
            end
        end
    end
    if FindAttack_Step(arg0, arg1, 3, 20, 100, 0, 0, 4) then
        return true
    else
        return false
    end
end

return 
