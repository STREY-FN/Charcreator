RegisterNetEvent('SetIdentity')
AddEventHandler('SetIdentity', function(NDF, Prenom, DDN, Sexe, Taille, LDN)
    local xPlayer = ESX.GetPlayerFromId(source)
    
    MySQL.Async.execute('UPDATE users SET firstname = @firstname, lastname = @lastname, dateofbirth = @dateofbirth, sex = @sex, height = @height, ldn = @ldn WHERE identifier = @identifier', {
        ['@identifier'] = xPlayer.identifier,
        ['@lastname'] = NDF,
        ['@firstname'] = Prenom,
        ['@dateofbirth'] = DDN,
        ['@sex'] = Sexe,
        ['@height'] = Taille,
        ['@ldn'] = LDN
    })

    if xPlayer.canCarryItem('bread', 3) then
        xPlayer.addInventoryItem('bread', 3)
    end

    if xPlayer.canCarryItem('water', 3) then
        xPlayer.addInventoryItem('water', 3)
    end

    if xPlayer.addAccountMoney('money', 1500) then
        xPlayer.addAccountMoney('money', 1500)
    end
end)