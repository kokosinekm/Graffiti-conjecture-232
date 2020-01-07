︠2f0e1b15-2ef3-48e8-8e49-9ac3b2c312a0︠
G = graphs.RandomGNP(30, 0.1)
G.show()
︡bef3b8ba-9a16-4ee6-862f-acd2003f08ec︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/347/tmp_Ubdk0G.svg","show":true,"text":null,"uuid":"c294936c-b3d7-490c-a6ba-c0f31b260871"},"once":false}︡{"done":true}
︠3fabf0e4-05a5-45dc-98c8-d437fc903e54s︠
G.dominating_set(total=True, value_only=True)
︡bfa9be56-e7e3-4624-b3d3-c9cb80d7af87︡{"stdout":"11\n"}︡{"done":true}
︠95a64df6-9d8c-4402-8172-215fc53e488fs︠
G.radius()
︡eb9453dd-8536-4f26-bae0-a2d0ec0a2d45︡{"stdout":"3\n"}︡{"done":true}
︠86221723-f7fa-4db9-b404-7d736da8a295s︠
B = G.periphery()
B
︡abf2af8f-e67d-4cd3-8ec9-390ad01a2111︡{"stdout":"[0, 1, 2, 4, 7, 9, 12, 16, 17, 20, 21, 23, 28]\n"}︡{"done":true}
︠88ee7fa6-fd09-413d-8ee6-e2f8d65e82dfs︠
G.eccentricity(G[0])
︡e4b34bdc-aa69-4539-b53e-ba3640582b88︡{"stdout":"[5, 4]\n"}︡{"done":true}
︠c4cae895-15a3-4aa7-b93d-4b0d01048ac2s︠
testni_seznam = []
for vozlisce in B:
    testni_seznam.append(G.eccentricity(G[vozlisce]))

