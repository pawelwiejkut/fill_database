--=====================================================
--CREATE TABLE ADDRESS
--=====================================================
CREATE  TABLE "ADDRESS" ( "ID" INTEGER NOT NULL,
       "STREET" VARCHAR2(256),
       "CITY" VARCHAR2(100),
       "BUILDING_NUMBER" INTEGER,
       "POSTCODE" VARCHAR2(20),
       PRIMARY KEY ("ID"));
       
--=====================================================
--FILL TABLE ADDRESS
--=====================================================

DECLARE 
CNTR number(10) :=0;
type cityArray IS VARRAY(950) OF VARCHAR2(50);
type streetArray IS VARRAY(2500) OF VARCHAR2(100);
CITY cityArray;
STREET streetArray;
BEGIN
CITY := cityArray('Babimost (LS)', 'Babor�w (OP)', 'Baran�w Sandomierski (PK)', 'Barcin (KP)', 'Barczewo (WM)', 'Bardo (D?)', 'Barlinek (ZP)', 'Bartoszyce (WM)', 'Barwice (ZP)', 'Be�chat�w (�D)', 'Be��yce (LB)', 'B�dzin (?L)', 'Bia�a (OP)', 'Bia�a Piska (WM)', 'Bia�a Podlaska (LB)', 'Bia�a Rawska (�D)', 'Bia�obrzegi (MZ)', 'Bia�ogard (ZP)', 'Bia�y B�r (ZP)', 'Bia�ystok (PL)', 'Biecz (MP)', 'Bielawa (D?)', 'Bielsk Podlaski (PL)', 'Bielsko-Bia�a (?L)', 'Bieru� (?L)', 'Bierut�w (D?)', 'Bie�u� (MZ)', 'Bi�goraj (LB)', 'Biskupiec (WM)', 'Bisztynek (WM)', 'Blachownia (?L)', 'B�aszki (�D)', 'B�a�owa (PK)', 'B�onie (MZ)', 'Bobolice (ZP)', 'Bobowa (MP)', 'Bochnia (MP)', 'Bodzentyn (?K)', 'Bogatynia (D?)', 'Boguchwa�a (PK)', 'Bogusz�w-Gorce (D?)', 'Bojanowo (WP)', 'Boles�awiec (D?)', 'Bolk�w (D?)', 'Borek Wielkopolski (WP)', 'Borne Sulinowo (ZP)', 'Braniewo (WM)', 'Bra�sk (PL)', 'Brodnica (KP)', 'Brok (MZ)', 'Brusy (PM)', 'Brwin�w (MZ)', 'Brzeg (OP)', 'Brzeg Dolny (D?)', 'Brzesko (MP)', 'Brzeszcze (MP)', 'Brze?� Kujawski (KP)', 'Brzeziny (�D)', 'Brzostek (PK)', 'Brzoz�w (PK)', 'Buk (WP)', 'Bukowno (MP)', 'Busko-Zdr�j (?K)', 'Bychawa (LB)', 'Byczyna (OP)', 'Bydgoszcz (KP)', 'Bystrzyca K�odzka (D?)', 'Bytom (?L)', 'Bytom Odrza�ski (LS)', 'Byt�w (PM)', 'Che�m (LB)', 'Che�mek (MP)', 'Che�mno (KP)', 'Che�m�a (KP)', 'Ch�ciny (?K)', 'Chmielnik (?K)', 'Chocian�w (D?)', 'Chociwel (ZP)', 'Chocz (WP)', 'Chodecz (KP)', 'Chodzie� (WP)', 'Chojna (ZP)', 'Chojnice (PM)', 'Chojn�w (D?)', 'Choroszcz (PL)', 'Chorzele (MZ)', 'Chorz�w (?L)', 'Choszczno (ZP)', 'Chrzan�w (MP)', 'Ciechanowiec (PL)', 'Ciechan�w (MZ)', 'Ciechocinek (KP)', 'Cieszan�w (PK)', 'Cieszyn (?L)', 'Ci�kowice (MP)', 'Cybinka (LS)', 'Czaplinek (ZP)', 'Czarna Bia�ostocka (PL)', 'Czarna Woda (PM)', 'Czarne (PM)', 'Czarnk�w (WP)', 'Czch�w (MP)', 'Czechowice-Dziedzice (?L)', 'Czelad? (?L)', 'Czempi� (WP)', 'Czerniejewo (WP)', 'Czersk (PM)', 'Czerwie�sk (LS)', 'Czerwionka-Leszczyny (?L)', 'Cz�stochowa (?L)', 'Cz�opa (ZP)', 'Cz�uch�w (PM)', 'Czy�ew (PL)', 'Daleszyce (?K)', 'Dar�owo (ZP)', 'D�bie (WP)', 'D�browa Bia�ostocka (PL)', 'D�browa G�rnicza (?L)', 'D�browa Tarnowska (MP)', 'Debrzno (PM)', 'D�bica (PK)', 'D�blin (LB)', 'D�bno (ZP)', 'Dobczyce (MP)', 'Dobiegniew (LS)', 'Dobra (powiat �obeski) (ZP)', 'Dobra (powiat turecki) (WP)', 'Dobre Miasto (WM)', 'Dobrodzie� (OP)', 'Dobrzany (ZP)', 'Dobrzyca (WP)', 'Dobrzy� nad Wis�� (KP)', 'Dolsk (WP)', 'Drawno (ZP)', 'Drawsko Pomorskie (ZP)', 'Drezdenko (LS)', 'Drobin (MZ)', 'Drohiczyn (PL)', 'Drzewica (�D)', 'Dukla (PK)', 'Duszniki-Zdr�j (D?)', 'Dyn�w (PK)', 'Dzia�dowo (WM)', 'Dzia�oszyce (?K)', 'Dzia�oszyn (�D)', 'Dzierzgo� (PM)', 'Dzier�oni�w (D?)', 'Dziwn�w (ZP)', 'Elbl�g (WM)', 'E�k (WM)', 'Frampol (LB)', 'Frombork (WM)', 'Garwolin (MZ)', 'G�bin (MZ)', 'Gda�sk (PM)', 'Gdynia (PM)', 'Gi�ycko (WM)', 'Glinojeck (MZ)', 'Gliwice (?L)', 'G�og�w (D?)', 'G�og�w Ma�opolski (PK)', 'G�og�wek (OP)', 'G�owno (�D)', 'G�ubczyce (OP)', 'G�ucho�azy (OP)', 'G�uszyca (D?)', 'Gniew (PM)', 'Gniewkowo (KP)', 'Gniezno (WP)', 'Gogolin (OP)', 'Golczewo (ZP)', 'Goleni�w (ZP)', 'Golina (WP)', 'Golub-Dobrzy� (KP)', 'Go�a�cz (WP)', 'Go�dap (WM)', 'Goni�dz (PL)', 'Gorlice (MP)', 'Gorz�w ?l�ski (OP)', 'Gorz�w Wielkopolski (LS)', 'Gostynin (MZ)', 'Gosty� (WP)', 'Go?cino (ZP)', 'Gozdnica (LS)', 'G�ra (D?)', 'G�ra Kalwaria (MZ)', 'G�rowo I�aweckie (WM)', 'G�rzno (KP)', 'Grab�w nad Prosn� (WP)', 'Grajewo (PL)', 'Grodk�w (OP)', 'Grodzisk Mazowiecki (MZ)', 'Grodzisk Wielkopolski (WP)', 'Gr�jec (MZ)', 'Grudzi�dz (KP)', 'Gryb�w (MP)', 'Gryfice (ZP)', 'Gryfino (ZP)', 'Gryf�w ?l�ski (D?)', 'Gubin (LS)', 'Hajn�wka (PL)', 'Halin�w (MZ)', 'Hel (PM)', 'Hrubiesz�w (LB)', 'I�awa (WM)', 'I�owa (LS)', 'I��a (MZ)', 'Imielin (?L)', 'Inowroc�aw (KP)', 'I�sko (ZP)', 'Iwonicz-Zdr�j (PK)', 'Izbica Kujawska (KP)', 'Jab�onowo Pomorskie (KP)', 'Janikowo (KP)', 'Janowiec Wielkopolski (KP)', 'Jan�w Lubelski (LB)', 'Jaraczewo (WP)', 'Jarocin (WP)', 'Jaros�aw (PK)', 'Jasie� (LS)', 'Jas�o (PK)', 'Jastarnia (PM)', 'Jastrowie (WP)', 'Jastrz�bie-Zdr�j (?L)', 'Jawor (D?)', 'Jaworzno (?L)', 'Jaworzyna ?l�ska (D?)', 'Jedlicze (PK)', 'Jedlina-Zdr�j (D?)', 'Jedwabne (PL)', 'Jelcz-Laskowice (D?)', 'Jelenia G�ra (D?)', 'Jeziorany (WM)', 'J�drzej�w (?K)', 'Jordan�w (MP)', 'J�zef�w (powiat bi�gorajski) (LB)', 'J�zef�w (powiat otwocki) (MZ)', 'Jutrosin (WP)', 'Kalety (?L)', 'Kalisz (WP)', 'Kalisz Pomorski (ZP)', 'Kalwaria Zebrzydowska (MP)', 'Ka�uszyn (MZ)', 'Kamienna G�ra (D?)', 'Kamie� Kraje�ski (KP)', 'Kamie� Pomorski (ZP)', 'Kamie�sk (�D)', 'Ka�czuga (PK)', 'Karczew (MZ)', 'Kargowa (LS)', 'Karlino (ZP)', 'Karpacz (D?)', 'Kartuzy (PM)', 'Katowice (?L)', 'Kazimierz Dolny (LB)', 'Kazimierza Wielka (?K)', 'K�ty Wroc�awskie (D?)', 'Kcynia (KP)', 'K�dzierzyn-Ko?le (OP)', 'K�pice (PM)', 'K�pno (WP)', 'K�trzyn (WM)', 'K�ty (MP)', 'Kielce (?K)', 'Kietrz (OP)', 'Kisielice (WM)', 'Kleczew (WP)', 'Kleszczele (PL)', 'Kluczbork (OP)', 'K�ecko (WP)', 'K�obuck (?L)', 'K�odawa (WP)', 'K�odzko (D?)', 'Knur�w (?L)', 'Knyszyn (PL)', 'Kobylin (WP)', 'Koby�ka (MZ)', 'Kock (LB)', 'Kolbuszowa (PK)', 'Kolno (PL)', 'Kolonowskie (OP)', 'Koluszki (�D)', 'Ko�aczyce (PK)', 'Ko�o (WP)', 'Ko�obrzeg (ZP)', 'Koniecpol (?L)', 'Konin (WP)', 'Konstancin-Jeziorna (MZ)', 'Konstantyn�w ��dzki (�D)', 'Ko�skie (?K)', 'Koprzywnica (?K)', 'Korfant�w (OP)', 'Koronowo (KP)', 'Korsze (WM)', 'Kos�w Lacki (MZ)', 'Kostrzyn (WP)', 'Kostrzyn nad Odr� (LS)', 'Koszalin (ZP)', 'Ko?cian (WP)', 'Ko?cierzyna (PM)', 'Kowal (KP)', 'Kowalewo Pomorskie (KP)', 'Kowary (D?)', 'Kozieg�owy (?L)', 'Kozienice (MZ)', 'Ko?min Wielkopolski (WP)', 'Ko�uch�w (LS)', 'K�rnik (WP)', 'Krajenka (WP)', 'Krak�w (MP)', 'Krapkowice (OP)', 'Krasnobr�d (LB)', 'Krasnystaw (LB)', 'Kra?nik (LB)', 'Krobia (WP)', 'Krosno (PK)', 'Krosno Odrza�skie (LS)', 'Kro?niewice (�D)', 'Krotoszyn (WP)', 'Kruszwica (KP)', 'Krynica Morska (PM)', 'Krynica-Zdr�j (MP)', 'Krynki (PL)', 'Krzanowice (?L)', 'Krzepice (?L)', 'Krzeszowice (MP)', 'Krzywi� (WP)', 'Krzy� Wielkopolski (WP)', 'Ksi�� Wielkopolski (WP)', 'Kudowa-Zdr�j (D?)', 'Kun�w (?K)', 'Kutno (�D)', 'Ku?nia Raciborska (?L)', 'Kwidzyn (PM)', 'L�dek-Zdr�j (D?)', 'Legionowo (MZ)', 'Legnica (D?)', 'Lesko (PK)', 'Leszno (WP)', 'Le?na (D?)', 'Le?nica (OP)', 'Lewin Brzeski (OP)', 'Le�ajsk (PK)', 'L�bork (PM)', 'L�dziny (?L)', 'Libi�� (MP)', 'Lidzbark (WM)', 'Lidzbark Warmi�ski (WM)', 'Limanowa (MP)', 'Lipiany (ZP)', 'Lipno (KP)', 'Lipsk (PL)', 'Lipsko (MZ)', 'Lubacz�w (PK)', 'Luba� (D?)', 'Lubart�w (LB)', 'Lubawa (WM)', 'Lubawka (D?)', 'Lubie� Kujawski (KP)', 'Lubin (D?)', 'Lublin (LB)', 'Lubliniec (?L)', 'Lubniewice (LS)', 'Lubomierz (D?)', 'Lubo� (WP)', 'Lubraniec (KP)', 'Lubsko (LS)', 'Lubycza Kr�lewska (LB)', 'Lw�wek (WP)', 'Lw�wek ?l�ski (D?)', '�abiszyn (KP)', '�a�cut (PK)', '�apy (PL)', '�asin (KP)', '�ask (�D)', '�askarzew (MZ)', '�aszcz�w (LB)', '�aziska G�rne (?L)', '�azy (?L)', '�eba (PM)', '��czna (LB)', '��czyca (�D)', '��knica (LS)', '�obez (ZP)', '�ob�enica (WP)', '�och�w (MZ)', '�omianki (MZ)', '�om�a (PL)', '�osice (MZ)', '�owicz (�D)', '��d? (�D)', '�uk�w (LB)', 'Mak�w Mazowiecki (MZ)', 'Mak�w Podhala�ski (MP)', 'Malbork (PM)', 'Ma�ogoszcz (?K)', 'Ma�omice (LS)', 'Margonin (WP)', 'Marki (MZ)', 'Maszewo (ZP)', 'Miasteczko ?l�skie (?L)', 'Miastko (PM)', 'Micha�owo (PL)', 'Miech�w (MP)', 'Miejska G�rka (WP)', 'Mielec (PK)', 'Mierosz�w (D?)', 'Mieszkowice (ZP)', 'Mi�dzyb�rz (D?)', 'Mi�dzych�d (WP)', 'Mi�dzylesie (D?)', 'Mi�dzyrzec Podlaski (LB)', 'Mi�dzyrzecz (LS)', 'Mi�dzyzdroje (ZP)', 'Miko�ajki (WM)', 'Miko��w (?L)', 'Mikstat (WP)', 'Milan�wek (MZ)', 'Milicz (D?)', 'Mi�akowo (WM)', 'Mi�om�yn (WM)', 'Mi�os�aw (WP)', 'Mi�sk Mazowiecki (MZ)', 'Miros�awiec (ZP)', 'Mirsk (D?)', 'M�awa (MZ)', 'M�ynary (WM)', 'Modliborzyce (LB)', 'Mogielnica (MZ)', 'Mogilno (KP)', 'Mo�ki (PL)', 'Mor�g (WM)', 'Mordy (MZ)', 'Mory� (ZP)', 'Mosina (WP)', 'Mr�gowo (WM)', 'Mrocza (KP)', 'Mrozy (MZ)', 'Mszana Dolna (MP)', 'Mszczon�w (MZ)', 'Murowana Go?lina (WP)', 'Muszyna (MP)', 'Mys�owice (?L)', 'Myszk�w (?L)', 'Myszyniec (MZ)', 'My?lenice (MP)', 'My?lib�rz (ZP)', 'Nak�o nad Noteci� (KP)', 'Na��cz�w (LB)', 'Namys��w (OP)', 'Narol (PK)', 'Nasielsk (MZ)', 'Nekla (WP)', 'Nidzica (WM)', 'Niemcza (D?)', 'Niemodlin (OP)', 'Niepo�omice (MP)', 'Nieszawa (KP)', 'Nisko (PK)', 'Nowa D�ba (PK)', 'Nowa Ruda (D?)', 'Nowa Sarzyna (PK)', 'Nowa S�l (LS)', 'Nowe (KP)', 'Nowe Brzesko (MP)', 'Nowe Miasteczko (LS)', 'Nowe Miasto Lubawskie (WM)', 'Nowe Miasto nad Pilic� (MZ)', 'Nowe Skalmierzyce (WP)', 'Nowe Warpno (ZP)', 'Nowogard (ZP)', 'Nowogrodziec (D?)', 'Nowogr�d (PL)', 'Nowogr�d Bobrza�ski (LS)', 'Nowy Dw�r Gda�ski (PM)', 'Nowy Dw�r Mazowiecki (MZ)', 'Nowy S�cz (MP)', 'Nowy Staw (PM)', 'Nowy Targ (MP)', 'Nowy Tomy?l (WP)', 'Nowy Wi?nicz (MP)', 'Nysa (OP)', 'Oborniki (WP)', 'Oborniki ?l�skie (D?)', 'Obrzycko (WP)', 'Odolan�w (WP)', 'Ogrodzieniec (?L)', 'Okonek (WP)', 'Olecko (WM)', 'Olesno (OP)', 'Oleszyce (PK)', 'Ole?nica (D?)', 'Olkusz (MP)', 'Olsztyn (WM)', 'Olsztynek (WM)', 'Olszyna (D?)', 'O�awa (D?)', 'Opalenica (WP)', 'Opat�w (?K)', 'Opoczno (�D)', 'Opole (OP)', 'Opole Lubelskie (LB)', 'Orneta (WM)', 'Orzesze (?L)', 'Orzysz (WM)', 'Osieczna (WP)', 'Osiek (?K)', 'Ostro��ka (MZ)', 'Ostror�g (WP)', 'Ostrowiec ?wi�tokrzyski (?K)', 'Ostr�da (WM)', 'Ostr�w Lubelski (LB)', 'Ostr�w Mazowiecka (MZ)', 'Ostr�w Wielkopolski (WP)', 'Ostrzesz�w (WP)', 'O?no Lubuskie (LS)', 'O?wi�cim (MP)', 'Otmuch�w (OP)', 'Otwock (MZ)', 'Ozimek (OP)', 'Ozork�w (�D)', 'O�ar�w (?K)', 'O�ar�w Mazowiecki (MZ)', 'Pabianice (�D)', 'Paczk�w (OP)', 'Paj�czno (�D)', 'Pako?� (KP)', 'Parczew (LB)', 'Pas��k (WM)', 'Pasym (WM)', 'Pelplin (PM)', 'Pe�czyce (ZP)', 'Piaseczno (MZ)', 'Piaski (LB)', 'Piast�w (MZ)', 'Piechowice (D?)', 'Piekary ?l�skie (?L)', 'Pieni�no (WM)', 'Pie�sk (D?)', 'Pieszyce (D?)', 'Pilawa (MZ)', 'Pilica (?L)', 'Pilzno (PK)', 'Pi�a (WP)', 'Pi�awa G�rna (D?)', 'Pi�cz�w (?K)', 'Pionki (MZ)', 'Piotrk�w Kujawski (KP)', 'Piotrk�w Trybunalski (�D)', 'Pisz (WM)', 'Piwniczna-Zdr�j (MP)', 'Pleszew (WP)', 'P�ock (MZ)', 'P�o�sk (MZ)', 'P�oty (ZP)', 'Pniewy (WP)', 'Pobiedziska (WP)', 'Podd�bice (�D)', 'Podkowa Le?na (MZ)', 'Pogorzela (WP)', 'Polanica-Zdr�j (D?)', 'Polan�w (ZP)', 'Police (ZP)', 'Polkowice (D?)', 'Po�aniec (?K)', 'Po�czyn-Zdr�j (ZP)', 'Poniatowa (LB)', 'Poniec (WP)', 'Por�ba (?L)', 'Pozna� (WP)', 'Prabuty (PM)', 'Praszka (OP)', 'Prochowice (D?)', 'Proszowice (MP)', 'Pr�szk�w (OP)', 'Pruchnik (PK)', 'Prudnik (OP)', 'Prusice (D?)', 'Pruszcz Gda�ski (PM)', 'Pruszk�w (MZ)', 'Przasnysz (MZ)', 'Przec�aw (PK)', 'Przedb�rz (�D)', 'Przedecz (WP)', 'Przemk�w (D?)', 'Przemy?l (PK)', 'Przeworsk (PK)', 'Przysucha (MZ)', 'Pszczyna (?L)', 'Psz�w (?L)', 'Puck (PM)', 'Pu�awy (LB)', 'Pu�tusk (MZ)', 'Puszczykowo (WP)', 'Pyrzyce (ZP)', 'Pyskowice (?L)', 'Pyzdry (WP)', 'Rabka-Zdr�j (MP)', 'Raci�� (MZ)', 'Racib�rz (?L)', 'Radk�w (D?)', 'Radlin (?L)', 'Rad��w (MP)', 'Radom (MZ)', 'Radomsko (�D)', 'Radomy?l Wielki (PK)', 'Radymno (PK)', 'Radziej�w (KP)', 'Radzionk�w (?L)', 'Radzymin (MZ)', 'Radzy� Che�mi�ski (KP)', 'Radzy� Podlaski (LB)', 'Rajgr�d (PL)', 'Rakoniewice (WP)', 'Raszk�w (WP)', 'Rawa Mazowiecka (�D)', 'Rawicz (WP)', 'Recz (ZP)', 'Reda (PM)', 'Rejowiec Fabryczny (LB)', 'Resko (ZP)', 'Reszel (WM)', 'Rogo?no (WP)', 'Ropczyce (PK)', 'R�an (MZ)', 'Ruciane-Nida (WM)', 'Ruda ?l�ska (?L)', 'Rudnik nad Sanem (PK)', 'Rumia (PM)', 'Rybnik (?L)', 'Rychwa� (WP)', 'Rydu�towy (?L)', 'Rydzyna (WP)', 'Ryglice (MP)', 'Ryki (LB)', 'Ryman�w (PK)', 'Ryn (WM)', 'Rypin (KP)', 'Rzepin (LS)', 'Rzesz�w (PK)', 'Rzg�w (�D)', 'Sandomierz (?K)', 'Sanok (PK)', 'Sejny (PL)', 'Serock (MZ)', 'S�dzisz�w (?K)', 'S�dzisz�w Ma�opolski (PK)', 'S�popol (WM)', 'S�p�lno Kraje�skie (KP)', 'Sian�w (ZP)', 'Siechnice (D?)', 'Siedlce (MZ)', 'Siedliszcze (LB)', 'Siemianowice ?l�skie (?L)', 'Siemiatycze (PL)', 'Sieniawa (PK)', 'Sieradz (�D)', 'Sierak�w (WP)', 'Sierpc (MZ)', 'Siewierz (?L)', 'Skalbmierz (?K)', 'Ska�a (MP)', 'Skarszewy (PM)', 'Skaryszew (MZ)', 'Skar�ysko-Kamienna (?K)', 'Skawina (MP)', 'Sk�pe (KP)', 'Skierniewice (�D)', 'Skocz�w (?L)', 'Skoki (WP)', 'Sk�rcz (PM)', 'Skwierzyna (LS)', 'S�awa (LS)', 'S�awk�w (?L)', 'S�awno (ZP)', 'S�omniki (MP)', 'S�ubice (LS)', 'S�upca (WP)', 'S�upsk (PM)', 'Sob�tka (D?)', 'Sochaczew (MZ)', 'Soko��w Ma�opolski (PK)', 'Soko��w Podlaski (MZ)', 'Sok�ka (PL)', 'Solec Kujawski (KP)', 'Sompolno (WP)', 'Sopot (PM)', 'Sosnowiec (?L)', 'So?nicowice (?L)', 'Stalowa Wola (PK)', 'Starachowice (?K)', 'Stargard (ZP)', 'Starogard Gda�ski (PM)', 'Stary S�cz (MP)', 'Stasz�w (?K)', 'Stawiski (PL)', 'Stawiszyn (WP)', 'St�pork�w (?K)', 'Stepnica (ZP)', 'St�szew (WP)', 'Stoczek �ukowski (LB)', 'Stopnica (?K)', 'Stronie ?l�skie (D?)', 'Strumie� (?L)', 'Stryk�w (�D)', 'Strzegom (D?)', 'Strzelce Kraje�skie (LS)', 'Strzelce Opolskie (OP)', 'Strzelin (D?)', 'Strzelno (KP)', 'Strzy��w (PK)', 'Sucha Beskidzka (MP)', 'Sucha� (ZP)', 'Suchedni�w (?K)', 'Suchowola (PL)', 'Sulech�w (LS)', 'Sulej�w (�D)', 'Sulej�wek (MZ)', 'Sul�cin (LS)', 'Sulmierzyce (WP)', 'Su�kowice (MP)', 'Supra?l (PL)', 'Sura� (PL)', 'Susz (WM)', 'Suwa�ki (PL)', 'Swarz�dz (WP)', 'Syc�w (D?)', 'Szadek (�D)', 'Szamocin (WP)', 'Szamotu�y (WP)', 'Szczawnica (MP)', 'Szczawno-Zdr�j (D?)', 'Szczebrzeszyn (LB)', 'Szczecin (ZP)', 'Szczecinek (ZP)', 'Szczekociny (?L)', 'Szczucin (MP)', 'Szczuczyn (PL)', 'Szczyrk (?L)', 'Szczytna (D?)', 'Szczytno (WM)', 'Szepietowo (PL)', 'Szklarska Por�ba (D?)', 'Szlichtyngowa (LS)', 'Szprotawa (LS)', 'Sztum (PM)', 'Szubin (KP)', 'Szyd�owiec (MZ)', '?cinawa (D?)', '?lesin (WP)', '?migiel (WP)', '?rem (WP)', '?roda ?l�ska (D?)', '?roda Wielkopolska (WP)', '?wi�tniki G�rne (MP)', '?widnica (D?)', '?widnik (LB)', '?widwin (ZP)', '?wiebodzice (D?)', '?wiebodzin (LS)', '?wiecie (KP)', '?wierad�w-Zdr�j (D?)', '?wierzawa (D?)', '?wi�toch�owice (?L)', '?winouj?cie (ZP)', 'Tarczyn (MZ)', 'Tarnobrzeg (PK)', 'Tarnogr�d (LB)', 'Tarnowskie G�ry (?L)', 'Tarn�w (MP)', 'Tczew (PM)', 'Terespol (LB)', 'T�uszcz (MZ)', 'Tolkmicko (WM)', 'Tomasz�w Lubelski (LB)', 'Tomasz�w Mazowiecki (�D)', 'Toru� (KP)', 'Torzym (LS)', 'Toszek (?L)', 'Trzcianka (WP)', 'Trzciel (LS)', 'Trzci�sko-Zdr�j (ZP)', 'Trzebiat�w (ZP)', 'Trzebinia (MP)', 'Trzebnica (D?)', 'Trzemeszno (WP)', 'Tuchola (KP)', 'Tuch�w (MP)', 'Tuczno (ZP)', 'Tuliszk�w (WP)', 'Turek (WP)', 'Tuszyn (�D)', 'Twardog�ra (D?)', 'Tychowo (ZP)', 'Tychy (?L)', 'Tyczyn (PK)', 'Tykocin (PL)', 'Tyszowce (LB)', 'Ujazd (OP)', 'Uj?cie (WP)', 'Ulan�w (PK)', 'Uniej�w (�D)', 'Urz�d�w (LB)', 'Ustka (PM)', 'Ustro� (?L)', 'Ustrzyki Dolne (PK)', 'Wadowice (MP)', 'Wa�brzych (D?)', 'Wa�cz (ZP)', 'Warka (MZ)', 'Warszawa (MZ)', 'Warta (�D)', 'Wasilk�w (PL)', 'W�brze?no (KP)', 'W�chock (?K)', 'W�growiec (WP)', 'W�sosz (D?)', 'Wejherowo (PM)', 'W�gliniec (D?)', 'W�gorzewo (WM)', 'W�gorzyno (ZP)', 'W�gr�w (MZ)', 'Wi�z�w (D?)', 'Wiele� (WP)', 'Wielichowo (WP)', 'Wieliczka (MP)', 'Wielu� (�D)', 'Wierusz�w (�D)', 'Wi�cbork (KP)', 'Wilamowice (?L)', 'Wis�a (?L)', 'Witkowo (WP)', 'Witnica (LS)', 'Wle� (D?)', 'W�adys�awowo (PM)', 'W�oc�awek (KP)', 'W�odawa (LB)', 'W�oszczowa (?K)', 'Wodzis�aw ?l�ski (?L)', 'Wojciesz�w (D?)', 'Wojkowice (?L)', 'Wojnicz (MP)', 'Wolb�rz (�D)', 'Wolbrom (MP)', 'Wolin (ZP)', 'Wolsztyn (WP)', 'Wo�czyn (OP)', 'Wo�omin (MZ)', 'Wo��w (D?)', 'Wo?niki (?L)', 'Wroc�aw (D?)', 'Wronki (WP)', 'Wrze?nia (WP)', 'Wschowa (LS)', 'Wyrzysk (WP)', 'Wysoka (WP)', 'Wysokie Mazowieckie (PL)', 'Wyszk�w (MZ)', 'Wyszogr�d (MZ)', 'Wy?mierzyce (MZ)', 'Zab�ud�w (PL)', 'Zabrze (?L)', 'Zag�r�w (WP)', 'Zag�rz (PK)', 'Zakliczyn (MP)', 'Zaklik�w (PK)', 'Zakopane (MP)', 'Zakroczym (MZ)', 'Zalewo (WM)', 'Zambr�w (PL)', 'Zamo?� (LB)', 'Zator (MP)', 'Zawadzkie (OP)', 'Zawichost (?K)', 'Zawid�w (D?)', 'Zawiercie (?L)', 'Z�bki (MZ)', 'Z�bkowice ?l�skie (D?)', 'Zb�szynek (LS)', 'Zb�szy� (WP)', 'Zduny (WP)', 'Zdu�ska Wola (�D)', 'Zdzieszowice (OP)', 'Zel�w (�D)', 'Zgierz (�D)', 'Zgorzelec (D?)', 'Zielona G�ra (LS)', 'Zielonka (MZ)', 'Zi�bice (D?)', 'Z�ocieniec (ZP)', 'Z�oczew (�D)', 'Z�otoryja (D?)', 'Z�ot�w (WP)', 'Z�oty Stok (D?)', 'Zwierzyniec (LB)', 'Zwole� (MZ)', '�abno (MP)', '�aga� (LS)', '�arki (?L)', '�ar�w (D?)', '�ary (LS)', '�elech�w (MZ)', '�erk�w (WP)', '�migr�d (D?)', '�nin (KP)', '�ory (?L)', '�ukowo (PM)', '�uromin (MZ)', '�ychlin (�D)', '�yrard�w (MZ)', '�ywiec (?L)');
STREET := streetArray('Agrestowa', 'Akademicka', 'Altanowa', 'Amazonek', 'W�adys�awa Anczyca', 'Tomasza Arciszewskiego', 'Armii Krajowej', 'Arsena�', 'Astronaut�w', 'Astronom�w', 'Astrowa', 'Antoniego Augustynka-Wichury', 'pl. Teodora Axentowicza', 'Azaliowa', 'Bagatela', 'Baka�arzy', 'Balicka', 'Ba�tycka', 'Stefana Banacha', 'Jerzego Samuela Bandtkiego', 'Adriana Baranieckiego', 'Batalionu "Ska�a" AK', 'Batowicka', 'Ba�ancia', 'Klemensa B�kowskiego', 'J�zefa Becka', 'Belwederczyk�w', 'Ludomira Benedyktowicza', 'Maurycego Beniowskiego', 'Berberysowa', 'Wac�awa Berenta', 'Ryszarda Berwi�skiego', 'Bia�a', 'Bia�e Wzg�rze', 'Bia�opr�dnicka', 'Bibicka', 'Franciszka Bielaka', 'Biela�ska', 'in�. Adama Biela�skiego', 'Edmunda Biernackiego', 'Bliska', 'Marii Bobrzeckiej', 'Bociana', 'Bodziszkowa', 'Marcina Borelowskiego "Lelewela"', 'Piotra Borowego', 'Bor�wczana', 'Tadeusza Boya-�ele�skiego', 'Bratys�awska', 'Br�zownicza', '?w. Bronis�awy', 'os. Bronowice Nowe', 'Bronowicka', 'Bruzdowa', 'Brzegowa', 'Piotra Brzezi�skiego', 'Stanis�awa Brzozowskiego', 'Witolda Budryka', 'Budrys�w', 'Bukietowa', 'Bularnia', 'Bulwar Rod�a', 'Bursztynowa', 'Jana Buszka', 'Bydgoska', 'Bytomska', 'Edwarda Bzymka-Strza�kowskiego', 'Cedrowa', 'Chabrowa', 'J�zefa Che�mo�skiego', 'Che�mska', 'Adama Chmiela', 'Chmurna', 'Chocimska', 'Daniela Chodowieckiego', 'Fryderyka Chopina', 'Leona Chwistka', 'Cicha', 'Cichy K�cik', 'Stanis�awa Ciechanowskiego', 'Cieszy�ska', 'Cisowa', 'Josepha Conrada', 'Cyga�ska', 'Czajek', 'Kazimierza Czapi�skiego', 'Czarnowiejska', 'Bronis�awa Czecha', 'Czeladnicza', 'B�a�eja Czepca', 'Czeremchowa', 'Boles�awa Czerwie�skiego', 'Tytusa Czy�ewskiego', 'Czy�yk�w', 'Daleka', 'Wincentego Danka', 'al. Do Kopca', 'Do Obserwatorium', 'Do Przystani', 'Jerzego Dobrzyckiego', 'Dojazdowa', 'Dolina', 'Jaros�awa Doli�skiego', 'Ignacego Domeyki', 'Do�ynkowa', 'Dro�yna', 'Dr�nicka', 'Micha�a Drzyma�y', 'rtm. Zbigniewa Dunin-W�sowicza', 'Dworna', 'So�tysa Dytmara', 'Dzielna', 'Dziewanny', 'Gustawa Ehrenberga', 'J�zefa Elsnera', 'Emaus', 'Estreicher�w', 'Erazma i Stanis�awa Fabija�skich', 'Juliana Fa�ata', 'abp. Zygmunta Szcz�snego Feli�skiego', 'gen. Augusta Fieldorfa-Nila', 'Filarecka', 'Filtrowa', 'Fiszera', 'Flisacka', 'al. marsz. Ferdynanda Focha', 'J�zefa Friedleina', 'Karola Frycza', 'Andrzeja Frycza-Modrzewskiego', 'Gaik', 'Gaj�wka', 'Mahatmy Gandhiego', 'bp. J�zefa Gawliny', 'Gdy�ska', 'Zygmunta Glogera', 'G��boka', 'G�ogowa', 'G�ogowiec', 'Bartosza G�owackiego', 'Gnie?nie�ska', 'Emila Godlewskiego', 'Walerego Goetla', 'Gontyna', 'Gospodarska', 'G�rka Narodowa', 'G�rna', '�ukasza G�rnickiego', 'Ignacego Grabczaka', 'Grabowa', 'Gradowa', 'Gramatyka', 'Gra�yny', 'Grenadier�w', 'Stanis�awa Grochowiaka', 'Groszkowa', 'al. Artura Grottgera', 'Gryczana', 'Jaxy Gryfity', 'Gzymsik�w', 'Wojciecha Halczyna', 'Halki', 'Hamernia', 'Mariana Hemara', 'Kazimierza Herwina-Pi�tka', 'J�zefa Herzoga', 'Vlastimila Hofmana', 'Ho�a', 'Igrc�w', 'Imbramowska', 'pl. Imbramowski', 'Romana Ingardena', 'Insurekcji Ko?ciuszkowskiej', 'pl. Inwalid�w', 'Ludwika Iwaszki', 'Jab�onkowska', 'Jab�onna', 'Kr�lowej Jadwigi', 'Jadwigi z �obzowa', 'Jagie�ka', 'Ja�owcowa', 'Jantarowa', 'Stefana Jaracza', 'Marii Jaremy', 'Jarzynowa', 'Jask�cza', 'Jasna', 'Jasnog�rska', 'Jazowa', 'Jeleniowa', 'Jemio�uszek', 'Jesionowa', 'J�czmienna', 'Jod�owa', 'Jontkowa G�rka', 'Jordanowska', 'Ksi�cia J�zefa', 'J�zefit�w', 'Junacka', 'Jurajska', 'Jerzego Jurowicza', 'Justowska', 'Alojzego Kaczmarczyka', 'Kaczor�wka', 'Kadecka', 'Kadr�wki', 'Macieja Kalenkiewicza', 'J�zefa Ka�u�y', 'Kamedulska', 'Kamienna', 'Mieczys�awa Kar�owicza', 'Tadeusza Kasprzyckiego', 'al. Kasy Oszcz�dno?ci M. Krakowa', 'Stanis�awa Kasznicy', 'al. Kasztanowa', 'Kasztela�ska', 'Kaszubska', 'Katowicka', 'Kawiory', 'Kazimierza Wielkiego', 'al. Kijowska', 'gen. Kiwerskiego', 'Klonowa', 'Kluczborska', 'Piotra Kluzeka', 'Kmieca', 'J�zefa Kmietowicza', 'Kogucia', 'Ko�aczy', 'Ko�o Bia�uchy', 'Ko�o Strzelnicy', 'Ko�owa', 'Boles�awa Komorowskiego', 'al. Konarowa', 'Stanis�awa Konarskiego', 'Feliksa Konecznego', 'Konopna', 'Konwisarzy', 'Kopalina', 'Feliksa Kopery', 'Koralowa', 'Ludmi�y Korbutowej', 'Janusza Korczaka', 'Grzegorza Korzeniaka', 'J�zefa Korzeniowskiego', 'Kosmonaut�w', 'Ireny Kosmowskiej', 'Ko?cielna', 'gen. Tadeusza Ko?ciuszki', 'Jana i J�zefa Kotlarczyk�w', 'Franciszka Kowalskiego', 'Koziar�wka', 'Krakus�w', 'Kra�cowa', 'al. Zygmunta Krasi�skiego', 'J�zefa Ignacego Kraszewskiego', 'Kr�ta', 'Kronikarza Galla', 'Krowoderskich Zuch�w', 'os. Krowodrza G�rka', 'Kr�lewska', 'Krucza', 'Ludwika Krzywickiego', 'Krzywy Zau�ek', 'Krzy��wka', 'dr. Tadeusza Kudli�skiego', 'Kujawska', 'gen. Mariana Kukiela', 'Kuku�cza', 'Stanis�awa Kunickiego', 'Dobies�awa Kurozw�ckiego', 'Ku?nicy Ko���tajowskiej', 'Ku?nicza', 'Eugeniusza Kwiatkowskiego', 'Lajkonika', 'Lazurowa', 'Juliusza Lea', 'Jana Lechonia', 'Legendy', 'Legnicka', 'Lekarska', 'Teofila Aleksandra Lenartowicza', 'Stanis�awa Lentza', 'Leszczynowa', 'Boles�awa Le?miana', 'Le?na', 'Samuela Lindego', 'al. 28 Lipca 1943', 'Lisia', 'al. 29 Listopada', 'Litawora', 'Litewska', 'Lniana', 'Lubelska', 'Jana �azarskiego', '�obzowska', '�owiecka', 'mjr. �upaszki', 'ks. Ferdynanda Machaya', 'Maciejkowa', 'J�zefa Mackiewicza', 'Ma�kowa G�ra', 'al. 3 Maja', 'Jadwigi Maj�wny', 'Tadeusza Makowskiego', 'Jacka Malczewskiego', 'Malinowa', 'Malownicza', 'Mieczys�awa Ma�eckiego', 'Adama Marczy�skiego', 'Margaretek', 'Marynarska', 'Mazowiecka', 'M�czna', 'J�zefa Mehoffera', 'ks. J�zefa Meiera', 'al. Adama Mickiewicza', 'Miechowska', 'Mariana Mi�sowicza', 'Mi�towa', 'Migda�owa', 'Mirowska', 'Misjonarska', 'Mlaskot�w', 'M�odej Polski', 'Zygmunta M�ynarskiego', 'Heleny Modrzejewskiej', 'al. Modrzewiowa', 'Kazimierza Morawskiego', 'Morelowa', 'Most Zwierzyniecki', 'os. Wolfganga Amadeusa Mozarta', 'Mr�wczana', 'Murarska', 'Ludwika Muzyczki', 'Henryka M�ncha', 'prof. Stefana Myczkowskiego', 'Mydlnicka', 'Zygmunta Mys�akowskiego', 'Na B�oniach', 'Na B�onie', 'Na Borach', 'Na Budzyniu', 'Na Cha�upkach', 'Na G�rkach', 'Na Grabinach', 'Na Mostkach', 'Na Nowinach', 'Na Polach', 'Na Polankach', 'pl. Na Stawach', 'Na Wierzchowinach', 'Na Wirach', 'Na Wyr�b�', 'Na Zielonki', 'Nad Strug�', 'Nad Sudo�em', 'Nad Zalewem', 'Nad ?r�d�em', 'Wac�awa Na�kowskiego', 'Narcyzowa', 'Gabriela Narutowicza', 'Nasza', 'W�adys�awa Natansona', 'Nawigacyjna', 'Nawojki', 'Nawojowska', 'Mieczys�awa Niedzia�kowskiego', 'Czes�awa Niemena', 'Nietoperzy', 'Niezapominajek', 'Niska', 'Kazimierza Nitscha', 'Nowa G�rka', 'Nowowiejska', 'pl. Nowowiejski', 'Obop�lna', 'Obo?na', 'Tadeusza Ochlewskiego', 'Odlewnicza', 'Iwona Odrow��a', 'Antoniego Edwarda Ody�ca', 'rondo Ofiar Katynia', 'Ogrodniczek', 'Ojcowska', 'Okr�g', 'Okr�na', 'Okulist�w', 'Olchowa', 'Oleandry', 'Olimpijska', 'Olkuska', 'Olszanicka', 'gen. J�zefa Olszyny-Wilczy�skiego', 'Opolska', 'Orla', 'Orlich Gniazd', 'Orna', 'Wincentego Oszustowskiego', 'O?wi�cimska', 'Mieczys�awa Owcy-Orwicza', 'Owsiana', 'Henryka Pacho�skiego', 'Paj�cza', 'Jana Palacha', 'Palmowa', 'Pami�tna', 'al. Panie�skich Ska�', 'Panoramiczna', 'Papiernicza', 'Pasternik', 'Ludwika Pasteura', 'gen. Franciszka Paszkowskiego', 'Tadeusza Peipera', 'Pejza�owa', 'gen. Tadeusza Pe�czy�skiego', 'P�kowicka', 'Franciszka P�kszyca-Grudzi�skiego', 'Piaskowa', 'Piastowska', 'Piaszczysta', 'Piel�gniarek', 'Stanis�awa Pigonia', 'rtm. Witolda Pileckiego', 'Jana Piwnika "Ponurego"', 'Emilii Plater', 'Pleszowska', 'Pod Fortem', 'Pod Janem', 'Pod Sikornikiem', 'Pod Ska��', 'Pod Sowi�cem', 'Pod Stokiem', 'Pod Strzech�', 'Pod Sulnikiem', 'Pod Sza�cami', 'Pod Szwedem', 'Podchor��ych', 'Podkamyk', 'W�adys�awa Podkowi�skiego', 'Pod��cze', 'Pod�u�na', 'Polna', 'Polnych Kwiat�w', 'Pomorska', 'Poniedzia�kowy D�', 'Karola Popiela', 'Por�ba', 'Porzecze', 'Porzeczkowa', 'Stanis�awa Kostki Potockiego', 'Potoczek', 'Powstania Listopadowego', 'Powstania Styczniowego', 'Poziomkowa', 'Pozna�ska', 'P�nocna', 'Pr�dnicka', 'Proszowicka', 'Boles�awa Prusa', 'Aleksandra Prystora', 'Przegon', 'Przegorzalska', 'Przepi�rcza', 'Przeskok', 'Przesmyk', 'Przy M�yn�wce', 'Stanis�awa Przybyszewskiego', 'Przyjemna', 'Przysz�o?ci', 'W�odzimierza Puchalskiego', 'al. Pustelnika', 'Puszczyk�w', 'Kazimierza Pu�aka', 'Stanis�awa Pyjasa', 'Pylna', 'Rac�awicka', 'W�adys�awa Raczkiewicza', 'Feliksa Radwa�skiego', 'Eljasza Walerego Radzikowskiego', 'Miko�aja Reja', 'Henryka Reymana', 'W�adys�awa Stanis�awa Reymonta', 'R�dzina', 'Jana Zygmunta Robla', 'Henryka Rodakowskiego', 'Tadeusza Rogalskiego', 'Stanis�awa Rokosza', 'Rolnicza', 'Eugeniusza Romera', 'J�zefa Rostafi�skiego', 'Ludomira R�yckiego', 'Rusznikarska', 'Rusznikarska-Deptak', 'Ryba�towska', 'Rybna', 'Lucjana Rydla', 'Rysi Stok', 'Adama Rysiewicza', 'Rzeczna', 'Rzepichy', 'Salwatorska', 'Sarnie Uroczysko', 'Jana Sawickiego', 'Senatorska', 'Ignacego Sewera', 'S�pia', 'ks. Kazimierza Siemaszki', 'Lucjana Siemie�skiego', 'Henryka Sienkiewicza', '6 Sierpnia', 'Siewna', 'Skalna', 'Stanis�awa Skarbi�skiego', 'ks. Piotra Skargi', 'Skibowa', 'Sk�adowa', 'Skotnica', 'Skrajna', 'Macieja S�omczy�skiego', 'S�omnicka', 'S�onecznikowa', 'S�otna', 'al. Juliusza S�owackiego', 'S�owicza', 'Sm�tna', 'Smole�sk', 'Mariana Smoluchowskiego', 'Sokola', 'Ludwika Solskiego', 'Genera�a Stanis�awa Sosabowskiego', 'al. Sosnowa', 'Sosnowiecka', 'prof. Teodora Spiczakowa', 'Spi�owa', 'Spokojna', 'os. Srebrne Uroczysko', 'Piotra Stachiewicza', 'Micha�a Stachowicza', 'Leopolda Staffa', 'Jana Stanis�awskiego', 'Sta�czyka', 'Starego D�bu', 'Starego Wiarusa', 'Starowolska', 'Adama Staszczyka', 'Stawowa', 'Stelmach�w', 'Jana Str�eckiego', 'Zofii Stryje�skiej', 'Strzelnica', 'Jana Styki', 'Suche ��ki', 'Symfoniczna', 'Syreny', 'W�adys�awa Syrokomli', 'Jerzego Szablowskiego', 'Szafirowa', 'Szarotki', 'Szaser�w', 'Feliksa Szlachtowskiego', 'Szopkarzy', 'Karola Szymanowskiego', 'Adolfa Szyszki-Bohusza', '?l�ska', '?mia�a', '?wierkowa', '?wi�tokrzyska', 'Matki PaZofii Tajber', 'Tatarska', 'W�odzimierza Tetmajera', 'Tkacka', 'Juliana Tokarskiego', 'Stanis�awa Tomkowicza', 'Stanis�awa Tondosa', 'Toru�ska', 'Towarowa', 'Trawiasta', 'ks. Stanis�awa Truszkowskiego', 'Waleriana Tumanowicza', 'Turowiec', 'Turystyczna', 'dr. Twardego', 'Uboczna', 'Kornela Ujejskiego', 'Ukryta', 'Urodzajna', 'Urz�dnicza', 'Adama Vetulaniego', 'Waleczna', 'Zygmunta Waliszewskiego', 'Boles�awa Wallek-Walewskiego', 'Wapiennik', 'Warmijska', 'al. Jerzego Waszyngtona', 'W�d�', 'Wojciecha Weissa', 'Wernyhory', 'Wincentego Weryhy-Darowskiego', 'Wesele', 'Wewn�trzna', 'al. W�drownik�w', 'Ludwika W�gierskiego', 'Wiede�ska', 'Wielkotyrnowska', 'gen. Boles�awa Wieniawy-D�ugoszowskiego', 'Kazimierza Wierzy�skiego', 'skwer Wi�?ni�w Oboz�w Zag�ady', 'Wilcza', 'Wilczy Stok', 'Winowc�w', 'Wiosenna', 'Wio?larska', 'Stanis�awa Witkiewicza', 'os. Witkowice Nowe', 'Witkowicka', 'Genera� Marii Wittek', 'Wjazdowa', 'W�adys�awa �okietka', 'W�o?cia�ska', 'W��czk�w', 'Wodoci�gowa', 'Wincentego Wodzinowskiego', '?w. Wojciecha', 'Wojskowa', 'marsz. Miko�aja Wolskiego', 'Micha�a W�jcickiego', 'W�jtowska', 'Wroc�awska', 'J�zefa Wybickiego', 'Leona Wycz�kowskiego', 'Kazimierza Wyki', 'Zygmunta Wyrobka', 'Tadeusza Wyrwy-Furgalskiego', 'Piotra Wysockiego', 'Stanis�awa Wyspia�skiego', 'Kazimierza Wy�gi', 'Za Sk�onem', 'Za Targiem', 'Zaborska', 'Zaczarowane Ko�o', 'Zakamycze', 'Zak�tek', 'Zakliki z Mydlnik', 'Zaklucze', 'Zakr�t', 'Zaogrodzie', 'Gabrieli Zapolskiej', 'Stanis�awa Zaremby', 'Zarudawie', 'Zarzecze', 'Zaskale', 'Zaszkolna', 'Za?cianek', 'Zawodzie', 'Zbo�owa', 'Zbroj�w', 'Zdrowa', 'Zefirowa', 'Zgody', 'Zieli�ska', 'Zielone Wzg�rze', 'Zielony D�', 'Zielony Most', 'Zimorodk�w', 'Szymona Zimorowicza', 'Zjazd Rogoziany', 'Z�ota', 'Z�oty R�g', 'Zygmunta Starego', 'Zygmuntowska', 'Dominika ?dzieb�y-Danowskiego', '�abiniec', 'Kaspra �elechowskiego', 'W�adys�awa �ele�skiego', 'Kiejstuta �emaitisa', '�mujdzka', 'al. �ubrowa', '�wirowa', '�ywiczna', 'os. Akademickie', 'os. Alberty�skie', 'Andegawe�ska', 'al. gen. W�adys�awa Andersa', 'Hansa Christiana Andersena', 'Architekt�w', 'Henryka Arctowskiego', 'Artyst�w', 'Gra�yny Bacewicz�wny', 'Bardosa', 'Bartnicza', 'Barwinkowa', 'Barwna', 'Batalionu "Parasol"', 'Batalionu "Zo?ka"', 'Eugeniusza Baziaka', 'Betlejemska', 'Betonowa', 'Bie�czycka', 'pl. Bie�czycki Plac Targowy', 'Mateusza Birkuta', 'Biwakowa', 'Blokowa', 'pl. B�onie-Beszcz', 'J�zefa Bogusza', 'Bogusz�wka', 'os. Bohater�w Wrze?nia', 'Boles�awa Krzywoustego', 'Boles�awa Wstydliwego', 'Kr�lowej Bony', 'al. gen. Tadeusza Bora-Komorowskiego', 'gen. Mieczys�awa Boruty-Spiechowicza', 'Bo�ywoja', 'Branicka', 'W�adys�awa Broniewskiego', 'Bru?nicka', 'Brzeska', 'Budziszy�ska', 'Bukszpanowa', 'Bulwarowa', 'Burzowa', 'Jana Stanis�awa Bystronia', 'Cedy�ska', 'Rozalii Celak�wny', 'Cementowa', 'Centralna', 'pl. Centralny im. Ronalda Reagana', 'os. Centrum A', 'os. Centrum B', 'os. Centrum C', 'os. Centrum D', 'os. Centrum E', 'Maksymiliana i Stanis�awa Cerch�w', 'Cha�upki', 'Cichociemnych AK', 'Ciekowiec', 'Cienista', 'Ciep�ownicza', 'Ernesta Cie?lewskiego', 'Haliny Cie?li�skiej-Brzeskiej', 'Cuplowa', 'Cyprys�w', 'W�adys�awa Czaplickiego', 'Czarnolaska', 'Czecze�ska', 'Czerwonego Kapturka', 'Czy�y�ska', 'rondo Czy�y�skie', 'Gustawa Dani�owskiego', 'Karola Darwina', 'Marii D�browskiej', 'Deszczowa', 'Romana Dmowskiego', 'Do Fortu', 'Do Wis�y', 'Dobrego Pasterza', 'Dolna', 'Dolnom�y�ska', 'Dro�yska', 'Xawerego Dunikowskiego', 'Benedykta Dybowskiego', 'Dymarek', 'os. Dywizjonu 303', 'rondo Dywizjonu 308', 'Dziekanowicka', 'Fatimska', 'ks. Kazimierza Figlewicza', 'Henryka Flame', 'Romana Florera', 'Walentego Florkowskiego', 'Folwarczna', 'Emila Freegego', 'Jana Gajocha', 'Konstantego Ildefonsa Ga�czy�skiego', 'p�k. Edwarda Gardy-Godlewskiego', 'Geodet�w', 'Miko�aja Gerlaha', 'Jerzego Giedroycia', 'Glinik', 'G��binowa', 'Cypriana Godebskiego', 'os. G�rali', 'Graniczna', 'Gr�by', 'Gr�ba�owska', 'Bart�omieja Groickiego', 'Grzegorza z Sanoka', 'Gwarecka', 'Habina', 'os. Handlowe', 'Hektary', 'Henryka Brodatego', 'rondo Hipokratesa', 'Ho�du Pruskiego', 'os. Hutnicze', 'Micha�a Hutnika', 'Franciszka Hynka', 'Igo�omska', 'Karola Irzykowskiego', 'Isep', 'Jad?wing�w', 'Anny Jagiellonki', 'os. Jagiello�skie', 'Jagienki', 'Jaglana', 'Jana Kazimierza', 'Jana Olbrachta', 'al. Jana Paw�a II', 'ks. Kazimierza Jancarza', 'Czes�awa Janczarskiego', 'Tomasza Janiszewskiego', 'Jarz�biny', 'Jase�kowa', 'Jasia i Ma�gosi', 'Miko�aja Jaskra', 'Jaskrowa', 'Jacka Jezierskiego', 'Jeziorany', 'Jeziorko', 'Je�ynowa', 'Jubileuszowa', 'Jutrzenka', 'Jutrzy�ska', 'Kacze�cowa', 'ks. Zygmunta Kaczy�skiego', 'os. Kalinowe', 'Kalwi�ska', 'Mieczys�awa Kamberskiego', 'Kamionka', 'Kantorowicka', 'Karasi�wka', 'gen. Micha�a Karaszewicza-Tokarzewskiego', 'Karowa', 'Kazimierza Jagiello�czyka', 'Kazimierza Sprawiedliwego', 'os. Kazimierzowskie', 'K�kolowa', 'K�pska', 'Wincentego Kirchmajera', 'Stefana Kisielewskiego', 'Klasztorna', 'gen. Franciszka Kleeberga', 'Juliusza Kleinera', 'Klemensa z Ruszczy', 'K�osowa', 'Stanis�awa K�osowskiego', 'Kmicica', 'Franciszka Knia?nina', 'Kocmyrzowska', 'rondo Kocmyrzowskie', '?w. Maksymiliana Marii Kolbego', 'pl. ?w. Maksymiliana Marii Kolbego', 'Kol�dnicza', 'os. Kolorowe', 'Komasy', 'os. Kombatant�w', 'Boles�awa Kontryma', 'Kopaniec', 'Wojciecha Korfantego', 'Jerzego Korohody', 'Korony Polskiej', 'skwer II Korpusu Pol. Si� Zbr. na Zach.', 'Kos�w', 'Ko?cielnicka', 'os. Ko?ciuszkowskie', 'Marii Kownackiej', 'os. Krakowiak�w', 'J�zefa Krasnowolskiego', 'Jana Kremskiego', 'Wac�awa Kr�la', 'Kruszwicka', 'Krzes�awicka', 'Ku Raciborowicom', 'Marka Kubli�skiego', 'ks. Miko�aja Kuczkowskiego', 'Zofii Kulinowskiej', 'Kupa�y', 'ks. J�zefa Kurzei', 'Ku?nierska', 'Kwiat�w Polskich', 'Lasowisko', 'Lawendowa', 'Tadeusza Lehra-Sp�awi�skiego', 'Stanis�awa Lema', 'os. Lesisko', 'Leszka Bia�ego', 'Leszka Czarnego', 'rondo ppor. pil. Janiny Lewandowskiej', 'Lubocka', 'Luborzycka', 'Lud?mierska', 'ks. Mariana Luzara', '�azowa', '��cka', 'Stanis�awa �empickiego', '��czycka', '��gowa', 'El�biety �okietk�wny', 'Jacka Augustyna �opackiego', 'Karola �owi�skiego', 'W�adys�awa �ozi�skiego', '�ubinowa', '�uczanowicka', 'rondo gen. Stanis�awa Maczka', 'Kornela Makuszy�skiego', 'Ma�ego Ksi�cia', 'Marglowa', 'Mariana Markowskiego', 'Martenowska', 'Szymona Marycjusza', 'Kr�lowej Marysie�ki', 'ks. Stefana Mazanka', 'Mieczys�awa Medweckiego', 'Mierniczych', 'Stanis�awa Mierzwy', 'Stanis�awa Miko�ajczyka', 'os. Mistrzejowice', 'Mistrzejowicka', 'Mi?nie�ska', 'os. M�odo?ci', 'M�otk�w', 'gen. Bernarda Monda', 'Gustawa Morcinka', 'Morgi', 'Ludwika Hieronima Morstina', 'Hanny Mortkowicz-Olczakowej', 'Morwowa', 'Jana Mosdorfa', 'Ignacego Mo?cickiego', 'Mrozowa', 'Andrzeja Mycielskiego', 'os. Na Lotnisku', 'Na ��kach', 'Na Niwach', 'os. Na Skarpie', 'os. Na Stoku', 'os. Na Wzg�rzach', 'Na Za��czu', 'Na Zboczu', 'Nad Baran�wk�', 'Nad D�ubni�', 'Nadbrzezie', 'Nadwodna', 'Nag�owicka', 'Narciarska', 'Nastrojowa', 'Marcelego Nenckiego', 'Nieby�a', 'os. Niepodleg�o?ci', 'Niepokalanej Panny Marii', 'Niepo�omska', 'Nieszawska', 'Niewielka', 'Nowohucka', 'Nowolipki', 'Obro�c�w Krzy�a', 'Obro�c�w Warszawy', 'Obwodowa', 'Odm�towa', 'Odmogile', 'Og��czyzna', 'Ognistych Wici', 'os. Ogrodowe', 'gen. Leopolda Okulickiego', 'Organki', 'W�adys�awa Orkana', 'Or�a Bia�ego', 'Aleksandra Or�owskiego', 'Ludwika Osieckiego', 'Osiedle', 'J�zefa Ostafina', 'Ostr�w', 'Ostr�wka', 'os. O?wiecenia', 'pl. Piotra O�a�skiego', 'bp. Filipa Padniewskiego', 'J�zefa Pankiewicza', 'Teodora Parnickiego', 'Pastelowa', 'Pasterska', 'Perkuna', 'Sandora Pet�fiego', 'Piasta Ko�odzieja', 'os. Piast�w', 'Pi�czowska', 'Piotrusia Pana', 'Planty Bie�czyckie', 'Plastusia', 'Pla�owa', 'Kazimierza Pluty-Czachowskiego', 'P�aska', 'P�omyczka', 'P�oszczyny', 'Pod Gajem', 'Podbagnie', 'Podbia�owa', 'Longinusa Podbipi�ty', 'Podleska', 'Podrzecze', 'Podstawie', 'al. Pokoju', 'Gustawa Pokrzywki', 'Poleg�ych w Krzes�awicach', 'Poleska', 'Braci Polskich', 'Polskiego Czerwonego Krzy�a', 'Pomykany', 'Stanis�awa Augusta Poniatowskiego', 'Popielid�w', 'Popielnik', 'Janiny Porazi�skiej', 'Powiatowa', 'Powojowa', 'Powsta�c�w', 'Romana Prawoche�skiego', 'Adama Pr�chnika', 'Pruska', 'Zdzis�awa Przebindowskiego', 'Przemys�awa II', 'os. Przy Arce', 'Juliana Przybosia', 'al. Przyja?ni', 'Przylasek', 'Przymiarki', 'Franciszka Ptaka', 'Tadeusza Ptaszyckiego', 'os. 2 Pu�ku Lotniczego', 'Pysocice', 'Pyso�ce', 'Barbary Radziwi���wny', 'W�ze� Drogowy gen. Ludomi�a Rayskiego', 'Henryka Rowida', 'R�wna', 'al. R�', 'Rudni', 'Rumiankowa', 'Rusiecka', 'Rycerska', 'marsz. Edwarda Rydza-?mig�ego', 'Rzepakowa', 'Sajak�wka', 'Opata Salwi�skiego', 'Samorz�dowa', 'Stanis�awa Samostrzelnika', 'Magdaleny Samozwaniec', 'Zbigniewa Seiferta', 'ks. kard. Adama Stefana Sapiehy', 'Sasanek', 'J�zefa Sawy-Cali�skiego', 'Braci Schindler�w', 'Siej�wka', 'Wac�awa Sieroszewskiego', 'Sierpowa', 'Sikorki', 'Sitowiny', 'Siwka', 'Stanis�awa Skar�y�skiego', 'W�adys�awa Skoczylasa', 'Skr�cona', 'os. S�oneczne', 'S�owicza', 'Soczyny', 'al. Solidarno?ci', 'So�tysowska', 'Sp�awy', 'os. Sportowe', 'os. Sp�dzielcze', 'Spytka z Melsztyna', 'Srebrnych Or��w', 'Stadionowa', 'Stalowa', 'os. Stalowe', 'Stare Wi?lisko', 'Stary Go?ciniec', 'Franciszka Stefczyka', 'Izydora Stella-Sawickiego', 'Stokowa', 'Andrzeja Stopki', 'Str�cka', 'Andrzeja Struga', 'Strumyk', 'os. J�zefa Strusia', 'Studzienna', 'Styczna', 'Suchy Jar', 'Sulis�awa', 'Swaro�yca', 'Sybirak�w', 'Marka Sycha', 'Syrachowska', 'Szafra�ska', 'Jerzego Szajnowicza-Iwanowa', 'por. Szczeklika', 'os. Szklane Domy', 'os. Szkolne', 'Szlifierska', 'Szybka', 'Edwarda Szyma�skiego', '?liwkowa', '?widnicka', '?wi�tej Rodziny', 'Tabaczna', 'Tarasowa', 'Tatarakowa', 'os. Teatralne', 'bp. Piotra Tomickiego', 'Truskawkowa', 'Trzcinowa', 'Trzech Kr�li', 'pl. Marii Turzymy', 'Juliana Tuwima', 'Franciszka Twaroga', 'Tymiankowa', 'os. Tysi�clecia', 'Ubeliny', 'Ujastek', 'Ujastek Mogilski', 'Uniwersa�u Po�anieckiego', 'Urbanist�w', 'gen. Witolda Urbanowicza', 'os. Urocze', 'Urszulki', 'Henryka Uziemb�y', 'Wadowska', 'Andrzeja Walig�rskiego', 'os. Wandy', 'Melchiora Wa�kowicza', 'Wawelska', 'W�wozowa', 'W�grzynowicka', 'Franciszka W�yka', 'Narcyza Wiatra', 'Wiatraczna', 'Wi�zowa', 'Macieja Wielgusa', 'Wielkich Piec�w', 'Wielkie Pola', 'Miko�aja Wierzynka', 'Wiewi�rcza', 'Wiklinowa', 'os. Willowe', '?w. Wincentego', 'Wi?licka', 'Jeremiego Wi?niowieckiego', 'Wi?niowy Sad', 'Edwarda Wittiga', 'W�adys�awa IV', 'W�adys�awa Jagie��y', 'Bronis�awa W�odarczyka', 'pl. Bogdana W�osika', 'Wodocza', 'Wodzickich', 'Stanis�awa Wojciechowskiego', 'Wojenna', 'Micha�a Wo�odyjowskiego', 'Wo?nic�w', 'Wr�enicka', 'Wrzosowa', 'Wyci�ska', 'Stanis�awy Wysockiej', 'os. Wysokie', 'Za G�r�', 'Za Ogrodem', 'Franciszka Zab�ockiego', 'Jakuba Zachemskiego', 'Zag�oby', 'Zago?ciniec', 'Zaj�cza', 'Zakarnie', 'Zak�pie', 'Zak�adowa', 'Zakole', 'Andrzeja i J�zefa Za�uskich', 'Zapor�bie', 'Zapusta', 'ks. J�zefa Zastawniaka', 'Zawielgusie', 'Jerzego Zawieyskiego', 'Zbyszka z Bogda�ca', 'Zes�awicka', 'os. Zgody', 'Ziarkowa', 'os. Zielone', 'Zielony Jar', 'Ziemianek', 'Ziemska', 'Zjazdu Gnie?nie�skiego', 'Z�oczowska', 'os. Z�otego Wieku', 'os. Z�otej Jesieni', 'Zuch�w', '�aglowa', 'Stefana �eromskiego', '�onkilowa', '��wia', 'Abrahama', 'W�ze� �agiewnicki im. ks.kard. Adama Stefana Sapiehy', 'Agatowa', 'Agawy', 'Alba�ska', 'Albatros�w', 'Adolfa Aleksandrowicza', 'Aleksandry', 'Algierska', 'Amarantowa', 'Ametystowa', 'Iwona Andricia', 'J�zefa Andrusikiewicza', 'Andrychowska', 'Anusi', 'Arktyczna', 'Armii "Krak�w"', 'Babiego Lata', 'Babinicza', 'dr. J�zefa Babi�skiego', 'Krzysztofa Kamila Baczy�skiego', 'Andrzeja Badurskiego', 'Bagienna', 'Bagrowa', 'Balan�wka', 'Stanis�awa Balickiego', 'Micha�a Ba�uckiego', 'Tadeusza Banachiewicza', 'Barbary', 'Piotra Bardowskiego', 'Barska', 'prof. Wojciecha Marii Bartla', 'Bartnik�w', 'p�k. Barty', 'Barycka', 'Henryka Barycza', 'Bastionowa', 'Batalion�w Ch�opskich', 'Mariana Batki', 'Bazarowa', 'Kaspra Ba�anki', 'Bednarska', 'J�zefa Bellerta', 'W�adys�awa Be�zy', '?w. Benedykta', 'Benedykty�ska', 'Berdyczowska', 'Beskidzka', 'Bia�a Droga', 'Bia�oruska', 'Bia�ostocka', 'Marcina Bielskiego', 'prof. Janiny Bieniarz�wny', 'Ludwika Bierkowskiego', 'Biernata z Lublina', 'Biesiadna', 'Bieszczadzka', 'Bie�anowska', 'Billewicz�w', 'Biskupi�ska', 'Blacharska', 'Bluszczowa', 'B�awatkowa', 'B�otna', 'B�otniska', 'Bobrowa', 'prof. Micha�a Bobrzy�skiego', 'Adama Bochenka', 'o. J�zefa Boche�skiego', 'prof. Adama Bochnaka', 'Boczna', 'Bocznica', 'Bodzowska', 'Karola Bogdanowicza', 'Wincentego Bogdanowskiego', 'Bogucianka', 'Bogucicka', 'pl. Bohater�w Getta', 'Bojan�wka', 'Jakuba Bojki', 'Boles�awa ?mia�ego', 'Bonarka', 'Czes�awa Boraty�skiego', 'Borkowska', 'Borkowskie B�onia', 'Borowinowa', 'Borsucza', 'Christo Botewa', 'Do Sanktuarium Bo�ego Mi�osierdzia', 'B�r', 'Konstantego Brandla', 'Braterska', 'Braterstwa Broni', 'Kazimierza Brodzi�skiego', 'Browarniana', 'Jana Bro�ka', 'Aleksandra Br�cknera', 'Brzask', 'Bugaj', 'Franciszka Bujaka', 'Bukowa', 'Bulwar Podolski', 'Bulwar Poleski', 'Bulwar Wo�y�ski', 'Bu�garska', 'Jana Bu�haka', 'Karola Bunscha', 'Buraczana', 'Burgundzka', 'Butrym�w', 'Bystra', 'Cechowa', 'Cegielniana', 'Ceglarska', 'Celna', 'Centkiewicz�w', 'Benedykta Cesarza', 'Tytusa Cha�ubi�skiego', 'Heleny Chanieckiej', 'Ch�ci�ska', 'Chlebiczna', 'Ch�odna', 'Ch�opska', 'Chmieleniec', 'Chmielna', 'Chocho�owska', 'Chojnicka', 'Chorzowska', 'Ignacego Chrzanowskiego', 'Ciasna', 'Ciechanowska', 'Ciechoci�ska', 'Ciep�a', 'Ciesielska', 'Adama Cio�kosza', 'Tadeusza Czackiego', 'J�zefa Czajkowskiego', 'Czajna', 'Stefana Czarnieckiego', 'Czarnochowicka', 'Czarnog�rska', 'Czarodziejska', 'Czechos�owacka', 'Szymona Czechowicza', 'Braci Czech�w', 'Henryka Czeczotta', 'prof. Zdzis�awa Czeppe', 'Czerska', 'Rafa�a Czerwiakowskiego', 'Czerwone Maki', 'Czo�gist�w', 'Czorszty�ska', 'Mariana Czuchnowskiego', 'Czwartak�w', 'Emiliana Czyrnia�skiego', 'Czy��wka', 'Mieczys�awy �wikli�skiej', '�wik�owa', 'Daliowa', 'Danal�wka', 'Danusi Jurand�wny', 'Wojciecha Darasza', 'Alfreda Dauna', 'p�k. Stanis�awa D�bka', 'D�browa', 'gen. Henryka D�browskiego', 'D�br�wki', 'Dekarzy', 'Jana Dekerta', 'al. Edwarda Dembowskiego', 'Deotymy', 'ks. W�adys�awa Dercza', 'Dereniowa', 'Stanis�awa D�bickiego', 'D�bnicka', 'Rynek D�bnicki', 'D�boroga', 'D�bowa', 'Macieja D�bskiego', 'Jana D�ugosza', 'Do Groty', 'Do Luboni', 'Do Wilgi', 'Dobczycka', 'Antoniego Dobrowolskiego', 'Mariana Domaga�y', 'Domowa', 'Witolda Doroszewskiego', 'Drewniana', 'Droga Rokadowa', 'Karola i Jerzego Drozdowskich', 'Dro�d�owa', 'Dr�ka', 'Druhny Hanki', 'Drukarska', 'Druskiennicka', 'El�biety Dru�backiej', 'Stanis�awa Dubois', 'pl. Braci Dudzi�skich', 'Du�a G�ra', 'Dworcowa', 'Dworska', 'Dworski Ogr�d', 'Dworzec', 'al. Adolfa Dygasi�skiego', 'Dymnik', 'Dzia�kowa', 'Stanis�awa Dzia�owskiego', 'Dziewiarzy', 'Dzikiej R�y', 'ks. Franciszka D?wigo�skiego', 'Eugeniusza Eibischa', 'W�adys�awa Ekielskiego', 'por. Emira', 'Estakada Obro�c�w Lwowa', 'Esto�ska', 'Facimiech', 'Falista', 'Falowa', 'Fa��cka', 'Rynek Fa��cki', 'Familijna', 'Siostry Faustyny', 'Jerzego Fedkowicza', 'gen. Juliana Filipowicza', 'Leopolda Flanka', 'Forteczna', 'Fosa', 'Aleksandra Fredry', 'Gacki', 'Walerego Gadomskiego', 'Gajowa', 'Galaktyczna', 'J�zefa Ga��zowskiego', 'Ludwika Gardowskiego', 'Wac�awa G�siorowskiego', 'Geolog�w', 'Gerberowa', 'Wojciecha Gersona', 'Aleksandra i Maksymiliana Gierymskich', 'Gilowa', 'Gipsowa', 'Gliniana', 'G�ogowska', 'Gminna', 'Golik�wka', 'Golkowicka', 'Go�a?ka', 'Stanis�awa Go��ba', 'Witolda Gombrowicza', 'Goplana', 'Jana Aleksandra Gorczyna', 'Juliana Goslara', 'Seweryna Goszczy�skiego', 'Go?cinna', 'Go?dzikowa', 'G�rnik�w', 'G�rska', 'Granitowa', 'Grawerska', 'Grochowa', 'Grodzisko', 'Gromady Grudzi��', 'Gromadzka', 'Gronostajowa', 'Gronowa', 'gen. Stefana Grota-Roweckiego', 'rondo Grunwaldzkie', 'W�odzimierza Gruszczy�skiego', 'Aleksandra Gryglewskiego', 'Jana Grzecha', 'Marii Grzegorzewskiej', 'Stanis�awa Grzepskiego', 'Grzybki', 'Gumniska', 'Jana Gumowskiego', 'Jana Gutenberga', 'Gwarna', 'Gwie?dzista', 'Adama Habeli', 'Jana Hallera', 'por. Halszki', 'Jerzego Harasymowicza', 'Harcerska', 'Harcerzy Krakowskich', 'Edwarda Heila', 'Heleny', 'Heligundy', 'Wiktora Heltmana', 'Zbigniewa Herberta', 'Herbowa', 'Gustawa Herlinga-Grudzi�skiego', 'Hetma�ska', 'Jana Heweliusza', 'Hiacyntowa', 'Antoniego Hoborskiego', 'bp. Franciszka Hodura', 'Klementyny Hoffmanowej', 'Tadeusza Hollendra', 'Karola Homolacsa', 'Alojzego Horaka', 'Henryka Hoyera', 'Hubalczyk�w', 'Huculska', 'Hufcowa', 'Aleksandra Humboldta', 'Husarska', 'Franciszka Hypty', 'I�owa', 'Imielna', 'Inicjatywy Lokalnej', 'Irysowa', 'Jaros�awa Iwaszkiewicza', 'Iwonicka', 'Zdzis�awa Jachimeckiego', '?w. Jacka', 'Micha�a i Stanis�awa Jaglarz�w', 'Jagodowa', 'Roberta Jahody', 'W�adys�awa Jakubca', 'Macieja Jakubowskiego', 'Braci Jamk�w', 'Jana XXIII', 'Janas�wka', 'Janowa Wola', 'Jana Janowskiego', 'Jar', 'W�adys�awa Jarockiego', 'Jaros�awska', 'Jasielska', 'Paw�a Jasienicy', 'Feliksa Jasie�skiego', 'gen. Jakuba Jasi�skiego', 'Stanis�awa Jasiukowicza', 'Jastrz�bia', 'Jaworowa', 'Jeleniog�rska', 'Konstantego Jelskiego', 'Jemio�owa', 'Jerozolimska', 'Erazma Jerzmanowskiego', 'Jesienna', 'Je?dziecka', 'Je��w', 'Ludwika J�drzejczyka', 'J�zefi�ska', 'dr. Judyma', 'Jugowicka', 'Juranda ze Spychowa', 'Kacza', 'Juliusza Kadena-Bandrowskiego', 'Wincentego Kad�ubka', 'Kaimska', 'ks. W�adys�awa Kajzera', 'Kaktusowa', 'Kalinowa', 'Kaliska', 'Filipa Kallimacha', 'Kalwaryjska', 'Kameliowa', 'Kamieniarska', 'Kamieniecka', 'gen. Henryka Kamie�skiego', 'Kanarkowa', 'Kapelanka', 'Mieczys�awa Kaplickiego', 'ks. Wojciecha Karabu�y', 'gen. Jana Karcza', 'Karpacka', 'Franciszka Karpi�skiego', 'Kawowa', 'K�cik', 'K�pielowa', 'Antoniego Kenara', 'Ketlinga', 'K�dzierzy�ska', 'Antoniego K�pi�skiego', 'K�pna', 'Romana Kie�kowskiego', 'Braci Kiemlicz�w', 'Jana Kiepury', 'Kazimierza Kierzkowskiego', 'Kijanki', 'Jana Kili�skiego', '?w. Kingi', 'Stanis�awa Klimeckiego', 'Kliniec', 'os. Kliny Borkowskie', 'Sebastiana Klonowica', 'Jana Krzysztofa Kluka', 'Jacka Kluszewskiego', 'Franciszka K�aka', 'K�odzka', 'K�uszy�ska', 'Kminkowa', 'Kobierzy�ska', 'Tadeusza Kochma�skiego', 'Kokosowa', 'Kokotowska', 'Kolarzy', 'Kolejarzy', 'Kolejowa', 'os. Kolejowe', 'Kolista', 'Kolna', 'Kolonijna', 'Stefana Ko�aczkowskiego', 'Ko�obrzeska', 'Ko�odziejska', 'Komandos�w', 'Komuny Paryskiej', 'Konfederacka', 'Marii Konopnickiej', 'Konwaliowa', 'Izydora Kopernickiego', 'Koprowa', 'Ludomi�a Korczy�skiego', 'Kordiana', 'Jana Korepty', 'Kormoran�w', 'Micha�a Korpala', 'Kosiarzy', 'Kosocicka', 'Kazimierza Kostaneckiego', 'Kostrzecka', 'J�zefa Kostrzewskiego', 'Koszali�ska', 'Koszar�wka', 'Koszutki', 'Koszykarska', 'Ko?ciuszkowc�w', 'Floriana Kotowskiego', 'Kot�wka', 'Aleksandra Kotsisa', 'Kowalska', 'Kozia', 'Kozienicka', 'Jana Kozietulskiego', 'Ko?larska', 'Kajetana Ko?miana', 'Krajobrazowa', 'Kraka', 'Krakusa', 'Ignacego Krasickiego', 'Krasowa', 'Krawiecka', 'Kresowa', 'Aleksandra Kr�py', 'Krochmalniki', 'Krokusowa', 'Kro?nie�ska', 'Kr�l�wka', 'Konstantego Krum�owskiego', 'W�adys�awa Krygowskiego', 'Krymska', 'Krystyna z Ostrowa', 'Kryszta�owa', 'Krzemieniecka', 'Krzemionki', 'Krzewowa', 'Edmunda Krzymuskiego', 'Krzywda', 'Adama Krzy�anowskiego', 'Miros�awa Krzy�a�skiego', 'Krzy�toporska', 'Feliksa Ksi�arskiego', 'Ksi�ycowa', 'Kukie�ek Golkowickich', 'p�k. Ryszarda Kukli�skiego', 'Henryka Ku�akowskiego', 'Ferdynanda Kurasia', 'Jana Kurczaba', 'Karola Kurpi�skiego', 'Jerzego Kury�owicza', 'ks. Jana Kusia', 'gen. J�zefa Kustronia', 'gen. Tadeusza Kutrzeby', 'Kwatery', 'Kwiatowa', 'Kwiecista', 'Kwietna', 'Lanckoro�ska', 'Lwa Landaua', 'Jerzego Lande', 'Lasek', 'Laskowa', 'Lasog�rska', 'pl. Lasoty', 'Las�wka', 'Konstantego Laszczki', 'Lauda�ska', 'Lecha', 'Lechicka', 'Lecznicza', 'Legion�w', 'Legion�w J�zefa Pi�sudskiego', 'Franciszka Lei', 'Letnia', 'Anny Libera', 'Libertowska', 'Lilli Wenedy', 'Boles�awa Limanowskiego', 'Wac�awa Lipi�skiego', 'Lipowa', 'Wojciecha Lipowskiego', 'Lipska', 'Lirnik�w', 'Leopolda Lisa-Kuli', 'Li?ciasta', 'Lubostro�', 'Lubuska', 'Ludowa', 'Ludwinowska', 'Ludwisarzy', 'Lusi�ska', 'Lutego Tura', 'Lwowska', '�ab�dzia', 'ks. Pra�ata Mariana �aczka', '�agiewnicka', 'pl. �agiewnicki', '�amana', '�anowa', '�any', '�apanowska', '�azy', '��ce', 'J�zefa �obodowskiego', '�osi�wka', '�owienicka', '��dzka', '�ucznik�w', 'dr. Zygmunta �uczy�skiego', 'Waleriana �ukasi�skiego', '�ukowiec', '�utnia', '�u�ycka', '�ysog�rska', 'Macedo�ska', 'Macierzanki', 'Ma�ka z Bogda�ca', 'gen. Antoniego J�zefa Madali�skiego', 'Madej�wka', 'Madera', 'Magazynowa', 'Magnolii', 'ks. Franciszka Maja', 'Jana Maklakiewicza', 'Makowa', 'Malachitowa', 'Malborska', 'Bronis�awa Malinowskiego', 'Malutka', 'Malwowa', 'Ma�a G�ra', 'Zbigniewa Ma�ka', 'Andrzeja Ma�kowskiego', 'Ma�y P�asz�w', 'J�zefa Marcika', 'Marcowa', 'Heleny Marusarz�wny', 'Franciszka Maryewskiego', 'Marzanny', 'rondo Antoniego Matecznego', 'Matematyk�w Krakowskich', 'Mazurska', 'ks. W�adys�awa M�czy�skiego', 'Medalion�w', 'Medyczna', 'Merkuriusza Polskiego', 'Miarowa', 'Andrzeja Michalika', 'Tadeusza Mici�skiego', 'Miecznik�w', 'Mieczykowa', 'Miejscowa', 'gen. Ludwika Mieros�awskiego', 'Mierzeja Wi?lana', 'Mieszcza�ska', 'harc. Stanis�awa Millana', 'Mi�a', 'Zygmunta Mi�kowskiego', 'Jana Miodo�skiego', 'Mirtowa', 'Stanis�awa Mitery', 'W�adys�awa Mitkowskiego', 'M�odzie�y', 'M�ynowa', 'Maurycego Mochnackiego', 'Mochnaniec', 'Moczyd�o', 'Modra', 'Mogi�ki', 'Mokra', 'Monte Cassino', 'Monterska', 'J�zefa Montwi��a-Mireckiego', 'Macieja Moraczewskiego', 'Paw�a Morawia�skiego', 'J�zefa Morozewicza', 'Most Nowohucki', 'Most Wandy', 'Kazimierza Moszy�skiego', 'Tadeusza Motarskiego', 'Motyla', 'Jana Muszy�skiego', 'Muzyk�w', 'Mydlarska', 'My?lenicka', 'My?liwska', 'Na Do�ach', 'Na Grz�dkach', 'Na Jazkach', 'Na Kli�cu', 'Na Koz��wce', 'Na Leszczu', 'Na �uku', 'Na Obrydki', 'Na Pokusie', 'Na Ustroniu', 'Na Wrzosach', 'Na Zakolu Wis�y', 'Na Zje?dzie', 'Na Zr�bie', 'Nad Czern�', 'Nad Drwin�', 'Nad Fos�', 'Nad Potokiem', 'Nad Seraf�', 'Nadwi?la�ska', 'Nadzieja', 'Na��czowska', 'Zofii Na�kowskiej', 'Narvik', 'Nazareta�ska', 'Nefrytowa', 'Julii Nenko', 'Edmunda Neussera', 'Niebieska', 'Nieca�a', 'Niedzicka', 'Nied?wiedziny', 'Juliana Ursyna Niemcewicza', 'pl. Niepodleg�o?ci', 'Franciszka Niepok�lczyckiego', 'Nier�wna', 'Henryka Niewodnicza�skiego', 'Niwy', 'Normandzka', 'Norymberska', 'Adolfa Nowaczy�skiego', 'Jana Nowaka', 'Maksymiliana Nowickiego', 'Bart�omieja Nowodworskiego', 'Nowogr�dzka', 'Nowohucka', 'Nowos�decka', 'Nowotarska', 'Obozowa', 'Obronna', 'Obrony Ty�ca', 'Obro�c�w Helu', 'Obro�c�w Modlina', 'Obro�c�w Poczty Gda�skiej', 'Obro�c�w Tobruku', 'Ochocza', 'Odrza�ska', 'S�awomira Odrzywolskiego', 'Og�rkowa', 'Ogrodniki', 'Okocimska', 'Stanis�awa Okonia', 'Okopowa', 'Ok�lna', 'Okr�glik', 'Stefana Okrzei', 'Ondraszka', '�ukasza Opali�skiego', 'Opalowa', 'prof. Kazimierza Tadeusza Opa�ka', 'Opatkowicka', 'Zdzis�awa Opiala', 'Opty', 'Oraczy', 'Orawska', 'Orl�t Lwowskich', 'Orlea�ska', 'Orsza�ska', 'Harcmistrza Orszy-Broniewskiego', 'Orzechowa', 'Osikowa', 'Micha�a Ossowskiego', 'Juliusza Osterwy', 'Owocowa', 'Pag�rkowa', 'Antoniego Pajdaka', 'Pana Tadeusza', 'Pa�ska', 'Paproci', 'Parafialna', 'Parkowa', 'Pasieczna', 'Jana Chryzostoma Paska', 'Pastelowa', 'Heleny i Leona Patyn�w', 'ks. Stefana Pawlickiego', 'Paw�a z Krosna', 'Bogumi�a Paw�owskiego', 'Per�owa', 'Leona Petra�yckiego', 'Sergiusza Piaseckiego', 'Pieni�ska', 'Bronis�awa Pierackiego', 'Pierzch�wka', 'Jana Pietrusi�skiego', 'dr. Jana Piltza', 'Pi�karska', 'Hieronima Pinocci', '?w. Piotra', 'Piwna', 'Planty Floriana Nowackiego', 'P�aszowska', 'Kazimierza Pochwalskiego', 'Pochy�a', 'Pocztowa', 'Pod D�bami', 'Pod Gwiazdami', 'al. Pod Kopcem', 'Pod Pomnikiem', 'Pod Strug�', 'Pod Wierzbami', 'Podedworze', 'Podg�rki', 'Podg�rki Tynieckie', 'Rynek Podg�rski', 'Podgwiezdna', 'Podhala�ska', 'Podhalnie', 'Podlesie', 'Pod��ska', 'Podmi��w', 'Podmok�a', 'Podskale', 'os. Podwawelskie', 'Podw�rkowa', 'Filipa Pokuty�skiego', 'Polarna', 'Polonijna', 'Tadeusza Po�omskiego', 'ks. Jerzego Popie�uszki', 'Wac�awa Pop�awskiego', 'Poprzeczna', 'Porfirowa', 'Poroni�ska', 'Port Solny', 'Portowa', 'Andrzeja Potebni', 'Potrzask', 'Jerzego Potrzebowskiego', 'W�adys�awa Poturalskiego', 'Powa�y z Taczewa', 'Powro?nicza', 'al. Powsta�c�w ?l�skich', 'Powsta�c�w Wielkopolskich', 'P�anki', 'Praska', 'Adama Pra�mowskiego', 'al. Elvisa Presleya', 'Prokocimska', 'Promienna', 'Promowa', 'Andrzeja i Zbigniewa Pronaszk�w', 'Stanis�awa Pronia', 'Prosta', 'Ksawerego Pruszy�skiego', 'Tomasza Pryli�skiego', 'Przebi?nieg�w', 'Przecinek', 'Przedwio?nie', 'Przek�tna', 'Prze�azek', 'Prze��cz', 'Prze�om', 'Przemiarki', 'Przemys�owa', 'Przewiewna', 'Przew�z', 'Przy Cegielni', 'Przy Ku?ni', 'Przy Mo?cie', 'Przy Torze', 'Przykopy', 'Przylaszczki', 'Przyrodnicza', 'pl. Przystanek', 'Jana Kantego Przyzby', 'Pszczelna', 'Pszenna', 'Kazimierza Pu�askiego', '8 Pu�ku U�an�w', 'Pustelnia', 'Pustynna', 'Puszkarska', 'Pychowicka', 'W�adys�awa Pytlasi�skiego', 'Rabcza�ska', 'Rabszty�ska', 'Raciborska', 'Rad�owa', 'Zygmunta Radnickiego', 'Radosna', 'Raku?', 'Ratajska', 'Cyryla Ratajskiego', 'R�czna', 'Rdzawa', 'Redemptoryst�w', 'Tadeusza Rejtana', 'Republiki Korczakowskiej', 'R�kawka', 'Wilhelma i Jana Ripper�w', 'Robotnicza', 'Rodzinna', 'Rodziny J�d�w', 'gen. Boles�awa Roi', 'Karola Rollego', 'Rolna', 'Tadeusza Romanowicza', 'Rosista', 'gen. Stanis�awa Rostworowskiego', 'Rozdro�e', 'W�adys�awa Ro�ena-Jaksy', 'R�ana', 'Ruciana', 'Ruczaj', 'Maksymiliana Rutkowskiego', 'Rybitwy', 'Rydl�wka', 'Ludwika Rydygiera', 'Teodora Rygiera', 'Maksyma Rylskiego', 'Rymanowska', 'Rytownicza', 'J�zefa Rzebika', 'Rzemie?lnicza', 'R��cka', 'Andrieja Sacharowa', 'Sadka', 'Salezja�ska', 'Sanatoryjna', 'Sandomierska', 'Sanocka', 'Franciszka Sapalskiego', 'Sarmacka', 'Saska', 'Jana Sas-Zubrzyckiego', 'J�zefa i Floriana Sawiczewskich', 'S�siedzka', 'Bronis�awa Sch�nborna', 'Brunona Schulza', 'Alberta Schweitzera', 'Emilii Sczanieckiej', 'Stefanii Sempo�owskiej', 'Serbska', 'pl. Emila Serkowskiego', 'prof. Tadeusza Seweryna', 'Siarczana', 'Siarczanog�rska', 'Siarczki', 'Sidzi�ska', 'b�. Franciszki Siedliskiej', 'Sielska', 'Kazimierza Siemienowicza', 'Siemomys�a', 'Maksymiliana Si�y-Nowickiego', 'Siostrzana', 'Skalica', 'Zbigniewa Sk�pskiego', 'Sko�czanka', 'Sko?na', 'Skotnicka', 'Skowronia', 'Skromna', 'Jana Skrzetuskiego', 'al. gen. Jana Skrzyneckiego', 'Skwerowa', 'mjr. Mieczys�awa S�abego', 'Walerego S�awka', 'S�omiana', 'S�ona Woda', 'Gabriela S�o�skiego', 'S�upska', 'Smolarzy', 'Jana Smolenia', 'Jerzego Smole�skiego', 'Stanis�awa Smolki', 'Smolna', 'Snozy', 'Snycerska', 'Tadeusza Sobesto', 'Soboniowicka', 'Sob�tka', 'Sodowa', 'Sokolska', 'Andrzeja Soko�owskiego', 'Solarzy', 'Solna', 'Sol�wki', 'Ernesta Solvaya', 'Soroki', 'Sowia', 'Spacerowa', 'Spiska', 'Sporna', 'Sportowa', 'Sp�dzielc�w', 'p�k. J�zefa Spychalskiego', 'os. Srebrne Uroczysko', 'Konrada Srzednickiego', 'Stacyjna', 'Tadeusza Starca', 'Staromostowa', 'Starowiejska', 'Stefana Starzy�skiego', 'Wojciecha Stattlera', 'por. Antoniego Stawarza', 'Stawisko', 'Stepowa', 'St�pice', 'J�zefa St�pnia', 'Stoczniowc�w', 'Stoigniewa', 'Stanis�awa Stoja�owskiego', 'Stefana Stolarza', 'Storczykowa', 'ks. Ignacego Stoszki', 'Stra�acka', 'Str�kowa', 'Stroma', 'Str�a Rybna', 'Strumienna', 'Strycharska', 'Tadeusza Stryje�skiego', 'Studzianki', 'Sucha', 'Henryka Sucharskiego', 'Sudecka', 'gen. J�zefa Su�kowskiego', 'Jana Surzyckiego', 'Swoboda', 'Swoszowicka', 'Szymona Syre�skiego', 'Szaflarska', 'Tadeusza Szafrana', 'Klemensa Szaniawskiego-Junoszy', 'Szara', 'Jacka Szarskiego', 'Szarych Szereg�w', 'Jana Szastera', 'Szczawnicka', 'Szczeci�ska', 'Szczeg�w', 'Karola Szczerbi�skiego', 'Szcz�?liwa', 'Stanis�awa Szczygielskiego', 'Szczygla', 'Szerokie ��ki', 'Szklarska', 'Szkolna', 'Szmaragdowa', 'Szpakowa', 'Szparagowa', 'Jana Izydora Sztaudyngera', 'Aleksandra Szukiewicza', 'Jana Szumca', 'Szuwarowa', 'Jana Szwai', 'Anny Szwed-?niadowskiej', 'Szwedzka', 'Szybisko', 'gen. Antoniego Szyllinga', 'Dezyderego Szymkiewicza', 'Szymona Szymonowica', 'ks. Piotra ?ciegiennego', 'prof. Jana ?laskiego', '?liska', 'Tadeusza ?liwiaka', 'Leopolda ?liwy', 'Leona ?l�sarczyka', '?lusarska', '?nie�na', '?wiatowida', 'Henryka ?widzi�skiego', '?wiebodzicka', '?wie�a', '?wi�toja�ska', 'Taborowa', 'W�adys�awa Takli�skiego', 'Teodora Talowskiego', 'Czes�awa Ta�skiego', 'ks. Karola Targosza', 'Targowa', 'Tarnobrzeska', 'Tarnowska', 'Jana Tarnowskiego', 'Tatrza�ska', 'Leonida Teligi', 'Telimeny', 'T�czowa', 'ks. J�zefa Tischnera', 'Leona Tochowicza', 'Tokarska', 'Topazowa', 'Topiarnia', 'Topograf�w', 'Toporczyk�w', 'Torfowa', 'Torowa', 'Totus tuus', 'Traczy', 'Romualda Traugutta', 'Trawniki', 'Tret�wka', 'Truskawiecka', 'Trybuny Lud�w', 'Tuchowska', 'Tulipanowa', 'Turecka', 'ks. Wincentego Turka', 'Turniejowa', 'Turonia', 'Jerzego Turowicza', 'Twardowskiego', 'Tymotkowa', 'Tyniecka', 'Tynkarzy', 'Jana Leopolda Tyranowskiego', 'Tyrczanka', 'Seweryna Udzieli', 'Uko?na', 'Eugenii Umi�skiej', 'J�zefa Unruga', 'Urocza', 'Urwana', 'U?miech', 'Uzdrowiskowa', 'Leona Wachholza', 'Wadowicka', 'Walgierza Wda�ego', 'Konrada Wallenroda', 'Wa�brzyska', 'Wa�owa', 'Wandejska', 'Wapienna', 'Bernarda Wapowskiego', 'Edwarda Warcha�owskiego', 'Warowna', 'J�zefa Warszewicza', 'Edmunda Wasilewskiego', 'Tadeusza Wa�ewskiego', 'por. W�cha�y', 'Wczasowa', 'Ferdynanda Weigla', 'Piusa Welo�skiego', 'W�gierska', 'W�glarska', 'prof. Boles�awa Wiktora Wicherkiewicza', 'Wichrowa', 'Wid�akowa', 'Widnokr�g', 'Wielicka', 'Wielkanocna', 'Wielog�rska', 'Wierchowa', 'Wierzbowa', 'Wilgotna', 'Winnicka', 'prof. Jerzego Wi?niewskiego', 'Wincentego Witosa', 'Wlotowa', 'W�adys�awa Warne�czyka', 'W�odarska', 'W�oska', 'Wodna', 'Wojciecha z Brudzewa', 'Wojnicka', 'Wolno?ci', 'Wolska', 'Feliksa Wrobela', 'Mieczys�awa Wrony', 'Kmr. Bohdana Wro�skiego', 'Wr�blowicka', 'Wsp�lna', 'ks. Jakuba Wujka', 'Wygrana', 'Wy�om', 'Wypoczynkowa', 'Wyrwa', 'Marii i Boles�awa Wys�ouch�w', 'ks. Prymasa Stefana Wyszy�skiego', 'Wy�ynna', 'Wzg�rze', 'Za Lipkami', 'Za Torem', 'Zabawa', 'Zab�ocie', 'Zaborze', 'Zachodnia', 'Zaciernie', 'Zadworze', 'Zagaje', 'Zagon�w', 'Zag�rze', 'Zagrody', 'ks. Adolfa Zagrodzkiego', 'Zagumnie', 'Zakarczmie', 'Zakle?nie', 'Zakopia�ska', 'Zakrzowiecka', 'Zalesie', 'Zamiejska', 'Zamkni�ta', 'Zamkowa', 'Zam�ynie', 'Jana Zamoyskiego', 'Tomasza Zana', 'Zaporoska', 'Zarosie', 'Mariusza Zaruskiego', 'Wies�awa Zarzyckiego', 'Zatorska', 'Zau�ek', 'os. Zau�ek Jugowicki', 'Zawi�a', 'Zawiszy', 'Zbaraska', 'Zbrojarzy', 'Zbydniowicka', 'Zdrojowa', 'Zdun�w', 'Zdu�ska', 'Aleksandra Zelwerowicza', 'Zembrzycka', 'Zieleniec', 'gen. Bohdana Zieli�skiego', 'Zielna', 'Zielona', 'Zielonog�rska', 'Micha�a Zientary', 'Siostry Zygmunty Zimmer', 'Zimna', 'Stefana Ziobrowskiego', 'Z�ocieniowa', 'Zmartwychwstania Pa�skiego', 'Fryderyka Zolla', 'Zyndrama z Maszkowic', '?r�dlana', '�abia', 'Micha�a �aka', '�ak�w Krakowskich', 'Romana �elazowskiego', '�e�c�w', 'Narcyzy �michowskiej', '�niwna', '�o�nierska', '�urawia', '�ywiecka', '�yzna');
	WHILE CNTR < 1000000 LOOP
			INSERT INTO ADDRESS 
      VALUES(
				CNTR,
				STREET(dbms_random.value(1,2363)),
        CITY(dbms_random.value(1,910)),
				round(dbms_random.value(1,20)),
        round(dbms_random.value(1,20))
        );
			CNTR := CNTR + 1;
	END LOOP;
