-- Afficher "Bonjour, Lua!" dans la console.
-- Code en dessous:
print("Exo 1: \nBonjour, Lua!")

-- Addition simple
-- Code en dessous:
function sumNumber(n1, n2) return n1 + n2 end

print("Exo 2: \nLe résultat est de " .. sumNumber(10, 3)) --13

-- Demander un nombre à l'utilisateur et indiquer s'il est pair ou impair.
-- Code en dessous:
function isNumberEven()
    print("Merci de choisir un nombre :")
    
    local choosenNumber = tonumber(io.read())
    
    if choosenNumber ~= nil then
        if choosenNumber % 2 == 0 then
            print("Exo 3: \n"..choosenNumber .. " est un nombre pair.")
        else
            print("Exo 3: \n"..choosenNumber .. " est un nombre impair.")
        end
    else
        print("Erreur : veuillez entrer un nombre valide.")
    end
end


isNumberEven()

-- Afficher les nombres de 1 à 10 en utilisant une boucle.
-- Code en dessous:
function countTo10()
    print("Exo 4: \n")
    local number = 1
    while number <= 10 do
        print(number)
        number = number + 1 
    end
end


countTo10()

-- Créer un tableau de nombres, calculer et afficher leur somme.
-- Code en dessous:
function sumArray(numbers)
    local sum = 0
    for _, value in ipairs(numbers) do
        sum = sum + value
    end
    print("Exo 5: \n la somme du tableau est de " .. sum)
end
sumArray({5, 10, 15, 20, 25}) -- 75

-- Écrire une fonction qui prend un tableau de nombres et retourne le plus grand.
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

print("Exo 6: \nLe plus grand nombre est : " .. findBiggestNumber({5, 10, 35, 20, 2}))

-- Demander un nombre à l'utilisateur et calculer sa factorielle.
-- Code en dessous:
function factorial()
    print("Merci de choisir un nombre pour votre factorielle :")
    local choosenNumber = tonumber(io.read())

    if choosenNumber == nil or choosenNumber < 0 then
        print("Erreur : veuillez entrer un nombre entier positif valide.")
        return
    end

    if choosenNumber == 0 then
        print("Exo 7: \nLa factorielle de 0 est 1")
        return
    end

    local result = 1
    for i = 1, choosenNumber do
        result = result * i
    end

    print("Exo 7: \nLa factorielle de " .. choosenNumber .. " est " .. result)
end

factorial()


-- Créer un mini-jeu où l'utilisateur doit deviner un nombre choisi aléatoirement par le programme.
-- Code en dessous:
function guessTheNumber()
    local numberToFind = math.random(1, 10)
    print("Exo 8: \nDevine le nombre entre 1 et 10 !")
    
    while true do
        io.write("Votre essai : ")
        local guessNumber = tonumber(io.read())

        if not guessNumber then
            print("Erreur : veuillez entrer un nombre valide.")
        elseif guessNumber > numberToFind then
            print("Le nombre est plus petit !")
        elseif guessNumber < numberToFind then
            print("Le nombre est plus grand !")
        else
            print("Bravo ! Vous avez trouvé le nombre : " .. numberToFind)
            break 
        end
    end
end

guessTheNumber()



-- Implémenter un algorithme de tri (par exemple, tri à bulles) pour un tableau donné.
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
    print("Exo 9: \nTableau trié : " .. table.concat(arr, ", "))    
end


bubbleSort({5, 3, 8, 6, 2, 7, 4, 1})


-- Créer un petit système d'inventaire où l'utilisateur peut ajouter, supprimer ou afficher des objets via des commandes.
-- Code en dessous:
local inventory = {}

function addItem(item)
    table.insert(inventory, item)
    print("L'objet '" .. item .. "' a été ajouté à l'inventaire.")
end

function removeItem(item)
    for i, v in ipairs(inventory) do
        if v == item then
            table.remove(inventory, i)
            print("L'objet '" .. item .. "' a été supprimé de l'inventaire.")
            return
        end
    end
    print("L'objet '" .. item .. "' n'est pas dans l'inventaire.")
end

function displayInventory()
    if #inventory == 0 then
        print("L'inventaire est vide.")
    else
        print("Contenu de l'inventaire :")
        for i, v in ipairs(inventory) do
            print(i .. ". " .. v)
        end
    end
end

function inventorySystem()
    print("Bienvenue dans le système d'inventaire !")
    while true do
        print("\nChoisissez une commande :")
        print("1. Ajouter un objet")
        print("2. Supprimer un objet")
        print("3. Afficher l'inventaire")
        print("4. Quitter")
        
        io.write("Votre choix : ")
        local choice = tonumber(io.read())
        
        if choice == 1 then
            io.write("Entrez le nom de l'objet à ajouter : ")
            local item = io.read()
            addItem(item)
        elseif choice == 2 then
            io.write("Entrez le nom de l'objet à supprimer : ")
            local item = io.read()
            removeItem(item)
        elseif choice == 3 then
            displayInventory()
        elseif choice == 4 then
            print("Au revoir !")
            break
        else
            print("Commande invalide. Veuillez réessayer.")
        end
    end
end

inventorySystem()

