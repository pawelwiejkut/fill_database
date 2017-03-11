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
CITY := cityArray('Babimost (LS)', 'Baborów (OP)', 'Baranów Sandomierski (PK)', 'Barcin (KP)', 'Barczewo (WM)', 'Bardo (D?)', 'Barlinek (ZP)', 'Bartoszyce (WM)', 'Barwice (ZP)', 'Be³chatów (£D)', 'Be³¿yce (LB)', 'Bêdzin (?L)', 'Bia³a (OP)', 'Bia³a Piska (WM)', 'Bia³a Podlaska (LB)', 'Bia³a Rawska (£D)', 'Bia³obrzegi (MZ)', 'Bia³ogard (ZP)', 'Bia³y Bór (ZP)', 'Bia³ystok (PL)', 'Biecz (MP)', 'Bielawa (D?)', 'Bielsk Podlaski (PL)', 'Bielsko-Bia³a (?L)', 'Bieruñ (?L)', 'Bierutów (D?)', 'Bie¿uñ (MZ)', 'Bi³goraj (LB)', 'Biskupiec (WM)', 'Bisztynek (WM)', 'Blachownia (?L)', 'B³aszki (£D)', 'B³a¿owa (PK)', 'B³onie (MZ)', 'Bobolice (ZP)', 'Bobowa (MP)', 'Bochnia (MP)', 'Bodzentyn (?K)', 'Bogatynia (D?)', 'Boguchwa³a (PK)', 'Boguszów-Gorce (D?)', 'Bojanowo (WP)', 'Boles³awiec (D?)', 'Bolków (D?)', 'Borek Wielkopolski (WP)', 'Borne Sulinowo (ZP)', 'Braniewo (WM)', 'Brañsk (PL)', 'Brodnica (KP)', 'Brok (MZ)', 'Brusy (PM)', 'Brwinów (MZ)', 'Brzeg (OP)', 'Brzeg Dolny (D?)', 'Brzesko (MP)', 'Brzeszcze (MP)', 'Brze?æ Kujawski (KP)', 'Brzeziny (£D)', 'Brzostek (PK)', 'Brzozów (PK)', 'Buk (WP)', 'Bukowno (MP)', 'Busko-Zdrój (?K)', 'Bychawa (LB)', 'Byczyna (OP)', 'Bydgoszcz (KP)', 'Bystrzyca K³odzka (D?)', 'Bytom (?L)', 'Bytom Odrzañski (LS)', 'Bytów (PM)', 'Che³m (LB)', 'Che³mek (MP)', 'Che³mno (KP)', 'Che³m¿a (KP)', 'Chêciny (?K)', 'Chmielnik (?K)', 'Chocianów (D?)', 'Chociwel (ZP)', 'Chocz (WP)', 'Chodecz (KP)', 'Chodzie¿ (WP)', 'Chojna (ZP)', 'Chojnice (PM)', 'Chojnów (D?)', 'Choroszcz (PL)', 'Chorzele (MZ)', 'Chorzów (?L)', 'Choszczno (ZP)', 'Chrzanów (MP)', 'Ciechanowiec (PL)', 'Ciechanów (MZ)', 'Ciechocinek (KP)', 'Cieszanów (PK)', 'Cieszyn (?L)', 'Ciê¿kowice (MP)', 'Cybinka (LS)', 'Czaplinek (ZP)', 'Czarna Bia³ostocka (PL)', 'Czarna Woda (PM)', 'Czarne (PM)', 'Czarnków (WP)', 'Czchów (MP)', 'Czechowice-Dziedzice (?L)', 'Czelad? (?L)', 'Czempiñ (WP)', 'Czerniejewo (WP)', 'Czersk (PM)', 'Czerwieñsk (LS)', 'Czerwionka-Leszczyny (?L)', 'Czêstochowa (?L)', 'Cz³opa (ZP)', 'Cz³uchów (PM)', 'Czy¿ew (PL)', 'Daleszyce (?K)', 'Dar³owo (ZP)', 'Dšbie (WP)', 'Dšbrowa Bia³ostocka (PL)', 'Dšbrowa Górnicza (?L)', 'Dšbrowa Tarnowska (MP)', 'Debrzno (PM)', 'Dêbica (PK)', 'Dêblin (LB)', 'Dêbno (ZP)', 'Dobczyce (MP)', 'Dobiegniew (LS)', 'Dobra (powiat ³obeski) (ZP)', 'Dobra (powiat turecki) (WP)', 'Dobre Miasto (WM)', 'Dobrodzieñ (OP)', 'Dobrzany (ZP)', 'Dobrzyca (WP)', 'Dobrzyñ nad Wis³š (KP)', 'Dolsk (WP)', 'Drawno (ZP)', 'Drawsko Pomorskie (ZP)', 'Drezdenko (LS)', 'Drobin (MZ)', 'Drohiczyn (PL)', 'Drzewica (£D)', 'Dukla (PK)', 'Duszniki-Zdrój (D?)', 'Dynów (PK)', 'Dzia³dowo (WM)', 'Dzia³oszyce (?K)', 'Dzia³oszyn (£D)', 'Dzierzgoñ (PM)', 'Dzier¿oniów (D?)', 'Dziwnów (ZP)', 'Elblšg (WM)', 'E³k (WM)', 'Frampol (LB)', 'Frombork (WM)', 'Garwolin (MZ)', 'Gšbin (MZ)', 'Gdañsk (PM)', 'Gdynia (PM)', 'Gi¿ycko (WM)', 'Glinojeck (MZ)', 'Gliwice (?L)', 'G³ogów (D?)', 'G³ogów Ma³opolski (PK)', 'G³ogówek (OP)', 'G³owno (£D)', 'G³ubczyce (OP)', 'G³ucho³azy (OP)', 'G³uszyca (D?)', 'Gniew (PM)', 'Gniewkowo (KP)', 'Gniezno (WP)', 'Gogolin (OP)', 'Golczewo (ZP)', 'Goleniów (ZP)', 'Golina (WP)', 'Golub-Dobrzyñ (KP)', 'Go³añcz (WP)', 'Go³dap (WM)', 'Gonišdz (PL)', 'Gorlice (MP)', 'Gorzów ?lšski (OP)', 'Gorzów Wielkopolski (LS)', 'Gostynin (MZ)', 'Gostyñ (WP)', 'Go?cino (ZP)', 'Gozdnica (LS)', 'Góra (D?)', 'Góra Kalwaria (MZ)', 'Górowo I³aweckie (WM)', 'Górzno (KP)', 'Grabów nad Prosnš (WP)', 'Grajewo (PL)', 'Grodków (OP)', 'Grodzisk Mazowiecki (MZ)', 'Grodzisk Wielkopolski (WP)', 'Grójec (MZ)', 'Grudzišdz (KP)', 'Grybów (MP)', 'Gryfice (ZP)', 'Gryfino (ZP)', 'Gryfów ?lšski (D?)', 'Gubin (LS)', 'Hajnówka (PL)', 'Halinów (MZ)', 'Hel (PM)', 'Hrubieszów (LB)', 'I³awa (WM)', 'I³owa (LS)', 'I³¿a (MZ)', 'Imielin (?L)', 'Inowroc³aw (KP)', 'Iñsko (ZP)', 'Iwonicz-Zdrój (PK)', 'Izbica Kujawska (KP)', 'Jab³onowo Pomorskie (KP)', 'Janikowo (KP)', 'Janowiec Wielkopolski (KP)', 'Janów Lubelski (LB)', 'Jaraczewo (WP)', 'Jarocin (WP)', 'Jaros³aw (PK)', 'Jasieñ (LS)', 'Jas³o (PK)', 'Jastarnia (PM)', 'Jastrowie (WP)', 'Jastrzêbie-Zdrój (?L)', 'Jawor (D?)', 'Jaworzno (?L)', 'Jaworzyna ?lšska (D?)', 'Jedlicze (PK)', 'Jedlina-Zdrój (D?)', 'Jedwabne (PL)', 'Jelcz-Laskowice (D?)', 'Jelenia Góra (D?)', 'Jeziorany (WM)', 'Jêdrzejów (?K)', 'Jordanów (MP)', 'Józefów (powiat bi³gorajski) (LB)', 'Józefów (powiat otwocki) (MZ)', 'Jutrosin (WP)', 'Kalety (?L)', 'Kalisz (WP)', 'Kalisz Pomorski (ZP)', 'Kalwaria Zebrzydowska (MP)', 'Ka³uszyn (MZ)', 'Kamienna Góra (D?)', 'Kamieñ Krajeñski (KP)', 'Kamieñ Pomorski (ZP)', 'Kamieñsk (£D)', 'Kañczuga (PK)', 'Karczew (MZ)', 'Kargowa (LS)', 'Karlino (ZP)', 'Karpacz (D?)', 'Kartuzy (PM)', 'Katowice (?L)', 'Kazimierz Dolny (LB)', 'Kazimierza Wielka (?K)', 'Kšty Wroc³awskie (D?)', 'Kcynia (KP)', 'Kêdzierzyn-Ko?le (OP)', 'Kêpice (PM)', 'Kêpno (WP)', 'Kêtrzyn (WM)', 'Kêty (MP)', 'Kielce (?K)', 'Kietrz (OP)', 'Kisielice (WM)', 'Kleczew (WP)', 'Kleszczele (PL)', 'Kluczbork (OP)', 'K³ecko (WP)', 'K³obuck (?L)', 'K³odawa (WP)', 'K³odzko (D?)', 'Knurów (?L)', 'Knyszyn (PL)', 'Kobylin (WP)', 'Koby³ka (MZ)', 'Kock (LB)', 'Kolbuszowa (PK)', 'Kolno (PL)', 'Kolonowskie (OP)', 'Koluszki (£D)', 'Ko³aczyce (PK)', 'Ko³o (WP)', 'Ko³obrzeg (ZP)', 'Koniecpol (?L)', 'Konin (WP)', 'Konstancin-Jeziorna (MZ)', 'Konstantynów £ódzki (£D)', 'Koñskie (?K)', 'Koprzywnica (?K)', 'Korfantów (OP)', 'Koronowo (KP)', 'Korsze (WM)', 'Kosów Lacki (MZ)', 'Kostrzyn (WP)', 'Kostrzyn nad Odrš (LS)', 'Koszalin (ZP)', 'Ko?cian (WP)', 'Ko?cierzyna (PM)', 'Kowal (KP)', 'Kowalewo Pomorskie (KP)', 'Kowary (D?)', 'Kozieg³owy (?L)', 'Kozienice (MZ)', 'Ko?min Wielkopolski (WP)', 'Ko¿uchów (LS)', 'Kórnik (WP)', 'Krajenka (WP)', 'Kraków (MP)', 'Krapkowice (OP)', 'Krasnobród (LB)', 'Krasnystaw (LB)', 'Kra?nik (LB)', 'Krobia (WP)', 'Krosno (PK)', 'Krosno Odrzañskie (LS)', 'Kro?niewice (£D)', 'Krotoszyn (WP)', 'Kruszwica (KP)', 'Krynica Morska (PM)', 'Krynica-Zdrój (MP)', 'Krynki (PL)', 'Krzanowice (?L)', 'Krzepice (?L)', 'Krzeszowice (MP)', 'Krzywiñ (WP)', 'Krzy¿ Wielkopolski (WP)', 'Ksiš¿ Wielkopolski (WP)', 'Kudowa-Zdrój (D?)', 'Kunów (?K)', 'Kutno (£D)', 'Ku?nia Raciborska (?L)', 'Kwidzyn (PM)', 'Lšdek-Zdrój (D?)', 'Legionowo (MZ)', 'Legnica (D?)', 'Lesko (PK)', 'Leszno (WP)', 'Le?na (D?)', 'Le?nica (OP)', 'Lewin Brzeski (OP)', 'Le¿ajsk (PK)', 'Lêbork (PM)', 'Lêdziny (?L)', 'Libiš¿ (MP)', 'Lidzbark (WM)', 'Lidzbark Warmiñski (WM)', 'Limanowa (MP)', 'Lipiany (ZP)', 'Lipno (KP)', 'Lipsk (PL)', 'Lipsko (MZ)', 'Lubaczów (PK)', 'Lubañ (D?)', 'Lubartów (LB)', 'Lubawa (WM)', 'Lubawka (D?)', 'Lubieñ Kujawski (KP)', 'Lubin (D?)', 'Lublin (LB)', 'Lubliniec (?L)', 'Lubniewice (LS)', 'Lubomierz (D?)', 'Luboñ (WP)', 'Lubraniec (KP)', 'Lubsko (LS)', 'Lubycza Królewska (LB)', 'Lwówek (WP)', 'Lwówek ?lšski (D?)', '£abiszyn (KP)', '£añcut (PK)', '£apy (PL)', '£asin (KP)', '£ask (£D)', '£askarzew (MZ)', '£aszczów (LB)', '£aziska Górne (?L)', '£azy (?L)', '£eba (PM)', '£êczna (LB)', '£êczyca (£D)', '£êknica (LS)', '£obez (ZP)', '£ob¿enica (WP)', '£ochów (MZ)', '£omianki (MZ)', '£om¿a (PL)', '£osice (MZ)', '£owicz (£D)', '£ód? (£D)', '£uków (LB)', 'Maków Mazowiecki (MZ)', 'Maków Podhalañski (MP)', 'Malbork (PM)', 'Ma³ogoszcz (?K)', 'Ma³omice (LS)', 'Margonin (WP)', 'Marki (MZ)', 'Maszewo (ZP)', 'Miasteczko ?lšskie (?L)', 'Miastko (PM)', 'Micha³owo (PL)', 'Miechów (MP)', 'Miejska Górka (WP)', 'Mielec (PK)', 'Mieroszów (D?)', 'Mieszkowice (ZP)', 'Miêdzybórz (D?)', 'Miêdzychód (WP)', 'Miêdzylesie (D?)', 'Miêdzyrzec Podlaski (LB)', 'Miêdzyrzecz (LS)', 'Miêdzyzdroje (ZP)', 'Miko³ajki (WM)', 'Miko³ów (?L)', 'Mikstat (WP)', 'Milanówek (MZ)', 'Milicz (D?)', 'Mi³akowo (WM)', 'Mi³om³yn (WM)', 'Mi³os³aw (WP)', 'Miñsk Mazowiecki (MZ)', 'Miros³awiec (ZP)', 'Mirsk (D?)', 'M³awa (MZ)', 'M³ynary (WM)', 'Modliborzyce (LB)', 'Mogielnica (MZ)', 'Mogilno (KP)', 'Moñki (PL)', 'Moršg (WM)', 'Mordy (MZ)', 'Moryñ (ZP)', 'Mosina (WP)', 'Mršgowo (WM)', 'Mrocza (KP)', 'Mrozy (MZ)', 'Mszana Dolna (MP)', 'Mszczonów (MZ)', 'Murowana Go?lina (WP)', 'Muszyna (MP)', 'Mys³owice (?L)', 'Myszków (?L)', 'Myszyniec (MZ)', 'My?lenice (MP)', 'My?libórz (ZP)', 'Nak³o nad Noteciš (KP)', 'Na³êczów (LB)', 'Namys³ów (OP)', 'Narol (PK)', 'Nasielsk (MZ)', 'Nekla (WP)', 'Nidzica (WM)', 'Niemcza (D?)', 'Niemodlin (OP)', 'Niepo³omice (MP)', 'Nieszawa (KP)', 'Nisko (PK)', 'Nowa Dêba (PK)', 'Nowa Ruda (D?)', 'Nowa Sarzyna (PK)', 'Nowa Sól (LS)', 'Nowe (KP)', 'Nowe Brzesko (MP)', 'Nowe Miasteczko (LS)', 'Nowe Miasto Lubawskie (WM)', 'Nowe Miasto nad Pilicš (MZ)', 'Nowe Skalmierzyce (WP)', 'Nowe Warpno (ZP)', 'Nowogard (ZP)', 'Nowogrodziec (D?)', 'Nowogród (PL)', 'Nowogród Bobrzañski (LS)', 'Nowy Dwór Gdañski (PM)', 'Nowy Dwór Mazowiecki (MZ)', 'Nowy Sšcz (MP)', 'Nowy Staw (PM)', 'Nowy Targ (MP)', 'Nowy Tomy?l (WP)', 'Nowy Wi?nicz (MP)', 'Nysa (OP)', 'Oborniki (WP)', 'Oborniki ?lšskie (D?)', 'Obrzycko (WP)', 'Odolanów (WP)', 'Ogrodzieniec (?L)', 'Okonek (WP)', 'Olecko (WM)', 'Olesno (OP)', 'Oleszyce (PK)', 'Ole?nica (D?)', 'Olkusz (MP)', 'Olsztyn (WM)', 'Olsztynek (WM)', 'Olszyna (D?)', 'O³awa (D?)', 'Opalenica (WP)', 'Opatów (?K)', 'Opoczno (£D)', 'Opole (OP)', 'Opole Lubelskie (LB)', 'Orneta (WM)', 'Orzesze (?L)', 'Orzysz (WM)', 'Osieczna (WP)', 'Osiek (?K)', 'Ostro³êka (MZ)', 'Ostroróg (WP)', 'Ostrowiec ?wiêtokrzyski (?K)', 'Ostróda (WM)', 'Ostrów Lubelski (LB)', 'Ostrów Mazowiecka (MZ)', 'Ostrów Wielkopolski (WP)', 'Ostrzeszów (WP)', 'O?no Lubuskie (LS)', 'O?wiêcim (MP)', 'Otmuchów (OP)', 'Otwock (MZ)', 'Ozimek (OP)', 'Ozorków (£D)', 'O¿arów (?K)', 'O¿arów Mazowiecki (MZ)', 'Pabianice (£D)', 'Paczków (OP)', 'Pajêczno (£D)', 'Pako?æ (KP)', 'Parczew (LB)', 'Pas³êk (WM)', 'Pasym (WM)', 'Pelplin (PM)', 'Pe³czyce (ZP)', 'Piaseczno (MZ)', 'Piaski (LB)', 'Piastów (MZ)', 'Piechowice (D?)', 'Piekary ?lšskie (?L)', 'Pieniê¿no (WM)', 'Pieñsk (D?)', 'Pieszyce (D?)', 'Pilawa (MZ)', 'Pilica (?L)', 'Pilzno (PK)', 'Pi³a (WP)', 'Pi³awa Górna (D?)', 'Piñczów (?K)', 'Pionki (MZ)', 'Piotrków Kujawski (KP)', 'Piotrków Trybunalski (£D)', 'Pisz (WM)', 'Piwniczna-Zdrój (MP)', 'Pleszew (WP)', 'P³ock (MZ)', 'P³oñsk (MZ)', 'P³oty (ZP)', 'Pniewy (WP)', 'Pobiedziska (WP)', 'Poddêbice (£D)', 'Podkowa Le?na (MZ)', 'Pogorzela (WP)', 'Polanica-Zdrój (D?)', 'Polanów (ZP)', 'Police (ZP)', 'Polkowice (D?)', 'Po³aniec (?K)', 'Po³czyn-Zdrój (ZP)', 'Poniatowa (LB)', 'Poniec (WP)', 'Porêba (?L)', 'Poznañ (WP)', 'Prabuty (PM)', 'Praszka (OP)', 'Prochowice (D?)', 'Proszowice (MP)', 'Prószków (OP)', 'Pruchnik (PK)', 'Prudnik (OP)', 'Prusice (D?)', 'Pruszcz Gdañski (PM)', 'Pruszków (MZ)', 'Przasnysz (MZ)', 'Przec³aw (PK)', 'Przedbórz (£D)', 'Przedecz (WP)', 'Przemków (D?)', 'Przemy?l (PK)', 'Przeworsk (PK)', 'Przysucha (MZ)', 'Pszczyna (?L)', 'Pszów (?L)', 'Puck (PM)', 'Pu³awy (LB)', 'Pu³tusk (MZ)', 'Puszczykowo (WP)', 'Pyrzyce (ZP)', 'Pyskowice (?L)', 'Pyzdry (WP)', 'Rabka-Zdrój (MP)', 'Raciš¿ (MZ)', 'Racibórz (?L)', 'Radków (D?)', 'Radlin (?L)', 'Rad³ów (MP)', 'Radom (MZ)', 'Radomsko (£D)', 'Radomy?l Wielki (PK)', 'Radymno (PK)', 'Radziejów (KP)', 'Radzionków (?L)', 'Radzymin (MZ)', 'Radzyñ Che³miñski (KP)', 'Radzyñ Podlaski (LB)', 'Rajgród (PL)', 'Rakoniewice (WP)', 'Raszków (WP)', 'Rawa Mazowiecka (£D)', 'Rawicz (WP)', 'Recz (ZP)', 'Reda (PM)', 'Rejowiec Fabryczny (LB)', 'Resko (ZP)', 'Reszel (WM)', 'Rogo?no (WP)', 'Ropczyce (PK)', 'Ró¿an (MZ)', 'Ruciane-Nida (WM)', 'Ruda ?lšska (?L)', 'Rudnik nad Sanem (PK)', 'Rumia (PM)', 'Rybnik (?L)', 'Rychwa³ (WP)', 'Rydu³towy (?L)', 'Rydzyna (WP)', 'Ryglice (MP)', 'Ryki (LB)', 'Rymanów (PK)', 'Ryn (WM)', 'Rypin (KP)', 'Rzepin (LS)', 'Rzeszów (PK)', 'Rzgów (£D)', 'Sandomierz (?K)', 'Sanok (PK)', 'Sejny (PL)', 'Serock (MZ)', 'Sêdziszów (?K)', 'Sêdziszów Ma³opolski (PK)', 'Sêpopol (WM)', 'Sêpólno Krajeñskie (KP)', 'Sianów (ZP)', 'Siechnice (D?)', 'Siedlce (MZ)', 'Siedliszcze (LB)', 'Siemianowice ?lšskie (?L)', 'Siemiatycze (PL)', 'Sieniawa (PK)', 'Sieradz (£D)', 'Sieraków (WP)', 'Sierpc (MZ)', 'Siewierz (?L)', 'Skalbmierz (?K)', 'Ska³a (MP)', 'Skarszewy (PM)', 'Skaryszew (MZ)', 'Skar¿ysko-Kamienna (?K)', 'Skawina (MP)', 'Skêpe (KP)', 'Skierniewice (£D)', 'Skoczów (?L)', 'Skoki (WP)', 'Skórcz (PM)', 'Skwierzyna (LS)', 'S³awa (LS)', 'S³awków (?L)', 'S³awno (ZP)', 'S³omniki (MP)', 'S³ubice (LS)', 'S³upca (WP)', 'S³upsk (PM)', 'Sobótka (D?)', 'Sochaczew (MZ)', 'Soko³ów Ma³opolski (PK)', 'Soko³ów Podlaski (MZ)', 'Sokó³ka (PL)', 'Solec Kujawski (KP)', 'Sompolno (WP)', 'Sopot (PM)', 'Sosnowiec (?L)', 'So?nicowice (?L)', 'Stalowa Wola (PK)', 'Starachowice (?K)', 'Stargard (ZP)', 'Starogard Gdañski (PM)', 'Stary Sšcz (MP)', 'Staszów (?K)', 'Stawiski (PL)', 'Stawiszyn (WP)', 'Stšporków (?K)', 'Stepnica (ZP)', 'Stêszew (WP)', 'Stoczek £ukowski (LB)', 'Stopnica (?K)', 'Stronie ?lšskie (D?)', 'Strumieñ (?L)', 'Stryków (£D)', 'Strzegom (D?)', 'Strzelce Krajeñskie (LS)', 'Strzelce Opolskie (OP)', 'Strzelin (D?)', 'Strzelno (KP)', 'Strzy¿ów (PK)', 'Sucha Beskidzka (MP)', 'Suchañ (ZP)', 'Suchedniów (?K)', 'Suchowola (PL)', 'Sulechów (LS)', 'Sulejów (£D)', 'Sulejówek (MZ)', 'Sulêcin (LS)', 'Sulmierzyce (WP)', 'Su³kowice (MP)', 'Supra?l (PL)', 'Sura¿ (PL)', 'Susz (WM)', 'Suwa³ki (PL)', 'Swarzêdz (WP)', 'Syców (D?)', 'Szadek (£D)', 'Szamocin (WP)', 'Szamotu³y (WP)', 'Szczawnica (MP)', 'Szczawno-Zdrój (D?)', 'Szczebrzeszyn (LB)', 'Szczecin (ZP)', 'Szczecinek (ZP)', 'Szczekociny (?L)', 'Szczucin (MP)', 'Szczuczyn (PL)', 'Szczyrk (?L)', 'Szczytna (D?)', 'Szczytno (WM)', 'Szepietowo (PL)', 'Szklarska Porêba (D?)', 'Szlichtyngowa (LS)', 'Szprotawa (LS)', 'Sztum (PM)', 'Szubin (KP)', 'Szyd³owiec (MZ)', '?cinawa (D?)', '?lesin (WP)', '?migiel (WP)', '?rem (WP)', '?roda ?lšska (D?)', '?roda Wielkopolska (WP)', '?wištniki Górne (MP)', '?widnica (D?)', '?widnik (LB)', '?widwin (ZP)', '?wiebodzice (D?)', '?wiebodzin (LS)', '?wiecie (KP)', '?wieradów-Zdrój (D?)', '?wierzawa (D?)', '?wiêtoch³owice (?L)', '?winouj?cie (ZP)', 'Tarczyn (MZ)', 'Tarnobrzeg (PK)', 'Tarnogród (LB)', 'Tarnowskie Góry (?L)', 'Tarnów (MP)', 'Tczew (PM)', 'Terespol (LB)', 'T³uszcz (MZ)', 'Tolkmicko (WM)', 'Tomaszów Lubelski (LB)', 'Tomaszów Mazowiecki (£D)', 'Toruñ (KP)', 'Torzym (LS)', 'Toszek (?L)', 'Trzcianka (WP)', 'Trzciel (LS)', 'Trzciñsko-Zdrój (ZP)', 'Trzebiatów (ZP)', 'Trzebinia (MP)', 'Trzebnica (D?)', 'Trzemeszno (WP)', 'Tuchola (KP)', 'Tuchów (MP)', 'Tuczno (ZP)', 'Tuliszków (WP)', 'Turek (WP)', 'Tuszyn (£D)', 'Twardogóra (D?)', 'Tychowo (ZP)', 'Tychy (?L)', 'Tyczyn (PK)', 'Tykocin (PL)', 'Tyszowce (LB)', 'Ujazd (OP)', 'Uj?cie (WP)', 'Ulanów (PK)', 'Uniejów (£D)', 'Urzêdów (LB)', 'Ustka (PM)', 'Ustroñ (?L)', 'Ustrzyki Dolne (PK)', 'Wadowice (MP)', 'Wa³brzych (D?)', 'Wa³cz (ZP)', 'Warka (MZ)', 'Warszawa (MZ)', 'Warta (£D)', 'Wasilków (PL)', 'Wšbrze?no (KP)', 'Wšchock (?K)', 'Wšgrowiec (WP)', 'Wšsosz (D?)', 'Wejherowo (PM)', 'Wêgliniec (D?)', 'Wêgorzewo (WM)', 'Wêgorzyno (ZP)', 'Wêgrów (MZ)', 'Wišzów (D?)', 'Wieleñ (WP)', 'Wielichowo (WP)', 'Wieliczka (MP)', 'Wieluñ (£D)', 'Wieruszów (£D)', 'Wiêcbork (KP)', 'Wilamowice (?L)', 'Wis³a (?L)', 'Witkowo (WP)', 'Witnica (LS)', 'Wleñ (D?)', 'W³adys³awowo (PM)', 'W³oc³awek (KP)', 'W³odawa (LB)', 'W³oszczowa (?K)', 'Wodzis³aw ?lšski (?L)', 'Wojcieszów (D?)', 'Wojkowice (?L)', 'Wojnicz (MP)', 'Wolbórz (£D)', 'Wolbrom (MP)', 'Wolin (ZP)', 'Wolsztyn (WP)', 'Wo³czyn (OP)', 'Wo³omin (MZ)', 'Wo³ów (D?)', 'Wo?niki (?L)', 'Wroc³aw (D?)', 'Wronki (WP)', 'Wrze?nia (WP)', 'Wschowa (LS)', 'Wyrzysk (WP)', 'Wysoka (WP)', 'Wysokie Mazowieckie (PL)', 'Wyszków (MZ)', 'Wyszogród (MZ)', 'Wy?mierzyce (MZ)', 'Zab³udów (PL)', 'Zabrze (?L)', 'Zagórów (WP)', 'Zagórz (PK)', 'Zakliczyn (MP)', 'Zaklików (PK)', 'Zakopane (MP)', 'Zakroczym (MZ)', 'Zalewo (WM)', 'Zambrów (PL)', 'Zamo?æ (LB)', 'Zator (MP)', 'Zawadzkie (OP)', 'Zawichost (?K)', 'Zawidów (D?)', 'Zawiercie (?L)', 'Zšbki (MZ)', 'Zšbkowice ?lšskie (D?)', 'Zbšszynek (LS)', 'Zbšszyñ (WP)', 'Zduny (WP)', 'Zduñska Wola (£D)', 'Zdzieszowice (OP)', 'Zelów (£D)', 'Zgierz (£D)', 'Zgorzelec (D?)', 'Zielona Góra (LS)', 'Zielonka (MZ)', 'Ziêbice (D?)', 'Z³ocieniec (ZP)', 'Z³oczew (£D)', 'Z³otoryja (D?)', 'Z³otów (WP)', 'Z³oty Stok (D?)', 'Zwierzyniec (LB)', 'Zwoleñ (MZ)', '¯abno (MP)', '¯agañ (LS)', '¯arki (?L)', '¯arów (D?)', '¯ary (LS)', '¯elechów (MZ)', '¯erków (WP)', '¯migród (D?)', '¯nin (KP)', '¯ory (?L)', '¯ukowo (PM)', '¯uromin (MZ)', '¯ychlin (£D)', '¯yrardów (MZ)', '¯ywiec (?L)');
STREET := streetArray('Agrestowa', 'Akademicka', 'Altanowa', 'Amazonek', 'W³adys³awa Anczyca', 'Tomasza Arciszewskiego', 'Armii Krajowej', 'Arsena³', 'Astronautów', 'Astronomów', 'Astrowa', 'Antoniego Augustynka-Wichury', 'pl. Teodora Axentowicza', 'Azaliowa', 'Bagatela', 'Baka³arzy', 'Balicka', 'Ba³tycka', 'Stefana Banacha', 'Jerzego Samuela Bandtkiego', 'Adriana Baranieckiego', 'Batalionu "Ska³a" AK', 'Batowicka', 'Ba¿ancia', 'Klemensa Bškowskiego', 'Józefa Becka', 'Belwederczyków', 'Ludomira Benedyktowicza', 'Maurycego Beniowskiego', 'Berberysowa', 'Wac³awa Berenta', 'Ryszarda Berwiñskiego', 'Bia³a', 'Bia³e Wzgórze', 'Bia³opršdnicka', 'Bibicka', 'Franciszka Bielaka', 'Bielañska', 'in¿. Adama Bielañskiego', 'Edmunda Biernackiego', 'Bliska', 'Marii Bobrzeckiej', 'Bociana', 'Bodziszkowa', 'Marcina Borelowskiego "Lelewela"', 'Piotra Borowego', 'Borówczana', 'Tadeusza Boya-¯eleñskiego', 'Bratys³awska', 'Bršzownicza', '?w. Bronis³awy', 'os. Bronowice Nowe', 'Bronowicka', 'Bruzdowa', 'Brzegowa', 'Piotra Brzeziñskiego', 'Stanis³awa Brzozowskiego', 'Witolda Budryka', 'Budrysów', 'Bukietowa', 'Bularnia', 'Bulwar Rod³a', 'Bursztynowa', 'Jana Buszka', 'Bydgoska', 'Bytomska', 'Edwarda Bzymka-Strza³kowskiego', 'Cedrowa', 'Chabrowa', 'Józefa Che³moñskiego', 'Che³mska', 'Adama Chmiela', 'Chmurna', 'Chocimska', 'Daniela Chodowieckiego', 'Fryderyka Chopina', 'Leona Chwistka', 'Cicha', 'Cichy Kšcik', 'Stanis³awa Ciechanowskiego', 'Cieszyñska', 'Cisowa', 'Josepha Conrada', 'Cygañska', 'Czajek', 'Kazimierza Czapiñskiego', 'Czarnowiejska', 'Bronis³awa Czecha', 'Czeladnicza', 'B³a¿eja Czepca', 'Czeremchowa', 'Boles³awa Czerwieñskiego', 'Tytusa Czy¿ewskiego', 'Czy¿yków', 'Daleka', 'Wincentego Danka', 'al. Do Kopca', 'Do Obserwatorium', 'Do Przystani', 'Jerzego Dobrzyckiego', 'Dojazdowa', 'Dolina', 'Jaros³awa Doliñskiego', 'Ignacego Domeyki', 'Do¿ynkowa', 'Dro¿yna', 'Dró¿nicka', 'Micha³a Drzyma³y', 'rtm. Zbigniewa Dunin-Wšsowicza', 'Dworna', 'So³tysa Dytmara', 'Dzielna', 'Dziewanny', 'Gustawa Ehrenberga', 'Józefa Elsnera', 'Emaus', 'Estreicherów', 'Erazma i Stanis³awa Fabijañskich', 'Juliana Fa³ata', 'abp. Zygmunta Szczêsnego Feliñskiego', 'gen. Augusta Fieldorfa-Nila', 'Filarecka', 'Filtrowa', 'Fiszera', 'Flisacka', 'al. marsz. Ferdynanda Focha', 'Józefa Friedleina', 'Karola Frycza', 'Andrzeja Frycza-Modrzewskiego', 'Gaik', 'Gajówka', 'Mahatmy Gandhiego', 'bp. Józefa Gawliny', 'Gdyñska', 'Zygmunta Glogera', 'G³êboka', 'G³ogowa', 'G³ogowiec', 'Bartosza G³owackiego', 'Gnie?nieñska', 'Emila Godlewskiego', 'Walerego Goetla', 'Gontyna', 'Gospodarska', 'Górka Narodowa', 'Górna', '£ukasza Górnickiego', 'Ignacego Grabczaka', 'Grabowa', 'Gradowa', 'Gramatyka', 'Gra¿yny', 'Grenadierów', 'Stanis³awa Grochowiaka', 'Groszkowa', 'al. Artura Grottgera', 'Gryczana', 'Jaxy Gryfity', 'Gzymsików', 'Wojciecha Halczyna', 'Halki', 'Hamernia', 'Mariana Hemara', 'Kazimierza Herwina-Pištka', 'Józefa Herzoga', 'Vlastimila Hofmana', 'Ho¿a', 'Igrców', 'Imbramowska', 'pl. Imbramowski', 'Romana Ingardena', 'Insurekcji Ko?ciuszkowskiej', 'pl. Inwalidów', 'Ludwika Iwaszki', 'Jab³onkowska', 'Jab³onna', 'Królowej Jadwigi', 'Jadwigi z £obzowa', 'Jagie³ka', 'Ja³owcowa', 'Jantarowa', 'Stefana Jaracza', 'Marii Jaremy', 'Jarzynowa', 'Jaskó³cza', 'Jasna', 'Jasnogórska', 'Jazowa', 'Jeleniowa', 'Jemio³uszek', 'Jesionowa', 'Jêczmienna', 'Jod³owa', 'Jontkowa Górka', 'Jordanowska', 'Ksiêcia Józefa', 'Józefitów', 'Junacka', 'Jurajska', 'Jerzego Jurowicza', 'Justowska', 'Alojzego Kaczmarczyka', 'Kaczorówka', 'Kadecka', 'Kadrówki', 'Macieja Kalenkiewicza', 'Józefa Ka³u¿y', 'Kamedulska', 'Kamienna', 'Mieczys³awa Kar³owicza', 'Tadeusza Kasprzyckiego', 'al. Kasy Oszczêdno?ci M. Krakowa', 'Stanis³awa Kasznicy', 'al. Kasztanowa', 'Kasztelañska', 'Kaszubska', 'Katowicka', 'Kawiory', 'Kazimierza Wielkiego', 'al. Kijowska', 'gen. Kiwerskiego', 'Klonowa', 'Kluczborska', 'Piotra Kluzeka', 'Kmieca', 'Józefa Kmietowicza', 'Kogucia', 'Ko³aczy', 'Ko³o Bia³uchy', 'Ko³o Strzelnicy', 'Ko³owa', 'Boles³awa Komorowskiego', 'al. Konarowa', 'Stanis³awa Konarskiego', 'Feliksa Konecznego', 'Konopna', 'Konwisarzy', 'Kopalina', 'Feliksa Kopery', 'Koralowa', 'Ludmi³y Korbutowej', 'Janusza Korczaka', 'Grzegorza Korzeniaka', 'Józefa Korzeniowskiego', 'Kosmonautów', 'Ireny Kosmowskiej', 'Ko?cielna', 'gen. Tadeusza Ko?ciuszki', 'Jana i Józefa Kotlarczyków', 'Franciszka Kowalskiego', 'Koziarówka', 'Krakusów', 'Krañcowa', 'al. Zygmunta Krasiñskiego', 'Józefa Ignacego Kraszewskiego', 'Krêta', 'Kronikarza Galla', 'Krowoderskich Zuchów', 'os. Krowodrza Górka', 'Królewska', 'Krucza', 'Ludwika Krzywickiego', 'Krzywy Zau³ek', 'Krzy¿ówka', 'dr. Tadeusza Kudliñskiego', 'Kujawska', 'gen. Mariana Kukiela', 'Kuku³cza', 'Stanis³awa Kunickiego', 'Dobies³awa Kurozwêckiego', 'Ku?nicy Ko³³štajowskiej', 'Ku?nicza', 'Eugeniusza Kwiatkowskiego', 'Lajkonika', 'Lazurowa', 'Juliusza Lea', 'Jana Lechonia', 'Legendy', 'Legnicka', 'Lekarska', 'Teofila Aleksandra Lenartowicza', 'Stanis³awa Lentza', 'Leszczynowa', 'Boles³awa Le?miana', 'Le?na', 'Samuela Lindego', 'al. 28 Lipca 1943', 'Lisia', 'al. 29 Listopada', 'Litawora', 'Litewska', 'Lniana', 'Lubelska', 'Jana £azarskiego', '£obzowska', '£owiecka', 'mjr. £upaszki', 'ks. Ferdynanda Machaya', 'Maciejkowa', 'Józefa Mackiewicza', 'Maækowa Góra', 'al. 3 Maja', 'Jadwigi Majówny', 'Tadeusza Makowskiego', 'Jacka Malczewskiego', 'Malinowa', 'Malownicza', 'Mieczys³awa Ma³eckiego', 'Adama Marczyñskiego', 'Margaretek', 'Marynarska', 'Mazowiecka', 'Mšczna', 'Józefa Mehoffera', 'ks. Józefa Meiera', 'al. Adama Mickiewicza', 'Miechowska', 'Mariana Miêsowicza', 'Miêtowa', 'Migda³owa', 'Mirowska', 'Misjonarska', 'Mlaskotów', 'M³odej Polski', 'Zygmunta M³ynarskiego', 'Heleny Modrzejewskiej', 'al. Modrzewiowa', 'Kazimierza Morawskiego', 'Morelowa', 'Most Zwierzyniecki', 'os. Wolfganga Amadeusa Mozarta', 'Mrówczana', 'Murarska', 'Ludwika Muzyczki', 'Henryka Müncha', 'prof. Stefana Myczkowskiego', 'Mydlnicka', 'Zygmunta Mys³akowskiego', 'Na B³oniach', 'Na B³onie', 'Na Borach', 'Na Budzyniu', 'Na Cha³upkach', 'Na Górkach', 'Na Grabinach', 'Na Mostkach', 'Na Nowinach', 'Na Polach', 'Na Polankach', 'pl. Na Stawach', 'Na Wierzchowinach', 'Na Wirach', 'Na Wyrêbê', 'Na Zielonki', 'Nad Strugš', 'Nad Sudo³em', 'Nad Zalewem', 'Nad ?ród³em', 'Wac³awa Na³kowskiego', 'Narcyzowa', 'Gabriela Narutowicza', 'Nasza', 'W³adys³awa Natansona', 'Nawigacyjna', 'Nawojki', 'Nawojowska', 'Mieczys³awa Niedzia³kowskiego', 'Czes³awa Niemena', 'Nietoperzy', 'Niezapominajek', 'Niska', 'Kazimierza Nitscha', 'Nowa Górka', 'Nowowiejska', 'pl. Nowowiejski', 'Obopólna', 'Obo?na', 'Tadeusza Ochlewskiego', 'Odlewnicza', 'Iwona Odrowš¿a', 'Antoniego Edwarda Odyñca', 'rondo Ofiar Katynia', 'Ogrodniczek', 'Ojcowska', 'Okršg', 'Okrê¿na', 'Okulistów', 'Olchowa', 'Oleandry', 'Olimpijska', 'Olkuska', 'Olszanicka', 'gen. Józefa Olszyny-Wilczyñskiego', 'Opolska', 'Orla', 'Orlich Gniazd', 'Orna', 'Wincentego Oszustowskiego', 'O?wiêcimska', 'Mieczys³awa Owcy-Orwicza', 'Owsiana', 'Henryka Pachoñskiego', 'Pajêcza', 'Jana Palacha', 'Palmowa', 'Pamiêtna', 'al. Panieñskich Ska³', 'Panoramiczna', 'Papiernicza', 'Pasternik', 'Ludwika Pasteura', 'gen. Franciszka Paszkowskiego', 'Tadeusza Peipera', 'Pejza¿owa', 'gen. Tadeusza Pe³czyñskiego', 'Pêkowicka', 'Franciszka Pêkszyca-Grudziñskiego', 'Piaskowa', 'Piastowska', 'Piaszczysta', 'Pielêgniarek', 'Stanis³awa Pigonia', 'rtm. Witolda Pileckiego', 'Jana Piwnika "Ponurego"', 'Emilii Plater', 'Pleszowska', 'Pod Fortem', 'Pod Janem', 'Pod Sikornikiem', 'Pod Ska³š', 'Pod Sowiñcem', 'Pod Stokiem', 'Pod Strzechš', 'Pod Sulnikiem', 'Pod Szañcami', 'Pod Szwedem', 'Podchorš¿ych', 'Podkamyk', 'W³adys³awa Podkowiñskiego', 'Pod³šcze', 'Pod³u¿na', 'Polna', 'Polnych Kwiatów', 'Pomorska', 'Poniedzia³kowy Dó³', 'Karola Popiela', 'Porêba', 'Porzecze', 'Porzeczkowa', 'Stanis³awa Kostki Potockiego', 'Potoczek', 'Powstania Listopadowego', 'Powstania Styczniowego', 'Poziomkowa', 'Poznañska', 'Pó³nocna', 'Pršdnicka', 'Proszowicka', 'Boles³awa Prusa', 'Aleksandra Prystora', 'Przegon', 'Przegorzalska', 'Przepiórcza', 'Przeskok', 'Przesmyk', 'Przy M³ynówce', 'Stanis³awa Przybyszewskiego', 'Przyjemna', 'Przysz³o?ci', 'W³odzimierza Puchalskiego', 'al. Pustelnika', 'Puszczyków', 'Kazimierza Pu¿aka', 'Stanis³awa Pyjasa', 'Pylna', 'Rac³awicka', 'W³adys³awa Raczkiewicza', 'Feliksa Radwañskiego', 'Eljasza Walerego Radzikowskiego', 'Miko³aja Reja', 'Henryka Reymana', 'W³adys³awa Stanis³awa Reymonta', 'Rêdzina', 'Jana Zygmunta Robla', 'Henryka Rodakowskiego', 'Tadeusza Rogalskiego', 'Stanis³awa Rokosza', 'Rolnicza', 'Eugeniusza Romera', 'Józefa Rostafiñskiego', 'Ludomira Ró¿yckiego', 'Rusznikarska', 'Rusznikarska-Deptak', 'Ryba³towska', 'Rybna', 'Lucjana Rydla', 'Rysi Stok', 'Adama Rysiewicza', 'Rzeczna', 'Rzepichy', 'Salwatorska', 'Sarnie Uroczysko', 'Jana Sawickiego', 'Senatorska', 'Ignacego Sewera', 'Sêpia', 'ks. Kazimierza Siemaszki', 'Lucjana Siemieñskiego', 'Henryka Sienkiewicza', '6 Sierpnia', 'Siewna', 'Skalna', 'Stanis³awa Skarbiñskiego', 'ks. Piotra Skargi', 'Skibowa', 'Sk³adowa', 'Skotnica', 'Skrajna', 'Macieja S³omczyñskiego', 'S³omnicka', 'S³onecznikowa', 'S³otna', 'al. Juliusza S³owackiego', 'S³owicza', 'Smêtna', 'Smoleñsk', 'Mariana Smoluchowskiego', 'Sokola', 'Ludwika Solskiego', 'Genera³a Stanis³awa Sosabowskiego', 'al. Sosnowa', 'Sosnowiecka', 'prof. Teodora Spiczakowa', 'Spi¿owa', 'Spokojna', 'os. Srebrne Uroczysko', 'Piotra Stachiewicza', 'Micha³a Stachowicza', 'Leopolda Staffa', 'Jana Stanis³awskiego', 'Stañczyka', 'Starego Dêbu', 'Starego Wiarusa', 'Starowolska', 'Adama Staszczyka', 'Stawowa', 'Stelmachów', 'Jana Stró¿eckiego', 'Zofii Stryjeñskiej', 'Strzelnica', 'Jana Styki', 'Suche £ški', 'Symfoniczna', 'Syreny', 'W³adys³awa Syrokomli', 'Jerzego Szablowskiego', 'Szafirowa', 'Szarotki', 'Szaserów', 'Feliksa Szlachtowskiego', 'Szopkarzy', 'Karola Szymanowskiego', 'Adolfa Szyszki-Bohusza', '?lšska', '?mia³a', '?wierkowa', '?wiêtokrzyska', 'Matki PaZofii Tajber', 'Tatarska', 'W³odzimierza Tetmajera', 'Tkacka', 'Juliana Tokarskiego', 'Stanis³awa Tomkowicza', 'Stanis³awa Tondosa', 'Toruñska', 'Towarowa', 'Trawiasta', 'ks. Stanis³awa Truszkowskiego', 'Waleriana Tumanowicza', 'Turowiec', 'Turystyczna', 'dr. Twardego', 'Uboczna', 'Kornela Ujejskiego', 'Ukryta', 'Urodzajna', 'Urzêdnicza', 'Adama Vetulaniego', 'Waleczna', 'Zygmunta Waliszewskiego', 'Boles³awa Wallek-Walewskiego', 'Wapiennik', 'Warmijska', 'al. Jerzego Waszyngtona', 'Wšdó³', 'Wojciecha Weissa', 'Wernyhory', 'Wincentego Weryhy-Darowskiego', 'Wesele', 'Wewnêtrzna', 'al. Wêdrowników', 'Ludwika Wêgierskiego', 'Wiedeñska', 'Wielkotyrnowska', 'gen. Boles³awa Wieniawy-D³ugoszowskiego', 'Kazimierza Wierzyñskiego', 'skwer Wiê?niów Obozów Zag³ady', 'Wilcza', 'Wilczy Stok', 'Winowców', 'Wiosenna', 'Wio?larska', 'Stanis³awa Witkiewicza', 'os. Witkowice Nowe', 'Witkowicka', 'Genera³ Marii Wittek', 'Wjazdowa', 'W³adys³awa £okietka', 'W³o?ciañska', 'W³óczków', 'Wodocišgowa', 'Wincentego Wodzinowskiego', '?w. Wojciecha', 'Wojskowa', 'marsz. Miko³aja Wolskiego', 'Micha³a Wójcickiego', 'Wójtowska', 'Wroc³awska', 'Józefa Wybickiego', 'Leona Wyczó³kowskiego', 'Kazimierza Wyki', 'Zygmunta Wyrobka', 'Tadeusza Wyrwy-Furgalskiego', 'Piotra Wysockiego', 'Stanis³awa Wyspiañskiego', 'Kazimierza Wy¿gi', 'Za Sk³onem', 'Za Targiem', 'Zaborska', 'Zaczarowane Ko³o', 'Zakamycze', 'Zakštek', 'Zakliki z Mydlnik', 'Zaklucze', 'Zakrêt', 'Zaogrodzie', 'Gabrieli Zapolskiej', 'Stanis³awa Zaremby', 'Zarudawie', 'Zarzecze', 'Zaskale', 'Zaszkolna', 'Za?cianek', 'Zawodzie', 'Zbo¿owa', 'Zbrojów', 'Zdrowa', 'Zefirowa', 'Zgody', 'Zieliñska', 'Zielone Wzgórze', 'Zielony Dó³', 'Zielony Most', 'Zimorodków', 'Szymona Zimorowicza', 'Zjazd Rogoziany', 'Z³ota', 'Z³oty Róg', 'Zygmunta Starego', 'Zygmuntowska', 'Dominika ?dzieb³y-Danowskiego', '¯abiniec', 'Kaspra ¯elechowskiego', 'W³adys³awa ¯eleñskiego', 'Kiejstuta ¯emaitisa', '¯mujdzka', 'al. ¯ubrowa', '¯wirowa', '¯ywiczna', 'os. Akademickie', 'os. Albertyñskie', 'Andegaweñska', 'al. gen. W³adys³awa Andersa', 'Hansa Christiana Andersena', 'Architektów', 'Henryka Arctowskiego', 'Artystów', 'Gra¿yny Bacewiczówny', 'Bardosa', 'Bartnicza', 'Barwinkowa', 'Barwna', 'Batalionu "Parasol"', 'Batalionu "Zo?ka"', 'Eugeniusza Baziaka', 'Betlejemska', 'Betonowa', 'Bieñczycka', 'pl. Bieñczycki Plac Targowy', 'Mateusza Birkuta', 'Biwakowa', 'Blokowa', 'pl. B³onie-Beszcz', 'Józefa Bogusza', 'Boguszówka', 'os. Bohaterów Wrze?nia', 'Boles³awa Krzywoustego', 'Boles³awa Wstydliwego', 'Królowej Bony', 'al. gen. Tadeusza Bora-Komorowskiego', 'gen. Mieczys³awa Boruty-Spiechowicza', 'Bo¿ywoja', 'Branicka', 'W³adys³awa Broniewskiego', 'Bru?nicka', 'Brzeska', 'Budziszyñska', 'Bukszpanowa', 'Bulwarowa', 'Burzowa', 'Jana Stanis³awa Bystronia', 'Cedyñska', 'Rozalii Celakówny', 'Cementowa', 'Centralna', 'pl. Centralny im. Ronalda Reagana', 'os. Centrum A', 'os. Centrum B', 'os. Centrum C', 'os. Centrum D', 'os. Centrum E', 'Maksymiliana i Stanis³awa Cerchów', 'Cha³upki', 'Cichociemnych AK', 'Ciekowiec', 'Cienista', 'Ciep³ownicza', 'Ernesta Cie?lewskiego', 'Haliny Cie?liñskiej-Brzeskiej', 'Cuplowa', 'Cyprysów', 'W³adys³awa Czaplickiego', 'Czarnolaska', 'Czeczeñska', 'Czerwonego Kapturka', 'Czy¿yñska', 'rondo Czy¿yñskie', 'Gustawa Dani³owskiego', 'Karola Darwina', 'Marii Dšbrowskiej', 'Deszczowa', 'Romana Dmowskiego', 'Do Fortu', 'Do Wis³y', 'Dobrego Pasterza', 'Dolna', 'Dolnom³yñska', 'Dro¿yska', 'Xawerego Dunikowskiego', 'Benedykta Dybowskiego', 'Dymarek', 'os. Dywizjonu 303', 'rondo Dywizjonu 308', 'Dziekanowicka', 'Fatimska', 'ks. Kazimierza Figlewicza', 'Henryka Flame', 'Romana Florera', 'Walentego Florkowskiego', 'Folwarczna', 'Emila Freegego', 'Jana Gajocha', 'Konstantego Ildefonsa Ga³czyñskiego', 'p³k. Edwarda Gardy-Godlewskiego', 'Geodetów', 'Miko³aja Gerlaha', 'Jerzego Giedroycia', 'Glinik', 'G³êbinowa', 'Cypriana Godebskiego', 'os. Górali', 'Graniczna', 'Gršby', 'Grêba³owska', 'Bart³omieja Groickiego', 'Grzegorza z Sanoka', 'Gwarecka', 'Habina', 'os. Handlowe', 'Hektary', 'Henryka Brodatego', 'rondo Hipokratesa', 'Ho³du Pruskiego', 'os. Hutnicze', 'Micha³a Hutnika', 'Franciszka Hynka', 'Igo³omska', 'Karola Irzykowskiego', 'Isep', 'Jad?wingów', 'Anny Jagiellonki', 'os. Jagielloñskie', 'Jagienki', 'Jaglana', 'Jana Kazimierza', 'Jana Olbrachta', 'al. Jana Paw³a II', 'ks. Kazimierza Jancarza', 'Czes³awa Janczarskiego', 'Tomasza Janiszewskiego', 'Jarzêbiny', 'Jase³kowa', 'Jasia i Ma³gosi', 'Miko³aja Jaskra', 'Jaskrowa', 'Jacka Jezierskiego', 'Jeziorany', 'Jeziorko', 'Je¿ynowa', 'Jubileuszowa', 'Jutrzenka', 'Jutrzyñska', 'Kaczeñcowa', 'ks. Zygmunta Kaczyñskiego', 'os. Kalinowe', 'Kalwiñska', 'Mieczys³awa Kamberskiego', 'Kamionka', 'Kantorowicka', 'Karasiówka', 'gen. Micha³a Karaszewicza-Tokarzewskiego', 'Karowa', 'Kazimierza Jagielloñczyka', 'Kazimierza Sprawiedliwego', 'os. Kazimierzowskie', 'Kškolowa', 'Kêpska', 'Wincentego Kirchmajera', 'Stefana Kisielewskiego', 'Klasztorna', 'gen. Franciszka Kleeberga', 'Juliusza Kleinera', 'Klemensa z Ruszczy', 'K³osowa', 'Stanis³awa K³osowskiego', 'Kmicica', 'Franciszka Knia?nina', 'Kocmyrzowska', 'rondo Kocmyrzowskie', '?w. Maksymiliana Marii Kolbego', 'pl. ?w. Maksymiliana Marii Kolbego', 'Kolêdnicza', 'os. Kolorowe', 'Komasy', 'os. Kombatantów', 'Boles³awa Kontryma', 'Kopaniec', 'Wojciecha Korfantego', 'Jerzego Korohody', 'Korony Polskiej', 'skwer II Korpusu Pol. Si³ Zbr. na Zach.', 'Kosów', 'Ko?cielnicka', 'os. Ko?ciuszkowskie', 'Marii Kownackiej', 'os. Krakowiaków', 'Józefa Krasnowolskiego', 'Jana Kremskiego', 'Wac³awa Króla', 'Kruszwicka', 'Krzes³awicka', 'Ku Raciborowicom', 'Marka Kubliñskiego', 'ks. Miko³aja Kuczkowskiego', 'Zofii Kulinowskiej', 'Kupa³y', 'ks. Józefa Kurzei', 'Ku?nierska', 'Kwiatów Polskich', 'Lasowisko', 'Lawendowa', 'Tadeusza Lehra-Sp³awiñskiego', 'Stanis³awa Lema', 'os. Lesisko', 'Leszka Bia³ego', 'Leszka Czarnego', 'rondo ppor. pil. Janiny Lewandowskiej', 'Lubocka', 'Luborzycka', 'Lud?mierska', 'ks. Mariana Luzara', '£azowa', '£šcka', 'Stanis³awa £empickiego', '£êczycka', '£êgowa', 'El¿biety £okietkówny', 'Jacka Augustyna £opackiego', 'Karola £owiñskiego', 'W³adys³awa £oziñskiego', '£ubinowa', '£uczanowicka', 'rondo gen. Stanis³awa Maczka', 'Kornela Makuszyñskiego', 'Ma³ego Ksiêcia', 'Marglowa', 'Mariana Markowskiego', 'Martenowska', 'Szymona Marycjusza', 'Królowej Marysieñki', 'ks. Stefana Mazanka', 'Mieczys³awa Medweckiego', 'Mierniczych', 'Stanis³awa Mierzwy', 'Stanis³awa Miko³ajczyka', 'os. Mistrzejowice', 'Mistrzejowicka', 'Mi?nieñska', 'os. M³odo?ci', 'M³otków', 'gen. Bernarda Monda', 'Gustawa Morcinka', 'Morgi', 'Ludwika Hieronima Morstina', 'Hanny Mortkowicz-Olczakowej', 'Morwowa', 'Jana Mosdorfa', 'Ignacego Mo?cickiego', 'Mrozowa', 'Andrzeja Mycielskiego', 'os. Na Lotnisku', 'Na £škach', 'Na Niwach', 'os. Na Skarpie', 'os. Na Stoku', 'os. Na Wzgórzach', 'Na Za³êczu', 'Na Zboczu', 'Nad Baranówkš', 'Nad D³ubniš', 'Nadbrzezie', 'Nadwodna', 'Nag³owicka', 'Narciarska', 'Nastrojowa', 'Marcelego Nenckiego', 'Nieby³a', 'os. Niepodleg³o?ci', 'Niepokalanej Panny Marii', 'Niepo³omska', 'Nieszawska', 'Niewielka', 'Nowohucka', 'Nowolipki', 'Obroñców Krzy¿a', 'Obroñców Warszawy', 'Obwodowa', 'Odmêtowa', 'Odmogile', 'Og³êczyzna', 'Ognistych Wici', 'os. Ogrodowe', 'gen. Leopolda Okulickiego', 'Organki', 'W³adys³awa Orkana', 'Or³a Bia³ego', 'Aleksandra Or³owskiego', 'Ludwika Osieckiego', 'Osiedle', 'Józefa Ostafina', 'Ostrów', 'Ostrówka', 'os. O?wiecenia', 'pl. Piotra O¿añskiego', 'bp. Filipa Padniewskiego', 'Józefa Pankiewicza', 'Teodora Parnickiego', 'Pastelowa', 'Pasterska', 'Perkuna', 'Sandora Petöfiego', 'Piasta Ko³odzieja', 'os. Piastów', 'Piñczowska', 'Piotrusia Pana', 'Planty Bieñczyckie', 'Plastusia', 'Pla¿owa', 'Kazimierza Pluty-Czachowskiego', 'P³aska', 'P³omyczka', 'P³oszczyny', 'Pod Gajem', 'Podbagnie', 'Podbia³owa', 'Longinusa Podbipiêty', 'Podleska', 'Podrzecze', 'Podstawie', 'al. Pokoju', 'Gustawa Pokrzywki', 'Poleg³ych w Krzes³awicach', 'Poleska', 'Braci Polskich', 'Polskiego Czerwonego Krzy¿a', 'Pomykany', 'Stanis³awa Augusta Poniatowskiego', 'Popielidów', 'Popielnik', 'Janiny Poraziñskiej', 'Powiatowa', 'Powojowa', 'Powstañców', 'Romana Prawocheñskiego', 'Adama Próchnika', 'Pruska', 'Zdzis³awa Przebindowskiego', 'Przemys³awa II', 'os. Przy Arce', 'Juliana Przybosia', 'al. Przyja?ni', 'Przylasek', 'Przymiarki', 'Franciszka Ptaka', 'Tadeusza Ptaszyckiego', 'os. 2 Pu³ku Lotniczego', 'Pysocice', 'Pysoñce', 'Barbary Radziwi³³ówny', 'Wêze³ Drogowy gen. Ludomi³a Rayskiego', 'Henryka Rowida', 'Równa', 'al. Ró¿', 'Rudni', 'Rumiankowa', 'Rusiecka', 'Rycerska', 'marsz. Edwarda Rydza-?mig³ego', 'Rzepakowa', 'Sajakówka', 'Opata Salwiñskiego', 'Samorzšdowa', 'Stanis³awa Samostrzelnika', 'Magdaleny Samozwaniec', 'Zbigniewa Seiferta', 'ks. kard. Adama Stefana Sapiehy', 'Sasanek', 'Józefa Sawy-Caliñskiego', 'Braci Schindlerów', 'Siejówka', 'Wac³awa Sieroszewskiego', 'Sierpowa', 'Sikorki', 'Sitowiny', 'Siwka', 'Stanis³awa Skar¿yñskiego', 'W³adys³awa Skoczylasa', 'Skrêcona', 'os. S³oneczne', 'S³owicza', 'Soczyny', 'al. Solidarno?ci', 'So³tysowska', 'Sp³awy', 'os. Sportowe', 'os. Spó³dzielcze', 'Spytka z Melsztyna', 'Srebrnych Or³ów', 'Stadionowa', 'Stalowa', 'os. Stalowe', 'Stare Wi?lisko', 'Stary Go?ciniec', 'Franciszka Stefczyka', 'Izydora Stella-Sawickiego', 'Stokowa', 'Andrzeja Stopki', 'Strêcka', 'Andrzeja Struga', 'Strumyk', 'os. Józefa Strusia', 'Studzienna', 'Styczna', 'Suchy Jar', 'Sulis³awa', 'Swaro¿yca', 'Sybiraków', 'Marka Sycha', 'Syrachowska', 'Szafrañska', 'Jerzego Szajnowicza-Iwanowa', 'por. Szczeklika', 'os. Szklane Domy', 'os. Szkolne', 'Szlifierska', 'Szybka', 'Edwarda Szymañskiego', '?liwkowa', '?widnicka', '?wiêtej Rodziny', 'Tabaczna', 'Tarasowa', 'Tatarakowa', 'os. Teatralne', 'bp. Piotra Tomickiego', 'Truskawkowa', 'Trzcinowa', 'Trzech Króli', 'pl. Marii Turzymy', 'Juliana Tuwima', 'Franciszka Twaroga', 'Tymiankowa', 'os. Tysišclecia', 'Ubeliny', 'Ujastek', 'Ujastek Mogilski', 'Uniwersa³u Po³anieckiego', 'Urbanistów', 'gen. Witolda Urbanowicza', 'os. Urocze', 'Urszulki', 'Henryka Uziemb³y', 'Wadowska', 'Andrzeja Waligórskiego', 'os. Wandy', 'Melchiora Wañkowicza', 'Wawelska', 'Wšwozowa', 'Wêgrzynowicka', 'Franciszka Wê¿yka', 'Narcyza Wiatra', 'Wiatraczna', 'Wišzowa', 'Macieja Wielgusa', 'Wielkich Pieców', 'Wielkie Pola', 'Miko³aja Wierzynka', 'Wiewiórcza', 'Wiklinowa', 'os. Willowe', '?w. Wincentego', 'Wi?licka', 'Jeremiego Wi?niowieckiego', 'Wi?niowy Sad', 'Edwarda Wittiga', 'W³adys³awa IV', 'W³adys³awa Jagie³³y', 'Bronis³awa W³odarczyka', 'pl. Bogdana W³osika', 'Wodocza', 'Wodzickich', 'Stanis³awa Wojciechowskiego', 'Wojenna', 'Micha³a Wo³odyjowskiego', 'Wo?niców', 'Wró¿enicka', 'Wrzosowa', 'Wycišska', 'Stanis³awy Wysockiej', 'os. Wysokie', 'Za Górš', 'Za Ogrodem', 'Franciszka Zab³ockiego', 'Jakuba Zachemskiego', 'Zag³oby', 'Zago?ciniec', 'Zajêcza', 'Zakarnie', 'Zakêpie', 'Zak³adowa', 'Zakole', 'Andrzeja i Józefa Za³uskich', 'Zaporêbie', 'Zapusta', 'ks. Józefa Zastawniaka', 'Zawielgusie', 'Jerzego Zawieyskiego', 'Zbyszka z Bogdañca', 'Zes³awicka', 'os. Zgody', 'Ziarkowa', 'os. Zielone', 'Zielony Jar', 'Ziemianek', 'Ziemska', 'Zjazdu Gnie?nieñskiego', 'Z³oczowska', 'os. Z³otego Wieku', 'os. Z³otej Jesieni', 'Zuchów', '¯aglowa', 'Stefana ¯eromskiego', '¯onkilowa', '¯ó³wia', 'Abrahama', 'Wêze³ £agiewnicki im. ks.kard. Adama Stefana Sapiehy', 'Agatowa', 'Agawy', 'Albañska', 'Albatrosów', 'Adolfa Aleksandrowicza', 'Aleksandry', 'Algierska', 'Amarantowa', 'Ametystowa', 'Iwona Andricia', 'Józefa Andrusikiewicza', 'Andrychowska', 'Anusi', 'Arktyczna', 'Armii "Kraków"', 'Babiego Lata', 'Babinicza', 'dr. Józefa Babiñskiego', 'Krzysztofa Kamila Baczyñskiego', 'Andrzeja Badurskiego', 'Bagienna', 'Bagrowa', 'Balanówka', 'Stanis³awa Balickiego', 'Micha³a Ba³uckiego', 'Tadeusza Banachiewicza', 'Barbary', 'Piotra Bardowskiego', 'Barska', 'prof. Wojciecha Marii Bartla', 'Bartników', 'p³k. Barty', 'Barycka', 'Henryka Barycza', 'Bastionowa', 'Batalionów Ch³opskich', 'Mariana Batki', 'Bazarowa', 'Kaspra Ba¿anki', 'Bednarska', 'Józefa Bellerta', 'W³adys³awa Be³zy', '?w. Benedykta', 'Benedyktyñska', 'Berdyczowska', 'Beskidzka', 'Bia³a Droga', 'Bia³oruska', 'Bia³ostocka', 'Marcina Bielskiego', 'prof. Janiny Bieniarzówny', 'Ludwika Bierkowskiego', 'Biernata z Lublina', 'Biesiadna', 'Bieszczadzka', 'Bie¿anowska', 'Billewiczów', 'Biskupiñska', 'Blacharska', 'Bluszczowa', 'B³awatkowa', 'B³otna', 'B³otniska', 'Bobrowa', 'prof. Micha³a Bobrzyñskiego', 'Adama Bochenka', 'o. Józefa Bocheñskiego', 'prof. Adama Bochnaka', 'Boczna', 'Bocznica', 'Bodzowska', 'Karola Bogdanowicza', 'Wincentego Bogdanowskiego', 'Bogucianka', 'Bogucicka', 'pl. Bohaterów Getta', 'Bojanówka', 'Jakuba Bojki', 'Boles³awa ?mia³ego', 'Bonarka', 'Czes³awa Boratyñskiego', 'Borkowska', 'Borkowskie B³onia', 'Borowinowa', 'Borsucza', 'Christo Botewa', 'Do Sanktuarium Bo¿ego Mi³osierdzia', 'Bór', 'Konstantego Brandla', 'Braterska', 'Braterstwa Broni', 'Kazimierza Brodziñskiego', 'Browarniana', 'Jana Bro¿ka', 'Aleksandra Brücknera', 'Brzask', 'Bugaj', 'Franciszka Bujaka', 'Bukowa', 'Bulwar Podolski', 'Bulwar Poleski', 'Bulwar Wo³yñski', 'Bu³garska', 'Jana Bu³haka', 'Karola Bunscha', 'Buraczana', 'Burgundzka', 'Butrymów', 'Bystra', 'Cechowa', 'Cegielniana', 'Ceglarska', 'Celna', 'Centkiewiczów', 'Benedykta Cesarza', 'Tytusa Cha³ubiñskiego', 'Heleny Chanieckiej', 'Chêciñska', 'Chlebiczna', 'Ch³odna', 'Ch³opska', 'Chmieleniec', 'Chmielna', 'Chocho³owska', 'Chojnicka', 'Chorzowska', 'Ignacego Chrzanowskiego', 'Ciasna', 'Ciechanowska', 'Ciechociñska', 'Ciep³a', 'Ciesielska', 'Adama Cio³kosza', 'Tadeusza Czackiego', 'Józefa Czajkowskiego', 'Czajna', 'Stefana Czarnieckiego', 'Czarnochowicka', 'Czarnogórska', 'Czarodziejska', 'Czechos³owacka', 'Szymona Czechowicza', 'Braci Czechów', 'Henryka Czeczotta', 'prof. Zdzis³awa Czeppe', 'Czerska', 'Rafa³a Czerwiakowskiego', 'Czerwone Maki', 'Czo³gistów', 'Czorsztyñska', 'Mariana Czuchnowskiego', 'Czwartaków', 'Emiliana Czyrniañskiego', 'Czy¿ówka', 'Mieczys³awy Æwikliñskiej', 'Æwik³owa', 'Daliowa', 'Danalówka', 'Danusi Jurandówny', 'Wojciecha Darasza', 'Alfreda Dauna', 'p³k. Stanis³awa Dšbka', 'Dšbrowa', 'gen. Henryka Dšbrowskiego', 'Dšbrówki', 'Dekarzy', 'Jana Dekerta', 'al. Edwarda Dembowskiego', 'Deotymy', 'ks. W³adys³awa Dercza', 'Dereniowa', 'Stanis³awa Dêbickiego', 'Dêbnicka', 'Rynek Dêbnicki', 'Dêboroga', 'Dêbowa', 'Macieja Dêbskiego', 'Jana D³ugosza', 'Do Groty', 'Do Luboni', 'Do Wilgi', 'Dobczycka', 'Antoniego Dobrowolskiego', 'Mariana Domaga³y', 'Domowa', 'Witolda Doroszewskiego', 'Drewniana', 'Droga Rokadowa', 'Karola i Jerzego Drozdowskich', 'Dro¿d¿owa', 'Dró¿ka', 'Druhny Hanki', 'Drukarska', 'Druskiennicka', 'El¿biety Dru¿backiej', 'Stanis³awa Dubois', 'pl. Braci Dudziñskich', 'Du¿a Góra', 'Dworcowa', 'Dworska', 'Dworski Ogród', 'Dworzec', 'al. Adolfa Dygasiñskiego', 'Dymnik', 'Dzia³kowa', 'Stanis³awa Dzia³owskiego', 'Dziewiarzy', 'Dzikiej Ró¿y', 'ks. Franciszka D?wigoñskiego', 'Eugeniusza Eibischa', 'W³adys³awa Ekielskiego', 'por. Emira', 'Estakada Obroñców Lwowa', 'Estoñska', 'Facimiech', 'Falista', 'Falowa', 'Fa³êcka', 'Rynek Fa³êcki', 'Familijna', 'Siostry Faustyny', 'Jerzego Fedkowicza', 'gen. Juliana Filipowicza', 'Leopolda Flanka', 'Forteczna', 'Fosa', 'Aleksandra Fredry', 'Gacki', 'Walerego Gadomskiego', 'Gajowa', 'Galaktyczna', 'Józefa Ga³êzowskiego', 'Ludwika Gardowskiego', 'Wac³awa Gšsiorowskiego', 'Geologów', 'Gerberowa', 'Wojciecha Gersona', 'Aleksandra i Maksymiliana Gierymskich', 'Gilowa', 'Gipsowa', 'Gliniana', 'G³ogowska', 'Gminna', 'Golikówka', 'Golkowicka', 'Go³a?ka', 'Stanis³awa Go³šba', 'Witolda Gombrowicza', 'Goplana', 'Jana Aleksandra Gorczyna', 'Juliana Goslara', 'Seweryna Goszczyñskiego', 'Go?cinna', 'Go?dzikowa', 'Górników', 'Górska', 'Granitowa', 'Grawerska', 'Grochowa', 'Grodzisko', 'Gromady Grudziš¿', 'Gromadzka', 'Gronostajowa', 'Gronowa', 'gen. Stefana Grota-Roweckiego', 'rondo Grunwaldzkie', 'W³odzimierza Gruszczyñskiego', 'Aleksandra Gryglewskiego', 'Jana Grzecha', 'Marii Grzegorzewskiej', 'Stanis³awa Grzepskiego', 'Grzybki', 'Gumniska', 'Jana Gumowskiego', 'Jana Gutenberga', 'Gwarna', 'Gwie?dzista', 'Adama Habeli', 'Jana Hallera', 'por. Halszki', 'Jerzego Harasymowicza', 'Harcerska', 'Harcerzy Krakowskich', 'Edwarda Heila', 'Heleny', 'Heligundy', 'Wiktora Heltmana', 'Zbigniewa Herberta', 'Herbowa', 'Gustawa Herlinga-Grudziñskiego', 'Hetmañska', 'Jana Heweliusza', 'Hiacyntowa', 'Antoniego Hoborskiego', 'bp. Franciszka Hodura', 'Klementyny Hoffmanowej', 'Tadeusza Hollendra', 'Karola Homolacsa', 'Alojzego Horaka', 'Henryka Hoyera', 'Hubalczyków', 'Huculska', 'Hufcowa', 'Aleksandra Humboldta', 'Husarska', 'Franciszka Hypty', 'I³owa', 'Imielna', 'Inicjatywy Lokalnej', 'Irysowa', 'Jaros³awa Iwaszkiewicza', 'Iwonicka', 'Zdzis³awa Jachimeckiego', '?w. Jacka', 'Micha³a i Stanis³awa Jaglarzów', 'Jagodowa', 'Roberta Jahody', 'W³adys³awa Jakubca', 'Macieja Jakubowskiego', 'Braci Jamków', 'Jana XXIII', 'Janasówka', 'Janowa Wola', 'Jana Janowskiego', 'Jar', 'W³adys³awa Jarockiego', 'Jaros³awska', 'Jasielska', 'Paw³a Jasienicy', 'Feliksa Jasieñskiego', 'gen. Jakuba Jasiñskiego', 'Stanis³awa Jasiukowicza', 'Jastrzêbia', 'Jaworowa', 'Jeleniogórska', 'Konstantego Jelskiego', 'Jemio³owa', 'Jerozolimska', 'Erazma Jerzmanowskiego', 'Jesienna', 'Je?dziecka', 'Je¿ów', 'Ludwika Jêdrzejczyka', 'Józefiñska', 'dr. Judyma', 'Jugowicka', 'Juranda ze Spychowa', 'Kacza', 'Juliusza Kadena-Bandrowskiego', 'Wincentego Kad³ubka', 'Kaimska', 'ks. W³adys³awa Kajzera', 'Kaktusowa', 'Kalinowa', 'Kaliska', 'Filipa Kallimacha', 'Kalwaryjska', 'Kameliowa', 'Kamieniarska', 'Kamieniecka', 'gen. Henryka Kamieñskiego', 'Kanarkowa', 'Kapelanka', 'Mieczys³awa Kaplickiego', 'ks. Wojciecha Karabu³y', 'gen. Jana Karcza', 'Karpacka', 'Franciszka Karpiñskiego', 'Kawowa', 'Kšcik', 'Kšpielowa', 'Antoniego Kenara', 'Ketlinga', 'Kêdzierzyñska', 'Antoniego Kêpiñskiego', 'Kêpna', 'Romana Kie³kowskiego', 'Braci Kiemliczów', 'Jana Kiepury', 'Kazimierza Kierzkowskiego', 'Kijanki', 'Jana Kiliñskiego', '?w. Kingi', 'Stanis³awa Klimeckiego', 'Kliniec', 'os. Kliny Borkowskie', 'Sebastiana Klonowica', 'Jana Krzysztofa Kluka', 'Jacka Kluszewskiego', 'Franciszka K³aka', 'K³odzka', 'K³uszyñska', 'Kminkowa', 'Kobierzyñska', 'Tadeusza Kochmañskiego', 'Kokosowa', 'Kokotowska', 'Kolarzy', 'Kolejarzy', 'Kolejowa', 'os. Kolejowe', 'Kolista', 'Kolna', 'Kolonijna', 'Stefana Ko³aczkowskiego', 'Ko³obrzeska', 'Ko³odziejska', 'Komandosów', 'Komuny Paryskiej', 'Konfederacka', 'Marii Konopnickiej', 'Konwaliowa', 'Izydora Kopernickiego', 'Koprowa', 'Ludomi³a Korczyñskiego', 'Kordiana', 'Jana Korepty', 'Kormoranów', 'Micha³a Korpala', 'Kosiarzy', 'Kosocicka', 'Kazimierza Kostaneckiego', 'Kostrzecka', 'Józefa Kostrzewskiego', 'Koszaliñska', 'Koszarówka', 'Koszutki', 'Koszykarska', 'Ko?ciuszkowców', 'Floriana Kotowskiego', 'Kotówka', 'Aleksandra Kotsisa', 'Kowalska', 'Kozia', 'Kozienicka', 'Jana Kozietulskiego', 'Ko?larska', 'Kajetana Ko?miana', 'Krajobrazowa', 'Kraka', 'Krakusa', 'Ignacego Krasickiego', 'Krasowa', 'Krawiecka', 'Kresowa', 'Aleksandra Krêpy', 'Krochmalniki', 'Krokusowa', 'Kro?nieñska', 'Królówka', 'Konstantego Krum³owskiego', 'W³adys³awa Krygowskiego', 'Krymska', 'Krystyna z Ostrowa', 'Kryszta³owa', 'Krzemieniecka', 'Krzemionki', 'Krzewowa', 'Edmunda Krzymuskiego', 'Krzywda', 'Adama Krzy¿anowskiego', 'Miros³awa Krzy¿añskiego', 'Krzy¿toporska', 'Feliksa Ksiê¿arskiego', 'Ksiê¿ycowa', 'Kukie³ek Golkowickich', 'p³k. Ryszarda Kukliñskiego', 'Henryka Ku³akowskiego', 'Ferdynanda Kurasia', 'Jana Kurczaba', 'Karola Kurpiñskiego', 'Jerzego Kury³owicza', 'ks. Jana Kusia', 'gen. Józefa Kustronia', 'gen. Tadeusza Kutrzeby', 'Kwatery', 'Kwiatowa', 'Kwiecista', 'Kwietna', 'Lanckoroñska', 'Lwa Landaua', 'Jerzego Lande', 'Lasek', 'Laskowa', 'Lasogórska', 'pl. Lasoty', 'Lasówka', 'Konstantego Laszczki', 'Laudañska', 'Lecha', 'Lechicka', 'Lecznicza', 'Legionów', 'Legionów Józefa Pi³sudskiego', 'Franciszka Lei', 'Letnia', 'Anny Libera', 'Libertowska', 'Lilli Wenedy', 'Boles³awa Limanowskiego', 'Wac³awa Lipiñskiego', 'Lipowa', 'Wojciecha Lipowskiego', 'Lipska', 'Lirników', 'Leopolda Lisa-Kuli', 'Li?ciasta', 'Lubostroñ', 'Lubuska', 'Ludowa', 'Ludwinowska', 'Ludwisarzy', 'Lusiñska', 'Lutego Tura', 'Lwowska', '£abêdzia', 'ks. Pra³ata Mariana £aczka', '£agiewnicka', 'pl. £agiewnicki', '£amana', '£anowa', '£any', '£apanowska', '£azy', '£ê¿ce', 'Józefa £obodowskiego', '£osiówka', '£owienicka', '£ódzka', '£uczników', 'dr. Zygmunta £uczyñskiego', 'Waleriana £ukasiñskiego', '£ukowiec', '£utnia', '£u¿ycka', '£ysogórska', 'Macedoñska', 'Macierzanki', 'Maæka z Bogdañca', 'gen. Antoniego Józefa Madaliñskiego', 'Madejówka', 'Madera', 'Magazynowa', 'Magnolii', 'ks. Franciszka Maja', 'Jana Maklakiewicza', 'Makowa', 'Malachitowa', 'Malborska', 'Bronis³awa Malinowskiego', 'Malutka', 'Malwowa', 'Ma³a Góra', 'Zbigniewa Ma³ka', 'Andrzeja Ma³kowskiego', 'Ma³y P³aszów', 'Józefa Marcika', 'Marcowa', 'Heleny Marusarzówny', 'Franciszka Maryewskiego', 'Marzanny', 'rondo Antoniego Matecznego', 'Matematyków Krakowskich', 'Mazurska', 'ks. W³adys³awa Mšczyñskiego', 'Medalionów', 'Medyczna', 'Merkuriusza Polskiego', 'Miarowa', 'Andrzeja Michalika', 'Tadeusza Miciñskiego', 'Mieczników', 'Mieczykowa', 'Miejscowa', 'gen. Ludwika Mieros³awskiego', 'Mierzeja Wi?lana', 'Mieszczañska', 'harc. Stanis³awa Millana', 'Mi³a', 'Zygmunta Mi³kowskiego', 'Jana Miodoñskiego', 'Mirtowa', 'Stanis³awa Mitery', 'W³adys³awa Mitkowskiego', 'M³odzie¿y', 'M³ynowa', 'Maurycego Mochnackiego', 'Mochnaniec', 'Moczyd³o', 'Modra', 'Mogi³ki', 'Mokra', 'Monte Cassino', 'Monterska', 'Józefa Montwi³³a-Mireckiego', 'Macieja Moraczewskiego', 'Paw³a Morawiañskiego', 'Józefa Morozewicza', 'Most Nowohucki', 'Most Wandy', 'Kazimierza Moszyñskiego', 'Tadeusza Motarskiego', 'Motyla', 'Jana Muszyñskiego', 'Muzyków', 'Mydlarska', 'My?lenicka', 'My?liwska', 'Na Do³ach', 'Na Grzšdkach', 'Na Jazkach', 'Na Kliñcu', 'Na Koz³ówce', 'Na Leszczu', 'Na £uku', 'Na Obrydki', 'Na Pokusie', 'Na Ustroniu', 'Na Wrzosach', 'Na Zakolu Wis³y', 'Na Zje?dzie', 'Na Zrêbie', 'Nad Czernš', 'Nad Drwinš', 'Nad Fosš', 'Nad Potokiem', 'Nad Serafš', 'Nadwi?lañska', 'Nadzieja', 'Na³êczowska', 'Zofii Na³kowskiej', 'Narvik', 'Nazaretañska', 'Nefrytowa', 'Julii Nenko', 'Edmunda Neussera', 'Niebieska', 'Nieca³a', 'Niedzicka', 'Nied?wiedziny', 'Juliana Ursyna Niemcewicza', 'pl. Niepodleg³o?ci', 'Franciszka Niepokólczyckiego', 'Nierówna', 'Henryka Niewodniczañskiego', 'Niwy', 'Normandzka', 'Norymberska', 'Adolfa Nowaczyñskiego', 'Jana Nowaka', 'Maksymiliana Nowickiego', 'Bart³omieja Nowodworskiego', 'Nowogródzka', 'Nowohucka', 'Nowosšdecka', 'Nowotarska', 'Obozowa', 'Obronna', 'Obrony Tyñca', 'Obroñców Helu', 'Obroñców Modlina', 'Obroñców Poczty Gdañskiej', 'Obroñców Tobruku', 'Ochocza', 'Odrzañska', 'S³awomira Odrzywolskiego', 'Ogórkowa', 'Ogrodniki', 'Okocimska', 'Stanis³awa Okonia', 'Okopowa', 'Okólna', 'Okrêglik', 'Stefana Okrzei', 'Ondraszka', '£ukasza Opaliñskiego', 'Opalowa', 'prof. Kazimierza Tadeusza Opa³ka', 'Opatkowicka', 'Zdzis³awa Opiala', 'Opty', 'Oraczy', 'Orawska', 'Orlšt Lwowskich', 'Orleañska', 'Orszañska', 'Harcmistrza Orszy-Broniewskiego', 'Orzechowa', 'Osikowa', 'Micha³a Ossowskiego', 'Juliusza Osterwy', 'Owocowa', 'Pagórkowa', 'Antoniego Pajdaka', 'Pana Tadeusza', 'Pañska', 'Paproci', 'Parafialna', 'Parkowa', 'Pasieczna', 'Jana Chryzostoma Paska', 'Pastelowa', 'Heleny i Leona Patynów', 'ks. Stefana Pawlickiego', 'Paw³a z Krosna', 'Bogumi³a Paw³owskiego', 'Per³owa', 'Leona Petra¿yckiego', 'Sergiusza Piaseckiego', 'Pieniñska', 'Bronis³awa Pierackiego', 'Pierzchówka', 'Jana Pietrusiñskiego', 'dr. Jana Piltza', 'Pi³karska', 'Hieronima Pinocci', '?w. Piotra', 'Piwna', 'Planty Floriana Nowackiego', 'P³aszowska', 'Kazimierza Pochwalskiego', 'Pochy³a', 'Pocztowa', 'Pod Dêbami', 'Pod Gwiazdami', 'al. Pod Kopcem', 'Pod Pomnikiem', 'Pod Strugš', 'Pod Wierzbami', 'Podedworze', 'Podgórki', 'Podgórki Tynieckie', 'Rynek Podgórski', 'Podgwiezdna', 'Podhalañska', 'Podhalnie', 'Podlesie', 'Pod³êska', 'Podmi³ów', 'Podmok³a', 'Podskale', 'os. Podwawelskie', 'Podwórkowa', 'Filipa Pokutyñskiego', 'Polarna', 'Polonijna', 'Tadeusza Po³omskiego', 'ks. Jerzego Popie³uszki', 'Wac³awa Pop³awskiego', 'Poprzeczna', 'Porfirowa', 'Poroniñska', 'Port Solny', 'Portowa', 'Andrzeja Potebni', 'Potrzask', 'Jerzego Potrzebowskiego', 'W³adys³awa Poturalskiego', 'Powa³y z Taczewa', 'Powro?nicza', 'al. Powstañców ?lšskich', 'Powstañców Wielkopolskich', 'Pó³³anki', 'Praska', 'Adama Pra¿mowskiego', 'al. Elvisa Presleya', 'Prokocimska', 'Promienna', 'Promowa', 'Andrzeja i Zbigniewa Pronaszków', 'Stanis³awa Pronia', 'Prosta', 'Ksawerego Pruszyñskiego', 'Tomasza Pryliñskiego', 'Przebi?niegów', 'Przecinek', 'Przedwio?nie', 'Przekštna', 'Prze³azek', 'Prze³êcz', 'Prze³om', 'Przemiarki', 'Przemys³owa', 'Przewiewna', 'Przewóz', 'Przy Cegielni', 'Przy Ku?ni', 'Przy Mo?cie', 'Przy Torze', 'Przykopy', 'Przylaszczki', 'Przyrodnicza', 'pl. Przystanek', 'Jana Kantego Przyzby', 'Pszczelna', 'Pszenna', 'Kazimierza Pu³askiego', '8 Pu³ku U³anów', 'Pustelnia', 'Pustynna', 'Puszkarska', 'Pychowicka', 'W³adys³awa Pytlasiñskiego', 'Rabczañska', 'Rabsztyñska', 'Raciborska', 'Rad³owa', 'Zygmunta Radnickiego', 'Radosna', 'Raku?', 'Ratajska', 'Cyryla Ratajskiego', 'Ršczna', 'Rdzawa', 'Redemptorystów', 'Tadeusza Rejtana', 'Republiki Korczakowskiej', 'Rêkawka', 'Wilhelma i Jana Ripperów', 'Robotnicza', 'Rodzinna', 'Rodziny Jêdów', 'gen. Boles³awa Roi', 'Karola Rollego', 'Rolna', 'Tadeusza Romanowicza', 'Rosista', 'gen. Stanis³awa Rostworowskiego', 'Rozdro¿e', 'W³adys³awa Ro¿ena-Jaksy', 'Ró¿ana', 'Ruciana', 'Ruczaj', 'Maksymiliana Rutkowskiego', 'Rybitwy', 'Rydlówka', 'Ludwika Rydygiera', 'Teodora Rygiera', 'Maksyma Rylskiego', 'Rymanowska', 'Rytownicza', 'Józefa Rzebika', 'Rzemie?lnicza', 'R¿šcka', 'Andrieja Sacharowa', 'Sadka', 'Salezjañska', 'Sanatoryjna', 'Sandomierska', 'Sanocka', 'Franciszka Sapalskiego', 'Sarmacka', 'Saska', 'Jana Sas-Zubrzyckiego', 'Józefa i Floriana Sawiczewskich', 'Sšsiedzka', 'Bronis³awa Schönborna', 'Brunona Schulza', 'Alberta Schweitzera', 'Emilii Sczanieckiej', 'Stefanii Sempo³owskiej', 'Serbska', 'pl. Emila Serkowskiego', 'prof. Tadeusza Seweryna', 'Siarczana', 'Siarczanogórska', 'Siarczki', 'Sidziñska', 'b³. Franciszki Siedliskiej', 'Sielska', 'Kazimierza Siemienowicza', 'Siemomys³a', 'Maksymiliana Si³y-Nowickiego', 'Siostrzana', 'Skalica', 'Zbigniewa Skšpskiego', 'Sko³czanka', 'Sko?na', 'Skotnicka', 'Skowronia', 'Skromna', 'Jana Skrzetuskiego', 'al. gen. Jana Skrzyneckiego', 'Skwerowa', 'mjr. Mieczys³awa S³abego', 'Walerego S³awka', 'S³omiana', 'S³ona Woda', 'Gabriela S³oñskiego', 'S³upska', 'Smolarzy', 'Jana Smolenia', 'Jerzego Smoleñskiego', 'Stanis³awa Smolki', 'Smolna', 'Snozy', 'Snycerska', 'Tadeusza Sobesto', 'Soboniowicka', 'Sobótka', 'Sodowa', 'Sokolska', 'Andrzeja Soko³owskiego', 'Solarzy', 'Solna', 'Solówki', 'Ernesta Solvaya', 'Soroki', 'Sowia', 'Spacerowa', 'Spiska', 'Sporna', 'Sportowa', 'Spó³dzielców', 'p³k. Józefa Spychalskiego', 'os. Srebrne Uroczysko', 'Konrada Srzednickiego', 'Stacyjna', 'Tadeusza Starca', 'Staromostowa', 'Starowiejska', 'Stefana Starzyñskiego', 'Wojciecha Stattlera', 'por. Antoniego Stawarza', 'Stawisko', 'Stepowa', 'Stêpice', 'Józefa Stêpnia', 'Stoczniowców', 'Stoigniewa', 'Stanis³awa Stoja³owskiego', 'Stefana Stolarza', 'Storczykowa', 'ks. Ignacego Stoszki', 'Stra¿acka', 'Strškowa', 'Stroma', 'Stró¿a Rybna', 'Strumienna', 'Strycharska', 'Tadeusza Stryjeñskiego', 'Studzianki', 'Sucha', 'Henryka Sucharskiego', 'Sudecka', 'gen. Józefa Su³kowskiego', 'Jana Surzyckiego', 'Swoboda', 'Swoszowicka', 'Szymona Syreñskiego', 'Szaflarska', 'Tadeusza Szafrana', 'Klemensa Szaniawskiego-Junoszy', 'Szara', 'Jacka Szarskiego', 'Szarych Szeregów', 'Jana Szastera', 'Szczawnicka', 'Szczeciñska', 'Szczegów', 'Karola Szczerbiñskiego', 'Szczê?liwa', 'Stanis³awa Szczygielskiego', 'Szczygla', 'Szerokie £ški', 'Szklarska', 'Szkolna', 'Szmaragdowa', 'Szpakowa', 'Szparagowa', 'Jana Izydora Sztaudyngera', 'Aleksandra Szukiewicza', 'Jana Szumca', 'Szuwarowa', 'Jana Szwai', 'Anny Szwed-?niadowskiej', 'Szwedzka', 'Szybisko', 'gen. Antoniego Szyllinga', 'Dezyderego Szymkiewicza', 'Szymona Szymonowica', 'ks. Piotra ?ciegiennego', 'prof. Jana ?laskiego', '?liska', 'Tadeusza ?liwiaka', 'Leopolda ?liwy', 'Leona ?lósarczyka', '?lusarska', '?nie¿na', '?wiatowida', 'Henryka ?widziñskiego', '?wiebodzicka', '?wie¿a', '?wiêtojañska', 'Taborowa', 'W³adys³awa Takliñskiego', 'Teodora Talowskiego', 'Czes³awa Tañskiego', 'ks. Karola Targosza', 'Targowa', 'Tarnobrzeska', 'Tarnowska', 'Jana Tarnowskiego', 'Tatrzañska', 'Leonida Teligi', 'Telimeny', 'Têczowa', 'ks. Józefa Tischnera', 'Leona Tochowicza', 'Tokarska', 'Topazowa', 'Topiarnia', 'Topografów', 'Toporczyków', 'Torfowa', 'Torowa', 'Totus tuus', 'Traczy', 'Romualda Traugutta', 'Trawniki', 'Tretówka', 'Truskawiecka', 'Trybuny Ludów', 'Tuchowska', 'Tulipanowa', 'Turecka', 'ks. Wincentego Turka', 'Turniejowa', 'Turonia', 'Jerzego Turowicza', 'Twardowskiego', 'Tymotkowa', 'Tyniecka', 'Tynkarzy', 'Jana Leopolda Tyranowskiego', 'Tyrczanka', 'Seweryna Udzieli', 'Uko?na', 'Eugenii Umiñskiej', 'Józefa Unruga', 'Urocza', 'Urwana', 'U?miech', 'Uzdrowiskowa', 'Leona Wachholza', 'Wadowicka', 'Walgierza Wda³ego', 'Konrada Wallenroda', 'Wa³brzyska', 'Wa³owa', 'Wandejska', 'Wapienna', 'Bernarda Wapowskiego', 'Edwarda Warcha³owskiego', 'Warowna', 'Józefa Warszewicza', 'Edmunda Wasilewskiego', 'Tadeusza Wa¿ewskiego', 'por. Wšcha³y', 'Wczasowa', 'Ferdynanda Weigla', 'Piusa Weloñskiego', 'Wêgierska', 'Wêglarska', 'prof. Boles³awa Wiktora Wicherkiewicza', 'Wichrowa', 'Wid³akowa', 'Widnokršg', 'Wielicka', 'Wielkanocna', 'Wielogórska', 'Wierchowa', 'Wierzbowa', 'Wilgotna', 'Winnicka', 'prof. Jerzego Wi?niewskiego', 'Wincentego Witosa', 'Wlotowa', 'W³adys³awa Warneñczyka', 'W³odarska', 'W³oska', 'Wodna', 'Wojciecha z Brudzewa', 'Wojnicka', 'Wolno?ci', 'Wolska', 'Feliksa Wrobela', 'Mieczys³awa Wrony', 'Kmr. Bohdana Wroñskiego', 'Wróblowicka', 'Wspólna', 'ks. Jakuba Wujka', 'Wygrana', 'Wy³om', 'Wypoczynkowa', 'Wyrwa', 'Marii i Boles³awa Wys³ouchów', 'ks. Prymasa Stefana Wyszyñskiego', 'Wy¿ynna', 'Wzgórze', 'Za Lipkami', 'Za Torem', 'Zabawa', 'Zab³ocie', 'Zaborze', 'Zachodnia', 'Zaciernie', 'Zadworze', 'Zagaje', 'Zagonów', 'Zagórze', 'Zagrody', 'ks. Adolfa Zagrodzkiego', 'Zagumnie', 'Zakarczmie', 'Zakle?nie', 'Zakopiañska', 'Zakrzowiecka', 'Zalesie', 'Zamiejska', 'Zamkniêta', 'Zamkowa', 'Zam³ynie', 'Jana Zamoyskiego', 'Tomasza Zana', 'Zaporoska', 'Zarosie', 'Mariusza Zaruskiego', 'Wies³awa Zarzyckiego', 'Zatorska', 'Zau³ek', 'os. Zau³ek Jugowicki', 'Zawi³a', 'Zawiszy', 'Zbaraska', 'Zbrojarzy', 'Zbydniowicka', 'Zdrojowa', 'Zdunów', 'Zduñska', 'Aleksandra Zelwerowicza', 'Zembrzycka', 'Zieleniec', 'gen. Bohdana Zieliñskiego', 'Zielna', 'Zielona', 'Zielonogórska', 'Micha³a Zientary', 'Siostry Zygmunty Zimmer', 'Zimna', 'Stefana Ziobrowskiego', 'Z³ocieniowa', 'Zmartwychwstania Pañskiego', 'Fryderyka Zolla', 'Zyndrama z Maszkowic', '?ródlana', '¯abia', 'Micha³a ¯aka', '¯aków Krakowskich', 'Romana ¯elazowskiego', '¯eñców', 'Narcyzy ¯michowskiej', '¯niwna', '¯o³nierska', '¯urawia', '¯ywiecka', '¯yzna');
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
  
  f_name := namesarray('Jan', 'Andrzej', 'Piotr', 'Krzysztof', 'Stanis³aw', 'Tomasz', 'Pawe³', 'Józef', 'Marcin', 'Marek', 'Micha³', 'Grzegorz', 'Jerzy', 'Tadeusz', 'Adam', '£ukasz', 'Zbigniew', 'Ryszard', 'Dariusz', 'Henryk', 'Mariusz', 'Kazimierz', 'Wojciech', 'Robert', 'Mateusz', 'Marian', 'Rafa³', 'Jacek', 'Janusz', 'Miros³aw', 'Maciej', 'S³awomir', 'Jaros³aw', 'Kamil', 'Wies³aw', 'Roman', 'W³adys³aw', 'Jakub', 'Artur', 'Zdzis³aw', 'Edward', 'Mieczys³aw', 'Damian', 'Dawid', 'Przemys³aw', 'Sebastian', 'Czes³aw', 'Leszek', 'Daniel', 'Waldemar','Anna', 'Maria', 'Katarzyna', 'Ma³gorzata', 'Agnieszka', 'Krystyna', 'Barbara', 'Ewa', 'El¿bieta', 'Zofia', 'Janina', 'Teresa', 'Joanna', 'Magdalena', 'Monika', 'Jadwiga', 'Danuta', 'Irena', 'Halina', 'Helena', 'Beata', 'Aleksandra', 'Marta', 'Dorota', 'Marianna', 'Gra¿yna', 'Jolanta', 'Stanis³awa', 'Iwona', 'Karolina', 'Bo¿ena', 'Urszula', 'Justyna', 'Renata', 'Alicja', 'Paulina', 'Sylwia', 'Natalia', 'Wanda', 'Agata', 'Aneta', 'Izabela', 'Ewelina', 'Marzena', 'Wies³awa', 'Genowefa', 'Patrycja', 'Kazimiera', 'Edyta', 'Stefania');
  l_name := surnamesarray('Nowak', 'Kowalski', 'Wiœniewski', 'D¹browski', 'Lewandowski', 'Wójcik', 'Kamiñski', 'Kowalczyk', 'Zieliñski', 'Szymañski', 'WoŸniak', 'Koz³owski', 'Jankowski', 'Wojciechowski', 'Kwiatkowski', 'Kaczmarek', 'Mazur', 'Krawczyk', 'Piotrowski', 'Grabowski', 'Nowakowski', 'Paw³owski', 'Michalski', 'Nowicki', 'Adamczyk', 'Dudek', 'Zaj¹c', 'Wieczorek', 'Jab³oñski', 'Król', 'Majewski', 'Olszewski', 'Jaworski', 'Wróbel', 'Malinowski', 'Pawlak', 'Witkowski', 'Walczak', 'Stêpieñ', 'Górski', 'Rutkowski', 'Michalak', 'Sikora', 'Ostrowski', 'Baran', 'Duda', 'Szewczyk', 'Tomaszewski', 'Pietrzak', 'Marciniak', 'Wróblewski', 'Zalewski', 'Jakubowski', 'Jasiñski', 'Zawadzki', 'Sadowski', 'B¹k', 'Chmielewski', 'W³odarczyk', 'Borkowski', 'Czarnecki', 'Sawicki', 'Soko³owski', 'Urbañski', 'Kubiak', 'Maciejewski', 'Szczepañski', 'Kucharski', 'Wilk', 'Kalinowski', 'Lis', 'Mazurek', 'Wysocki', 'Adamski', 'KaŸmierczak', 'Wasilewski', 'Sobczak', 'Czerwiñski', 'Andrzejewski', 'Cieœlak', 'G³owacki', 'Zakrzewski', 'Ko³odziej', 'Sikorski', 'Krajewski', 'Gajewski', 'Szymczak', 'Szulc', 'Baranowski', 'Laskowski', 'Brzeziñski', 'Makowski', 'Zió³kowski', 'Przybylski');
  functio:= functionsarray('szef','prezes','kierownik','dzia³ zamówieñ');
  
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

 


       