testni_seznam
max(max(testni_seznam))
︡4de909ae-fc9d-4403-b8af-edf8edf4da6f︡{"stdout":"[[5, 4], [5, 4, 5], 4, 4, [4, 4], [4, 4], [4, 5], [5, 4], 4, [5, 4], 4, 4, [5, 4, 4, 5]]\n"}︡{"stdout":"5\n"}︡{"done":true}
︠e42eabb3-de65-42b9-903b-1d2c7255bbc8s︠
B = set(G.periphery())
B
d = G.distance_all_pairs()
d
max(d[u][v] for u in B for v in G if v not in B)
︡276165cc-0b84-4f5b-93fc-910568ff657f︡{"stdout":"set([0, 1, 2, 4, 7, 9, 12, 16, 17, 20, 21, 23, 28])\n"}︡{"stdout":"{0: {0: 0, 1: 3, 2: 4, 3: 4, 4: 4, 5: 4, 6: 3, 7: 5, 8: 4, 9: 4, 10: 2, 11: 4, 12: 3, 13: 2, 14: 3, 15: 2, 16: 4, 17: 4, 18: 4, 19: 4, 20: 1, 21: 2, 22: 3, 23: 3, 24: 3, 25: 3, 26: 3, 27: 1, 28: 4, 29: 2}, 1: {0: 3, 1: 0, 2: 4, 3: 3, 4: 5, 5: 4, 6: 4, 7: 3, 8: 2, 9: 5, 10: 1, 11: 2, 12: 2, 13: 3, 14: 4, 15: 2, 16: 1, 17: 4, 18: 2, 19: 4, 20: 4, 21: 3, 22: 3, 23: 4, 24: 3, 25: 2, 26: 3, 27: 2, 28: 1, 29: 3}, 2: {0: 4, 1: 4, 2: 0, 3: 3, 4: 5, 5: 4, 6: 4, 7: 5, 8: 4, 9: 3, 10: 3, 11: 2, 12: 4, 13: 3, 14: 2, 15: 2, 16: 3, 17: 3, 18: 4, 19: 3, 20: 4, 21: 4, 22: 3, 23: 4, 24: 1, 25: 2, 26: 2, 27: 3, 28: 5, 29: 3}, 3: {0: 4, 1: 3, 2: 3, 3: 0, 4: 3, 5: 2, 6: 2, 7: 3, 8: 2, 9: 3, 10: 2, 11: 1, 12: 3, 13: 3, 14: 3, 15: 2, 16: 2, 17: 4, 18: 2, 19: 2, 20: 3, 21: 4, 22: 1, 23: 4, 24: 2, 25: 1, 26: 3, 27: 3, 28: 3, 29: 2}, 4: {0: 4, 1: 5, 2: 5, 3: 3, 4: 0, 5: 3, 6: 1, 7: 4, 8: 3, 9: 4, 10: 4, 11: 4, 12: 5, 13: 2, 14: 3, 15: 3, 16: 5, 17: 5, 18: 3, 19: 3, 20: 5, 21: 4, 22: 2, 23: 3, 24: 4, 25: 4, 26: 4, 27: 3, 28: 4, 29: 4}, 5: {0: 4, 1: 4, 2: 4, 3: 2, 4: 3, 5: 0, 6: 2, 7: 1, 8: 2, 9: 3, 10: 3, 11: 3, 12: 4, 13: 3, 14: 3, 15: 2, 16: 4, 17: 4, 18: 2, 19: 2, 20: 4, 21: 4, 22: 1, 23: 4, 24: 3, 25: 3, 26: 3, 27: 3, 28: 3, 29: 3}, 6: {0: 3, 1: 4, 2: 4, 3: 2, 4: 1, 5: 2, 6: 0, 7: 3, 8: 2, 9: 3, 10: 3, 11: 3, 12: 4, 13: 1, 14: 2, 15: 2, 16: 4, 17: 4, 18: 2, 19: 2, 20: 4, 21: 3, 22: 1, 23: 2, 24: 3, 25: 3, 26: 3, 27: 2, 28: 3, 29: 3}, 7: {0: 5, 1: 3, 2: 5, 3: 3, 4: 4, 5: 1, 6: 3, 7: 0, 8: 3, 9: 4, 10: 4, 11: 4, 12: 3, 13: 4, 14: 4, 15: 3, 16: 4, 17: 5, 18: 1, 19: 3, 20: 5, 21: 5, 22: 2, 23: 5, 24: 4, 25: 4, 26: 4, 27: 4, 28: 2, 29: 4}, 8: {0: 4, 1: 2, 2: 4, 3: 2, 4: 3, 5: 2, 6: 2, 7: 3, 8: 0, 9: 3, 10: 3, 11: 3, 12: 2, 13: 3, 14: 3, 15: 2, 16: 3, 17: 4, 18: 2, 19: 2, 20: 4, 21: 4, 22: 1, 23: 4, 24: 3, 25: 3, 26: 3, 27: 3, 28: 1, 29: 3}, 9: {0: 4, 1: 5, 2: 3, 3: 3, 4: 4, 5: 3, 6: 3, 7: 4, 8: 3, 9: 0, 10: 4, 11: 3, 12: 5, 13: 2, 14: 1, 15: 3, 16: 4, 17: 4, 18: 3, 19: 1, 20: 5, 21: 4, 22: 2, 23: 3, 24: 2, 25: 3, 26: 3, 27: 3, 28: 4, 29: 4}, 10: {0: 2, 1: 1, 2: 3, 3: 2, 4: 4, 5: 3, 6: 3, 7: 4, 8: 3, 9: 4, 10: 0, 11: 3, 12: 1, 13: 2, 14: 3, 15: 1, 16: 2, 17: 3, 18: 3, 19: 3, 20: 3, 21: 2, 22: 2, 23: 3, 24: 2, 25: 1, 26: 2, 27: 1, 28: 2, 29: 2}, 11: {0: 4, 1: 2, 2: 2, 3: 1, 4: 4, 5: 3, 6: 3, 7: 4, 8: 3, 9: 3, 10: 3, 11: 0, 12: 4, 13: 3, 14: 2, 15: 2, 16: 1, 17: 3, 18: 3, 19: 3, 20: 4, 21: 4, 22: 2, 23: 4, 24: 1, 25: 2, 26: 2, 27: 3, 28: 3, 29: 3}, 12: {0: 3, 1: 2, 2: 4, 3: 3, 4: 5, 5: 4, 6: 4, 7: 3, 8: 2, 9: 5, 10: 1, 11: 4, 12: 0, 13: 3, 14: 4, 15: 2, 16: 3, 17: 4, 18: 2, 19: 4, 20: 4, 21: 3, 22: 3, 23: 4, 24: 3, 25: 2, 26: 3, 27: 2, 28: 1, 29: 3}, 13: {0: 2, 1: 3, 2: 3, 3: 3, 4: 2, 5: 3, 6: 1, 7: 4, 8: 3, 9: 2, 10: 2, 11: 3, 12: 3, 13: 0, 14: 1, 15: 2, 16: 4, 17: 4, 18: 3, 19: 2, 20: 3, 21: 2, 22: 2, 23: 1, 24: 2, 25: 3, 26: 3, 27: 1, 28: 4, 29: 2}, 14: {0: 3, 1: 4, 2: 2, 3: 3, 4: 3, 5: 3, 6: 2, 7: 4, 8: 3, 9: 1, 10: 3, 11: 2, 12: 4, 13: 1, 14: 0, 15: 2, 16: 3, 17: 3, 18: 3, 19: 1, 20: 4, 21: 3, 22: 2, 23: 2, 24: 1, 25: 2, 26: 2, 27: 2, 28: 4, 29: 3}, 15: {0: 2, 1: 2, 2: 2, 3: 2, 4: 3, 5: 2, 6: 2, 7: 3, 8: 2, 9: 3, 10: 1, 11: 2, 12: 2, 13: 2, 14: 2, 15: 0, 16: 3, 17: 2, 18: 2, 19: 2, 20: 2, 21: 2, 22: 1, 23: 3, 24: 1, 25: 2, 26: 1, 27: 1, 28: 3, 29: 1}, 16: {0: 4, 1: 1, 2: 3, 3: 2, 4: 5, 5: 4, 6: 4, 7: 4, 8: 3, 9: 4, 10: 2, 11: 1, 12: 3, 13: 4, 14: 3, 15: 3, 16: 0, 17: 4, 18: 3, 19: 4, 20: 5, 21: 4, 22: 3, 23: 5, 24: 2, 25: 3, 26: 3, 27: 3, 28: 2, 29: 4}, 17: {0: 4, 1: 4, 2: 3, 3: 4, 4: 5, 5: 4, 6: 4, 7: 5, 8: 4, 9: 4, 10: 3, 11: 3, 12: 4, 13: 4, 14: 3, 15: 2, 16: 4, 17: 0, 18: 4, 19: 4, 20: 4, 21: 4, 22: 3, 23: 5, 24: 2, 25: 3, 26: 1, 27: 3, 28: 5, 29: 3}, 18: {0: 4, 1: 2, 2: 4, 3: 2, 4: 3, 5: 2, 6: 2, 7: 1, 8: 2, 9: 3, 10: 3, 11: 3, 12: 2, 13: 3, 14: 3, 15: 2, 16: 3, 17: 4, 18: 0, 19: 2, 20: 4, 21: 4, 22: 1, 23: 4, 24: 3, 25: 3, 26: 3, 27: 3, 28: 1, 29: 3}, 19: {0: 4, 1: 4, 2: 3, 3: 2, 4: 3, 5: 2, 6: 2, 7: 3, 8: 2, 9: 1, 10: 3, 11: 3, 12: 4, 13: 2, 14: 1, 15: 2, 16: 4, 17: 4, 18: 2, 19: 0, 20: 4, 21: 4, 22: 1, 23: 3, 24: 2, 25: 3, 26: 3, 27: 3, 28: 3, 29: 3}, 20: {0: 1, 1: 4, 2: 4, 3: 3, 4: 5, 5: 4, 6: 4, 7: 5, 8: 4, 9: 5, 10: 3, 11: 4, 12: 4, 13: 3, 14: 4, 15: 2, 16: 5, 17: 4, 18: 4, 19: 4, 20: 0, 21: 3, 22: 3, 23: 4, 24: 3, 25: 2, 26: 3, 27: 2, 28: 5, 29: 1}, 21: {0: 2, 1: 3, 2: 4, 3: 4, 4: 4, 5: 4, 6: 3, 7: 5, 8: 4, 9: 4, 10: 2, 11: 4, 12: 3, 13: 2, 14: 3, 15: 2, 16: 4, 17: 4, 18: 4, 19: 4, 20: 3, 21: 0, 22: 3, 23: 3, 24: 3, 25: 3, 26: 3, 27: 1, 28: 4, 29: 2}, 22: {0: 3, 1: 3, 2: 3, 3: 1, 4: 2, 5: 1, 6: 1, 7: 2, 8: 1, 9: 2, 10: 2, 11: 2, 12: 3, 13: 2, 14: 2, 15: 1, 16: 3, 17: 3, 18: 1, 19: 1, 20: 3, 21: 3, 22: 0, 23: 3, 24: 2, 25: 2, 26: 2, 27: 2, 28: 2, 29: 2}, 23: {0: 3, 1: 4, 2: 4, 3: 4, 4: 3, 5: 4, 6: 2, 7: 5, 8: 4, 9: 3, 10: 3, 11: 4, 12: 4, 13: 1, 14: 2, 15: 3, 16: 5, 17: 5, 18: 4, 19: 3, 20: 4, 21: 3, 22: 3, 23: 0, 24: 3, 25: 4, 26: 4, 27: 2, 28: 5, 29: 3}, 24: {0: 3, 1: 3, 2: 1, 3: 2, 4: 4, 5: 3, 6: 3, 7: 4, 8: 3, 9: 2, 10: 2, 11: 1, 12: 3, 13: 2, 14: 1, 15: 1, 16: 2, 17: 2, 18: 3, 19: 2, 20: 3, 21: 3, 22: 2, 23: 3, 24: 0, 25: 1, 26: 1, 27: 2, 28: 4, 29: 2}, 25: {0: 3, 1: 2, 2: 2, 3: 1, 4: 4, 5: 3, 6: 3, 7: 4, 8: 3, 9: 3, 10: 1, 11: 2, 12: 2, 13: 3, 14: 2, 15: 2, 16: 3, 17: 3, 18: 3, 19: 3, 20: 2, 21: 3, 22: 2, 23: 4, 24: 1, 25: 0, 26: 2, 27: 2, 28: 3, 29: 1}, 26: {0: 3, 1: 3, 2: 2, 3: 3, 4: 4, 5: 3, 6: 3, 7: 4, 8: 3, 9: 3, 10: 2, 11: 2, 12: 3, 13: 3, 14: 2, 15: 1, 16: 3, 17: 1, 18: 3, 19: 3, 20: 3, 21: 3, 22: 2, 23: 4, 24: 1, 25: 2, 26: 0, 27: 2, 28: 4, 29: 2}, 27: {0: 1, 1: 2, 2: 3, 3: 3, 4: 3, 5: 3, 6: 2, 7: 4, 8: 3, 9: 3, 10: 1, 11: 3, 12: 2, 13: 1, 14: 2, 15: 1, 16: 3, 17: 3, 18: 3, 19: 3, 20: 2, 21: 1, 22: 2, 23: 2, 24: 2, 25: 2, 26: 2, 27: 0, 28: 3, 29: 1}, 28: {0: 4, 1: 1, 2: 5, 3: 3, 4: 4, 5: 3, 6: 3, 7: 2, 8: 1, 9: 4, 10: 2, 11: 3, 12: 1, 13: 4, 14: 4, 15: 3, 16: 2, 17: 5, 18: 1, 19: 3, 20: 5, 21: 4, 22: 2, 23: 5, 24: 4, 25: 3, 26: 4, 27: 3, 28: 0, 29: 4}, 29: {0: 2, 1: 3, 2: 3, 3: 2, 4: 4, 5: 3, 6: 3, 7: 4, 8: 3, 9: 4, 10: 2, 11: 3, 12: 3, 13: 2, 14: 3, 15: 1, 16: 4, 17: 3, 18: 3, 19: 3, 20: 1, 21: 2, 22: 2, 23: 3, 24: 2, 25: 1, 26: 2, 27: 1, 28: 4, 29: 0}}"}︡{"stdout":"\n"}︡{"stdout":"4\n"}︡{"done":true}
︠cdd9a9e2-7133-4ce8-afea-aca68c3d8f75s︠

