-- Codes ANSI pour les couleurs : utilisés pour styliser la sortie texte dans la console.
local colors = {
    reset = "\27[0m",      -- Réinitialise la couleur à la valeur par défaut.
    red = "\27[31m",       -- Rouge.
    green = "\27[32m",     -- Vert.
    yellow = "\27[33m",    -- Jaune.
    blue = "\27[34m",      -- Bleu.
    magenta = "\27[35m",   -- Magenta (rose/violet).
    cyan = "\27[36m",      -- Cyan (bleu clair).
    white = "\27[37m"      -- Blanc.
}

-- Exercice 1 : Afficher "Bonjour, Lua!" dans la console avec des couleurs.
print(colors.blue .. "Exo 1:" .. colors.reset .. " \n" .. colors.green .. "Bonjour, Lua!" .. colors.reset)

-- Exercice 2 : Fonction pour additionner deux nombres.
function sumNumber(n1, n2) 
    return n1 + n2  -- Retourne la somme des deux nombres.
end
print(colors.blue .. "Exo 2:" .. colors.reset .. " \n" .. colors.green .. "Le resultat est de " .. colors.yellow .. sumNumber(10, 3) .. colors.reset)

-- Exercice 3 : Vérifier si un nombre saisi par l'utilisateur est pair ou impair.
function isNumberEven()
    print(colors.blue .. "Exo 3:" .. colors.reset .. " \n" .. colors.yellow .. "Merci de choisir un nombre :" .. colors.reset)
    local choosenNumber = tonumber(io.read())  -- Convertit la saisie en nombre.
    if choosenNumber ~= nil then
        if choosenNumber % 2 == 0 then  -- Vérifie si le reste de la division par 2 est 0.
            print(colors.green .. choosenNumber .. " est un nombre pair." .. colors.reset)
        else
            print(colors.red .. choosenNumber .. " est un nombre impair." .. colors.reset)
        end
    else
        print(colors.red .. "Erreur : veuillez entrer un nombre valide." .. colors.reset)
    end
end
isNumberEven()

-- Exercice 4 : Afficher les nombres de 1 à 10 avec une boucle.
function countTo10()
    print(colors.blue .. "Exo 4:" .. colors.reset)
    local number = 1
    while number <= 10 do
        print(colors.green .. number .. colors.reset)  -- Affiche chaque nombre.
        number = number + 1  -- Incrémente le compteur.
    end
end
countTo10()

-- Exercice 5 : Calculer et afficher la somme des éléments d'un tableau.
function sumArray(numbers)
    local sum = 0
    for _, value in ipairs(numbers) do  -- Parcourt chaque élément du tableau.
        sum = sum + value  -- Ajoute la valeur à la somme.
    end
    print(colors.blue .. "Exo 5:" .. colors.reset .. " \n" .. colors.green .. "La somme du tableau est de " .. colors.yellow .. sum .. colors.reset)
end
sumArray({5, 10, 15, 20, 25})  -- Tableau d'exemple.

-- Exercice 6 : Trouver le plus grand nombre dans un tableau.
function findBiggestNumber(numbers)
    local max = numbers[1]  -- Suppose que le premier élément est le plus grand.
    for i = 2, #numbers do  -- Parcourt le tableau à partir du deuxième élément.
        if numbers[i] > max then
            max = numbers[i]  -- Met à jour le maximum si une plus grande valeur est trouvée.
        end
    end
    return max  -- Retourne la valeur maximale.
end
print(colors.blue .. "Exo 6:" .. colors.reset .. " \n" .. colors.green .. "Le plus grand nombre est : " .. colors.yellow .. findBiggestNumber({5, 10, 35, 20, 2}) .. colors.reset)

-- Exercice 7 : Calculer la factorielle d'un nombre donné par l'utilisateur.
function factorial()
    print(colors.blue .. "Exo 7:" .. colors.reset .. " \n" .. colors.yellow .. "Merci de choisir un nombre pour votre factorielle :" .. colors.reset)
    local choosenNumber = tonumber(io.read())  -- Convertit la saisie en nombre.
    if choosenNumber == nil or choosenNumber < 0 then
        print(colors.red .. "Erreur : veuillez entrer un nombre entier positif valide." .. colors.reset)
        return
    end
    if choosenNumber == 0 then
        print(colors.green .. "La factorielle de 0 est 1" .. colors.reset)  -- Cas particulier.
        return
    end
    local result = 1
    for i = 1, choosenNumber do
        result = result * i  -- Multiplie successivement pour calculer la factorielle.
    end
    print(colors.green .. "La factorielle de " .. choosenNumber .. " est " .. result .. colors.reset)
end
factorial()

-- Exercice 8 : Jeu de devinettes, l'utilisateur devine un nombre aléatoire.
function guessTheNumber()
    local numberToFind = math.random(1, 10)  -- Génère un nombre aléatoire entre 1 et 10.
    print(colors.blue .. "Exo 8:" .. colors.reset .. " \n" .. colors.yellow .. "Devine le nombre entre 1 et 10 !" .. colors.reset)
    while true do
        io.write(colors.yellow .. "Votre essai : " .. colors.reset)
        local guessNumber = tonumber(io.read())  -- Convertit la saisie en nombre.
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

-- Exercice 9 : Tri d'un tableau avec l'algorithme de tri à bulles.
function bubbleSort(arr)
    local n = #arr
    for i = 1, n - 1 do  -- Boucle externe pour chaque passage.
        for j = 1, n - i do  -- Boucle interne pour comparer les éléments.
            if arr[j] > arr[j + 1] then
                arr[j], arr[j + 1] = arr[j + 1], arr[j]  -- Échange des éléments si nécessaire.
            end
        end
    end
    print(colors.blue .. "Exo 9:" .. colors.reset .. " \n" .. colors.green .. "Tableau trie : " .. colors.yellow .. table.concat(arr, ", ") .. colors.reset)
end
bubbleSort({5, 3, 8, 6, 2, 7, 4, 1})

-- Exercice 10 : Système d'inventaire avec des commandes pour gérer les objets.
local inventory = {}  -- Tableau pour stocker les objets.

function addItem(item)
    table.insert(inventory, item)  -- Ajoute un objet à l'inventaire.
    print(colors.green .. "L'objet '" .. item .. "' a ete ajoute à l'inventaire." .. colors.reset)
end

function removeItem(item)
    for i, v in ipairs(inventory) do
        if v == item then
            table.remove(inventory, i)  -- Supprime l'objet correspondant.
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
        local choice = tonumber(io.read())  -- Convertit la saisie en nombre.
        if choice == 1 then
            io.write(colors.yellow .. "Entrez le nom de l'objet à ajouter : " .. colors.reset)
            local item = io.read()
            addItem(item)
        elseif choice == 2 then
            io.write(colors.yellow .. "Entrez le nom de l'objet à supprimer : " .. colors.reset)
            local item = io.read()
            removeItem(item)  -- Appelle la fonction pour supprimer l'objet de l'inventaire.
        elseif choice == 3 then
            displayInventory()  -- Affiche le contenu de l'inventaire.
        elseif choice == 4 then
            print(colors.green .. "Au revoir !" .. colors.reset)  -- Affiche un message de sortie.
            break  -- Sort de la boucle et termine le programme.
        else
            print(colors.red .. "Commande invalide. Veuillez reessayer." .. colors.reset)  -- Si la commande est invalide, demande à l'utilisateur de réessayer.
        end
    end
end
inventorySystem()  -- Appelle la fonction pour lancer le système d'inventaire.

