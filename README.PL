mlgtracer to zestaw skryptów s³u¿±cych do obs³ugi wielu ró¿nych looking-glass
dostêpnych w internecie z poziomu lini poleceñ.

Zastosowanie to przede wszystkim wygodne i szybkie sprawdzenie ¶cie¿ki z
ró¿nych miejsc ¶wiata/polski do okre¶lonego adresu ip - przydatne by wy³apaæ
w±skie gard³o lub znale¼æ trochê informacji na temat konkretnego providera.

Instalacja:

make links

powoduje odpytanie ka¿dego z skryptów (umieszczonych w katalogu lib) o dostêpne
cele oraz utworzenie dla ka¿dego z nich w katalogu links odpowiedniego linku.

Ka¿dy link sk³ada siê z trzech czê¶ci:
cel.sieæ.router

cel to jedno z:
- traceroute - wykona traceroute
- ping - wykona ping
- bgp - wykona odpowiednik show ip bgp
- bgpre - wykona odpowiednik show ip bgp regexp

sieæ to nazwa sieci do której nale¿y lg
router to konkretny router w ramach sieci, albo te¿ s³owo router (w przypadku
gdy jest dostêpny tylko jeden ;)

Przyk³ad:
traceroute.telia.Warsaw 194.116.252.2

wykona traceroute z warszawskiego routera telii do ip 194.116.252.2

bgpre.tpnet.router 34688
Poka¿e którêdy tpnet widzi as-a 34688


disclajmer:
- niektóre lg zabraniaj± zautomatyzowanego u¿ycia za pomoc± skryptów i wymagaj±
  bezpo¶redniego podania danych wej¶ciowych. Nie wiem czy u¿ycie skryptu i
  podanie samemu ip do sprawdzenia podpada pod to.. ale oczywi¶cie u¿ywasz
  wszystkiego na w³asn± odpowiedzialno¶æ ;)
- ca³o¶æ tworzê pod w³asne potrzeby - ale a nó¿ siê komu¶ przyda ;)

licencja: gpl w najnowszej wersji ;)

kontakt:
Je¿eli chcia³by¶ pomóc w rozwoju skryptologii, masz jakie¶ pomys³y na
ulepszenia - zapraszam :)

Kontakt do mnie - http://andrzej.dopierala.name/Kontakt
