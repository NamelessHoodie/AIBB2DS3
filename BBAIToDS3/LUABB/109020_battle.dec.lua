local local0 = 0.4
local local1 = 0.4 - local0
local local2 = 0.4 - local0
local local3 = 0.4 - local0
local local4 = 0.4 - local0
local local5 = 0.4 - local0
local local6 = 0.4 - local0
local local7 = 0.4 - local0
local local8 = 0.4 - local0
local local9 = 0.4 - local0
local local10 = 0.4 - local0
local local11 = 0.4 - local0
local local12 = 0.4 - local0
local local13 = 0.4 - local0
function OnIf_109020(arg0, arg1, arg2)
    if arg2 == 0 then
        Deformed_Beast109020_ActAfter_RealTime(arg0, arg1)
    end
    if arg2 == 1 then
        Deformed_Beast109020_Reinforce(arg0, arg1)
    end
    return 
end

function Deformed_Beast109020Battle_Activate(arg0, arg1)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = arg0:GetDist(TARGET_LOCALPLAYER)
    local local5 = arg0:GetEventRequest(0)
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local8 = arg0:GetTeamRecordCount(COORDINATE_TYPE_Attack, TARGET_ENE_0, 20)
    local local9 = arg0:GetTeamRecordCount(COORDINATE_TYPE_AttackOrder, TARGET_ENE_0, 20)
    local local10 = 5.5
    if arg0:GetEventRequest(1) == 200 then
        local0[16] = 100
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5645) == false and arg0:GetNumber(0) == 1 then
        local0[17] = 100
    elseif arg0:GetEventRequest(2) == 100 and arg0:GetNumber(5) == 0 then
        local0[26] = 100
    elseif arg0:GetEventRequest(3) == 100 and arg0:GetNumber(6) == 0 then
        local0[27] = 100
    elseif (arg0:GetNpcThinkParamID() == 109952 or arg0:GetNpcThinkParamID() == 109956) and arg0:GetNumber(5) == 0 then
        local0[10] = 10
        local0[11] = 10
        local0[13] = 10
        local0[14] = 10
    else
        if arg0:GetNpcThinkParamID() == 109955 and local6 <= 100 then
            local local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8029)
            if not local11 then
                local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8034)
            end
            if local11 == true then
                local0[28] = 100
            elseif (arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109955) and local6 <= 100 then
                local0[29] = 100
            else
                if arg0:GetNpcThinkParamID() == 109957 and local6 <= 100 then
                    local local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8029)
                    if not local11 then
                        local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8034)
                    end
                    if local11 == true then
                        local0[30] = 100
                    else
                        if (arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109952 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109956) and local6 <= 100 then
                            local local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8029)
                            if not local11 then
                                local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8034)
                            end
                            if local11 == true then
                                local0[28] = 100
                            else
                                if (arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109952 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109956 or arg0:GetNpcThinkParamID() == 109957) and local6 <= 100 then
                                    local local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 404)
                                    if not local11 then
                                        local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8029)
                                        if not local11 then
                                            local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8034)
                                        end
                                    end
                                    if local11 == true and local3 <= 9 then
                                        local0[25] = 100
                                    elseif arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 then
                                        local0[25] = 100
                                    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                                        local0[22] = 100
                                    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                                        local0[23] = 100
                                    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                                        local0[21] = 100
                                    elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
                                        local0[24] = 100
                                    elseif 8 <= local3 then
                                        local0[1] = 20
                                        local0[2] = 0
                                        local0[4] = 5
                                        local0[5] = 5
                                        local0[6] = 10
                                        local0[7] = 0
                                        local0[10] = 15 + 5
                                        local0[11] = 10 + 5
                                        local0[13] = 10
                                        local0[14] = 15
                                        local0[18] = 0
                                    elseif 5 <= local3 then
                                        local0[1] = 20
                                        local0[2] = 5
                                        local0[4] = 5
                                        local0[5] = 5
                                        local0[6] = 10
                                        local0[7] = 5
                                        local0[10] = 0
                                        local0[11] = 15 + 5
                                        local0[13] = 10 + 5
                                        local0[14] = 15
                                        local0[18] = 0
                                    elseif 2 <= local3 then
                                        local0[1] = 20
                                        local0[2] = 10
                                        local0[4] = 10
                                        local0[5] = 10
                                        local0[6] = 15
                                        local0[7] = 5 + 5
                                        local0[10] = 0
                                        local0[11] = 0
                                        local0[13] = 0
                                        local0[14] = 20 + 5
                                        local0[18] = 0
                                    else
                                        local0[1] = 25
                                        local0[2] = 10
                                        local0[4] = 10
                                        local0[5] = 15
                                        local0[6] = 15
                                        local0[7] = 15
                                        local0[10] = 0
                                        local0[11] = 0
                                        local0[13] = 0
                                        local0[14] = 0
                                        local0[18] = 0
                                    end
                                end
                                elseif arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 then
                                    local0[25] = 100
                                elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                                    local0[22] = 100
                                elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                                    local0[23] = 100
                                elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                                    local0[21] = 100
                                elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
                                    local0[24] = 100
                                elseif 8 <= local3 then
                                    local0[1] = 20
                                    local0[2] = 0
                                    local0[4] = 5
                                    local0[5] = 5
                                    local0[6] = 10
                                    local0[7] = 0
                                    local0[10] = 15 + 5
                                    local0[11] = 10 + 5
                                    local0[13] = 10
                                    local0[14] = 15
                                    local0[18] = 0
                                elseif 5 <= local3 then
                                    local0[1] = 20
                                    local0[2] = 5
                                    local0[4] = 5
                                    local0[5] = 5
                                    local0[6] = 10
                                    local0[7] = 5
                                    local0[10] = 0
                                    local0[11] = 15 + 5
                                    local0[13] = 10 + 5
                                    local0[14] = 15
                                    local0[18] = 0
                                elseif 2 <= local3 then
                                    local0[1] = 20
                                    local0[2] = 10
                                    local0[4] = 10
                                    local0[5] = 10
                                    local0[6] = 15
                                    local0[7] = 5 + 5
                                    local0[10] = 0
                                    local0[11] = 0
                                    local0[13] = 0
                                    local0[14] = 20 + 5
                                    local0[18] = 0
                                else
                                    local0[1] = 25
                                    local0[2] = 10
                                    local0[4] = 10
                                    local0[5] = 15
                                    local0[6] = 15
                                    local0[7] = 15
                                    local0[10] = 0
                                    local0[11] = 0
                                    local0[13] = 0
                                    local0[14] = 0
                                    local0[18] = 0
                            end
                        end
                        if (arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109952 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109956 or arg0:GetNpcThinkParamID() == 109957) and local6 <= 100 then
                            local local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 404)
                            if not local11 then
                                local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8029)
                                if not local11 then
                                    local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8034)
                                end
                            end
                            if local11 == true and local3 <= 9 then
                                local0[25] = 100
                            elseif arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 then
                                local0[25] = 100
                            elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                                local0[22] = 100
                            elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                                local0[23] = 100
                            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                                local0[21] = 100
                            elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
                                local0[24] = 100
                            elseif 8 <= local3 then
                                local0[1] = 20
                                local0[2] = 0
                                local0[4] = 5
                                local0[5] = 5
                                local0[6] = 10
                                local0[7] = 0
                                local0[10] = 15 + 5
                                local0[11] = 10 + 5
                                local0[13] = 10
                                local0[14] = 15
                                local0[18] = 0
                            elseif 5 <= local3 then
                                local0[1] = 20
                                local0[2] = 5
                                local0[4] = 5
                                local0[5] = 5
                                local0[6] = 10
                                local0[7] = 5
                                local0[10] = 0
                                local0[11] = 15 + 5
                                local0[13] = 10 + 5
                                local0[14] = 15
                                local0[18] = 0
                            elseif 2 <= local3 then
                                local0[1] = 20
                                local0[2] = 10
                                local0[4] = 10
                                local0[5] = 10
                                local0[6] = 15
                                local0[7] = 5 + 5
                                local0[10] = 0
                                local0[11] = 0
                                local0[13] = 0
                                local0[14] = 20 + 5
                                local0[18] = 0
                            else
                                local0[1] = 25
                                local0[2] = 10
                                local0[4] = 10
                                local0[5] = 15
                                local0[6] = 15
                                local0[7] = 15
                                local0[10] = 0
                                local0[11] = 0
                                local0[13] = 0
                                local0[14] = 0
                                local0[18] = 0
                            end
                        end
                        elseif arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 then
                            local0[25] = 100
                        elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                            local0[22] = 100
                        elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                            local0[23] = 100
                        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                            local0[21] = 100
                        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
                            local0[24] = 100
                        elseif 8 <= local3 then
                            local0[1] = 20
                            local0[2] = 0
                            local0[4] = 5
                            local0[5] = 5
                            local0[6] = 10
                            local0[7] = 0
                            local0[10] = 15 + 5
                            local0[11] = 10 + 5
                            local0[13] = 10
                            local0[14] = 15
                            local0[18] = 0
                        elseif 5 <= local3 then
                            local0[1] = 20
                            local0[2] = 5
                            local0[4] = 5
                            local0[5] = 5
                            local0[6] = 10
                            local0[7] = 5
                            local0[10] = 0
                            local0[11] = 15 + 5
                            local0[13] = 10 + 5
                            local0[14] = 15
                            local0[18] = 0
                        elseif 2 <= local3 then
                            local0[1] = 20
                            local0[2] = 10
                            local0[4] = 10
                            local0[5] = 10
                            local0[6] = 15
                            local0[7] = 5 + 5
                            local0[10] = 0
                            local0[11] = 0
                            local0[13] = 0
                            local0[14] = 20 + 5
                            local0[18] = 0
                        else
                            local0[1] = 25
                            local0[2] = 10
                            local0[4] = 10
                            local0[5] = 15
                            local0[6] = 15
                            local0[7] = 15
                            local0[10] = 0
                            local0[11] = 0
                            local0[13] = 0
                            local0[14] = 0
                            local0[18] = 0
                    end
                end
                if (arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109952 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109956) and local6 <= 100 then
                    local local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8029)
                    if not local11 then
                        local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8034)
                    end
                    if local11 == true then
                        local0[28] = 100
                    else
                        if (arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109952 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109956 or arg0:GetNpcThinkParamID() == 109957) and local6 <= 100 then
                            local local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 404)
                            if not local11 then
                                local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8029)
                                if not local11 then
                                    local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8034)
                                end
                            end
                            if local11 == true and local3 <= 9 then
                                local0[25] = 100
                            elseif arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 then
                                local0[25] = 100
                            elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                                local0[22] = 100
                            elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                                local0[23] = 100
                            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                                local0[21] = 100
                            elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
                                local0[24] = 100
                            elseif 8 <= local3 then
                                local0[1] = 20
                                local0[2] = 0
                                local0[4] = 5
                                local0[5] = 5
                                local0[6] = 10
                                local0[7] = 0
                                local0[10] = 15 + 5
                                local0[11] = 10 + 5
                                local0[13] = 10
                                local0[14] = 15
                                local0[18] = 0
                            elseif 5 <= local3 then
                                local0[1] = 20
                                local0[2] = 5
                                local0[4] = 5
                                local0[5] = 5
                                local0[6] = 10
                                local0[7] = 5
                                local0[10] = 0
                                local0[11] = 15 + 5
                                local0[13] = 10 + 5
                                local0[14] = 15
                                local0[18] = 0
                            elseif 2 <= local3 then
                                local0[1] = 20
                                local0[2] = 10
                                local0[4] = 10
                                local0[5] = 10
                                local0[6] = 15
                                local0[7] = 5 + 5
                                local0[10] = 0
                                local0[11] = 0
                                local0[13] = 0
                                local0[14] = 20 + 5
                                local0[18] = 0
                            else
                                local0[1] = 25
                                local0[2] = 10
                                local0[4] = 10
                                local0[5] = 15
                                local0[6] = 15
                                local0[7] = 15
                                local0[10] = 0
                                local0[11] = 0
                                local0[13] = 0
                                local0[14] = 0
                                local0[18] = 0
                            end
                        end
                        elseif arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 then
                            local0[25] = 100
                        elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                            local0[22] = 100
                        elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                            local0[23] = 100
                        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                            local0[21] = 100
                        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
                            local0[24] = 100
                        elseif 8 <= local3 then
                            local0[1] = 20
                            local0[2] = 0
                            local0[4] = 5
                            local0[5] = 5
                            local0[6] = 10
                            local0[7] = 0
                            local0[10] = 15 + 5
                            local0[11] = 10 + 5
                            local0[13] = 10
                            local0[14] = 15
                            local0[18] = 0
                        elseif 5 <= local3 then
                            local0[1] = 20
                            local0[2] = 5
                            local0[4] = 5
                            local0[5] = 5
                            local0[6] = 10
                            local0[7] = 5
                            local0[10] = 0
                            local0[11] = 15 + 5
                            local0[13] = 10 + 5
                            local0[14] = 15
                            local0[18] = 0
                        elseif 2 <= local3 then
                            local0[1] = 20
                            local0[2] = 10
                            local0[4] = 10
                            local0[5] = 10
                            local0[6] = 15
                            local0[7] = 5 + 5
                            local0[10] = 0
                            local0[11] = 0
                            local0[13] = 0
                            local0[14] = 20 + 5
                            local0[18] = 0
                        else
                            local0[1] = 25
                            local0[2] = 10
                            local0[4] = 10
                            local0[5] = 15
                            local0[6] = 15
                            local0[7] = 15
                            local0[10] = 0
                            local0[11] = 0
                            local0[13] = 0
                            local0[14] = 0
                            local0[18] = 0
                    end
                end
                if (arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109952 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109956 or arg0:GetNpcThinkParamID() == 109957) and local6 <= 100 then
                    local local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 404)
                    if not local11 then
                        local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8029)
                        if not local11 then
                            local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8034)
                        end
                    end
                    if local11 == true and local3 <= 9 then
                        local0[25] = 100
                    elseif arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 then
                        local0[25] = 100
                    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                        local0[22] = 100
                    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                        local0[23] = 100
                    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                        local0[21] = 100
                    elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
                        local0[24] = 100
                    elseif 8 <= local3 then
                        local0[1] = 20
                        local0[2] = 0
                        local0[4] = 5
                        local0[5] = 5
                        local0[6] = 10
                        local0[7] = 0
                        local0[10] = 15 + 5
                        local0[11] = 10 + 5
                        local0[13] = 10
                        local0[14] = 15
                        local0[18] = 0
                    elseif 5 <= local3 then
                        local0[1] = 20
                        local0[2] = 5
                        local0[4] = 5
                        local0[5] = 5
                        local0[6] = 10
                        local0[7] = 5
                        local0[10] = 0
                        local0[11] = 15 + 5
                        local0[13] = 10 + 5
                        local0[14] = 15
                        local0[18] = 0
                    elseif 2 <= local3 then
                        local0[1] = 20
                        local0[2] = 10
                        local0[4] = 10
                        local0[5] = 10
                        local0[6] = 15
                        local0[7] = 5 + 5
                        local0[10] = 0
                        local0[11] = 0
                        local0[13] = 0
                        local0[14] = 20 + 5
                        local0[18] = 0
                    else
                        local0[1] = 25
                        local0[2] = 10
                        local0[4] = 10
                        local0[5] = 15
                        local0[6] = 15
                        local0[7] = 15
                        local0[10] = 0
                        local0[11] = 0
                        local0[13] = 0
                        local0[14] = 0
                        local0[18] = 0
                    end
                end
                elseif arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 then
                    local0[25] = 100
                elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                    local0[22] = 100
                elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                    local0[23] = 100
                elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                    local0[21] = 100
                elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
                    local0[24] = 100
                elseif 8 <= local3 then
                    local0[1] = 20
                    local0[2] = 0
                    local0[4] = 5
                    local0[5] = 5
                    local0[6] = 10
                    local0[7] = 0
                    local0[10] = 15 + 5
                    local0[11] = 10 + 5
                    local0[13] = 10
                    local0[14] = 15
                    local0[18] = 0
                elseif 5 <= local3 then
                    local0[1] = 20
                    local0[2] = 5
                    local0[4] = 5
                    local0[5] = 5
                    local0[6] = 10
                    local0[7] = 5
                    local0[10] = 0
                    local0[11] = 15 + 5
                    local0[13] = 10 + 5
                    local0[14] = 15
                    local0[18] = 0
                elseif 2 <= local3 then
                    local0[1] = 20
                    local0[2] = 10
                    local0[4] = 10
                    local0[5] = 10
                    local0[6] = 15
                    local0[7] = 5 + 5
                    local0[10] = 0
                    local0[11] = 0
                    local0[13] = 0
                    local0[14] = 20 + 5
                    local0[18] = 0
                else
                    local0[1] = 25
                    local0[2] = 10
                    local0[4] = 10
                    local0[5] = 15
                    local0[6] = 15
                    local0[7] = 15
                    local0[10] = 0
                    local0[11] = 0
                    local0[13] = 0
                    local0[14] = 0
                    local0[18] = 0
            end
        end
        elseif (arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109955) and local6 <= 100 then
            local0[29] = 100
        else
            if arg0:GetNpcThinkParamID() == 109957 and local6 <= 100 then
                local local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8029)
                if not local11 then
                    local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8034)
                end
                if local11 == true then
                    local0[30] = 100
                else
                    if (arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109952 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109956) and local6 <= 100 then
                        local local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8029)
                        if not local11 then
                            local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8034)
                        end
                        if local11 == true then
                            local0[28] = 100
                        else
                            if (arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109952 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109956 or arg0:GetNpcThinkParamID() == 109957) and local6 <= 100 then
                                local local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 404)
                                if not local11 then
                                    local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8029)
                                    if not local11 then
                                        local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8034)
                                    end
                                end
                                if local11 == true and local3 <= 9 then
                                    local0[25] = 100
                                elseif arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 then
                                    local0[25] = 100
                                elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                                    local0[22] = 100
                                elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                                    local0[23] = 100
                                elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                                    local0[21] = 100
                                elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
                                    local0[24] = 100
                                elseif 8 <= local3 then
                                    local0[1] = 20
                                    local0[2] = 0
                                    local0[4] = 5
                                    local0[5] = 5
                                    local0[6] = 10
                                    local0[7] = 0
                                    local0[10] = 15 + 5
                                    local0[11] = 10 + 5
                                    local0[13] = 10
                                    local0[14] = 15
                                    local0[18] = 0
                                elseif 5 <= local3 then
                                    local0[1] = 20
                                    local0[2] = 5
                                    local0[4] = 5
                                    local0[5] = 5
                                    local0[6] = 10
                                    local0[7] = 5
                                    local0[10] = 0
                                    local0[11] = 15 + 5
                                    local0[13] = 10 + 5
                                    local0[14] = 15
                                    local0[18] = 0
                                elseif 2 <= local3 then
                                    local0[1] = 20
                                    local0[2] = 10
                                    local0[4] = 10
                                    local0[5] = 10
                                    local0[6] = 15
                                    local0[7] = 5 + 5
                                    local0[10] = 0
                                    local0[11] = 0
                                    local0[13] = 0
                                    local0[14] = 20 + 5
                                    local0[18] = 0
                                else
                                    local0[1] = 25
                                    local0[2] = 10
                                    local0[4] = 10
                                    local0[5] = 15
                                    local0[6] = 15
                                    local0[7] = 15
                                    local0[10] = 0
                                    local0[11] = 0
                                    local0[13] = 0
                                    local0[14] = 0
                                    local0[18] = 0
                                end
                            end
                            elseif arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 then
                                local0[25] = 100
                            elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                                local0[22] = 100
                            elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                                local0[23] = 100
                            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                                local0[21] = 100
                            elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
                                local0[24] = 100
                            elseif 8 <= local3 then
                                local0[1] = 20
                                local0[2] = 0
                                local0[4] = 5
                                local0[5] = 5
                                local0[6] = 10
                                local0[7] = 0
                                local0[10] = 15 + 5
                                local0[11] = 10 + 5
                                local0[13] = 10
                                local0[14] = 15
                                local0[18] = 0
                            elseif 5 <= local3 then
                                local0[1] = 20
                                local0[2] = 5
                                local0[4] = 5
                                local0[5] = 5
                                local0[6] = 10
                                local0[7] = 5
                                local0[10] = 0
                                local0[11] = 15 + 5
                                local0[13] = 10 + 5
                                local0[14] = 15
                                local0[18] = 0
                            elseif 2 <= local3 then
                                local0[1] = 20
                                local0[2] = 10
                                local0[4] = 10
                                local0[5] = 10
                                local0[6] = 15
                                local0[7] = 5 + 5
                                local0[10] = 0
                                local0[11] = 0
                                local0[13] = 0
                                local0[14] = 20 + 5
                                local0[18] = 0
                            else
                                local0[1] = 25
                                local0[2] = 10
                                local0[4] = 10
                                local0[5] = 15
                                local0[6] = 15
                                local0[7] = 15
                                local0[10] = 0
                                local0[11] = 0
                                local0[13] = 0
                                local0[14] = 0
                                local0[18] = 0
                        end
                    end
                    if (arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109952 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109956 or arg0:GetNpcThinkParamID() == 109957) and local6 <= 100 then
                        local local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 404)
                        if not local11 then
                            local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8029)
                            if not local11 then
                                local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8034)
                            end
                        end
                        if local11 == true and local3 <= 9 then
                            local0[25] = 100
                        elseif arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 then
                            local0[25] = 100
                        elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                            local0[22] = 100
                        elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                            local0[23] = 100
                        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                            local0[21] = 100
                        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
                            local0[24] = 100
                        elseif 8 <= local3 then
                            local0[1] = 20
                            local0[2] = 0
                            local0[4] = 5
                            local0[5] = 5
                            local0[6] = 10
                            local0[7] = 0
                            local0[10] = 15 + 5
                            local0[11] = 10 + 5
                            local0[13] = 10
                            local0[14] = 15
                            local0[18] = 0
                        elseif 5 <= local3 then
                            local0[1] = 20
                            local0[2] = 5
                            local0[4] = 5
                            local0[5] = 5
                            local0[6] = 10
                            local0[7] = 5
                            local0[10] = 0
                            local0[11] = 15 + 5
                            local0[13] = 10 + 5
                            local0[14] = 15
                            local0[18] = 0
                        elseif 2 <= local3 then
                            local0[1] = 20
                            local0[2] = 10
                            local0[4] = 10
                            local0[5] = 10
                            local0[6] = 15
                            local0[7] = 5 + 5
                            local0[10] = 0
                            local0[11] = 0
                            local0[13] = 0
                            local0[14] = 20 + 5
                            local0[18] = 0
                        else
                            local0[1] = 25
                            local0[2] = 10
                            local0[4] = 10
                            local0[5] = 15
                            local0[6] = 15
                            local0[7] = 15
                            local0[10] = 0
                            local0[11] = 0
                            local0[13] = 0
                            local0[14] = 0
                            local0[18] = 0
                        end
                    end
                    elseif arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 then
                        local0[25] = 100
                    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                        local0[22] = 100
                    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                        local0[23] = 100
                    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                        local0[21] = 100
                    elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
                        local0[24] = 100
                    elseif 8 <= local3 then
                        local0[1] = 20
                        local0[2] = 0
                        local0[4] = 5
                        local0[5] = 5
                        local0[6] = 10
                        local0[7] = 0
                        local0[10] = 15 + 5
                        local0[11] = 10 + 5
                        local0[13] = 10
                        local0[14] = 15
                        local0[18] = 0
                    elseif 5 <= local3 then
                        local0[1] = 20
                        local0[2] = 5
                        local0[4] = 5
                        local0[5] = 5
                        local0[6] = 10
                        local0[7] = 5
                        local0[10] = 0
                        local0[11] = 15 + 5
                        local0[13] = 10 + 5
                        local0[14] = 15
                        local0[18] = 0
                    elseif 2 <= local3 then
                        local0[1] = 20
                        local0[2] = 10
                        local0[4] = 10
                        local0[5] = 10
                        local0[6] = 15
                        local0[7] = 5 + 5
                        local0[10] = 0
                        local0[11] = 0
                        local0[13] = 0
                        local0[14] = 20 + 5
                        local0[18] = 0
                    else
                        local0[1] = 25
                        local0[2] = 10
                        local0[4] = 10
                        local0[5] = 15
                        local0[6] = 15
                        local0[7] = 15
                        local0[10] = 0
                        local0[11] = 0
                        local0[13] = 0
                        local0[14] = 0
                        local0[18] = 0
                end
            end
            if (arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109952 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109956) and local6 <= 100 then
                local local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8029)
                if not local11 then
                    local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8034)
                end
                if local11 == true then
                    local0[28] = 100
                else
                    if (arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109952 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109956 or arg0:GetNpcThinkParamID() == 109957) and local6 <= 100 then
                        local local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 404)
                        if not local11 then
                            local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8029)
                            if not local11 then
                                local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8034)
                            end
                        end
                        if local11 == true and local3 <= 9 then
                            local0[25] = 100
                        elseif arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 then
                            local0[25] = 100
                        elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                            local0[22] = 100
                        elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                            local0[23] = 100
                        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                            local0[21] = 100
                        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
                            local0[24] = 100
                        elseif 8 <= local3 then
                            local0[1] = 20
                            local0[2] = 0
                            local0[4] = 5
                            local0[5] = 5
                            local0[6] = 10
                            local0[7] = 0
                            local0[10] = 15 + 5
                            local0[11] = 10 + 5
                            local0[13] = 10
                            local0[14] = 15
                            local0[18] = 0
                        elseif 5 <= local3 then
                            local0[1] = 20
                            local0[2] = 5
                            local0[4] = 5
                            local0[5] = 5
                            local0[6] = 10
                            local0[7] = 5
                            local0[10] = 0
                            local0[11] = 15 + 5
                            local0[13] = 10 + 5
                            local0[14] = 15
                            local0[18] = 0
                        elseif 2 <= local3 then
                            local0[1] = 20
                            local0[2] = 10
                            local0[4] = 10
                            local0[5] = 10
                            local0[6] = 15
                            local0[7] = 5 + 5
                            local0[10] = 0
                            local0[11] = 0
                            local0[13] = 0
                            local0[14] = 20 + 5
                            local0[18] = 0
                        else
                            local0[1] = 25
                            local0[2] = 10
                            local0[4] = 10
                            local0[5] = 15
                            local0[6] = 15
                            local0[7] = 15
                            local0[10] = 0
                            local0[11] = 0
                            local0[13] = 0
                            local0[14] = 0
                            local0[18] = 0
                        end
                    end
                    elseif arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 then
                        local0[25] = 100
                    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                        local0[22] = 100
                    elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                        local0[23] = 100
                    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                        local0[21] = 100
                    elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
                        local0[24] = 100
                    elseif 8 <= local3 then
                        local0[1] = 20
                        local0[2] = 0
                        local0[4] = 5
                        local0[5] = 5
                        local0[6] = 10
                        local0[7] = 0
                        local0[10] = 15 + 5
                        local0[11] = 10 + 5
                        local0[13] = 10
                        local0[14] = 15
                        local0[18] = 0
                    elseif 5 <= local3 then
                        local0[1] = 20
                        local0[2] = 5
                        local0[4] = 5
                        local0[5] = 5
                        local0[6] = 10
                        local0[7] = 5
                        local0[10] = 0
                        local0[11] = 15 + 5
                        local0[13] = 10 + 5
                        local0[14] = 15
                        local0[18] = 0
                    elseif 2 <= local3 then
                        local0[1] = 20
                        local0[2] = 10
                        local0[4] = 10
                        local0[5] = 10
                        local0[6] = 15
                        local0[7] = 5 + 5
                        local0[10] = 0
                        local0[11] = 0
                        local0[13] = 0
                        local0[14] = 20 + 5
                        local0[18] = 0
                    else
                        local0[1] = 25
                        local0[2] = 10
                        local0[4] = 10
                        local0[5] = 15
                        local0[6] = 15
                        local0[7] = 15
                        local0[10] = 0
                        local0[11] = 0
                        local0[13] = 0
                        local0[14] = 0
                        local0[18] = 0
                end
            end
            if (arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109952 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109956 or arg0:GetNpcThinkParamID() == 109957) and local6 <= 100 then
                local local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 404)
                if not local11 then
                    local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8029)
                    if not local11 then
                        local11 = arg0:HasSpecialEffectId(TARGET_ENE_0, 8034)
                    end
                end
                if local11 == true and local3 <= 9 then
                    local0[25] = 100
                elseif arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 then
                    local0[25] = 100
                elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                    local0[22] = 100
                elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                    local0[23] = 100
                elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                    local0[21] = 100
                elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
                    local0[24] = 100
                elseif 8 <= local3 then
                    local0[1] = 20
                    local0[2] = 0
                    local0[4] = 5
                    local0[5] = 5
                    local0[6] = 10
                    local0[7] = 0
                    local0[10] = 15 + 5
                    local0[11] = 10 + 5
                    local0[13] = 10
                    local0[14] = 15
                    local0[18] = 0
                elseif 5 <= local3 then
                    local0[1] = 20
                    local0[2] = 5
                    local0[4] = 5
                    local0[5] = 5
                    local0[6] = 10
                    local0[7] = 5
                    local0[10] = 0
                    local0[11] = 15 + 5
                    local0[13] = 10 + 5
                    local0[14] = 15
                    local0[18] = 0
                elseif 2 <= local3 then
                    local0[1] = 20
                    local0[2] = 10
                    local0[4] = 10
                    local0[5] = 10
                    local0[6] = 15
                    local0[7] = 5 + 5
                    local0[10] = 0
                    local0[11] = 0
                    local0[13] = 0
                    local0[14] = 20 + 5
                    local0[18] = 0
                else
                    local0[1] = 25
                    local0[2] = 10
                    local0[4] = 10
                    local0[5] = 15
                    local0[6] = 15
                    local0[7] = 15
                    local0[10] = 0
                    local0[11] = 0
                    local0[13] = 0
                    local0[14] = 0
                    local0[18] = 0
                end
            end
            elseif arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 then
                local0[25] = 100
            elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                local0[22] = 100
            elseif local7 == 1 and arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                local0[23] = 100
            elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                local0[21] = 100
            elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 5691) == true then
                local0[24] = 100
            elseif 8 <= local3 then
                local0[1] = 20
                local0[2] = 0
                local0[4] = 5
                local0[5] = 5
                local0[6] = 10
                local0[7] = 0
                local0[10] = 15 + 5
                local0[11] = 10 + 5
                local0[13] = 10
                local0[14] = 15
                local0[18] = 0
            elseif 5 <= local3 then
                local0[1] = 20
                local0[2] = 5
                local0[4] = 5
                local0[5] = 5
                local0[6] = 10
                local0[7] = 5
                local0[10] = 0
                local0[11] = 15 + 5
                local0[13] = 10 + 5
                local0[14] = 15
                local0[18] = 0
            elseif 2 <= local3 then
                local0[1] = 20
                local0[2] = 10
                local0[4] = 10
                local0[5] = 10
                local0[6] = 15
                local0[7] = 5 + 5
                local0[10] = 0
                local0[11] = 0
                local0[13] = 0
                local0[14] = 20 + 5
                local0[18] = 0
            else
                local0[1] = 25
                local0[2] = 10
                local0[4] = 10
                local0[5] = 15
                local0[6] = 15
                local0[7] = 15
                local0[10] = 0
                local0[11] = 0
                local0[13] = 0
                local0[14] = 0
                local0[18] = 0
    end
    local1[1] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act01)
    local1[2] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act02)
    local1[3] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act03)
    local1[4] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act04)
    local1[5] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act05)
    local1[6] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act06)
    local1[7] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act07)
    local1[10] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act10)
    local1[11] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act11)
    local1[12] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act12)
    local1[13] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act13)
    local1[14] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act14)
    local1[15] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act15)
    local1[16] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act16)
    local1[17] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act17)
    local1[18] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act18)
    local1[21] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act21)
    local1[22] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act22)
    local1[23] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act23)
    local1[24] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act24)
    local1[25] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act25)
    local1[26] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act26)
    local1[27] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act27)
    local1[28] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act28)
    local1[29] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act29)
    local1[30] = REGIST_FUNC(arg0, arg1, Deformed_Beast109020_Act30)
    Common_Battle_Activate(arg0, arg1, local0, local1, REGIST_FUNC(arg0, arg1, Deformed_Beast109020_ActAfter_AdjustSpace), local2)
    return 
