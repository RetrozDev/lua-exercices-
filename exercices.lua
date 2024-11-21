-- Codes ANSI pour les couleurs
local colors = {
    reset = "\27[0m",
    red = "\27[31m",
    green = "\27[32m",
    yellow = "\27[33m",
    blue = "\27[34m",
    magenta = "\27[35m",
    cyan = "\27[36m",
    white = "\27[37m"
}

-- Afficher "Bonjour, Lua!" dans la console.
-- Code en dessous:
print(colors.blue .. "Exo 1:" .. colors.reset .. " \n" .. colors.green .. "Bonjour, Lua!" .. colors.reset)

-- Addition simple
-- Code en dessous:
function sumNumber(n1, n2) return n1 + n2 end
print(colors.blue .. "Exo 2:" .. colors.reset .. " \n" .. colors.green .. "Le resultat est de " .. colors.yellow .. sumNumber(10, 3) .. colors.reset)

-- Demander un nombre à l'utilisateur et indiquer s'il est pair ou impair.
-- Code en dessous:
function isNumberEven()
    print(colors.blue .. "Exo 3:" .. colors.reset .. " \n" .. colors.yellow .. "Merci de choisir un nombre :" .. colors.reset)
    local choosenNumber = tonumber(io.read())
    if choosenNumber ~= nil then
        if choosenNumber % 2 == 0 then
            print(colors.green .. choosenNumber .. " est un nombre pair." .. colors.reset)
        else
            print(colors.red .. choosenNumber .. " est un nombre impair." .. colors.reset)
        end
    else
        print(colors.red .. "Erreur : veuillez entrer un nombre valide." .. colors.reset)
    end
end
isNumberEven()

-- Afficher les nombres de 1 à 10 en utilisant une boucle.
-- Code en dessous:
function countTo10()
    print(colors.blue .. "Exo 4:" .. colors.reset)
    local number = 1
    while number <= 10 do
        print(colors.green .. number .. colors.reset)
        number = number + 1 
    end
end
countTo10()

-- Creer un tableau de nombres, calculer et afficher leur somme.
-- Code en dessous:
function sumArray(numbers)
    local sum = 0
    for _, value in ipairs(numbers) do
        sum = sum + value
    end
    print(colors.blue .. "Exo 5:" .. colors.reset .. " \n" .. colors.green .. "La somme du tableau est de " .. colors.yellow .. sum .. colors.reset)
end
sumArray({5, 10, 15, 20, 25}) -- 75

-- ecrire une fonction qui prend un tableau de nombres et retourne le plus grand.
-- Code en dessous:
function findBiggestNumber(numbers)
    local max = numbers[1] 
    for i = 2, #numbers do
        if numbers[i] > max then
            max = numbers[i]
        end
    end
    return max
end
print(colors.blue .. "Exo 6:" .. colors.reset .. " \n" .. colors.green .. "Le plus grand nombre est : " .. colors.yellow .. findBiggestNumber({5, 10, 35, 20, 2}) .. colors.reset)

-- Demander un nombre à l'utilisateur et calculer sa factorielle.
-- Code en dessous:
function factorial()
    print(colors.blue .. "Exo 7:" .. colors.reset .. " \n" .. colors.yellow .. "Merci de choisir un nombre pour votre factorielle :" .. colors.reset)
    local choosenNumber = tonumber(io.read())
    if choosenNumber == nil or choosenNumber < 0 then
        print(colors.red .. "Erreur : veuillez entrer un nombre entier positif valide." .. colors.reset)
        return
    end
    if choosenNumber == 0 then
        print(colors.green .. "La factorielle de 0 est 1" .. colors.reset)
        return
    end
    local result = 1
    for i = 1, choosenNumber do
        result = result * i
    end
    print(colors.green .. "La factorielle de " .. choosenNumber .. " est " .. result .. colors.reset)
end
factorial()

