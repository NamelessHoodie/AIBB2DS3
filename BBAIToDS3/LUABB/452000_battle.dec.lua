local local0 = 0.3
local local1 = 0.3 - local0
local local2 = 0.3 - local0
local local3 = 0.3 - local0
local local4 = 0.3 - local0
local local5 = 4.7 - local0
local local6 = 0.3 - local0
local local7 = 4.6 - local0
local local8 = 0.3 - local0
local local9 = 0.3 - local0
local local10 = 0.3 - local0
local local11 = 0.3 - local0
local local12 = 0.3 - local0
local local13 = 4.1 - local0
local local14 = 0.3 - local0
local local15 = 2.8 - local0
local local16 = 0.3 - local0
local local17 = 0.3 - local0
local local18 = 0.3 - local0
local local19 = 0.3 - local0
local local20 = 0.3 - local0
local local21 = 5.2 - local0
local local22 = 0.3 - local0
local local23 = 5.1 - local0
local local24 = 0.3 - local0
local local25 = 6.3 - local0
local local26 = 0.3 - local0
local local27 = 4.2 - local0
local local28 = 0.3 - local0
local local29 = 5.5 - local0
local local30 = 0.3 - local0
local local31 = 0.3 - local0
local local32 = 5 - local0
local local33 = 0.3 - local0
local local34 = 0.3 - local0
local local35 = 0.3 - local0
local local36 = 5.6 - local0
local local37 = 0.3 - local0
local local38 = 0.3 - local0
local local39 = 3 - local0
local local40 = 0.3 - local0
local local41 = 3.3 - local0
local local42 = 0.3 - local0
local local43 = 0.3 - local0
local local44 = 0.3 - local0
local local45 = 15.5 - local0
local local46 = 0.3 - local0
local local47 = 0.3 - local0
local local48 = 5.4 - local0
local local49 = 0.3 - local0
local local50 = 7.8 - local0
local local51 = 0.3 - local0
local local52 = 5.6 - local0
local local53 = 0.3 - local0
local local54 = 8.8 - local0
local local55 = 0.3 - local0
local local56 = 5.3 - local0
local local57 = 0.3 - local0
local local58 = 0.3 - local0
local local59 = 4.8 - local0
local local60 = 0.3 - local0
local local61 = 0.3 - local0
local local62 = 0.3 - local0
local local63 = 0.3 - local0
local local64 = 0.3 - local0
local local65 = 0.3 - local0
local local66 = 0.3 - local0
local local67 = 0.3 - local0
local local68 = 0.3 - local0
local local69 = 0.3 - local0
local local70 = 0.3 - local0
local local71 = 15.5 - local0
local local72 = 0.3 - local0
local local73 = 9.2 - local0
local local74 = 0.3 - local0
local local75 = 20.5 - local0
local local76 = 0.3 - local0
local local77 = 0.3 - local0
local local78 = 12.2 - local0
function OnIf_452000(arg0, arg1, arg2)
    if arg2 == 0 then
        WomanHumter452000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function WomanHumter452000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetHpRate(TARGET_SELF)
    local local4 = arg0:GetDist(TARGET_ENE_0)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetEventRequest(0)
    local local7 = arg0:GetEventRequest(1)
    local local8 = arg0:GetNumber(0)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5026)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5027)
    arg0:DeleteObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 52)
    if arg0:GetNumber(2) == 0 then
        arg0:SetTimer(0, 35)
        arg0:SetNumber(2, 1)
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 5402) and not arg0:HasSpecialEffectId(TARGET_SELF, 5403) and local3 <= 0.6 then
        local0[30] = 100
    elseif not arg0:HasSpecialEffectId(TARGET_SELF, 5403) and local3 <= 0.3 then
        local0[23] = 100
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        local0[25] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5400) then
        if 12 <= local4 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 40
            local0[4] = 0
            local0[5] = 0
            local0[6] = 40
            local0[7] = 20
            local0[20] = 50
        elseif 9 <= local4 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 35
            local0[4] = 0
            local0[5] = 30
            local0[6] = 20
            local0[7] = 15
            local0[20] = 50
        elseif 6 <= local4 then
            local0[1] = 30
            local0[2] = 10
            local0[3] = 0
            local0[4] = 30
            local0[5] = 20
            local0[6] = 0
            local0[7] = 10
            local0[20] = 50
        elseif 3 <= local4 then
            local0[1] = 30
            local0[2] = 25
            local0[3] = 0
            local0[4] = 20
            local0[5] = 10
            local0[6] = 0
            local0[7] = 15
            local0[20] = 50
        else
            local0[1] = 30
            local0[2] = 40
            local0[3] = 0
            local0[4] = 10
            local0[5] = 20
            local0[6] = 0
            local0[7] = 0
            local0[20] = 50
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        if 15 <= local4 then
            local0[10] = 10
            local0[11] = 5
            local0[12] = 5
            local0[13] = 5
            local0[14] = 5
            local0[15] = 5
            local0[16] = 5
            local0[17] = 35
            local0[18] = 2
            local0[24] = 23
            local0[20] = 50
        elseif 12 <= local4 then
            local0[10] = 10
            local0[11] = 10
            local0[12] = 5
            local0[13] = 5
            local0[14] = 5
            local0[15] = 5
            local0[16] = 15
            local0[17] = 30
            local0[18] = 0
            local0[24] = 15
            local0[20] = 50
        elseif 9 <= local4 then
            local0[10] = 25
            local0[11] = 15
            local0[12] = 10
            local0[13] = 0
            local0[14] = 0
            local0[15] = 0
            local0[16] = 10
            local0[17] = 15
            local0[18] = 5
            local0[24] = 20
            local0[20] = 50
        elseif 6 <= local4 then
            local0[10] = 25
            local0[11] = 20
            local0[12] = 10
            local0[13] = 5
            local0[14] = 5
            local0[15] = 10
            local0[16] = 5
            local0[17] = 0
            local0[18] = 5
            local0[24] = 15
            local0[20] = 50
        elseif 3 <= local4 then
            local0[10] = 20
            local0[11] = 10
            local0[12] = 15
            local0[13] = 15
            local0[14] = 10
            local0[15] = 10
            local0[16] = 10
            local0[17] = 0
            local0[18] = 0
            local0[24] = 10
            local0[20] = 50
        else
            local0[10] = 10
            local0[11] = 15
            local0[12] = 15
            local0[13] = 15
            local0[14] = 10
            local0[15] = 10
            local0[16] = 10
            local0[17] = 0
            local0[18] = 0
            local0[24] = 0
            local0[20] = 50
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
        if 15 <= local4 then
            local0[10] = 10
            local0[11] = 5
            local0[12] = 5
            local0[13] = 5
            local0[14] = 5
            local0[15] = 5
            local0[16] = 5
            local0[17] = 35
            local0[18] = 5
            local0[19] = 0
            local0[24] = 10
            local0[26] = 0
            local0[27] = 0
            local0[28] = 7
            local0[29] = 3
        elseif 12 <= local4 then
            local0[10] = 8
            local0[11] = 7
            local0[12] = 5
            local0[13] = 5
            local0[14] = 5
            local0[15] = 5
            local0[16] = 10
            local0[17] = 15
            local0[18] = 0
            local0[19] = 20
            local0[24] = 10
            local0[26] = 0
            local0[27] = 0
            local0[28] = 5
            local0[29] = 5
        elseif 9 <= local4 then
            local0[10] = 20
            local0[11] = 15
            local0[12] = 10
            local0[13] = 0
            local0[14] = 0
            local0[15] = 0
            local0[16] = 5
            local0[17] = 10
            local0[18] = 5
            local0[19] = 15
            local0[24] = 0
            local0[26] = 0
            local0[27] = 0
            local0[28] = 10
            local0[29] = 10
        elseif 6 <= local4 then
            local0[10] = 18
            local0[11] = 14
            local0[12] = 8
            local0[13] = 5
            local0[14] = 4
            local0[15] = 4
            local0[16] = 4
            local0[17] = 0
            local0[18] = 4
            local0[19] = 4
            local0[24] = 15
            local0[26] = 0
            local0[27] = 5
            local0[28] = 5
            local0[29] = 10
        elseif 3 <= local4 then
            local0[10] = 15
            local0[11] = 10
            local0[12] = 15
            local0[13] = 15
            local0[14] = 5
            local0[15] = 5
            local0[16] = 0
            local0[17] = 0
            local0[18] = 0
            local0[19] = 0
            local0[24] = 10
            local0[26] = 10
            local0[27] = 5
            local0[28] = 5
            local0[29] = 5
        else
            local0[10] = 10
            local0[11] = 15
            local0[12] = 10
            local0[13] = 15
            local0[14] = 10
            local0[15] = 10
            local0[16] = 5
            local0[17] = 0
            local0[18] = 0
            local0[19] = 0
            local0[24] = 0
            local0[26] = 5
            local0[27] = 10
            local0[28] = 5
            local0[29] = 5
        end
    elseif 15 <= local4 then
        local0[10] = 10
        local0[11] = 5
        local0[12] = 5
        local0[13] = 5
        local0[14] = 5
        local0[15] = 5
        local0[16] = 5
        local0[17] = 35
        local0[18] = 5
        local0[19] = 0
        local0[22] = 0
        local0[24] = 0
        local0[26] = 0
        local0[27] = 2
        local0[28] = 5
        local0[29] = 10
        local0[31] = 3
    elseif 12 <= local4 then
        local0[10] = 8
        local0[11] = 7
        local0[12] = 5
        local0[13] = 5
        local0[14] = 5
        local0[15] = 5
        local0[16] = 5
        local0[17] = 15
        local0[18] = 0
        local0[19] = 20
        local0[22] = 0
        local0[24] = 10
        local0[26] = 0
        local0[27] = 0
        local0[28] = 3
        local0[29] = 7
        local0[31] = 5
    elseif 9 <= local4 then
        local0[10] = 10
        local0[11] = 5
        local0[12] = 10
        local0[13] = 0
        local0[14] = 0
        local0[15] = 0
        local0[16] = 5
        local0[17] = 10
        local0[18] = 5
        local0[19] = 15
        local0[22] = 10
        local0[24] = 0
        local0[26] = 0
        local0[27] = 10
        local0[28] = 10
        local0[29] = 10
        local0[31] = 0
    elseif 6 <= local4 then
        local0[10] = 16
        local0[11] = 12
        local0[12] = 6
        local0[13] = 5
        local0[14] = 3
        local0[15] = 4
        local0[16] = 4
        local0[17] = 0
        local0[18] = 3
        local0[19] = 4
        local0[22] = 8
        local0[24] = 15
        local0[26] = 0
        local0[27] = 5
        local0[28] = 5
        local0[29] = 5
        local0[31] = 5
    elseif 3 <= local4 then
        local0[10] = 10
        local0[11] = 10
        local0[12] = 10
        local0[13] = 10
        local0[14] = 5
        local0[15] = 5
        local0[16] = 0
        local0[17] = 0
        local0[18] = 0
        local0[19] = 0
        local0[22] = 0
        local0[24] = 8
        local0[26] = 7
        local0[27] = 10
        local0[28] = 5
        local0[29] = 5
        local0[31] = 15
    else
        local0[10] = 10
        local0[11] = 15
        local0[12] = 10
        local0[13] = 15
        local0[14] = 10
        local0[15] = 10
        local0[16] = 5
        local0[17] = 0
        local0[18] = 0
        local0[19] = 0
        local0[22] = 0
        local0[24] = 0
        local0[26] = 5
        local0[27] = 5
        local0[28] = 5
        local0[29] = 5
        local0[31] = 5
    end
    if local8 == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if local8 == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if local8 == 3 and 0 < local0[3] then
        local0[3] = 1
    end
    if local8 == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if local8 == 5 and 0 < local0[5] then
        local0[5] = 1
    end
    if local8 == 6 and 0 < local0[6] then
        local0[6] = 1
    end
    if local8 == 7 and 0 < local0[7] then
        local0[7] = 1
    end
    if local8 == 10 and 0 < local0[10] then
        local0[10] = 1
    end
    if local8 == 11 and 0 < local0[11] then
        local0[11] = 1
    end
    if local8 == 12 and 0 < local0[12] then
        local0[12] = 1
    end
    if local8 == 13 and 0 < local0[13] then
        local0[13] = 1
    end
    if local8 == 14 and 0 < local0[14] then
        local0[14] = 1
    end
    if local8 == 15 and 0 < local0[15] then
        local0[15] = 1
    end
    if local8 == 16 and 0 < local0[16] then
        local0[16] = 1
    end
    if local8 == 17 and 0 < local0[17] then
        local0[17] = 1
    end
    if local8 == 18 and 0 < local0[18] then
        local0[18] = 1
    end
    if local8 == 19 and 0 < local0[19] then
        local0[19] = 1
    end
    if local8 == 21 and 0 < local0[21] then
        local0[21] = 1
    end
    if local8 == 22 and 0 < local0[22] then
        local0[22] = 1
    end
    if local8 == 24 and 0 < local0[24] then
        local0[24] = 1
    end
    if local8 == 26 and 0 < local0[26] then
        local0[26] = 1
    end
    if local8 == 27 and 0 < local0[27] then
        local0[27] = 1
    end
    if local8 == 28 and 0 < local0[28] then
        local0[28] = 1
    end
    if local8 == 29 and 0 < local0[29] then
        local0[29] = 1
    end
    if local8 == 31 and 0 < local0[31] then
        local0[31] = 1
    end
    if arg0:IsFinishTimer(0) == false then
        local0[20] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act07)
    local1[10] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act17)
    local1[18] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act18)
    local1[19] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act19)
    local1[20] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act26)
    local1[27] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act29)
    local1[30] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act30)
    local1[31] = REGIST_FUNC(arg0, arg1, WomanHumter452000_Act31)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, WomanHumter452000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 6 - local0
