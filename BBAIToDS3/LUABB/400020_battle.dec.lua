local local0 = 0.4
local local1 = 0.4 - local0
local local2 = 3.4 - local0
local local3 = 0.4 - local0
local local4 = 3.1 - local0
local local5 = 0.4 - local0
local local6 = 4.8 - local0
local local7 = 0.4 - local0
local local8 = 3.9 - local0
local local9 = 0.4 - local0
local local10 = 4.1 - local0
local local11 = 0.4 - local0
local local12 = 6.8 - local0
local local13 = 0.4 - local0
local local14 = 4.8 - local0
local local15 = 0.4 - local0
local local16 = 2.7 - local0
local local17 = 0.4 - local0
local local18 = 4.5 - local0
local local19 = 0.4 - local0
local local20 = 5 - local0
local local21 = 0.4 - local0
local local22 = 3.9 - local0
local local23 = 0.4 - local0
local local24 = 0.4 - local0
local local25 = 4.8 - local0
local local26 = 0.4 - local0
local local27 = 0.4 - local0
local local28 = 0.4 - local0
local local29 = 0.4 - local0
local local30 = 0.4 - local0
local local31 = 0.4 - local0
local local32 = 3.4 - local0
local local33 = 0.4 - local0
local local34 = 4.1 - local0
local local35 = 0.4 - local0
local local36 = 4.1 - local0
local local37 = 0.4 - local0
local local38 = 14.1 - local0
local local39 = 0.4 - local0
local local40 = 11 - local0
local local41 = 0.4 - local0
local local42 = 0.4 - local0
local local43 = 10 - local0
local local44 = 0 - local0
function OnIf_400020(arg0, arg1, arg2)
    if arg2 == 0 then
        DarksideHunter400020_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function DarksideHunter400020Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetEventRequest()
    local local5 = arg0:GetHpRate(TARGET_SELF)
    local local6 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 4)
    local local7 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 4)
    local local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 4)
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8033) == true then
        combo = 15
    else
        combo = 0
    end
    if arg0:GetNumber(0) == 1 then
        arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 3)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5403) then
        local0[18] = 100
    end
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8033) == true and arg0:GetRandam_Int(1, 100) <= 80 and local3 <= 5 then
        if arg0:GetRandam_Int(1, 100) <= 25 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            local0[9] = 100
        elseif 7.5 <= local3 then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 100
        elseif 5 <= local3 then
            local0[1] = 30 - combo
            local0[2] = 0
            local0[3] = 10
            local0[4] = 10
            local0[5] = 10
            local0[6] = 50
        elseif 2.5 <= local3 then
            local0[1] = 20 - combo
            local0[2] = 2
            local0[3] = 10
            local0[4] = 20
            local0[5] = 10
            local0[6] = 25
        elseif 0.5 <= local3 then
            local0[1] = 20 - combo
            local0[2] = 2
            local0[3] = 0
            local0[4] = 10
            local0[5] = 10
            local0[6] = 15
        else
            local0[1] = 30 - combo
            local0[2] = 2
            local0[3] = 0
            local0[4] = 20
            local0[5] = 5
            local0[6] = 10
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5612) == true then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
            local0[19] = 100
        elseif 7.5 <= local3 then
            local0[10] = 20 - combo
            local0[11] = 1
            local0[12] = 10
            local0[13] = 10
            local0[14] = 10
            local0[15] = 30
        elseif 5 <= local3 then
            local0[10] = 20 - combo
            local0[11] = 2
            local0[12] = 10
            local0[13] = 10
            local0[14] = 20
            local0[15] = 20
        elseif 2.5 <= local3 then
            local0[10] = 20 - combo
            local0[11] = 3
            local0[12] = 10
            local0[13] = 20
            local0[14] = 30
            local0[15] = 0
        else
            local0[10] = 20 - combo
            local0[11] = 3
            local0[12] = 20
            local0[13] = 20
            local0[14] = 20
            local0[15] = 0
        end
    end
    if lastact == 1 and 0 < local0[1] then
        local0[1] = 1
    end
    if lastact == 2 and 0 < local0[2] then
        local0[2] = 1
    end
    if lastact == 3 and 0 < local0[3] then
        local0[3] = 1
    end
    if lastact == 4 and 0 < local0[4] then
        local0[4] = 1
    end
    if lastact == 5 and 0 < local0[5] then
        local0[5] = 1
    end
    if lastact == 6 and 0 < local0[6] then
        local0[6] = 1
    end
    if lastact == 10 and 0 < local0[10] then
        local0[10] = 1
    end
    if lastact == 11 and 0 < local0[11] then
        local0[11] = 1
    end
    if lastact == 12 and 0 < local0[12] then
        local0[12] = 1
    end
    if lastact == 13 and 0 < local0[13] then
        local0[13] = 1
    end
    if lastact == 14 and 0 < local0[14] then
        local0[14] = 1
    end
    if lastact == 15 and 0 < local0[15] then
        local0[15] = 1
    end
    local1[1] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act06)
    local1[9] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act09)
    local1[10] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act15)
    local1[18] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act18)
    local1[19] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act19)
    local1[20] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act20)
    local1[21] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act26)
    local1[27] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, DarksideHunter400020_Act29)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, DarksideHunter400020_ActAfter_AdjustSpace), local2)
    return 