-- Creer un mini-jeu où l'utilisateur doit deviner un nombre choisi aleatoirement par le programme.
-- Code en dessous:
function guessTheNumber()
    local numberToFind = math.random(1, 10)
    print(colors.blue .. "Exo 8:" .. colors.reset .. " \n" .. colors.yellow .. "Devine le nombre entre 1 et 10 !" .. colors.reset)
    while true do
        io.write(colors.yellow .. "Votre essai : " .. colors.reset)
        local guessNumber = tonumber(io.read())
        if not guessNumber then
            print(colors.red .. "Erreur : veuillez entrer un nombre valide." .. colors.reset)
        elseif guessNumber > numberToFind then
            print(colors.magenta .. "Le nombre est plus petit !" .. colors.reset)
        elseif guessNumber < numberToFind then
            print(colors.cyan .. "Le nombre est plus grand !" .. colors.reset)
        else
            print(colors.green .. "Bravo ! Vous avez trouve le nombre : " .. numberToFind .. colors.reset)
            break 
        end
    end
end
guessTheNumber()

-- Implementer un algorithme de tri (par exemple, tri à bulles) pour un tableau donne.
-- Code en dessous:
function bubbleSort(arr)
    local n = #arr
    for i = 1, n - 1 do
        for j = 1, n - i do
            if arr[j] > arr[j + 1] then
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
            end
        end
    end
    print(colors.blue .. "Exo 9:" .. colors.reset .. " \n" .. colors.green .. "Tableau trie : " .. colors.yellow .. table.concat(arr, ", ") .. colors.reset)    
end
bubbleSort({5, 3, 8, 6, 2, 7, 4, 1})

-- Creer un petit système d'inventaire où l'utilisateur peut ajouter, supprimer ou afficher des objets via des commandes.
-- Code en dessous:
local inventory = {}

function addItem(item)
    table.insert(inventory, item)
    print(colors.green .. "L'objet '" .. item .. "' a ete ajoute à l'inventaire." .. colors.reset)
end

function removeItem(item)
    for i, v in ipairs(inventory) do
        if v == item then
            table.remove(inventory, i)
            print(colors.green .. "L'objet '" .. item .. "' a ete supprime de l'inventaire." .. colors.reset)
            return
        end
    end
    print(colors.red .. "L'objet '" .. item .. "' n'est pas dans l'inventaire." .. colors.reset)
end

function displayInventory()
    if #inventory == 0 then
        print(colors.red .. "L'inventaire est vide." .. colors.reset)
    else
        print(colors.green .. "Contenu de l'inventaire :" .. colors.reset)
        for i, v in ipairs(inventory) do
            print(colors.yellow .. i .. ". " .. v .. colors.reset)
        end
    end
end

function inventorySystem()
    print(colors.blue .. "Exo 10:" .. colors.reset .. " \n" .. colors.green .. "Bienvenue dans le système d'inventaire !" .. colors.reset)
    while true do
        print("\n" .. colors.yellow .. "Choisissez une commande :" .. colors.reset)
        print("1. Ajouter un objet")
        print("2. Supprimer un objet")
        print("3. Afficher l'inventaire")
        print("4. Quitter")
        io.write(colors.yellow .. "Votre choix : " .. colors.reset)
        local choice = tonumber(io.read())
        if choice == 1 then
            io.write(colors.yellow .. "Entrez le nom de l'objet à ajouter : " .. colors.reset)
            local item = io.read()
            addItem(item)
        elseif choice == 2 then
            io.write(colors.yellow .. "Entrez le nom de l'objet à supprimer : " .. colors.reset)
            local item = io.read()
            removeItem(item)
        elseif choice == 3 then
            displayInventory()
        elseif choice == 4 then
            print(colors.green .. "Au revoir !" .. colors.reset)
            break
        else
            print(colors.red .. "Commande invalide. Veuillez reessayer." .. colors.reset)
        end
    end
end
inventorySystem()