function WomanHumter452000_Act01(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 10, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.7 - local0
function WomanHumter452000_Act02(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 0.5, 0, -1)
    arg0:SetNumber(0, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 12.7 - local0
function WomanHumter452000_Act03(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 0.5, 0, -1)
    arg0:SetNumber(0, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.9 - local0
function WomanHumter452000_Act04(arg0, arg1, arg2)
    local local0 = UPVAL0 + 0.5
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, local0, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, local0, 0)
    arg0:SetNumber(0, 4)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

local0 = 15.5 - local0
function WomanHumter452000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 0)
    local local2 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 0)
    local local3 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 0)
    local local4 = 700
    if 5 <= arg0:GetDist(TARGET_ENE_0) then
        if local1 == false and local2 == false then
            local4 = 701
        elseif local2 == true and local1 == true then
            if local0 <= 50 then
                local4 = 702
            else
                local4 = 703
            end
        elseif local2 == false then
            local4 = 702
        else
            local4 = 703
        end
    elseif arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 0) == false then
        if local1 == true and local2 == true then
            if local0 <= 50 then
                local4 = 702
            else
                local4 = 703
            end
        elseif local2 == false then
            local4 = 702
        else
            local4 = 703
        end
    else
        local4 = 701
    end
    if local0 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, local4, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 0.5, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 19.5 - local0