end

local0 = local4
local0 = local6
local0 = local8
local0 = local25
local0 = local10
local0 = local36
local0 = local38
local0 = local2
function DarksideHunter400020_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(1, 100)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetRandam_Int(1, 100)
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = 10
    local local8 = UPVAL2 + 4
    local local9 = UPVAL4 + 3
    local local10 = UPVAL6 + 3
    local local11 = UPVAL7
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8033) == true then
        local11 = local11 + 5
    end
    if arg0:GetNpcThinkParamID() == 400028 then
        ace1 = 20
        ace2 = 30
        ace3 = 60
    else
        ace1 = 0
        ace2 = 0
        ace3 = 0
    end
    if local11 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local11, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 3, 0, 0)
    if local0 <= 50 - ace1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, UPVAL1 + 4, 0)
        if local1 <= 45 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, UPVAL5 + 3, 0)
            if local2 <= 10 + ace3 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, UPVAL3 + 3, 0)
                if local3 <= 10 + ace2 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local7, 0)
                elseif local3 <= 20 + ace3 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, local7, 0)
                    if arg0:GetNpcThinkParamID() == 400028 and local4 <= 60 then
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, local7, 0)
                    end
                end
            elseif local2 <= 60 + ace1 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                if local3 <= 30 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, local7, 0)
                    if local4 <= 10 then
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local7, 0)
                    elseif local4 <= 20 then
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local7, 0)
                    end
                end
            end
        elseif local1 <= 10 + ace3 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local8, 0)
            if local2 <= 10 + ace2 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local7, 0)
            elseif local2 <= 20 + ace3 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local7, 0)
                if arg0:GetNpcThinkParamID() == 400028 and local3 <= 60 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, local7, 0)
                end
            end
        elseif local1 <= 70 + ace1 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            if local2 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, local7, 0)
                if local3 <= 10 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local7, 0)
                elseif local3 <= 20 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local7, 0)
                end
            end
        end
    elseif local0 <= 85 - ace2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, local8, 0)
        if local1 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local7, 0)
            if local2 <= 5 + ace3 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local7, 0)
                if local3 <= 10 + ace2 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local7, 0)
                elseif local3 <= 20 + ace3 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local7, 0)
                    if arg0:GetNpcThinkParamID() == 400028 and local4 <= 60 then
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, local7, 0)
                    end
                end
            elseif local2 <= 60 + ace1 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                if local3 <= 30 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, local7, 0)
                    if local4 <= 10 then
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local7, 0)
                    elseif local4 <= 20 then
                        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local7, 0)
                    end
                end
            end
        elseif local1 <= 5 + ace3 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local7, 0)
            if local2 <= 10 + ace2 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local7, 0)
            elseif local2 <= 20 + ace3 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local7, 0)
            end
        elseif local1 <= 70 + ace1 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            if local2 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, local7, 0)
                if local3 <= 10 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local7, 0)
                elseif local3 <= 20 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local7, 0)
                end
            end
        end
    elseif local0 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, local8, 0)
        if local1 <= 10 + ace2 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local7, 0)
        elseif local1 <= 20 + ace3 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local7, 0)
        end
    elseif local0 <= 95 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        if local1 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, local7, 0)
            if local2 <= 10 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local7, 0)
            elseif local2 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local7, 0)
            end
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local18
local0 = local16
function DarksideHunter400020_Act02(arg0, arg1, arg2)
    local local0 = 10
    local local1 = UPVAL1
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8033) == true then
        local1 = local1 + 5
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, local0, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3031, TARGET_ENE_0, local0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local36
local0 = local12
function DarksideHunter400020_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 10
    local local2 = UPVAL1
    if arg0:GetNpcThinkParamID() == 400028 then
        ace1 = 20
        ace2 = 30
        ace3 = 60
    else
        ace1 = 0
        ace2 = 0
        ace3 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8033) == true then
        local2 = local2 + 5
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 2, 0, 0)
    if local0 <= 5 + ace3 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3031, TARGET_ENE_0, local1, 0)
    elseif local0 <= 50 + ace2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        if arg0:GetRandam_Int(1, 100) <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, local1, 0)
            if fate3 <= 10 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local1, 0)
            elseif fate3 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local1, 0)
            end
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local38
local0 = local14
function DarksideHunter400020_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 10
    local local2 = UPVAL1
    if arg0:GetNpcThinkParamID() == 400028 then
        ace1 = 20
        ace2 = 30
        ace3 = 60
    else
        ace1 = 0
        ace2 = 0
        ace3 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8033) == true then
        local2 = local2 + 5
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, 0)
    if local0 <= 5 + ace3 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, AttDist2, 0)
    elseif local0 <= 50 + ace2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        if arg0:GetRandam_Int(1, 100) <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, local1, 0)
            if fate3 <= 10 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local1, 0)
            elseif fate3 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local1, 0)
            end
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local36
local0 = local20
function DarksideHunter400020_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 10
    local local2 = UPVAL1
    if arg0:GetNpcThinkParamID() == 400028 then
        ace1 = 20
        ace2 = 30
        ace3 = 60
    else
        ace1 = 0
        ace2 = 0
        ace3 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8033) == true then
        local2 = local2 + 5
    end
    if local2 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local2, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0, 0, 0)
    if local0 <= 5 + ace3 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3031, TARGET_ENE_0, AttDist2, 0)
    elseif local0 <= 50 + ace2 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        if fate2 <= 20 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, local1, 0)
            if fate3 <= 10 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, local1, 0)
            elseif fate3 <= 20 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, local1, 0)
            end
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local40
function DarksideHunter400020_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 999
    local local4 = 0
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8033) == true then
        local local5 = UPVAL0 + 5
    end
    if local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3035, TARGET_ENE_0, local2, 0, 0)
    elseif local0 <= 6 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3035, TARGET_ENE_0, local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3035, TARGET_ENE_0, local2, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local40