END;
 /
 
 select count(id) from address
--=====================================================
--CREATE TABLE DIMENSIONS
--=====================================================
CREATE TABLE "DIMENSIONS" ( "ID" INTEGER NOT NULL,
       "WEIGHT" INTEGER,
       "HEIGHT" INTEGER,
       "LENGHT" INTEGER,
       PRIMARY KEY ("ID"));

--=====================================================
--FILL TABLE DIMENSIONS
--=====================================================
DECLARE 
CNTR number(10) :=0;
BEGIN
	WHILE CNTR < 1000000 LOOP
			INSERT INTO DIMENSIONS
      VALUES(
        CNTR,
        round(dbms_random.value(1,900000),3),
        round(dbms_random.value(1,900000),3),
        round(dbms_random.value(1,900000),3)
        );
			CNTR := CNTR + 1;
	END LOOP;
END;
 /
 select * from dimensions
--=====================================================
--CREATE TABLE COMPANY
--=====================================================
CREATE TABLE "COMPANY" ( "ID" INTEGER NOT NULL,
       "NAME" VARCHAR2(255),
       "BA_ACC_NUM" VARCHAR2(200),
       "NIP" VARCHAR2(50),
       "REGON" VARCHAR2(50),
       "ADDRESS_ID" INTEGER,
       PRIMARY KEY ("ID"),
       FOREIGN KEY ("ADDRESS_ID") REFERENCES ADDRESS);