function WomanHumter452000_Act06(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 0.5, 0, -1)
    arg0:SetNumber(0, 6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
local0 = 3.6 - local0
local0 = local7
function WomanHumter452000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act(arg0, arg1, UPVAL0 + 8.5, 999, 0, 2)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 0.5, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, UPVAL2 + 0.5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL1 + 0.5, 0, -1)
    end
    arg0:SetNumber(0, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.4 - local0
local0 = local48
local0 = local50
local0 = local54
local0 = local56
local0 = local45
local0 = 6 - local0
local0 = local21
local0 = local23
local0 = local27
local0 = local29
function WomanHumter452000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 0.5
    local local2 = UPVAL1 + 0.5
    local local3 = UPVAL2 + 0.5
    local local4 = UPVAL3 + 0.5
    local local5 = UPVAL4 + 0.5
    local local6 = UPVAL5 + 0.5
    local local7 = 45
    local local8 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local1 = UPVAL6 + 0.5
        local2 = UPVAL7 + 0.5
        local3 = UPVAL8 + 0.5
        local4 = UPVAL9 + 0.5
        local5 = UPVAL10 + 0.5
        local8 = UPVAL6
    end
    Approach_Act(arg0, arg1, local8, 999, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        if local0 <= 5 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, local7)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0)
        elseif local0 <= 15 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, local7)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local5, 0)
        elseif local0 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, local7)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local4, 0)
        elseif local0 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, local7)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local4, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local6, 0)
        elseif local0 <= 55 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, local7)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
        elseif local0 <= 65 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, local7)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local5, 0)
        elseif local0 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, local7)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local4, 0)
        elseif local0 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, local7)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local3, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local4, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local6, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, local7)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local6, 0)
        end
    elseif local0 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, local7)
    elseif local0 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local5, 0)
    elseif local0 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local2, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local4, 0)
    elseif local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0)
    elseif local0 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    elseif local0 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local1, 0, local7)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local4, 0)
    end
    GetWellSpace_Odds = 15
    return GetWellSpace_Odds