function DarksideHunter400020_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL0 + 1
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8033) == true then
        local2 = local2 + 5
    end
    if local2 <= local0 then
        Approach_Act(arg0, arg1, local2, 999, 0, 3)
    end
    if local0 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3037, TARGET_ENE_0, local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3030, TARGET_ENE_0, local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3035, TARGET_ENE_0, local3, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 3 - local0
function DarksideHunter400020_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 4)
    local local3 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 4)
    if local0 <= 3 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3036, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 0, 90, true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 1, 90, true, true, -1)
        end
    elseif local0 <= 6 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 0, 90, true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 1, 90, true, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local38
local0 = local25
local0 = local36
local0 = local32
function DarksideHunter400020_Act10(arg0, arg1, arg2)
    local local0 = UPVAL3
    if arg0:GetNpcThinkParamID() == 400028 then
        ace1 = 20
        ace2 = 30
        ace3 = 60
    else
        ace1 = 0
        ace2 = 0
        ace3 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8033) == true then
        local0 = local0 + 5
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3028, TARGET_ENE_0, UPVAL0 + 4, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 100 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3032, TARGET_ENE_0, UPVAL1 + 4, 0)
        if arg0:GetRandam_Int(1, 100) <= 100 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, UPVAL2 + 4, 0)
            if arg0:GetRandam_Int(1, 100) <= 5 + ace2 then
                arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3031, TARGET_ENE_0, 10, 0)
            end
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local18
local0 = local16
function DarksideHunter400020_Act11(arg0, arg1, arg2)
    local local0 = UPVAL1
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8033) == true then
        local0 = local0 + 5
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    if arg0:GetRandam_Int(1, 100) <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 10, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = local36
local0 = 5 - local0
local0 = local38
local0 = 5 - local0
function DarksideHunter400020_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 10
    local local4 = UPVAL1
    local local5 = UPVAL2 + 1
    local local6 = UPVAL3
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8033) == true then
        local6 = local6 + 5
    end
    if local6 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local6, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, UPVAL0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.9 - local0