# Funkcija za testiranje predpostavke
# LAHKO SE ZGODI, DA JE max(arg) PRAZNA MNOŽICA!!!
# ce graf slucajno ni povezan to program pove
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
︡c5169610-d3e2-447b-b641-4acc7fdc89a3︡{"stdout":"Testiramo predpostavko:\n"}︡{"stdout":"Res!\nRazlika med levo in desno stranjo predpostavke je:\n15\n"}︡{"done":true}
︠7f18af58-c3ac-488e-afce-204641c87723s︠
# tale ne dela vedno
def predpostavka_test(G):
    if G.is_connected == False:
        return('Graf ni povezan!')
    B = G.periphery()
    test_seznam = []
    for vozlisce in B:
        test_seznam.append(G.eccentricity(G[vozlisce]))
    razlika = 2 * G.dominating_set(total=True, value_only=True) - G.radius() - max(max(test_seznam))
    if razlika >= 0:
        print('Res!')
        print('Razlika med levo in desno stranjo predpostavke je:')
        print(razlika)
    else:
        return('Ni res!')

print('Testiramo predpostavko_test:')
predpostavka_test(G)
︡00c4b475-e3bf-416e-a9ba-252b0a6ed09b︡{"stdout":"Testiramo predpostavko_test:\n"}︡{"stdout":"Res!\nRazlika med levo in desno stranjo predpostavke je:\n14\n"}︡{"done":true}
︠af89c903-df93-4265-9eaa-7df51656742bs︠