end

local0 = local48
local0 = local54
local0 = local56
local0 = local45
local0 = local21
local0 = local27
local0 = local29
function WomanHumter452000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 0.5
    local local2 = UPVAL1 + 0.5
    local local3 = UPVAL2 + 0.5
    local local4 = 45
    local local5 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local1 = UPVAL4 + 0.5
        local2 = UPVAL5 + 0.5
        local3 = UPVAL6 + 0.5
        local5 = UPVAL4
    end
    Approach_Act(arg0, arg1, local5, 999, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        if local0 <= 10 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, local4)
        elseif local0 <= 40 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, local4)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local3, 0)
        elseif local0 <= 70 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, local4)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local2, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, local4)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local2, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, UPVAL3 + 0.5, 0)
        end
    elseif local0 <= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, local4)
    elseif local0 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, local1, 0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 15
    return GetWellSpace_Odds
end

local0 = local50
local0 = local54
local0 = local56
local0 = local45
local0 = local23
local0 = local27
local0 = local29
function WomanHumter452000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0 + 0.5
    local local2 = UPVAL1 + 0.5
    local local3 = UPVAL2 + 0.5
    local local4 = 45
    local local5 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local1 = UPVAL4 + 0.5
        local2 = UPVAL5 + 0.5
        local3 = UPVAL6 + 0.5
        local5 = UPVAL4
    end
    Approach_Act(arg0, arg1, local5, 999, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        if local0 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, 0, local4)
        elseif local0 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, 0, local4)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local3, 0)
        elseif local0 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, 0, local4)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local2, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, 0, local4)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local2, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, UPVAL3 + 0.5, 0)
        end
    elseif local0 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, 0, local4)
    elseif local0 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, 0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, local1, 0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 15
    return GetWellSpace_Odds