--=====================================================
--FILL TABLE COMPANY
--=====================================================

DECLARE 
CNTR number(10) :=0;
ADDRESSN number(10);
BEGIN
  SELECT COUNT (ID)
  INTO ADDRESSN
  FROM ADDRESS;  
	WHILE CNTR < 1000000 LOOP
			INSERT INTO COMPANY 
      VALUES(
				CNTR,
        dbms_random.string('X', 12),
        round(dbms_random.value(1,9000000000000)),
				round(dbms_random.value(1,10)),
        round(dbms_random.value(1,10)),
        round(dbms_random.value(1,(ADDRESSN-1)))
        );
			CNTR := CNTR + 1;
	END LOOP;
END;
 /

Select * from company
--=====================================================
--CREATE TABLE INVOICE
--=====================================================

CREATE TABLE "INVOICE" ( "ID" INTEGER NOT NULL,
       "NUM" INTEGER,
       "DATE" DATE,
       "PAYMENTTYPE" VARCHAR2(20),
       "ADDRESS_ID" INTEGER,
       PRIMARY KEY ("ID"),
       FOREIGN KEY ("ADDRESS_ID") REFERENCES ADDRESS);

DROP TABLE INVOICE
--=====================================================
--FILL TABLE INVOICE
--=====================================================

