︠859baf40-0123-42fe-9e21-8b586da59a5as︠
# Projektna naloga pri predmetu Financni praktikum

# Naloga 19: Graffiti conjecture 232

# ukazi za testiranje enacbe:
# graphs.dominating_set(total=True, value_only=True)
# graphs.radius()
# graphs.periphery()
# graphs.eccentricity()

# VELIKE GRAFE GENERIRAMO Z:
# graphs.RandomGNP(n, p) generira nakljucni enostavni graf kjer je n stevilo vozlisc in p verjetnost povezave med dvema vozliscema
G = graphs.RandomGNP(8, 0.4)
G.show()

G.dominating_set(total=True, value_only=True)
# total=True da bo total dominating set
# value_only=True -> ker nas zanima samo vrednost in ne seznam vozlisc
G.is_connected()
G.radius()

#B = set(G.periphery())

#G.eccentricity()

# Funkcija za testiranje predpostavke
# LAHKO SE ZGODI, DA JE MAKS PRAZNA MNOŽICA!!!
# TRENUTNO PROGRAM VZAME maks = 0, CE JE maks PRAZNA MNOZICA
# ce graf slucajno ni povezan to program pove
def predpostavka(G):
    if G.is_connected == False:
        return('Graf ni povezan!')
    B = set(G.periphery())
    d = G.distance_all_pairs()
    maks = max(d[u][v] for u in B for v in G if v not in B)
    if maks == set():
        maks = 0
    if 2 * G.dominating_set(total=True, value_only=True) >= G.radius() + maks:
        return('Res!')
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
︡57d42c9f-043a-4061-87f5-70f4798a8f1d︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/348/tmp_YtKB5Q.svg","show":true,"text":null,"uuid":"be290546-bd25-4d50-af96-f05ee1b57b6f"},"once":false}︡{"stdout":"3\n"}︡{"stdout":"True\n"}︡{"stdout":"2\n"}︡{"stdout":"Testiramo predpostavko:\n"}︡{"stderr":"\n\n*** WARNING: Code contains non-ascii characters    ***\n\n\nError in lines 19-19\nTraceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 1191, in execute\n    flags=compile_flags), namespace, locals)\n  File \"\", line 1, in <module>\n  File \"\", line 6, in predpostavka\nValueError: max() arg is an empty sequence\n"}︡{"done":true}