end

local0 = local52
local0 = local25
function WomanHumter452000_Act13(arg0, arg1, arg2)
    local local0 = UPVAL0 + 0.5
    local local1 = UPVAL0 - 0.5
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local0 = UPVAL1 + 0.5
        local1 = UPVAL1 - 0.5
    end
    Approach_Act(arg0, arg1, local1, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3003, TARGET_ENE_0, local0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local54
local0 = local50
local0 = local45
local0 = local27
local0 = local23
function WomanHumter452000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0.5
    local local3 = UPVAL1 + 0.5
    local local4 = 45
    local local5 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local2 = UPVAL3 + 0.5
        local3 = UPVAL4 + 0.5
        local5 = UPVAL3
    end
    Approach_Act(arg0, arg1, local5, 999, 0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        if local0 <= 45 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, local4)
        elseif local0 <= 85 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, local4)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, local4)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, UPVAL2 + 0.5, 0)
        end
    elseif local0 <= 65 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, local4)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, local3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local2, 0, local4)
    end
    arg0:SetNumber(0, 14)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local56
local0 = local29
function WomanHumter452000_Act15(arg0, arg1, arg2)
    local local0 = UPVAL0 + 0.5
    local local1 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local0 = UPVAL1 + 0.5
        local1 = UPVAL1
    end
    Approach_Act(arg0, arg1, local1, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, local0, 0, 45)
    arg0:SetNumber(0, 15)
    GetWellSpace_Odds = 15
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
local0 = 6 - local0
function WomanHumter452000_Act16(arg0, arg1, arg2)
    local local0 = UPVAL0 + 0.5
    local local1 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local0 = UPVAL1 + 0.5
        local1 = UPVAL1
    end
    Approach_Act(arg0, arg1, local1, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, local0, 0, 45)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, local0, 0)
    arg0:SetNumber(0, 16)
    GetWellSpace_Odds = 15
    return GetWellSpace_Odds
