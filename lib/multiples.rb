def sum_of_3_or_5_multiples(final_number)

    final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro

  # Ici, lance une boucle qui va de zéro au chiffre "final_number" EXCLU (car on est sur du strictement inférieur)
  # cette boucle indente à chaque tour une variable (par exemple "current_number") qui vaudra 0 puis 1 puis 2 ... etc.
    if final_number.to_i
        while current_number <1000 do
            if is_multiple_of_3_or_5?(current_number)
                # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".
                final_sum += current_number
            end
        end
    end

    if final_sum != 0
        return final_sum #on retourne la variable qui contient la somme du tout
    else 
        return "Il faut saisir un entier"
    end    
end

def is_multiple_of_3_or_5?(current_number)
    if current_number%3 == 0 || current_number%5 == 0 
        true
    else
        false
    end
end