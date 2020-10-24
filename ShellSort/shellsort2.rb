# frozen_string_literal: true

# Shellsort klase array rikiavimui
class Shellsort
  def rikiavimas2(arraynum, array)
    gap = (arraynum + 12) / 2
    # While mazina atstuma iki rikiuojamu elementu, kol atstumas nebus lygus 0
    while gap.positive?
      i = gap
      rikiavimas3(i, arraynum, gap, array)
      gap /= 2
    end
    array
  end

  def rikiavimas3(isk, arraynum, gap, array)
    # While skaito array nuo elemento kuris yra atstume gap iki paskutinio elemento
    while isk < arraynum
      # temp paima tam tikra reiksme is array
      temp = array[isk]
      j = isk
      # While cikle vyksta patikrinimas, ar reikia rikiuoti duomenys
      while (j >= gap) && (array[j - gap] > temp)
        # Vyksta array elementu perstatymas
        array[j] = array[j - gap]
        j -= gap
      end
      # Vyksta array elementu perstatymas
      array[j] = temp
      isk += 1
    end
  end
end
