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


-- Demander un nombre à l'utilisateur et calculer sa factorielle.
-- Code en dessous:

-- Créer un mini-jeu où l'utilisateur doit deviner un nombre choisi aléatoirement par le programme.
-- Code en dessous:

-- Implémenter un algorithme de tri (par exemple, tri à bulles) pour un tableau donné.
-- Code en dessous:

-- Créer un petit système d'inventaire où l'utilisateur peut ajouter, supprimer ou afficher des objets via des commandes.
-- Code en dessous:

