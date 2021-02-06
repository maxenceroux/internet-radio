#!/usr/bin/liquidsoap
# FICHIER DE LOG
# set("log.file.path","/tmp/basic-radio.log")
set("init.allow_root", true)
# Musique (repertoire ou se trouve les musiques)
# myplaylist = playlist("/media/")

# On creer une variable radio
# radio = myplaylist

# On creer une ecoute d'un live, si il y a du son il sera diffuse sinon la playlist reste en lecture
# live = fallback(track_sensitive=false,
# [input.http("http://localhost:8000/live"),
# radio])

# On lance une ecoute pour voir si il y a un blanc pendant le live, si c'est le cas la playlist se relance
# stream = fallback(track_sensitive=false,
# [ strip_blank(max_blank=5.,live) , radio ])

# Information de diffusion
output.icecast(%mp3(bitrate=128),
host = "icecast", port = 8000, 
name = "Nom de la radio", description = "Description de la radio", genre = "Style",
password = "max", mount = "listen", playlist("/media/"), fallible=true)