DECLARE 
CNTR number(10) :=0;
ADDRESSN number(10);
type typesArray IS VARRAY(950) OF VARCHAR2(50);
PTYPE typesArray;
BEGIN
  PTYPE := typesArray('cash','card','cheque');
  SELECT COUNT (ID)
  INTO ADDRESSN
  FROM ADDRESS;  
	WHILE CNTR < 10000 LOOP
			INSERT INTO INVOICE 
      VALUES(
				CNTR,
        dbms_random.value(1,9000000000000),
				TO_DATE(
              TRUNC(
                   DBMS_RANDOM.VALUE(TO_CHAR(DATE '1995-01-01','J')
                                    ,TO_CHAR(DATE '2016-12-31','J')
                                    )
                    ),'J'
               ),
        PTYPE(dbms_random.value(1,3)),
        round(dbms_random.value(1,(ADDRESSN-1)))
        );
			CNTR := CNTR + 1;
	END LOOP;
END;
 /
SELECT * FROM INVOICE
--=====================================================
--CREATE TABLE SUPPLIER
--=====================================================
CREATE  TABLE "SUPPLIER" ( "ID" INTEGER NOT NULL,
       "LA_SUP_DATE" DATE,
       "NE_SUP_DATE" DATE,
       "SUP_TIME" INTEGER,
       "COMPANY_ID" INTEGER,
       "LA_INVOICE" INTEGER,
       PRIMARY KEY ("ID"),
       FOREIGN KEY ("COMPANY_ID") REFERENCES "COMPANY",
       FOREIGN KEY ("LA_INVOICE") REFERENCES "INVOICE");

