mlgtracer to zestaw skrypt�w s�u��cych do obs�ugi wielu r�nych looking-glass
dost�pnych w internecie z poziomu lini polece�.

Zastosowanie to przede wszystkim wygodne i szybkie sprawdzenie �cie�ki z
r�nych miejsc �wiata/polski do okre�lonego adresu ip - przydatne by wy�apa�
w�skie gard�o lub znale�� troch� informacji na temat konkretnego providera.

Instalacja:

make links

powoduje odpytanie ka�dego z skrypt�w (umieszczonych w katalogu lib) o dost�pne
cele oraz utworzenie dla ka�dego z nich w katalogu links odpowiedniego linku.

Ka�dy link sk�ada si� z trzech cz�ci:
cel.sie�.router

cel to jedno z:
- traceroute - wykona traceroute
- ping - wykona ping
- bgp - wykona odpowiednik show ip bgp
- bgpre - wykona odpowiednik show ip bgp regexp

sie� to nazwa sieci do kt�rej nale�y lg
router to konkretny router w ramach sieci, albo te� s�owo router (w przypadku
gdy jest dost�pny tylko jeden ;)

Przyk�ad:
traceroute.telia.Warsaw 194.116.252.2

wykona traceroute z warszawskiego routera telii do ip 194.116.252.2

bgpre.tpnet.router 34688
Poka�e kt�r�dy tpnet widzi as-a 34688


disclajmer:
- niekt�re lg zabraniaj� zautomatyzowanego u�ycia za pomoc� skrypt�w i wymagaj�
  bezpo�redniego podania danych wej�ciowych. Nie wiem czy u�ycie skryptu i
  podanie samemu ip do sprawdzenia podpada pod to.. ale oczywi�cie u�ywasz
  wszystkiego na w�asn� odpowiedzialno�� ;)
- ca�o�� tworz� pod w�asne potrzeby - ale a n� si� komu� przyda ;)

licencja: gpl w najnowszej wersji ;)

kontakt:
Je�eli chcia�by� pom�c w rozwoju skryptologii, masz jakie� pomys�y na
ulepszenia, znasz jakie� LG/traceroute dost�pne przez www kt�re warto by�oby
dorzuci� do spisu - zapraszam :)

Kontakt do mnie - http://andrzej.dopierala.name/Kontakt
