ve_peliculas(roberto,suspenso).
ve_peliculas(jaanai,suspenso).
ve_peliculas(abimael,suspenso).
ve_peliculas(leonardo,romance).
ve_peliculas(miguel,terror).

escucha_musica(abelino,reggae).
escucha_musica(antonio,rock).
escucha_musica(izmucaneth,reggae).
escucha_musica(rolando,rock).
escucha_musica(maldonado,regional).

tiene_audifionos(abelino,no).
tiene_audifionos(antonio,no).
tiene_audifionos(izmucaneth,si).
tiene_audifionos(rolando,si).
tiene_audifionos(maldonado,si).
tiene_audifionos(roberto,no).
tiene_audifionos(jaanai,si).
tiene_audifionos(abimael,no).
tiene_audifionos(leonardo,si).
tiene_audifionos(miguel,si).

tiene_spotify(abelino,no).
tiene_spotify(antonio,si).
tiene_spotify(izmucaneth,si).
tiene_spotify(rolando,no).
tiene_spotify(maldonado,si).

tiene_netflix(roberto,si).
tiene_netflix(jaanai,si).
tiene_netflix(abimael,si).
tiene_netflix(leonardo,no).
tiene_netflix(miguel,si).

consume(roberto,palomitas).
consume(jaanai,palomitas).
consume(abimael,maruchan).
consume(leonardo,maruchan).
consume(miguel,ensalada).

tiempo_libre(roberto,si).
tiempo_libre(jaanai,si).
tiempo_libre(abimael,si).
tiempo_libre(leonardo,no).
tiempo_libre(miguel,no).

tiene_tardeperfecta(abelino,no).
tiene_tardeperfecta(antonio,no).
tiene_tardeperfecta(izmucaneth,si).
tiene_tardeperfecta(rolando,si).
tiene_tardeperfecta(maldonado,no).
tiene_tardeperfecta(roberto,no).
tiene_tardeperfecta(jaanai,si).
tiene_tardeperfecta(abimael,no).
tiene_tardeperfecta(leonardo,si).
tiene_tardeperfecta(miguel,si).

diafeliz(X):-ve_peliculas(X,suspenso),consume(X,palomitas),tiene_netflix(X,si),tiempo_libre(X,si),tiene_tardeperfecta(X,si).
vida_saludable(X):-consume(X,ensalada),tiene_netflix(X,si).
likehouse(X):- escucha_musica(X,regional),tiene_audifionos(X,si),tiene_spotify(X,si).
alguienfeliz(X):- tiene_netflix(X,si),consume(X,maruchan),tiempo_libre(X,si).
amigoss(X,Y):- consume(X,maruchan),consume(Y,maruchan);consume(X,palomitas),consume(Y,palomitas);consume(X,ensalada),consume(Y,ensalada);ve_peliculas(X,suspenso),ve_peliculas(Y,suspenso);ve_peliculas(X,romance),ve_peliculas(Y,romance);ve_peliculas(X,terror),ve_peliculas(Y,terror).