function DarksideHunter400020_Act13(arg0, arg1, arg2)
    local local0 = UPVAL0
    if arg0:GetNpcThinkParamID() == 400028 then
        ace1 = 20
        ace2 = 30
        ace3 = 60
    else
        ace1 = 0
        ace2 = 0
        ace3 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8033) == true then
        local0 = local0 + 5
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 1, 0, 0)
    if fate1 <= 30 + ace2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3030, TARGET_ENE_0, AttDist2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.8 - local0
function DarksideHunter400020_Act14(arg0, arg1, arg2)
    local local0 = UPVAL0
    if arg0:GetNpcThinkParamID() == 400028 then
        ace1 = 20
        ace2 = 30
        ace3 = 60
    else
        ace1 = 0
        ace2 = 0
        ace3 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8033) == true then
        local0 = local0 + 5
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 1, 0, 0)
    if fate1 <= 30 + ace2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, AttDist2, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 7 - local0
function DarksideHunter400020_Act15(arg0, arg1, arg2)
    local local0 = UPVAL0
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8033) == true then
        local0 = local0 + 5
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 0, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 999 - local0
function DarksideHunter400020_Act18(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = 0
    local local4 = 0
    local local5 = 10
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3039, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.5 - local0
local0 = local32
function DarksideHunter400020_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL1 + 1
    if local0 <= 3 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3036, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 0, 90, true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 1, 90, true, true, -1)
        end
    elseif local0 <= 6 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 0, 90, true, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 1, 90, true, true, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local2
function DarksideHunter400020_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local4
function DarksideHunter400020_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local6
function DarksideHunter400020_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local8
function DarksideHunter400020_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local10
function DarksideHunter400020_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local12
function DarksideHunter400020_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local14
function DarksideHunter400020_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 1
    local local3 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local16
function DarksideHunter400020_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local18
function DarksideHunter400020_Act28(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = local20
function DarksideHunter400020_Act29(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0 + 3
    Approach_Act(arg0, arg1, UPVAL0, UPVAL0 + 100, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function DarksideHunter400020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

local0 = local40
function DarksideHunter400020_ActAfter_RealTime(arg0, arg1)
    arg0:SetNumber(0, 1)
    arg0:SetNumber(2, 0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
        if 5 <= arg0:GetDist(TARGET_ENE_0) and arg0:GetRandam_Int(1, 100) <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3035, TARGET_ENE_0, UPVAL0 + 1, 0, 0)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5612) == true then

    end
    return 
end

function DarksideHunter400020Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function DarksideHunter400020Battle_Terminate(arg0, arg1)
    return 
end

function DarksideHunter400020Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_Outside_ObserveArea) then
        arg0:SetNumber(1, 1)
        arg0:SetTimer(0, 7)
        return true
    elseif arg0:IsInterupt(INTERUPT_Inside_ObserveArea) and arg0:GetNumber(2) == 0 then
        arg0:SetNumber(1, 0)
        return true
    elseif arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5403) then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3039, TARGET_ENE_0, AttDist, 0, 0)
    end
    if arg0:GetNpcThinkParamID() == 400028 then
        ace1 = 20
        ace2 = 30
        ace3 = 60
    else
        ace1 = 0
        ace2 = 0
        ace3 = 0
    end
    if arg0:IsInterupt(INTERUPT_Damaged) and arg0:GetDist(TARGET_ENE_0) <= 3 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5611) == true then
            if local0 <= 50 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, AttDist, 0, 0)
                if local1 <= 20 + ace2 then
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, AttDist, 0)
                end
                return true
            elseif local0 <= 70 + ace1 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 6, 0, 0)
                return true
            end
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5612) == true then
            if local0 <= 50 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, AttDist, 0, 0)
                if local1 <= 20 + ace2 then
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, AttDist, 0)
                end
                return true
            elseif local0 <= 70 + ace1 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 6, 0, 0)
                return true
            end
        end
    end
    if Damaged_Step(arg0, arg1, 3, 80, 100, 0, 0, 5) then
        return true
    elseif FindAttack_Step(arg0, arg1, 3, 0, 100, 0, 0, 4) then
        return true
    else
        return false
    end
end

return 