--=====================================================
--FILL TABLE SUPPLIER
--=====================================================
DECLARE 
CNTR number(10) :=0;
COMPANYN number(10);
INVOICEN number(10);

BEGIN
  SELECT COUNT (ID)
  INTO COMPANYN
  FROM COMPANY; 
  
  SELECT COUNT (ID)
  INTO INVOICEN
  FROM INVOICE; 
  
	WHILE CNTR < 1000000 LOOP
			INSERT INTO SUPPLIER
      VALUES(
				CNTR,
				TO_DATE(
              TRUNC(
                   DBMS_RANDOM.VALUE(TO_CHAR(DATE '1995-01-01','J')
                                    ,TO_CHAR(DATE '2016-12-31','J')
                                    )
                    ),'J'
               ),
				TO_DATE(
              TRUNC(
                   DBMS_RANDOM.VALUE(TO_CHAR(DATE '1995-01-01','J')
                                    ,TO_CHAR(DATE '2016-12-31','J')
                                    )
                    ),'J'
               ),
        round(dbms_random.value(1,30)),               
        round(dbms_random.value(1,(COMPANYN-1))),
        round(dbms_random.value(1,(INVOICEN-1)))
        );
			CNTR := CNTR + 1;
	END LOOP;
END;
 /
SELECT * FROM SUPPLIER
--=====================================================
--CREATE TABLE CUSTOMER
--=====================================================
CREATE TABLE "CUSTOMER" ( "ID" INTEGER NOT NULL,
       "LA_CON_DATE" DATE,
	     "COMPANY_ID" INTEGER,
       PRIMARY KEY ("ID"),
       FOREIGN KEY ("COMPANY_ID") REFERENCES "COMPANY");