end

local0 = 12.3 - local0
local0 = 11.3 - local0
function WomanHumter452000_Act17(arg0, arg1, arg2)
    local local0 = UPVAL0 + 0.5
    local local1 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local0 = UPVAL1 + 0.5
        local1 = UPVAL1
    end
    Approach_Act(arg0, arg1, local1, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, local0, 0, -1)
    arg0:SetNumber(0, 17)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8.9 - local0
local0 = 7.6 - local0
function WomanHumter452000_Act18(arg0, arg1, arg2)
    local local0 = UPVAL0 + 0.5
    local local1 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local0 = UPVAL1 + 0.5
        local1 = UPVAL1
    end
    Approach_Act(arg0, arg1, local1, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, local0, 0, 45)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, local0, 0)
    arg0:SetNumber(0, 18)
    GetWellSpace_Odds = 15
    return GetWellSpace_Odds
end

local0 = 13.6 - local0
local0 = 13.6 - local0
function WomanHumter452000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 0.5
    local local3 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local2 = UPVAL1 + 0.5
        local3 = UPVAL1
    end
    if 14 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    elseif local0 <= 6 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        Approach_Act(arg0, arg1, local3, 999, 0, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, local2, 0, -1)
    arg0:SetNumber(0, 19)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 4.5 - local0
local0 = 4.1 - local0
function WomanHumter452000_Act20(arg0, arg1, arg2)
    local local0 = UPVAL0 + 0.5
    local local1 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5400) then
        local0 = UPVAL1 + 0.5
        local1 = UPVAL1
    end
    if arg0:GetDist(TARGET_ENE_0) <= local0 then
        Approach_Act(arg0, arg1, local1, 999, 0, 2)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, local0, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, -1)
    end
    arg0:SetTimer(0, 35)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 12.6 - local0
function WomanHumter452000_Act21(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 0.5, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0 + 0.5, 0, -1)
    arg0:SetNumber(0, 21)
    GetWellSpace_Odds = 15
    return GetWellSpace_Odds
end

local0 = 8.7 - local0
function WomanHumter452000_Act22(arg0, arg1, arg2)
    Approach_Act(arg0, arg1, UPVAL0 + 1, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 22)
    GetWellSpace_Odds = 15
    return GetWellSpace_Odds