end

local0 = 2.3 - local0
function Deformed_Beast109020_Act01(arg0, arg1, arg2)
    local local0 = UPVAL0
    local local1 = 0
    local local2 = UPVAL0
    if arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109955 then
        local1 = 9999
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local0 = local0 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, local1, 0, 3)
    end
    if arg0:GetRandam_Int(1, 100) <= 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, local2, 0, -1)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, local2, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.8 - local0
function Deformed_Beast109020_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109955 then
        local2 = 9999
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.4 - local0
function Deformed_Beast109020_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109955 then
        local2 = 9999
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 4.4 - local0
function Deformed_Beast109020_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109955 then
        local2 = 9999
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 3.2 - local0
function Deformed_Beast109020_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109955 then
        local2 = 9999
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

local0 = 2.1 - local0
function Deformed_Beast109020_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109955 then
        local2 = 9999
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 2.9 - local0
function Deformed_Beast109020_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109955 then
        local2 = 9999
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6.8 - local0
function Deformed_Beast109020_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109955 then
        local2 = 9999
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 6.2 - local0
function Deformed_Beast109020_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109955 then
        local2 = 9999
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 9.1 - local0
function Deformed_Beast109020_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109955 then
        local2 = 9999
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.4 - local0
function Deformed_Beast109020_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109955 then
        local2 = 9999
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5.3 - local0
function Deformed_Beast109020_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109955 then
        local2 = 9999
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, UPVAL0, 0, -1)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

