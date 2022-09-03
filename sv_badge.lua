local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('badge:open')
AddEventHandler('badge:open', function(ID, targetID, type)
	local Player = QBCore.Functions.GetPlayer(ID)

	local data = {
		dob = "LSPD : "..Player.PlayerData.job.grade.name;
		mat = "Matricule : "..Player.PlayerData.metadata.callsign; --Change "Matricule :" to your language
		name = Player.PlayerData.charinfo.firstname.." "..Player.PlayerData.charinfo.lastname;
		birthdate = "DDN : "..Player.PlayerData.charinfo.birthdate; --Change DDN "Date de naissance" to your language (for exemple DOB "Date of birthdate")
	}

	TriggerClientEvent('badge:open', targetID, data)
	TriggerClientEvent( 'badge:shot', targetID, source )
end)

QBCore.Functions.CreateUseableItem('specialbadge', function(source, item)
    TriggerClientEvent('badge:openPD', source, true)
end)