end

function WomanHumter452000_Act23(arg0, arg1, arg2)
    if arg0:GetNumber(1) == 1 then
        arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5403)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_None, 0, -1)
    arg0:SetNumber(0, 23)
    GetWellSpace_Odds = 15
    return GetWellSpace_Odds
end

local0 = local52
local0 = local54
local0 = 6.6 - local0
local0 = local25
function WomanHumter452000_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL1 + 1
    local local4 = UPVAL2 + 1
    local local5 = UPVAL0 + 8.5
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local2 = UPVAL3 + 1
        local5 = UPVAL3
    end
    Approach_Act(arg0, arg1, local5, 999, 0, 2)
    if 8 <= local0 then
        if local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local2, 0, -1)
        elseif local1 <= 55 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local4, 0, -1)
        end
    elseif 5 <= local0 then
        if local1 <= 15 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local2, 0, -1)
        elseif local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local2, 0, -1)
        elseif local1 <= 43 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 0, -1)
        elseif local1 <= 56 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, local3, 0, -1)
        elseif local1 <= 78 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local4, 0, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, local4, 0, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, local2, 0, -1)
    end
    arg0:SetNumber(0, 24)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WomanHumter452000_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5400) then
        if local0 <= 3 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            elseif arg0:GetRandam_Int(1, 100) <= 30 then
                WomanHumter452000_Act05(arg0, arg1, arg2)
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        elseif local0 <= 5 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        if local0 <= 4 then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
        end
    elseif local0 <= 4 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3.6 - local0
local0 = 4.2 - local0
function WomanHumter452000_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, UPVAL0 + 1, 0, 90)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, UPVAL1 + 1, 0)
    arg0:SetNumber(0, 26)
    GetWellSpace_Odds = 15
    return GetWellSpace_Odds
end

local0 = local73
function WomanHumter452000_Act27(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    Approach_Act(arg0, arg1, UPVAL0, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 27)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local75
local0 = 13.9 - local0
function WomanHumter452000_Act28(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL0
    local local2 = 999
    local local3 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, local0, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, UPVAL1 + 1, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, local0, 0, -1)
    end
    arg0:SetNumber(0, 28)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local78
function WomanHumter452000_Act29(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 999
    local local2 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    arg0:SetNumber(0, 29)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WomanHumter452000_Act30(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5402)
    if arg0:GetDist(TARGET_ENE_0) <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, DIST_None, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 8.9 - local0
local0 = 7.7 - local0
function WomanHumter452000_Act31(arg0, arg1, arg2)
    local local0 = UPVAL0 + 1
    local local1 = UPVAL0 - 0.5
    if arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        local0 = UPVAL1 + 1
        local1 = UPVAL1 - 0.5
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5403) then
        arg0:AddObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 52)
    end
    Approach_Act(arg0, arg1, local1, 999, 0, 2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3019, TARGET_ENE_0, local0, 0, -1)
    arg0:SetNumber(0, 31)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WomanHumter452000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function WomanHumter452000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(1.5, 2.5)
    local local5 = arg0:GetRandam_Float(1.5, 2.5)
    local local6 = 0
    local local7 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 0)
    local local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 0)
    local local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5400) then
        if local1 <= 30 and local8 == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif local1 <= 60 and local9 == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg0:Replaning()
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
        if local1 <= 40 and local7 == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg0:Replaning()
        end
    elseif local0 <= 3 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and local8 == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif local9 == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
        if local7 == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    elseif local0 <= 6 and local7 == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        arg0:Replaning()
    end
    return 
end

function WomanHumter452000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function WomanHumter452000Battle_Terminate(arg0, arg1)
    return 
end

