︠f16edc88-2d9b-4686-9197-a2daf4a98d9cs︠
G = graphs.RandomGNP(8, 0.4)
G.show()
︡0ea23262-a4d6-42f4-ad71-a7e6ff0f1c6d︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/6258/tmp_KS5Xhd.svg","show":true,"text":null,"uuid":"6ed4b95f-56d7-4f03-bf94-a2c3ecebdf93"},"once":false}︡{"done":true}
︠1c8ad351-82b3-41a0-8eca-a297d6af3a51s︠

def predpostavka(G):
    if G.is_connected == False:
        return('Graf ni povezan!')
    B = set(G.periphery())
    d = G.distance_all_pairs()
    razlika = 2 * G.dominating_set(total=True, value_only=True)  - G.radius() - max(d[u][v] for u in B for v in G if v not in B)
    if razlika >= 0:
        print('Res!')
        print('Razlika med levo in desno stranjo predpostavke je:')
        print(razlika)
    else:
        return('Ni res!')

print('Testiramo predpostavko:')
predpostavka(G)
︡298c31ed-af0e-4b03-a9fd-22c405738469︡{"stdout":"Testiramo predpostavko:\n"}︡{"stdout":"Res!"}︡{"stdout":"\nRazlika med levo in desno stranjo predpostavke je:\n2\n"}︡{"done":true}
︠faeb4008-f0dd-4f7b-a104-95fc798f4d4es︠

# GENERIRANJE MAJHNIH GRAFOV
print('=== MAJHNI GRAFI ===')
# ker grafe generiras z nauty_geng so vsi preprosti (tako pise v dokumentaciji)
seznam = [H for H in graphs.nauty_geng('8 -c')] # povezani grafi na "n" vozliscih, "-c" pomeni da so grafi povezani
︡7f8f0576-92cf-40dc-b324-03023bd8ce3a︡{"stdout":"=== MAJHNI GRAFI ===\n"}︡{"done":true}
︠901bad7e-ced2-4de6-b46a-6f9a5ad3786bs︠
# for zanka, ki pokaze grafe, ki jim predpostavka ne ustreza in jih shrani v seznam protiprimerov
protiprimeri = []
for graf in seznam:
    if predpostavka(graf) == 'Ni res!':
        graf.show()
        protiprimeri.append(graf)
︡4b4d91db-c236-4262-8d0f-19e8d88d4e08︡{"stdout":"Res!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\n"}︡{"stderr":"Error in lines 2-5\nTraceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 1191, in execute\n    flags=compile_flags), namespace, locals)\n  File \"\", line 2, in <module>\n  File \"\", line 6, in predpostavka\nValueError: max() arg is an empty sequence\n"}︡{"done":true}