--=====================================================
--FILL TABLE CUSTOMER
--=====================================================
DECLARE 
CNTR number(10) :=0;
COMPANYN number(10);
BEGIN
  SELECT COUNT (ID)
  INTO COMPANYN
  FROM COMPANY;  
	WHILE CNTR < 1000000 LOOP
			INSERT INTO CUSTOMER
      VALUES(
				CNTR,
				TO_DATE(
              TRUNC(
                   DBMS_RANDOM.VALUE(TO_CHAR(DATE '1995-01-01','J')
                                    ,TO_CHAR(DATE '2016-12-31','J')
                                    )
                    ),'J'
               ),
        dbms_random.value(1,COMPANYN)
        );
			CNTR := CNTR + 1;
	END LOOP;
END;
 /
select * from customer
--=====================================================
--CREATE TABLE PERSON
--=====================================================
CREATE TABLE "PERSON" ( "ID" INTEGER NOT NULL,
       "NAME" VARCHAR2(50),
       "L_NAME" VARCHAR2(50),
       "E_MAIL" VARCHAR2(50),
       "PHONE" VARCHAR2(50),
       "FUNCTION" VARCHAR2(50),
	     "ADDRESS_ID" INTEGER,
	     "SUPPLIER_ID" INTEGER,
	     "CUSTOMER_ID" INTEGER,
       PRIMARY KEY ("ID"),
       FOREIGN KEY ("ADDRESS_ID") REFERENCES "ADDRESS",
       FOREIGN KEY ("SUPPLIER_ID") REFERENCES "SUPPLIER",
       FOREIGN KEY ("CUSTOMER_ID") REFERENCES "CUSTOMER");