# GENERIRANJE MAJHNIH GRAFOV
print('=== MAJHNI GRAFI ===')
# ker grafe generiras z nauty_geng so vsi preprosti (tako pise v dokumentaciji)
seznam = [H for H in graphs.nauty_geng('6 -c')] # povezani grafi na "n" vozliscih, "-c" pomeni da so grafi povezani

︡35bf10c7-3fea-4e83-b27e-6b75f87fa327︡{"stdout":"=== MAJHNI GRAFI ===\n"}︡{"done":true}
︠faef9c29-9e71-494f-b1e9-97b93eb75ee8s︠
# for zanka, ki pokaze grafe, ki jim predpostavka ne ustreza in jih shrani v seznam protiprimerov
protiprimeri = []
for graf in seznam:
    if predpostavka_test(graf) == 'Ni res!':
        graf.show()
        protiprimeri.append(graf)
︡f8a689af-470d-496d-b9b2-dfe60bd61def︡{"stdout":"Res!\nRazlika med levo in desno stranjo predpostavke je:\n3\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n4\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n4\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n4\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/347/tmp_tf2xWR.svg","show":true,"text":null,"uuid":"85010455-384a-4fca-b831-d967c0957221"},"once":false}︡{"stdout":"Res!"}︡{"stdout":"\nRazlika med levo in desno stranjo predpostavke je:\n1\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/347/tmp_Z3cRQS.svg","show":true,"text":null,"uuid":"689f8fdf-2aa9-4207-8393-d2fd0f0c2c95"},"once":false}︡{"stdout":"Res!"}︡{"stdout":"\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n4\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n5\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n4\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/347/tmp_aFG_ML.svg","show":true,"text":null,"uuid":"f46aea9c-82e2-43fc-b265-801cd8899fc9"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/347/tmp_oHNklB.svg","show":true,"text":null,"uuid":"1c79e831-9996-46b4-a3be-bad011c58fdd"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/347/tmp_FSt5iZ.svg","show":true,"text":null,"uuid":"7468e3c0-58c4-4f36-ac96-8134f6923bd5"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/347/tmp_LKoJSb.svg","show":true,"text":null,"uuid":"4bf37f13-925d-4b49-ae4a-57f1442f98c9"},"once":false}︡{"stdout":"Res!"}︡{"stdout":"\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/347/tmp_fWtATs.svg","show":true,"text":null,"uuid":"0b881ef7-e6e9-4c5a-8368-5cf348471856"},"once":false}︡{"stdout":"Res!"}︡{"stdout":"\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n4\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/347/tmp_HjMaZc.svg","show":true,"text":null,"uuid":"af0f65c8-6c50-4a1b-9bd9-51555adf4bbc"},"once":false}︡{"stdout":"Res!"}︡{"stdout":"\nRazlika med levo in desno stranjo predpostavke je:\n0\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/347/tmp_J2IgUW.svg","show":true,"text":null,"uuid":"2046676c-69a8-4fc7-94b5-f2c0649e9fcc"},"once":false}︡{"stdout":"Res!"}︡{"stdout":"\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/347/tmp_xlL97l.svg","show":true,"text":null,"uuid":"870893b0-88a6-492a-b013-d45247e6cf01"},"once":false}︡{"stdout":"Res!"}︡{"stdout":"\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/347/tmp_vrbVwe.svg","show":true,"text":null,"uuid":"e9b7cb37-743d-452b-a171-1c5d579467e0"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/347/tmp_djPY9L.svg","show":true,"text":null,"uuid":"07a28a52-ac52-4e82-a0ad-0a39314f7c0d"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/347/tmp_HH2qqF.svg","show":true,"text":null,"uuid":"dcdd42a4-272a-4e57-ad40-fee1d2e442ec"},"once":false}︡{"stdout":"Res!"}︡{"stdout":"\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-b91a1257-2a31-43fb-ace4-6f296cd8d1ba/347/tmp_sOI8J2.svg","show":true,"text":null,"uuid":"1af1c55a-6baa-473d-aac8-10d24d23523c"},"once":false}︡{"stdout":"Res!"}︡{"stdout":"\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n0\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n1\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\nRes!\nRazlika med levo in desno stranjo predpostavke je:\n2\n"}︡{"done":true}