local0 = 5 - local0
function Deformed_Beast109020_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = UPVAL0
    local local2 = 0
    if arg0:GetNpcThinkParamID() == 109950 or arg0:GetNpcThinkParamID() == 109951 or arg0:GetNpcThinkParamID() == 109953 or arg0:GetNpcThinkParamID() == 109954 or arg0:GetNpcThinkParamID() == 109955 then
        local2 = 9999
    end
    if arg0:GetRandam_Int(1, 100) <= 30 then
        local1 = local1 + arg0:GetRandam_Float(0.5, 1.5)
    end
    if local1 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local1, local2, 0, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, UPVAL0, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast109020_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, -1)
    arg0:AddObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5645)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast109020_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, -1)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast109020_Act18(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    if local1 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(0.5, 2), TARGET_ENE_0, 1, arg0:GetRandam_Int(45, 60), true, true, -1)
    elseif local1 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    elseif local1 <= 75 then
        Approach_Act(arg0, arg1, arg0:GetRandam_Float(4, 7), 999, 0, 3)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast109020_Reinforce(arg0, arg1)
    arg0:SetNumber(0, 0)
    return 
end

function Deformed_Beast109020_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = 1
    local local2 = arg0:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_F, local1)
    local local3 = arg0:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, local1)
    local local4 = arg0:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, local1)
    local local5 = arg0:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, local1)
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        if local2 == true and local3 == true and local4 == true and local5 == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        elseif local2 == true and local3 == true and local4 == true and local5 == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif local2 == true and local3 == true and local4 == false and local5 == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        elseif local2 == true and local3 == true and local4 == false and local5 == false then
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 5, 0, 0)
        elseif local2 == true and local3 == false and local4 == true and local5 == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        elseif local2 == true and local3 == false and local4 == true and local5 == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif local2 == true and local3 == false and local4 == false and true == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        elseif local2 == true and local3 == false and local4 == false and local5 == false then
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 5, 0, 0)
        elseif local2 == false and local3 == true and local4 == true and local5 == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        elseif local2 == false and local3 == true and local4 == true and local5 == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif local2 == false and local3 == true and local4 == false and local5 == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        elseif local2 == false and local3 == true and local4 == false and local5 == false then
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 5, 0, 0)
        elseif local2 == false and local3 == false and local4 == true and local5 == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            end
        elseif local2 == false and local3 == false and local4 == true and local5 == false then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif local2 == false and local3 == false and local4 == false and local5 == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 5, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 5, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast109020_Act22(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast109020_Act23(arg0, arg1, arg2)
    Torimaki_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast109020_Act24(arg0, arg1, arg2)
    Kanshu_Act(arg0, arg1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast109020_Act25(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(6.5, 7.5)
    local local3 = arg0:GetRandam_Float(8.5, 10)
    if 10 <= local0 then
        Approach_Act(arg0, arg1, local2, 999, 0, 3)
    elseif 3.5 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, local2, TARGET_ENE_0, false, -1)
    elseif local1 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    elseif local1 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), false, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast109020_Act26(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 0, TARGET_SELF, Walk, Guard)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast109020_Act27(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 0, TARGET_SELF, Walk, Guard)
    arg0:SetNumber(6, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast109020_Act28(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Float(6.5, 7.5)
    local local3 = arg0:GetRandam_Float(8.5, 10)
    if 10 <= local0 then
        Approach_Act(arg0, arg1, local2, 999, 0, 3)
    elseif 4 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, local2, TARGET_ENE_0, false, -1)
    elseif local1 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    elseif local1 <= 90 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), false, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast109020_Act29(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Float(6.5, 7.5)
    local local2 = arg0:GetRandam_Float(8.5, 10)
    local local3 = 999
    local local4 = 0
    if 8 <= local0 then
        Approach_Act(arg0, arg1, local1, local3, local4, 3)
    elseif 3.5 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, local1, TARGET_ENE_0, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 711, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 95 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), false, true, -1)
    else
        Approach_Act(arg0, arg1, local1, local3, local4, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast109020_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Float(2, 2.5)
    local local2 = arg0:GetRandam_Float(1, 2)
    local local3 = 999
    local local4 = 0
    if 2 <= local0 then
        Approach_Act(arg0, arg1, local1, local3, local4, 3)
    elseif 1 <= local0 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, local1, TARGET_ENE_0, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    if arg0:GetRandam_Int(1, 100) <= 95 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 3.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), false, true, -1)
    else
        Approach_Act(arg0, arg1, local1, local3, local4, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deformed_Beast109020_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_If, 10, 0)
    return 