--=====================================================
--FILL TABLE PERSON
--=====================================================
DECLARE
  CNTR number(10) :=0;  
  ADDRESSN number(10);
  SUPPLIERN number(10);
  CUSTOMERN number(10);
  
  type namesarray IS VARRAY(100) OF VARCHAR2(50);
  f_name namesarray;  
  type surnamesarray IS VARRAY(94) OF VARCHAR2(50);
  l_name surnamesarray;  
  type functionsarray IS VARRAY(4) OF VARCHAR2(50);
  functio functionsarray;
  
  BEGIN
  
  SELECT COUNT (ID)
  INTO ADDRESSN
  FROM ADDRESS;  
  SELECT COUNT (ID)
  INTO SUPPLIERN
  FROM SUPPLIER;
  SELECT COUNT (ID)
  INTO CUSTOMERN
  FROM CUSTOMER; 
  
  f_name := namesarray('Jan', 'Andrzej', 'Piotr', 'Krzysztof', 'Stanis�aw', 'Tomasz', 'Pawe�', 'J�zef', 'Marcin', 'Marek', 'Micha�', 'Grzegorz', 'Jerzy', 'Tadeusz', 'Adam', '�ukasz', 'Zbigniew', 'Ryszard', 'Dariusz', 'Henryk', 'Mariusz', 'Kazimierz', 'Wojciech', 'Robert', 'Mateusz', 'Marian', 'Rafa�', 'Jacek', 'Janusz', 'Miros�aw', 'Maciej', 'S�awomir', 'Jaros�aw', 'Kamil', 'Wies�aw', 'Roman', 'W�adys�aw', 'Jakub', 'Artur', 'Zdzis�aw', 'Edward', 'Mieczys�aw', 'Damian', 'Dawid', 'Przemys�aw', 'Sebastian', 'Czes�aw', 'Leszek', 'Daniel', 'Waldemar','Anna', 'Maria', 'Katarzyna', 'Ma�gorzata', 'Agnieszka', 'Krystyna', 'Barbara', 'Ewa', 'El�bieta', 'Zofia', 'Janina', 'Teresa', 'Joanna', 'Magdalena', 'Monika', 'Jadwiga', 'Danuta', 'Irena', 'Halina', 'Helena', 'Beata', 'Aleksandra', 'Marta', 'Dorota', 'Marianna', 'Gra�yna', 'Jolanta', 'Stanis�awa', 'Iwona', 'Karolina', 'Bo�ena', 'Urszula', 'Justyna', 'Renata', 'Alicja', 'Paulina', 'Sylwia', 'Natalia', 'Wanda', 'Agata', 'Aneta', 'Izabela', 'Ewelina', 'Marzena', 'Wies�awa', 'Genowefa', 'Patrycja', 'Kazimiera', 'Edyta', 'Stefania');
  l_name := surnamesarray('Nowak', 'Kowalski', 'Wi�niewski', 'D�browski', 'Lewandowski', 'W�jcik', 'Kami�ski', 'Kowalczyk', 'Zieli�ski', 'Szyma�ski', 'Wo�niak', 'Koz�owski', 'Jankowski', 'Wojciechowski', 'Kwiatkowski', 'Kaczmarek', 'Mazur', 'Krawczyk', 'Piotrowski', 'Grabowski', 'Nowakowski', 'Paw�owski', 'Michalski', 'Nowicki', 'Adamczyk', 'Dudek', 'Zaj�c', 'Wieczorek', 'Jab�o�ski', 'Kr�l', 'Majewski', 'Olszewski', 'Jaworski', 'Wr�bel', 'Malinowski', 'Pawlak', 'Witkowski', 'Walczak', 'St�pie�', 'G�rski', 'Rutkowski', 'Michalak', 'Sikora', 'Ostrowski', 'Baran', 'Duda', 'Szewczyk', 'Tomaszewski', 'Pietrzak', 'Marciniak', 'Wr�blewski', 'Zalewski', 'Jakubowski', 'Jasi�ski', 'Zawadzki', 'Sadowski', 'B�k', 'Chmielewski', 'W�odarczyk', 'Borkowski', 'Czarnecki', 'Sawicki', 'Soko�owski', 'Urba�ski', 'Kubiak', 'Maciejewski', 'Szczepa�ski', 'Kucharski', 'Wilk', 'Kalinowski', 'Lis', 'Mazurek', 'Wysocki', 'Adamski', 'Ka�mierczak', 'Wasilewski', 'Sobczak', 'Czerwi�ski', 'Andrzejewski', 'Cie�lak', 'G�owacki', 'Zakrzewski', 'Ko�odziej', 'Sikorski', 'Krajewski', 'Gajewski', 'Szymczak', 'Szulc', 'Baranowski', 'Laskowski', 'Brzezi�ski', 'Makowski', 'Zi�kowski', 'Przybylski');
  functio:= functionsarray('szef','prezes','kierownik','dzia� zam�wie�');
  
 WHILE CNTR < 1000000 LOOP
