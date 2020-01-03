︠9ef35763-ad43-4ded-b7e9-dac8cbe38c08s︠
# Projektna naloga pri predmetu Financni praktikum

# Naloga 19: Graffiti conjecture 232

# ukazi za testiranje enacbe:
# graphs.dominating_set(total=True, value_only=True)
# graphs.radius()
# graphs.periphery()
# graphs.eccentricity()

# VELIKE GRAFE GENERIRAMO Z:
# graphs.RandomGNP(n, p) generira nakljucni enostavni graf kjer je n stevilo vozlisc in p verjetnost povezave med dvema vozliscema
G = graphs.RandomGNP(20, 0.4)
G.show()
# Povezan?
G.is_connected()

G.dominating_set(total=True, value_only=True)
# total=True da bo total dominating set
# value_only=True -> ker nas zanima samo vrednost in ne seznam vozlisc

G.radius()
#B = set(G.periphery())

#G.eccentricity()

# Funkcija za testiranje predpostavke
# LAHKO SE ZGODI, DA JE max(arg) PRAZNA MNOŽICA!!! Takrat je trenutno nastavljeno, da za maks vzamem vrednost 0.
# ce graf slucajno ni povezan to program pove
def predpostavka(G):
    if G.is_connected == False:
        return('Graf ni povezan!')
    B = set(G.periphery())
    d = G.distance_all_pairs()
    if set(d[u][v] for u in B for v in G if v not in B) == set():
        maks = 0
    else:
        maks = max(d[u][v] for u in B for v in G if v not in B)
    if 2 * G.dominating_set(total=True, value_only=True)  - G.radius() - maks >= 0:
        print('Res!')
        print('Razlika med levo in desno stranjo predpostavke je:')
        print(2 * G.dominating_set(total=True, value_only=True)  - G.radius() - maks)
    else:
        return('Ni res!')

print('Testiramo predpostavko:')
predpostavka(G)

# GENERIRANJE MAJHNIH GRAFOV
# ker grafe generiras z nauty_geng so vsi preprosti (tako pise v dokumentaciji)
seznam = [G for G in graphs.nauty_geng('4 -c')] # povezani grafi na 4 vozliscih, "-c" pomeni da so grafi povezani
print(seznam)

# for zanka, ki pokaze grafe, ki jim predpostavka ne ustreza
for graf in seznam:
    if predpostavka(graf) == 'Ni res!':
        graf.show()
︡aa712168-398e-4102-9bcd-6263cfb611a1︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/1203/tmp_AUtF7t.svg","show":true,"text":null,"uuid":"809da652-f96e-4211-a9b5-b3e6cc7c48b0"},"once":false}︡{"stdout":"True\n"}︡{"stdout":"4\n"}︡{"stdout":"2\n"}︡{"stdout":"Testiramo predpostavko:\n"}︡{"stdout":"Res!\nRazlika med levo in desno stranjo predpostavke je:\n4\n"}︡{"stdout":"[Graph on 4 vertices, Graph on 4 vertices, Graph on 4 vertices, Graph on 4 vertices, Graph on 4 vertices, Graph on 4 vertices]\n"}︡{"stdout":"Res!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n3\n"}︡{"done":true}