end

function Deformed_Beast109020_ActAfter_RealTime(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(0, 1)
    local local3 = arg0:GetRandam_Float(2, 3.5)
    local local4 = arg0:GetRandam_Float(2, 3)
    local local5 = 0
    if arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
        if local0 <= 5 then
            if local1 <= 30 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
                if arg0:GetRandam_Int(1, 100) <= 50 then
                    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(60, 90), true, true, -1)
                end
            end
        elseif local0 <= 10 and local1 <= 30 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, 0, arg0:GetRandam_Int(60, 90), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if local0 <= 4 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    elseif arg0:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if local0 <= 6 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local3, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local4, TARGET_ENE_0, local2, arg0:GetRandam_Int(45, 60), true, true, -1)
        end
    end
    return 
end

function Deformed_Beast109020Battle_Update(arg0, arg1)
    return GOAL_RESULT_Continue
end

function Deformed_Beast109020Battle_Terminate(arg0, arg1)
    return 
end

function Deformed_Beast109020Battle_Interupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg0:IsInterupt(INTERUPT_FindEnemy) then
        arg1:ClearSubGoal()
        arg0:Replaning()
        return true
    end
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:GetDist(TARGET_ENE_0)
    local local4 = 3
    local local5 = 15
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 8019) then
        local4 = local4 + 5
        local5 = local5 + 85
    end
    if FindAttack_Step(arg0, arg1, local4, local5, 40, 30, 30) then
        return true
    elseif Damaged_Step(arg0, arg1, 3, 15, 40, 30, 30, 4) then
        return true
    end
    local local6 = arg0:GetRandam_Int(1, 100)
    local local7 = arg0:GetRandam_Int(1, 100)
    local local8 = arg0:GetDist(TARGET_ENE_0)
    local local9 = Shoot_2dist(arg0, arg1, 5, 10, 20, 40)
    if local9 == 1 then
        if local7 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    elseif local9 == 2 then
        if local7 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
        return true
    end
    if RebByOpGuard_Step(arg0, arg1, 20, 40, 30, 30, 4) then
        return true
    elseif arg0:IsInterupt(INTERUPT_FLAG_ActivateSpecialEffect) then
        if arg0:IsActivateSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5645) then
            arg1:ClearSubGoal()
            arg0:SetNumber(0, 1)
            arg0:DeleteObserveSpecialEffect(TARGET_SELF, AI_SPEFFOBSERVE_SpEffId, 5645)
            arg0:Replaning()
        end
        return true
    else
        return false
    end
end

return 