INSERT
INTO PERSON VALUES
  (
    CNTR,
    f_name(dbms_random.value(1,100)),
    l_name(dbms_random.value(1,94)),
    CONCAT (CONCAT( dbms_random.string('X', dbms_random.value(5,11)), '@'),'domena.pl'),
    dbms_random.value(100000000,900000000),
    functio(dbms_random.value(1,4)),
    round(dbms_random.value(1,(ADDRESSN-1))),
    round(dbms_random.value(1,(SUPPLIERN-1))),
    round( dbms_random.value(1,(CUSTOMERN-1)))
  );
     CNTR := CNTR + 1;
   END LOOP;
END;
/

select * from person

select * from address where id = (
select round(dbms_random.value(1,(select count(id) from address))) "round" from dual);

select count(id) from supplier
select count (id) from customer

TRUNCATE TABLE PERSON
--=====================================================
--CREATE TABLE WAREHOUSE
--=====================================================
CREATE TABLE "WAREHOUSE" ( "ID" INTEGER NOT NULL,
       "ADDRESS" INTEGER,
	     "LOG_MANAGER" INTEGER,
	     "CUSTOMER_ID" INTEGER,
       PRIMARY KEY ("ID"),
       FOREIGN KEY ("ADDRESS") REFERENCES "ADDRESS",
       FOREIGN KEY ("LOG_MANAGER") REFERENCES "PERSON",
       FOREIGN KEY ("CUSTOMER_ID") REFERENCES "CUSTOMER");

--=====================================================
--FILL TABLE WAREHOUSE
--=====================================================

DECLARE

  CNTR number(10) :=0; 
  ADDRESSN number(10);
  PERSONN number(10);
  CUSTOMERN number(10);
  
  BEGIN
  
  SELECT COUNT (ID)
  INTO ADDRESSN
  FROM ADDRESS;  
  SELECT COUNT (ID)
  INTO PERSONN
  FROM PERSON;
  SELECT COUNT (ID)
  INTO CUSTOMERN
  FROM CUSTOMER; 

 WHILE CNTR < 1000000 LOOP
  INSERT
  INTO WAREHOUSE VALUES
  (
   CNTR,
   round( dbms_random.value(1,(ADDRESSN-1))),
   round( dbms_random.value(1,(PERSONN-1))),
   round( dbms_random.value(1,(CUSTOMERN-1)))
  );
  CNTR := CNTR + 1;
 END LOOP;
END;
/

select * from warehouse
--=====================================================
--CREATE TABLE SUPPLY
--=====================================================
CREATE TABLE "SUPPLY" ( "ID" INTEGER NOT NULL,
     "DATE" DATE,
	   "QUANTITY" INTEGER,
	   "SUPPLIER_ID" INTEGER,
	   "WAREHOUSE_ID" INTEGER,
       PRIMARY KEY ("ID"),
       FOREIGN KEY ("SUPPLIER_ID") REFERENCES "SUPPLIER",
       FOREIGN KEY ("WAREHOUSE_ID") REFERENCES "WAREHOUSE");

--=====================================================
--FILL TABLE SUPPLY
--=====================================================

DECLARE

  CNTR number(10) :=0; 
  SUPPLIERN number(10);
  WAREHOUSEN number(10);
  
  BEGIN
  
  SELECT COUNT (ID)
  INTO SUPPLIERN
  FROM SUPPLIER;  
  SELECT COUNT (ID)
  INTO WAREHOUSEN
  FROM WAREHOUSE;

 WHILE CNTR < 1000000 LOOP
  INSERT
  INTO SUPPLY VALUES
  (
   CNTR,
   TO_DATE(
       TRUNC(
             DBMS_RANDOM.VALUE(TO_CHAR(DATE '1995-01-01','J')
                             ,TO_CHAR(DATE '2016-12-31','J')
                              )
              ),'J'
        ),
   round( dbms_random.value(1,50000)),
   round( dbms_random.value(1,(SUPPLIERN-1))),
   round( dbms_random.value(1,(WAREHOUSEN-1)))
  );
  CNTR := CNTR + 1;
 END LOOP;
END;
/

select * from supply

--=====================================================
--CREATE TABLE ITEM
--=====================================================
CREATE  TABLE "ITEM" ( "ID" INTEGER NOT NULL,
	   "VALUE" INTEGER,
	   "TAX" INTEGER,
	   "WAREHOUSE_ID" INTEGER,
     PRIMARY KEY ("ID"),
     FOREIGN KEY ("WAREHOUSE_ID") REFERENCES "WAREHOUSE");

--=====================================================
--FILL TABLE ITEM
--=====================================================

DECLARE
  CNTR number(10) :=0; 
  WAREHOUSEN number(10);
  
  BEGIN   
  SELECT COUNT (ID)
  INTO WAREHOUSEN
  FROM WAREHOUSE;

 WHILE CNTR < 1000000 LOOP
  INSERT
  INTO ITEM VALUES
  (
   CNTR,
   round(dbms_random.value(1,5000000)),
   round(dbms_random.value(1,23)),
   round(dbms_random.value(1,(WAREHOUSEN-1)))
  );
  CNTR := CNTR + 1;
 END LOOP;
END;
/

SELECT * FROM ITEM
--=====================================================
--CREATE TABLE ITEM_DIMENSIONS
--=====================================================
CREATE TABLE "ITEM_DIMENSIONS" ( 
	   "ITEM_ID" INTEGER,
	   "DIMENSIONS_ID" INTEGER,
	   FOREIGN KEY ("ITEM_ID") REFERENCES "ITEM",
	   FOREIGN KEY ("DIMENSIONS_ID") REFERENCES "DIMENSIONS" );

--=====================================================
--FILL TABLE ITEM_DIMENSIONS
--=====================================================
DECLARE

  CNTR number(10) :=0; 
  ITEMN number(10);
  DIMENSIONSN number(10);
  
  BEGIN
  
  SELECT COUNT (ID)
  INTO ITEMN
  FROM ITEM;  
  SELECT COUNT (ID)
  INTO DIMENSIONSN
  FROM DIMENSIONS;

 WHILE CNTR < 1000000 LOOP
  INSERT
  INTO ITEM_DIMENSIONS VALUES
  (
   round( dbms_random.value(1,(ITEMN-1))),
   round( dbms_random.value(1,(DIMENSIONSN-1)))
  );
  CNTR := CNTR + 1;
 END LOOP;
END;
/
--=====================================================
--CREATE TABLE INVOICE_ITEM
--=====================================================
CREATE TABLE "INVOICE_ITEM" ( 
	   "ITEM_ID" INTEGER,
	   "INVOICE_ID" INTEGER,
	   FOREIGN KEY ("ITEM_ID") REFERENCES "ITEM",
	   FOREIGN KEY ("INVOICE_ID") REFERENCES "INVOICE" );

--=====================================================
--FILL TABLE INVOICE_ITEM
--=====================================================

DECLARE

  CNTR number(10) :=0; 
  INVOICEN number(10);
  ITEMN number(10);
  
  BEGIN
  
  SELECT COUNT (ID)
  INTO ITEMN
  FROM ITEM;  
  SELECT COUNT (ID)
  INTO INVOICEN
  FROM INVOICE;

 WHILE CNTR < 1000000 LOOP
  INSERT
  INTO ITEM_DIMENSIONS VALUES
  (
   round( dbms_random.value(1,(ITEMN-1))),
   round( dbms_random.value(1,(INVOICEN-1)))
  );
  CNTR := CNTR + 1;
 END LOOP;
END;
/

--=====================================================
--OTHER
--=====================================================
DROP TABLE COMPANY;
DROP TABLE ITEM_DIMENSIONS;

SELECT count(id) FROM ADDRESS;
SELECT count(id) FROM DIMENSIONS;
SELECT count(id) FROM   COMPANY;
SELECT count(id) FROM   INVOICE;
SELECT count(id) FROM  SUPPLIER;
SELECT count(id) FROM   CUSTOMER;
SELECT count(id) FROM   PERSON;
SELECT count(id) FROM   WAREHOUSE;
SELECT count(id) FROM   SUPPLY;
SELECT count(id) FROM   ITEM;
SELECT count(*) FROM ITEM_DIMENSIONS;
SELECT count(*) FROM  INVOICE_ITEM;

TRUNCATE TABLE ADDRESS;
TRUNCATE TABLE DIMENSIONS;
TRUNCATE TABLE COMPANY;
TRUNCATE TABLE INVOICE;
TRUNCATE TABLE SUPPLIER;
TRUNCATE TABLE CUSTOMER;
TRUNCATE TABLE PERSON;
TRUNCATE TABLE WAREHOUSE;
TRUNCATE TABLE SUPPLY;
TRUNCATE TABLE ITEM;
TRUNCATE TABLE ITEM_DIMENSIONS;
TRUNCATE TABLE INVOICE_ITEM;


DROP TABLE ADDRESS;
DROP TABLE DIMENSIONS;
DROP TABLE COMPANY;
DROP TABLE INVOICE;
DROP TABLE SUPPLIER;
DROP TABLE CUSTOMER;
DROP TABLE PERSON;
DROP TABLE WAREHOUSE;
DROP TABLE SUPPLY;
DROP TABLE ITEM;
DROP TABLE ITEM_DIMENSIONS;
DROP TABLE INVOICE_ITEM;

 


       
