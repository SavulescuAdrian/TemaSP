v=randn(1,16) %aceasta functie genereaza un vector cu elemente aleatoare cu distributie gaussiana
for i=1:1:16 % cu index-ul "i" parcurg toate elementele vectorului
    if v(i)<0 %verific ce elemente sunt negative
        v(i) %afisez elementele negative
    end
end