local0 = local73
local0 = local78
local0 = local75
local0 = local7
local0 = 1.8 - local0
local0 = 4 - local0
function WomanHumter452000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 20
    local local4 = arg0:GetRandam_Int(0, 1)
    if arg0:IsInterupt(INTERUPT_Damaged) then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5403) then
            local3 = local3 + 20
        end
        if arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
            local3 = local3 + 10
        end
        if arg0:GetDist(TARGET_ENE_0) < 3 and local0 <= local3 then
            if arg0:HasSpecialEffectId(TARGET_SELF, 5403) then
                if local0 <= 20 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 35 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 40 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 45 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 55 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 64 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 72 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 77 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 85 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_None, 0, 360)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0, 360)
                end
            elseif arg0:HasSpecialEffectId(TARGET_SELF, 5402) then
                if local0 <= 15 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 20 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 25 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 30 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 60 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 70 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 80 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_None, 0, 360)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0, 360)
                end
            elseif arg0:HasSpecialEffectId(TARGET_SELF, 5401) then
                if local0 <= 10 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 25 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 30 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 35 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 47 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 60 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 70 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, 360)
                elseif local0 <= 80 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, 360)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0, 360)
                end
            elseif local0 <= 15 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_None, 0, 360)
            elseif local0 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 0, 360)
            elseif local0 <= 35 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_None, 0, 360)
            elseif local0 <= 40 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_None, 0, 360)
            elseif local0 <= 47 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 0, 360)
            elseif local0 <= 55 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 0, 360)
            elseif local0 <= 62 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_None, 0, 360)
            elseif local0 <= 70 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_None, 0, 360)
            elseif local0 <= 75 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, DIST_None, 0, 360)
            elseif local0 <= 80 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, DIST_None, 0, 360)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 0, 360)
            end
            return true
        end
    end
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetDist(TARGET_ENE_0)
    local local7 = arg0:GetRandam_Int(0, 1)
    local local8 = Shoot_2dist(arg0, arg1, 5, 20, 30, 55)
    if local8 == 1 or local8 == 2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702 + local7, TARGET_ENE_0, 0, AI_DIR_TYPE_L + local7, 0)
        return true
    end
    local local9 = arg0:GetRandam_Int(1, 100)
    local local10 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) and (not not arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8) or arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)) then
        arg1:ClearSubGoal()
        if local9 <= 50 and local10 <= 5 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2.1, 3023, TARGET_ENE_0, DIST_None, 0, 0)
        elseif local9 <= 50 and local10 <= UPVAL0 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2.1, 3023, TARGET_ENE_0, DIST_None, 0, 0)
        elseif local9 <= 50 and local10 <= UPVAL1 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2.1, 3024, TARGET_ENE_0, DIST_None, 0, 0)
        elseif local9 <= 50 and local10 <= UPVAL2 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2.1, 3026, TARGET_ENE_0, DIST_None, 0, 0)
        else
            return false
        end
        arg0:DeleteObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 8)
        arg0:DeleteObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 9)
        return true
    elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) then
        local local11 = UPVAL3 + 0.5
        local local12 = 10
        if arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5025) then
            if not not arg0:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 270, 4) or local9 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, local11, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local11, 0)
            end
            return true
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5026) then
            if 2.5 <= local10 or arg0:GetRandam_Int(1, 100) <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, local12, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, UPVAL4 + 0.5, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local12, 0)
            end
            arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
            return true
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5027) then
            if not not arg0:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 2.3) or arg0:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 3.5) then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, local12, 0)
                arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
                return true
            else
                return false
            end
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5402) then
            arg0:SetNumber(1, 1)
            arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5402)
            return true
        elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5403) then
            arg0:SetNumber(1, 2)
            arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5403)
            return true
        elseif arg0:IsActivateSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 52) then
            arg1:ClearSubGoal()
            if local10 <= UPVAL5 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, DIST_None, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, DIST_None, 0)
            end
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            arg0:DeleteObserveSpecialEffect(TARGET_ENE_0, AI_SPEFFOBSERVE_SpEffId, 52)
            return true
        end
    end
    return false
end

return 
