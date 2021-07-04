local local0 = 0.25
function OnIf_208000(arg0, arg1, arg2)
    if arg2 == 0 then
        GhostOfMoonlight208000_ActAfter_RealTime(arg0, arg1)
    end
    return 
end

function GhostOfMoonlight208000Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetRandam_Int(1, 100)
    local local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local0[2] = 100
    local1[1] = REGIST_FUNC(arg0, arg1, GhostOfMoonlight208000_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, GhostOfMoonlight208000_Act02)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, GhostOfMoonlight208000_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.3 - local0
local0 = 0 - local0
function GhostOfMoonlight208000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = UPVAL0
    local local3 = UPVAL1
    local local4 = UPVAL0 + 10
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_NONE, UPVAL0 + 1, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GhostOfMoonlight208000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function GhostOfMoonlight208000_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetRandam_Int(0, 1)
    local local4 = arg0:GetRandam_Float(2, 3.5)
    local local5 = arg0:GetRandam_Float(2, 3)
    local local6 = 0
    return 
end

function GhostOfMoonlight208000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function GhostOfMoonlight208000Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function GhostOfMoonlight208000Battle_Terminate(arg0, arg1)
    return 
end

function GhostOfMoonlight208000Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        local local0 = arg0:GetRandam_Int(1, 100)
        local local1 = arg0:GetRandam_Int(1, 100)
        local local2 = arg0:GetRandam_Int(1, 100)
        local local3 = arg0:GetDist(TARGET_ENE_0)
        if arg0:IsInterupt(INTERUPT_Damaged) then
            arg1:ClearSubGoal()
            GhostOfMoonlight208000_Act01(arg0, arg1, paramTbl)
            return true
        else
            return false
        end
    end
end

return 
