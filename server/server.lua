---------- Pulling Essentials -------------
local VORPcore = {} --Pulls vorp core
TriggerEvent("getCore", function(core)
  VORPcore = core
end)
local VORPInv = {}
VORPInv = exports.vorp_inventory:vorp_inventoryApi()
local BccUtils = exports['bcc-utils'].initiate()

local checkCount = 0

-------- Job Alert Setup -----
local director_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'lawDirectorRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.LawDirectorAlert.Job, -- Job the alert is for
    jobgrade = {8,9}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local lemMar_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'lemMarRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.LawLemMarAlert.Job, -- Job the alert is for
    jobgrade = {7}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local nhawMar_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'nhawMarRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.LawNhawMarAlert.Job, -- Job the alert is for
    jobgrade = {7}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local nhaeMar_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'nhaeMarRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.LawNhaeMarAlert.Job, -- Job the alert is for
    jobgrade = {7}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local westeMar_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'westeMarRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.LawWesteMarAlert.Job, -- Job the alert is for
    jobgrade = {7}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local naMar_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'naMarRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.LawNaMarAlert.Job, -- Job the alert is for
    jobgrade = {7}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local std_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'lawSTDRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.LawStdAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local rho_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'lawRHORob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.LawRhoAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local anne_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'lawANNERob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.LawAnneAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local val_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'lawVALRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.LawValAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local str_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'lawSTRRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.LawStrAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local blw_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'lawBLWRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.LawBlwAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local arma_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'lawARMARob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.LawArmaAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local tum_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'lawTUMRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.LawTumAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local native_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'lawNATIVERob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.LawNativeAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
--[[
local off_director_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'off_lawDirectorRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.offLawDirectorAlert.Job, -- Job the alert is for
    jobgrade = {8,9}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local off_lemMar_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'off_lemMarRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.offLawLemMarAlert.Job, -- Job the alert is for
    jobgrade = {7}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local off_nhawMar_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'off_nhawMarRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.offLawNhawMarAlert.Job, -- Job the alert is for
    jobgrade = {7}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local off_nhaeMar_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'off_nhaeMarRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.offLawNhaeMarAlert.Job, -- Job the alert is for
    jobgrade = {7}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local off_westeMar_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'off_westeMarRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.offLawWesteMarAlert.Job, -- Job the alert is for
    jobgrade = {7}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local off_naMar_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'off_naMarRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.offLawNaMarAlert.Job, -- Job the alert is for
    jobgrade = {7}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local off_std_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'off_lawSTDRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.offLawStdAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local off_rho_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'off_lawRHORob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.offLawRhoAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local off_anne_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'off_lawANNERob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.offLawAnneAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local off_val_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'off_lawVALRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.offLawValAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local off_str_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'off_lawSTRRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.offLawStrAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local off_blw_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'off_lawBLWRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.offLawBlwAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local off_arma_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'off_lawARMARob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.offLawArmaAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local off_tum_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'off_lawTUMRob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.offLawTumAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
local off_native_alert = exports['bcc-job-alerts']:RegisterAlert({
    name = 'off_lawNATIVERob', --The name of the alert
    command = nil, -- the command, this is what players will use with /
    message = Config.PoliceAlert.AlertMssg, -- Message to show to theh police
    messageTime = Config.PoliceAlert.ShowMssgTime, -- Time the message will stay on screen (miliseconds)
    job = Config.offLawNativeAlert.Job, -- Job the alert is for
    jobgrade = {0,3,5,6}, -- What grades the alert will effect
    icon = "star", -- The icon the alert will use
    hash = -1282792512, -- The radius blip
    radius = 40.0, -- The size of the radius blip
    blipTime = Config.PoliceAlert.BlipTime, -- How long the blip will stay for the job (miliseconds)
    blipDelay = 5000, -- Delay time before the job is notified (miliseconds)
    originText = "Law Enforcement has been notified", -- Text displayed to the user who enacted the command
    originTime = 0 --The time the origintext displays (miliseconds)
})
]]


------------- Cooldown Handler thanks to Byte ----------------
local cooldowns = {}
RegisterServerEvent('bcc-robbery:ServerCooldownCheck', function(shopid, v)
    local _source = source
    if cooldowns[shopid] then --Check if the robery has a cooldown registered yet.
        local seconds = Config.RobberyCooldown
        if os.difftime(os.time(), cooldowns[shopid]) >= seconds then -- Checks the current time difference from the stored enacted time, then checks if that difference us past the seconds threshold
            cooldowns[shopid] = os.time() --Update the cooldown with the new enacted time.
            TriggerClientEvent("bcc-robbery:RobberyHandler", _source, v) --Robbery is not on cooldown
            director_alert:SendAlert(_source)
            lemMar_alert:SendAlert(_source)
            nhawMar_alert:SendAlert(_source)
            nhaeMar_alert:SendAlert(_source)
            nhaeMar_alert:SendAlert(_source)
            naMar_alert:SendAlert(_source)
            std_alert:SendAlert(_source)
            rho_alert:SendAlert(_source)
            anne_alert:SendAlert(_source)
            val_alert:SendAlert(_source)
            str_alert:SendAlert(_source)
            blw_alert:SendAlert(_source)
            arma_alert:SendAlert(_source)
            tum_alert:SendAlert(_source)
            native_alert:SendAlert(_source)
            checkCount = 0
        else --robbery is on cooldown
            VORPcore.NotifyRightTip(_source, Config.Language.OnCooldown, 4000)
        end
    else
        cooldowns[shopid] = os.time() --Store the current time
        TriggerClientEvent("bcc-robbery:RobberyHandler", _source, v) --Robbery is not on cooldown
        director_alert:SendAlert(_source)
        lemMar_alert:SendAlert(_source)
        nhawMar_alert:SendAlert(_source)
        nhaeMar_alert:SendAlert(_source)
        nhaeMar_alert:SendAlert(_source)
        naMar_alert:SendAlert(_source)
        std_alert:SendAlert(_source)
        rho_alert:SendAlert(_source)
        anne_alert:SendAlert(_source)
        val_alert:SendAlert(_source)
        str_alert:SendAlert(_source)
        blw_alert:SendAlert(_source)
        arma_alert:SendAlert(_source)
        tum_alert:SendAlert(_source)
        native_alert:SendAlert(_source)
        checkCount = 0
    end
end)

--------- Event to handle pay outs ----------
RegisterServerEvent('bcc-robbery:CashPayout', function(amount)
    local Character = VORPcore.getUser(source).getUsedCharacter --checks the char used
    Character.addCurrency(0, amount)
end)

RegisterServerEvent('bcc-robbery:ItemsPayout', function(table)
    for k, v in pairs(table.ItemRewards) do
        VORPInv.addItem(source, v.name, v.count)
    end
end)

-------- Job Restrictor Check -------
RegisterServerEvent('bcc-robbery:JobCheck', function()
    local Character = VORPcore.getUser(source).getUsedCharacter --checks the char used
    local job = false
    for k, v in pairs(Config.NoRobberyJobs) do
        if v.jobname == Character.job then
            job = true
        end
    end
    if not job then
        TriggerClientEvent('bcc-robbery:RobberyEnabler', source)
    else
        VORPcore.NotifyRightTip(source, Config.Language.WrongJob, 4000)
    end
end)

-------- Lockpick Check -------
RegisterServerEvent('bcc-robbery:PickCheck', function()
    --local Character = VORPcore.getUser(source).getUsedCharacter --checks the char used
    --local _source = source
    --local hasPick = false
    
    local pickName = 'lockpick'
    local pickCount = VORPInv.getItemCount(source, pickName)
    --print(pickCount)
    if pickCount > 0 and checkCount == 0 then
        --hasPick = true
        --print('success')
        TriggerClientEvent('bcc-robbery:yesPick', source)
        --return hasPick
        checkCount = 1
    else
        if checkCount == 0 then
            VORPcore.NotifyRightTip(source, 'You do not have a lockpick', 4000)
            TriggerClientEvent('bcc-robbery:noPick', source)
            checkCount = 1
        end
    end
end)

RegisterServerEvent('bcc-robbery:removePick', function()
    local pickName = 'lockpick'
    VORPInv.subItem(source,pickName, 1)
end)

BccUtils.Versioner.checkRelease(GetCurrentResourceName(), 'https://github.com/BryceCanyonCounty/bcc-robbery')
