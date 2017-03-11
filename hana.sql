--=====================================================
--CREATE TABLE ADDRESS
--=====================================================
CREATE COLUMN TABLE "ADDRESS" ( "ID" INTEGER NOT NULL,
       "STREET" NVARCHAR(256),
       "CITY" NVARCHAR(100),
       "BUILDING_NUMBER" INTEGER,
       "POSTCODE" NVARCHAR(20),
       PRIMARY KEY ("ID"));
       
--=====================================================
--FILL TABLE ADDRESS
--=====================================================
DO 
BEGIN
DECLARE CNTR INTEGER DEFAULT 0;
DECLARE STREET NVARCHAR(2363) ARRAY;
DECLARE CITY NVARCHAR(911) ARRAY;
CITY = ARRAY('Babimost','Baborów','Baranów Sandomierski','Barcin','Barczewo','Bardo','Barlinek','Bartoszyce','Barwice','Bełchatów','Bełżyce','Będzin','Biała','Biała Piska','Biała Podlaska','Biała Rawska','Białobrzegi','Białogard','Biały Bór','Białystok','Biecz','Bielawa','Bielsk Podlaski','Bielsko-Biała','Bieruń','Bierutów','Bieżuń','Biłgoraj','Biskupiec','Bisztynek','Blachownia','Błaszki','Błażowa','Błonie','Bobolice','Bobowa','Bochnia','Bodzentyn','Bogatynia','Boguchwała','Boguszów-Gorce','Bojanowo','Bolesławiec','Bolków','Borek Wielkopolski','Borne Sulinowo','Braniewo','Brańsk','Brodnica','Brok','Brusy','Brwinów','Brzeg','Brzeg Dolny','Brzesko','Brzeszcze','Brześć Kujawski','Brzeziny','Brzostek','Brzozów','Buk','Bukowno','Busko-Zdrój','Bychawa','Byczyna','Bydgoszcz','Bystrzyca Kłodzka','Bytom','Bytom Odrzański','Bytów','Cedynia','Chełm','Chełmek','Chełmno','Chełmża','Chęciny','Chmielnik','Chocianów','Chociwel','Chocz','Chodecz','Chodzież','Chojna','Chojnice','Chojnów','Choroszcz','Chorzele','Chorzów','Choszczno','Chrzanów','Ciechanowiec','Ciechanów','Ciechocinek','Cieszanów','Cieszyn','Ciężkowice','Cybinka','Czaplinek','Czarna Białostocka','Czarna Woda','Czarne','Czarnków','Czchów','Czechowice-Dziedzice','Czeladź','Czempiń','Czerniejewo','Czersk','Czerwieńsk','Czerwionka-Leszczyny','Częstochowa','Człopa','Człuchów','Czyżew','Ćmielów','Daleszyce','Darłowo','Dąbie','Dąbrowa Białostocka','Dąbrowa Górnicza','Dąbrowa Tarnowska','Debrzno','Dębica','Dęblin','Dębno','Dobczyce','Dobiegniew','Dobra','Dobra','Dobre Miasto','Dobrodzień','Dobrzany','Dobrzyca','Dobrzyń nad Wisłą','Dolsk','Drawno','Drawsko Pomorskie','Drezdenko','Drobin','Drohiczyn','Drzewica','Dukla','Duszniki-Zdrój','Dynów','Działdowo','Działoszyce','Działoszyn','Dzierzgoń','Dzierżoniów','Dziwnów','Elbląg','Ełk','Frampol','Frombork','Garwolin','Gąbin','Gdańsk','Gdynia','Giżycko','Glinojeck','Gliwice','Głogów','Głogów Małopolski','Głogówek','Głowno','Głubczyce','Głuchołazy','Głuszyca','Gniew','Gniewkowo','Gniezno','Gogolin','Golczewo','Goleniów','Golina','Golub-Dobrzyń','Gołańcz','Gołdap','Goniądz','Gorlice','Gorzów Śląski','Gorzów Wielkopolski','Gostynin','Gostyń','Gościno','Gozdnica','Góra','Góra Kalwaria','Górowo Iławeckie','Górzno','Grabów nad Prosną','Grajewo','Grodków','Grodzisk Mazowiecki','Grodzisk Wielkopolski','Grójec','Grudziądz','Grybów','Gryfice','Gryfino','Gryfów Śląski','Gubin','Hajnówka','Halinów','Hel','Hrubieszów','Iława','Iłowa','Iłża','Imielin','Inowrocław','Ińsko','Iwonicz-Zdrój','Izbica Kujawska','Jabłonowo Pomorskie','Janikowo','Janowiec Wielkopolski','Janów Lubelski','Jaraczewo','Jarocin','Jarosław','Jasień','Jasło','Jastarnia','Jastrowie','Jastrzębie-Zdrój','Jawor','Jaworzno','Jaworzyna Śląska','Jedlicze','Jedlina-Zdrój','Jedwabne','Jelcz-Laskowice','Jelenia Góra','Jeziorany','Jędrzejów','Jordanów','Józefów','Józefów','Jutrosin','Kalety','Kalisz','Kalisz Pomorski','Kalwaria Zebrzydowska','Kałuszyn','Kamienna Góra','Kamień Krajeński','Kamień Pomorski','Kamieńsk','Kańczuga','Karczew','Kargowa','Karlino','Karpacz','Kartuzy','Katowice','Kazimierz Dolny','Kazimierza Wielka','Kąty Wrocławskie','Kcynia','Kędzierzyn-Koźle','Kępice','Kępno','Kętrzyn','Kęty','Kielce','Kietrz','Kisielice','Kleczew','Kleszczele','Kluczbork','Kłecko','Kłobuck','Kłodawa','Kłodzko','Knurów','Knyszyn','Kobylin','Kobyłka','Kock','Kolbuszowa','Kolno','Kolonowskie','Koluszki','Kołaczyce','Koło','Kołobrzeg','Koniecpol','Konin','Konstancin-Jeziorna','Konstantynów Łódzki','Końskie','Koprzywnica','Korfantów','Koronowo','Korsze','Kosów Lacki','Kostrzyn','Kostrzyn nad Odrą','Koszalin','Kościan','Kościerzyna','Kowal','Kowalewo Pomorskie','Kowary','Koziegłowy','Kozienice','Koźmin Wielkopolski','Kożuchów','Kórnik','Krajenka','Kraków','Krapkowice','Krasnobród','Krasnystaw','Kraśnik','Krobia','Krosno','Krosno Odrzańskie','Krośniewice','Krotoszyn','Kruszwica','Krynica Morska','Krynica-Zdrój','Krynki','Krzanowice','Krzepice','Krzeszowice','Krzywiń','Krzyż Wielkopolski','Książ Wielkopolski','Kudowa-Zdrój','Kunów','Kutno','Kuźnia Raciborska','Kwidzyn','Lądek-Zdrój','Legionowo','Legnica','Lesko','Leszno','Leśna','Leśnica','Lewin Brzeski','Leżajsk','Lębork','Lędziny','Libiąż','Lidzbark','Lidzbark Warmiński','Limanowa','Lipiany','Lipno','Lipsk','Lipsko','Lubaczów','Lubań','Lubartów','Lubawa','Lubawka','Lubień Kujawski','Lubin','Lublin','Lubliniec','Lubniewice','Lubomierz','Luboń','Lubraniec','Lubsko','Lubycza Królewska','Lwówek','Lwówek Śląski','Łabiszyn','Łańcut','Łapy','Łasin','Łask','Łaskarzew','Łaszczów','Łaziska Górne','Łazy','Łeba','Łęczna','Łęczyca','Łęknica','Łobez','Łobżenica','Łochów','Łomianki','Łomża','Łosice','Łowicz','Łódź','Łuków','Maków Mazowiecki','Maków Podhalański','Malbork','Małogoszcz','Małomice','Margonin','Marki','Maszewo','Miasteczko Śląskie','Miastko','Michałowo','Miechów','Miejska Górka','Mielec','Mieroszów','Mieszkowice','Międzybórz','Międzychód','Międzylesie','Międzyrzec Podlaski','Międzyrzecz','Międzyzdroje','Mikołajki','Mikołów','Mikstat','Milanówek','Milicz','Miłakowo','Miłomłyn','Miłosław','Mińsk Mazowiecki','Mirosławiec','Mirsk','Mława','Młynary','Modliborzyce','Mogielnica','Mogilno','Mońki','Morąg','Mordy','Moryń','Mosina','Mrągowo','Mrocza','Mrozy','Mszana Dolna','Mszczonów','Murowana Goślina','Muszyna','Mysłowice','Myszków','Myszyniec','Myślenice','Myślibórz','Nakło nad Notecią','Nałęczów','Namysłów','Narol','Nasielsk','Nekla','Nidzica','Niemcza','Niemodlin','Niepołomice','Nieszawa','Nisko','Nowa Dęba','Nowa Ruda','Nowa Sarzyna','Nowa Sól','Nowe','Nowe Brzesko','Nowe Miasteczko','Nowe Miasto Lubawskie','Nowe Miasto nad Pilicą','Nowe Skalmierzyce','Nowe Warpno','Nowogard','Nowogrodziec','Nowogród','Nowogród Bobrzański','Nowy Dwór Gdański','Nowy Dwór Mazowiecki','Nowy Sącz','Nowy Staw','Nowy Targ','Nowy Tomyśl','Nowy Wiśnicz','Nysa','Oborniki','Oborniki Śląskie','Obrzycko','Odolanów','Ogrodzieniec','Okonek','Olecko','Olesno','Oleszyce','Oleśnica','Olkusz','Olsztyn','Olsztynek','Olszyna','Oława','Opalenica','Opatów','Opoczno','Opole','Opole Lubelskie','Orneta','Orzesze','Orzysz','Osieczna','Osiek','Ostrołęka','Ostroróg','Ostrowiec Świętokrzyski','Ostróda','Ostrów Lubelski','Ostrów Mazowiecka','Ostrów Wielkopolski','Ostrzeszów','Ośno Lubuskie','Oświęcim','Otmuchów','Otwock','Ozimek','Ozorków','Ożarów','Ożarów Mazowiecki','Pabianice','Paczków','Pajęczno','Pakość','Parczew','Pasłęk','Pasym','Pelplin','Pełczyce','Piaseczno','Piaski','Piastów','Piechowice','Piekary Śląskie','Pieniężno','Pieńsk','Pieszyce','Pilawa','Pilica','Pilzno','Piła','Piława Górna','Pińczów','Pionki','Piotrków Kujawski','Piotrków Trybunalski','Pisz','Piwniczna-Zdrój','Pleszew','Płock','Płońsk','Płoty','Pniewy','Pobiedziska','Poddębice','Podkowa Leśna','Pogorzela','Polanica-Zdrój','Polanów','Police','Polkowice','Połaniec','Połczyn-Zdrój','Poniatowa','Poniec','Poręba','Poznań','Prabuty','Praszka','Prochowice','Proszowice','Prószków','Pruchnik','Prudnik','Prusice','Pruszcz Gdański','Pruszków','Przasnysz','Przecław','Przedbórz','Przedecz','Przemków','Przemyśl','Przeworsk','Przysucha','Pszczyna','Pszów','Puck','Puławy','Pułtusk','Puszczykowo','Pyrzyce','Pyskowice','Pyzdry','Rabka-Zdrój','Raciąż','Racibórz','Radków','Radlin','Radłów','Radom','Radomsko','Radomyśl Wielki','Radymno','Radziejów','Radzionków','Radzymin','Radzyń Chełmiński','Radzyń Podlaski','Rajgród','Rakoniewice','Raszków','Rawa Mazowiecka','Rawicz','Recz','Reda','Rejowiec Fabryczny','Resko','Reszel','Rogoźno','Ropczyce','Różan','Ruciane-Nida','Ruda Śląska','Rudnik nad Sanem','Rumia','Rybnik','Rychwał','Rydułtowy','Rydzyna','Ryglice','Ryki','Rymanów','Ryn','Rypin','Rzepin','Rzeszów','Rzgów','Sandomierz','Sanok','Sejny','Serock','Sędziszów','Sędziszów Małopolski','Sępopol','Sępólno Krajeńskie','Sianów','Siechnice','Siedlce','Siedliszcze','Siemianowice Śląskie','Siemiatycze','Sieniawa','Sieradz','Sieraków','Sierpc','Siewierz','Skalbmierz','Skała','Skarszewy','Skaryszew','Skarżysko-Kamienna','Skawina','Skępe','Skierniewice','Skoczów','Skoki','Skórcz','Skwierzyna','Sława','Sławków','Sławno','Słomniki','Słubice','Słupca','Słupsk','Sobótka','Sochaczew','Sokołów Małopolski','Sokołów Podlaski','Sokółka','Solec Kujawski','Sompolno','Sopot','Sosnowiec','Sośnicowice','Stalowa Wola','Starachowice','Stargard','Starogard Gdański','Stary Sącz','Staszów','Stawiski','Stawiszyn','Stąporków','Stepnica','Stęszew','Stoczek Łukowski','Stopnica','Stronie Śląskie','Strumień','Stryków','Strzegom','Strzelce Krajeńskie','Strzelce Opolskie','Strzelin','Strzelno','Strzyżów','Sucha Beskidzka','Suchań','Suchedniów','Suchowola','Sulechów','Sulejów','Sulejówek','Sulęcin','Sulmierzyce','Sułkowice','Supraśl','Suraż','Susz','Suwałki','Swarzędz','Syców','Szadek','Szamocin','Szamotuły','Szczawnica','Szczawno-Zdrój','Szczebrzeszyn','Szczecin','Szczecinek','Szczekociny','Szczucin','Szczuczyn','Szczyrk','Szczytna','Szczytno','Szepietowo','Szklarska Poręba','Szlichtyngowa','Szprotawa','Sztum','Szubin','Szydłowiec','Ścinawa','Ślesin','Śmigiel','Śrem','Środa Śląska','Środa Wielkopolska','Świątniki Górne','Świdnica','Świdnik','Świdwin','Świebodzice','Świebodzin','Świecie','Świeradów-Zdrój','Świerzawa','Świętochłowice','Świnoujście','Tarczyn','Tarnobrzeg','Tarnogród','Tarnowskie Góry','Tarnów','Tczew','Terespol','Tłuszcz','Tolkmicko','Tomaszów Lubelski','Tomaszów Mazowiecki','Toruń','Torzym','Toszek','Trzcianka','Trzciel','Trzcińsko-Zdrój','Trzebiatów','Trzebinia','Trzebnica','Trzemeszno','Tuchola','Tuchów','Tuczno','Tuliszków','Turek','Tuszyn','Twardogóra','Tychowo','Tychy','Tyczyn','Tykocin','Tyszowce','Ujazd','Ujście','Ulanów','Uniejów','Urzędów','Ustka','Ustroń','Ustrzyki Dolne','Wadowice','Wałbrzych','Wałcz','Warka','Warszawa','Warta','Wasilków','Wąbrzeźno','Wąchock','Wągrowiec','Wąsosz','Wejherowo','Węgliniec','Węgorzewo','Węgorzyno','Węgrów','Wiązów','Wieleń','Wielichowo','Wieliczka','Wieluń','Wieruszów','Więcbork','Wilamowice','Wisła','Witkowo','Witnica','Wleń','Władysławowo','Włocławek','Włodawa','Włoszczowa','Wodzisław Śląski','Wojcieszów','Wojkowice','Wojnicz','Wolbórz','Wolbrom','Wolin','Wolsztyn','Wołczyn','Wołomin','Wołów','Woźniki','Wrocław','Wronki','Września','Wschowa','Wyrzysk','Wysoka','Wysokie Mazowieckie','Wyszków','Wyszogród','Wyśmierzyce','Zabłudów','Zabrze','Zagórów','Zagórz','Zakliczyn','Zaklików','Zakopane','Zakroczym','Zalewo','Zambrów','Zamość','Zator','Zawadzkie','Zawichost','Zawidów','Zawiercie','Ząbki','Ząbkowice Śląskie','Zbąszynek','Zbąszyń','Zduny','Zduńska Wola','Zdzieszowice','Zelów','Zgierz','Zgorzelec','Zielona Góra','Zielonka','Ziębice','Złocieniec','Złoczew','Złotoryja','Złotów','Złoty Stok','Zwierzyniec','Zwoleń','Żabno','Żagań','Żarki','Żarów','Żary','Żelechów','Żerków','Żmigród','Żnin','Żory','Żukowo','Żuromin','Żychlin','Żyrardów','Żywiec');
STREET = ARRAY('Agrestowa', 'Akademicka', 'Altanowa', 'Amazonek', 'Władysława Anczyca', 'Tomasza Arciszewskiego', 'Armii Krajowej', 'Arsenał', 'Astronautów', 'Astronomów', 'Astrowa', 'Antoniego Augustynka-Wichury', 'pl. Teodora Axentowicza', 'Azaliowa', 'Bagatela', 'Bakałarzy', 'Balicka', 'Bałtycka', 'Stefana Banacha', 'Jerzego Samuela Bandtkiego', 'Adriana Baranieckiego', 'Batalionu "Skała" AK', 'Batowicka', 'Bażancia', 'Klemensa Bškowskiego', 'Józefa Becka', 'Belwederczyków', 'Ludomira Benedyktowicza', 'Maurycego Beniowskiego', 'Berberysowa', 'Wacława Berenta', 'Ryszarda Berwińskiego', 'Biała', 'Białe Wzgórze', 'Białopršdnicka', 'Bibicka', 'Franciszka Bielaka', 'Bielańska', 'inż. Adama Bielańskiego', 'Edmunda Biernackiego', 'Bliska', 'Marii Bobrzeckiej', 'Bociana', 'Bodziszkowa', 'Marcina Borelowskiego "Lelewela"', 'Piotra Borowego', 'Borówczana', 'Tadeusza Boya-Żeleńskiego', 'Bratysławska', 'Bršzownicza', 'w. Bronisławy', 'os. Bronowice Nowe', 'Bronowicka', 'Bruzdowa', 'Brzegowa', 'Piotra Brzezińskiego', 'Stanisława Brzozowskiego', 'Witolda Budryka', 'Budrysów', 'Bukietowa', 'Bularnia', 'Bulwar Rodła', 'Bursztynowa', 'Jana Buszka', 'Bydgoska', 'Bytomska', 'Edwarda Bzymka-Strzałkowskiego', 'Cedrowa', 'Chabrowa', 'Józefa Chełmońskiego', 'Chełmska', 'Adama Chmiela', 'Chmurna', 'Chocimska', 'Daniela Chodowieckiego', 'Fryderyka Chopina', 'Leona Chwistka', 'Cicha', 'Cichy Kšcik', 'Stanisława Ciechanowskiego', 'Cieszyńska', 'Cisowa', 'Josepha Conrada', 'Cygańska', 'Czajek', 'Kazimierza Czapińskiego', 'Czarnowiejska', 'Bronisława Czecha', 'Czeladnicza', 'Błażeja Czepca', 'Czeremchowa', 'Bolesława Czerwieńskiego', 'Tytusa Czyżewskiego', 'Czyżyków', 'Daleka', 'Wincentego Danka', 'al. Do Kopca', 'Do Obserwatorium', 'Do Przystani', 'Jerzego Dobrzyckiego', 'Dojazdowa', 'Dolina', 'Jarosława Dolińskiego', 'Ignacego Domeyki', 'Dożynkowa', 'Drożyna', 'Dróżnicka', 'Michała Drzymały', 'rtm. Zbigniewa Dunin-Wšsowicza', 'Dworna', 'Sołtysa Dytmara', 'Dzielna', 'Dziewanny', 'Gustawa Ehrenberga', 'Józefa Elsnera', 'Emaus', 'Estreicherów', 'Erazma i Stanisława Fabijańskich', 'Juliana Fałata', 'abp. Zygmunta Szczęsnego Felińskiego', 'gen. Augusta Fieldorfa-Nila', 'Filarecka', 'Filtrowa', 'Fiszera', 'Flisacka', 'al. marsz. Ferdynanda Focha', 'Józefa Friedleina', 'Karola Frycza', 'Andrzeja Frycza-Modrzewskiego', 'Gaik', 'Gajówka', 'Mahatmy Gandhiego', 'bp. Józefa Gawliny', 'Gdyńska', 'Zygmunta Glogera', 'Głęboka', 'Głogowa', 'Głogowiec', 'Bartosza Głowackiego', 'Gnienieńska', 'Emila Godlewskiego', 'Walerego Goetla', 'Gontyna', 'Gospodarska', 'Górka Narodowa', 'Górna', 'Łukasza Górnickiego', 'Ignacego Grabczaka', 'Grabowa', 'Gradowa', 'Gramatyka', 'Grażyny', 'Grenadierów', 'Stanisława Grochowiaka', 'Groszkowa', 'al. Artura Grottgera', 'Gryczana', 'Jaxy Gryfity', 'Gzymsików', 'Wojciecha Halczyna', 'Halki', 'Hamernia', 'Mariana Hemara', 'Kazimierza Herwina-Pištka', 'Józefa Herzoga', 'Vlastimila Hofmana', 'Hoża', 'Igrców', 'Imbramowska', 'pl. Imbramowski', 'Romana Ingardena', 'Insurekcji Kociuszkowskiej', 'pl. Inwalidów', 'Ludwika Iwaszki', 'Jabłonkowska', 'Jabłonna', 'Królowej Jadwigi', 'Jadwigi z Łobzowa', 'Jagiełka', 'Jałowcowa', 'Jantarowa', 'Stefana Jaracza', 'Marii Jaremy', 'Jarzynowa', 'Jaskółcza', 'Jasna', 'Jasnogórska', 'Jazowa', 'Jeleniowa', 'Jemiołuszek', 'Jesionowa', 'Jęczmienna', 'Jodłowa', 'Jontkowa Górka', 'Jordanowska', 'Księcia Józefa', 'Józefitów', 'Junacka', 'Jurajska', 'Jerzego Jurowicza', 'Justowska', 'Alojzego Kaczmarczyka', 'Kaczorówka', 'Kadecka', 'Kadrówki', 'Macieja Kalenkiewicza', 'Józefa Kałuży', 'Kamedulska', 'Kamienna', 'Mieczysława Karłowicza', 'Tadeusza Kasprzyckiego', 'al. Kasy Oszczędnoci M. Krakowa', 'Stanisława Kasznicy', 'al. Kasztanowa', 'Kasztelańska', 'Kaszubska', 'Katowicka', 'Kawiory', 'Kazimierza Wielkiego', 'al. Kijowska', 'gen. Kiwerskiego', 'Klonowa', 'Kluczborska', 'Piotra Kluzeka', 'Kmieca', 'Józefa Kmietowicza', 'Kogucia', 'Kołaczy', 'Koło Białuchy', 'Koło Strzelnicy', 'Kołowa', 'Bolesława Komorowskiego', 'al. Konarowa', 'Stanisława Konarskiego', 'Feliksa Konecznego', 'Konopna', 'Konwisarzy', 'Kopalina', 'Feliksa Kopery', 'Koralowa', 'Ludmiły Korbutowej', 'Janusza Korczaka', 'Grzegorza Korzeniaka', 'Józefa Korzeniowskiego', 'Kosmonautów', 'Ireny Kosmowskiej', 'Kocielna', 'gen. Tadeusza Kociuszki', 'Jana i Józefa Kotlarczyków', 'Franciszka Kowalskiego', 'Koziarówka', 'Krakusów', 'Krańcowa', 'al. Zygmunta Krasińskiego', 'Józefa Ignacego Kraszewskiego', 'Kręta', 'Kronikarza Galla', 'Krowoderskich Zuchów', 'os. Krowodrza Górka', 'Królewska', 'Krucza', 'Ludwika Krzywickiego', 'Krzywy Zaułek', 'Krzyżówka', 'dr. Tadeusza Kudlińskiego', 'Kujawska', 'gen. Mariana Kukiela', 'Kukułcza', 'Stanisława Kunickiego', 'Dobiesława Kurozwęckiego', 'Kunicy Kołłštajowskiej', 'Kunicza', 'Eugeniusza Kwiatkowskiego', 'Lajkonika', 'Lazurowa', 'Juliusza Lea', 'Jana Lechonia', 'Legendy', 'Legnicka', 'Lekarska', 'Teofila Aleksandra Lenartowicza', 'Stanisława Lentza', 'Leszczynowa', 'Bolesława Lemiana', 'Lena', 'Samuela Lindego', 'al. 28 Lipca 1943', 'Lisia', 'al. 29 Listopada', 'Litawora', 'Litewska', 'Lniana', 'Lubelska', 'Jana Łazarskiego', 'Łobzowska', 'Łowiecka', 'mjr. Łupaszki', 'ks. Ferdynanda Machaya', 'Maciejkowa', 'Józefa Mackiewicza', 'Maćkowa Góra', 'al. 3 Maja', 'Jadwigi Majówny', 'Tadeusza Makowskiego', 'Jacka Malczewskiego', 'Malinowa', 'Malownicza', 'Mieczysława Małeckiego', 'Adama Marczyńskiego', 'Margaretek', 'Marynarska', 'Mazowiecka', 'Mšczna', 'Józefa Mehoffera', 'ks. Józefa Meiera', 'al. Adama Mickiewicza', 'Miechowska', 'Mariana Mięsowicza', 'Miętowa', 'Migdałowa', 'Mirowska', 'Misjonarska', 'Mlaskotów', 'Młodej Polski', 'Zygmunta Młynarskiego', 'Heleny Modrzejewskiej', 'al. Modrzewiowa', 'Kazimierza Morawskiego', 'Morelowa', 'Most Zwierzyniecki', 'os. Wolfganga Amadeusa Mozarta', 'Mrówczana', 'Murarska', 'Ludwika Muzyczki', 'Henryka Müncha', 'prof. Stefana Myczkowskiego', 'Mydlnicka', 'Zygmunta Mysłakowskiego', 'Na Błoniach', 'Na Błonie', 'Na Borach', 'Na Budzyniu', 'Na Chałupkach', 'Na Górkach', 'Na Grabinach', 'Na Mostkach', 'Na Nowinach', 'Na Polach', 'Na Polankach', 'pl. Na Stawach', 'Na Wierzchowinach', 'Na Wirach', 'Na Wyrębę', 'Na Zielonki', 'Nad Strugš', 'Nad Sudołem', 'Nad Zalewem', 'Nad ródłem', 'Wacława Nałkowskiego', 'Narcyzowa', 'Gabriela Narutowicza', 'Nasza', 'Władysława Natansona', 'Nawigacyjna', 'Nawojki', 'Nawojowska', 'Mieczysława Niedziałkowskiego', 'Czesława Niemena', 'Nietoperzy', 'Niezapominajek', 'Niska', 'Kazimierza Nitscha', 'Nowa Górka', 'Nowowiejska', 'pl. Nowowiejski', 'Obopólna', 'Obona', 'Tadeusza Ochlewskiego', 'Odlewnicza', 'Iwona Odrowšża', 'Antoniego Edwarda Odyńca', 'rondo Ofiar Katynia', 'Ogrodniczek', 'Ojcowska', 'Okršg', 'Okrężna', 'Okulistów', 'Olchowa', 'Oleandry', 'Olimpijska', 'Olkuska', 'Olszanicka', 'gen. Józefa Olszyny-Wilczyńskiego', 'Opolska', 'Orla', 'Orlich Gniazd', 'Orna', 'Wincentego Oszustowskiego', 'Owięcimska', 'Mieczysława Owcy-Orwicza', 'Owsiana', 'Henryka Pachońskiego', 'Pajęcza', 'Jana Palacha', 'Palmowa', 'Pamiętna', 'al. Panieńskich Skał', 'Panoramiczna', 'Papiernicza', 'Pasternik', 'Ludwika Pasteura', 'gen. Franciszka Paszkowskiego', 'Tadeusza Peipera', 'Pejzażowa', 'gen. Tadeusza Pełczyńskiego', 'Pękowicka', 'Franciszka Pększyca-Grudzińskiego', 'Piaskowa', 'Piastowska', 'Piaszczysta', 'Pielęgniarek', 'Stanisława Pigonia', 'rtm. Witolda Pileckiego', 'Jana Piwnika "Ponurego"', 'Emilii Plater', 'Pleszowska', 'Pod Fortem', 'Pod Janem', 'Pod Sikornikiem', 'Pod Skałš', 'Pod Sowińcem', 'Pod Stokiem', 'Pod Strzechš', 'Pod Sulnikiem', 'Pod Szańcami', 'Pod Szwedem', 'Podchoršżych', 'Podkamyk', 'Władysława Podkowińskiego', 'Podłšcze', 'Podłużna', 'Polna', 'Polnych Kwiatów', 'Pomorska', 'Poniedziałkowy Dół', 'Karola Popiela', 'Poręba', 'Porzecze', 'Porzeczkowa', 'Stanisława Kostki Potockiego', 'Potoczek', 'Powstania Listopadowego', 'Powstania Styczniowego', 'Poziomkowa', 'Poznańska', 'Północna', 'Pršdnicka', 'Proszowicka', 'Bolesława Prusa', 'Aleksandra Prystora', 'Przegon', 'Przegorzalska', 'Przepiórcza', 'Przeskok', 'Przesmyk', 'Przy Młynówce', 'Stanisława Przybyszewskiego', 'Przyjemna', 'Przyszłoci', 'Włodzimierza Puchalskiego', 'al. Pustelnika', 'Puszczyków', 'Kazimierza Pużaka', 'Stanisława Pyjasa', 'Pylna', 'Racławicka', 'Władysława Raczkiewicza', 'Feliksa Radwańskiego', 'Eljasza Walerego Radzikowskiego', 'Mikołaja Reja', 'Henryka Reymana', 'Władysława Stanisława Reymonta', 'Rędzina', 'Jana Zygmunta Robla', 'Henryka Rodakowskiego', 'Tadeusza Rogalskiego', 'Stanisława Rokosza', 'Rolnicza', 'Eugeniusza Romera', 'Józefa Rostafińskiego', 'Ludomira Różyckiego', 'Rusznikarska', 'Rusznikarska-Deptak', 'Rybałtowska', 'Rybna', 'Lucjana Rydla', 'Rysi Stok', 'Adama Rysiewicza', 'Rzeczna', 'Rzepichy', 'Salwatorska', 'Sarnie Uroczysko', 'Jana Sawickiego', 'Senatorska', 'Ignacego Sewera', 'Sępia', 'ks. Kazimierza Siemaszki', 'Lucjana Siemieńskiego', 'Henryka Sienkiewicza', '6 Sierpnia', 'Siewna', 'Skalna', 'Stanisława Skarbińskiego', 'ks. Piotra Skargi', 'Skibowa', 'Składowa', 'Skotnica', 'Skrajna', 'Macieja Słomczyńskiego', 'Słomnicka', 'Słonecznikowa', 'Słotna', 'al. Juliusza Słowackiego', 'Słowicza', 'Smętna', 'Smoleńsk', 'Mariana Smoluchowskiego', 'Sokola', 'Ludwika Solskiego', 'Generała Stanisława Sosabowskiego', 'al. Sosnowa', 'Sosnowiecka', 'prof. Teodora Spiczakowa', 'Spiżowa', 'Spokojna', 'os. Srebrne Uroczysko', 'Piotra Stachiewicza', 'Michała Stachowicza', 'Leopolda Staffa', 'Jana Stanisławskiego', 'Stańczyka', 'Starego Dębu', 'Starego Wiarusa', 'Starowolska', 'Adama Staszczyka', 'Stawowa', 'Stelmachów', 'Jana Stróżeckiego', 'Zofii Stryjeńskiej', 'Strzelnica', 'Jana Styki', 'Suche Łški', 'Symfoniczna', 'Syreny', 'Władysława Syrokomli', 'Jerzego Szablowskiego', 'Szafirowa', 'Szarotki', 'Szaserów', 'Feliksa Szlachtowskiego', 'Szopkarzy', 'Karola Szymanowskiego', 'Adolfa Szyszki-Bohusza', 'lšska', 'miała', 'wierkowa', 'więtokrzyska', 'Matki PaZofii Tajber', 'Tatarska', 'Włodzimierza Tetmajera', 'Tkacka', 'Juliana Tokarskiego', 'Stanisława Tomkowicza', 'Stanisława Tondosa', 'Toruńska', 'Towarowa', 'Trawiasta', 'ks. Stanisława Truszkowskiego', 'Waleriana Tumanowicza', 'Turowiec', 'Turystyczna', 'dr. Twardego', 'Uboczna', 'Kornela Ujejskiego', 'Ukryta', 'Urodzajna', 'Urzędnicza', 'Adama Vetulaniego', 'Waleczna', 'Zygmunta Waliszewskiego', 'Bolesława Wallek-Walewskiego', 'Wapiennik', 'Warmijska', 'al. Jerzego Waszyngtona', 'Wšdół', 'Wojciecha Weissa', 'Wernyhory', 'Wincentego Weryhy-Darowskiego', 'Wesele', 'Wewnętrzna', 'al. Wędrowników', 'Ludwika Węgierskiego', 'Wiedeńska', 'Wielkotyrnowska', 'gen. Bolesława Wieniawy-Długoszowskiego', 'Kazimierza Wierzyńskiego', 'skwer Więniów Obozów Zagłady', 'Wilcza', 'Wilczy Stok', 'Winowców', 'Wiosenna', 'Wiolarska', 'Stanisława Witkiewicza', 'os. Witkowice Nowe', 'Witkowicka', 'Generał Marii Wittek', 'Wjazdowa', 'Władysława Łokietka', 'Włociańska', 'Włóczków', 'Wodocišgowa', 'Wincentego Wodzinowskiego', 'w. Wojciecha', 'Wojskowa', 'marsz. Mikołaja Wolskiego', 'Michała Wójcickiego', 'Wójtowska', 'Wrocławska', 'Józefa Wybickiego', 'Leona Wyczółkowskiego', 'Kazimierza Wyki', 'Zygmunta Wyrobka', 'Tadeusza Wyrwy-Furgalskiego', 'Piotra Wysockiego', 'Stanisława Wyspiańskiego', 'Kazimierza Wyżgi', 'Za Skłonem', 'Za Targiem', 'Zaborska', 'Zaczarowane Koło', 'Zakamycze', 'Zakštek', 'Zakliki z Mydlnik', 'Zaklucze', 'Zakręt', 'Zaogrodzie', 'Gabrieli Zapolskiej', 'Stanisława Zaremby', 'Zarudawie', 'Zarzecze', 'Zaskale', 'Zaszkolna', 'Zacianek', 'Zawodzie', 'Zbożowa', 'Zbrojów', 'Zdrowa', 'Zefirowa', 'Zgody', 'Zielińska', 'Zielone Wzgórze', 'Zielony Dół', 'Zielony Most', 'Zimorodków', 'Szymona Zimorowicza', 'Zjazd Rogoziany', 'Złota', 'Złoty Róg', 'Zygmunta Starego', 'Zygmuntowska', 'Dominika dziebły-Danowskiego', 'Żabiniec', 'Kaspra Żelechowskiego', 'Władysława Żeleńskiego', 'Kiejstuta Żemaitisa', 'Żmujdzka', 'al. Żubrowa', 'Żwirowa', 'Żywiczna', 'os. Akademickie', 'os. Albertyńskie', 'Andegaweńska', 'al. gen. Władysława Andersa', 'Hansa Christiana Andersena', 'Architektów', 'Henryka Arctowskiego', 'Artystów', 'Grażyny Bacewiczówny', 'Bardosa', 'Bartnicza', 'Barwinkowa', 'Barwna', 'Batalionu "Parasol"', 'Batalionu "Zoka"', 'Eugeniusza Baziaka', 'Betlejemska', 'Betonowa', 'Bieńczycka', 'pl. Bieńczycki Plac Targowy', 'Mateusza Birkuta', 'Biwakowa', 'Blokowa', 'pl. Błonie-Beszcz', 'Józefa Bogusza', 'Boguszówka', 'os. Bohaterów Wrzenia', 'Bolesława Krzywoustego', 'Bolesława Wstydliwego', 'Królowej Bony', 'al. gen. Tadeusza Bora-Komorowskiego', 'gen. Mieczysława Boruty-Spiechowicza', 'Bożywoja', 'Branicka', 'Władysława Broniewskiego', 'Brunicka', 'Brzeska', 'Budziszyńska', 'Bukszpanowa', 'Bulwarowa', 'Burzowa', 'Jana Stanisława Bystronia', 'Cedyńska', 'Rozalii Celakówny', 'Cementowa', 'Centralna', 'pl. Centralny im. Ronalda Reagana', 'os. Centrum A', 'os. Centrum B', 'os. Centrum C', 'os. Centrum D', 'os. Centrum E', 'Maksymiliana i Stanisława Cerchów', 'Chałupki', 'Cichociemnych AK', 'Ciekowiec', 'Cienista', 'Ciepłownicza', 'Ernesta Cielewskiego', 'Haliny Cielińskiej-Brzeskiej', 'Cuplowa', 'Cyprysów', 'Władysława Czaplickiego', 'Czarnolaska', 'Czeczeńska', 'Czerwonego Kapturka', 'Czyżyńska', 'rondo Czyżyńskie', 'Gustawa Daniłowskiego', 'Karola Darwina', 'Marii Dšbrowskiej', 'Deszczowa', 'Romana Dmowskiego', 'Do Fortu', 'Do Wisły', 'Dobrego Pasterza', 'Dolna', 'Dolnomłyńska', 'Drożyska', 'Xawerego Dunikowskiego', 'Benedykta Dybowskiego', 'Dymarek', 'os. Dywizjonu 303', 'rondo Dywizjonu 308', 'Dziekanowicka', 'Fatimska', 'ks. Kazimierza Figlewicza', 'Henryka Flame', 'Romana Florera', 'Walentego Florkowskiego', 'Folwarczna', 'Emila Freegego', 'Jana Gajocha', 'Konstantego Ildefonsa Gałczyńskiego', 'płk. Edwarda Gardy-Godlewskiego', 'Geodetów', 'Mikołaja Gerlaha', 'Jerzego Giedroycia', 'Glinik', 'Głębinowa', 'Cypriana Godebskiego', 'os. Górali', 'Graniczna', 'Gršby', 'Grębałowska', 'Bartłomieja Groickiego', 'Grzegorza z Sanoka', 'Gwarecka', 'Habina', 'os. Handlowe', 'Hektary', 'Henryka Brodatego', 'rondo Hipokratesa', 'Hołdu Pruskiego', 'os. Hutnicze', 'Michała Hutnika', 'Franciszka Hynka', 'Igołomska', 'Karola Irzykowskiego', 'Isep', 'Jadwingów', 'Anny Jagiellonki', 'os. Jagiellońskie', 'Jagienki', 'Jaglana', 'Jana Kazimierza', 'Jana Olbrachta', 'al. Jana Pawła II', 'ks. Kazimierza Jancarza', 'Czesława Janczarskiego', 'Tomasza Janiszewskiego', 'Jarzębiny', 'Jasełkowa', 'Jasia i Małgosi', 'Mikołaja Jaskra', 'Jaskrowa', 'Jacka Jezierskiego', 'Jeziorany', 'Jeziorko', 'Jeżynowa', 'Jubileuszowa', 'Jutrzenka', 'Jutrzyńska', 'Kaczeńcowa', 'ks. Zygmunta Kaczyńskiego', 'os. Kalinowe', 'Kalwińska', 'Mieczysława Kamberskiego', 'Kamionka', 'Kantorowicka', 'Karasiówka', 'gen. Michała Karaszewicza-Tokarzewskiego', 'Karowa', 'Kazimierza Jagiellończyka', 'Kazimierza Sprawiedliwego', 'os. Kazimierzowskie', 'Kškolowa', 'Kępska', 'Wincentego Kirchmajera', 'Stefana Kisielewskiego', 'Klasztorna', 'gen. Franciszka Kleeberga', 'Juliusza Kleinera', 'Klemensa z Ruszczy', 'Kłosowa', 'Stanisława Kłosowskiego', 'Kmicica', 'Franciszka Knianina', 'Kocmyrzowska', 'rondo Kocmyrzowskie', 'w. Maksymiliana Marii Kolbego', 'pl. w. Maksymiliana Marii Kolbego', 'Kolędnicza', 'os. Kolorowe', 'Komasy', 'os. Kombatantów', 'Bolesława Kontryma', 'Kopaniec', 'Wojciecha Korfantego', 'Jerzego Korohody', 'Korony Polskiej', 'skwer II Korpusu Pol. Sił Zbr. na Zach.', 'Kosów', 'Kocielnicka', 'os. Kociuszkowskie', 'Marii Kownackiej', 'os. Krakowiaków', 'Józefa Krasnowolskiego', 'Jana Kremskiego', 'Wacława Króla', 'Kruszwicka', 'Krzesławicka', 'Ku Raciborowicom', 'Marka Kublińskiego', 'ks. Mikołaja Kuczkowskiego', 'Zofii Kulinowskiej', 'Kupały', 'ks. Józefa Kurzei', 'Kunierska', 'Kwiatów Polskich', 'Lasowisko', 'Lawendowa', 'Tadeusza Lehra-Spławińskiego', 'Stanisława Lema', 'os. Lesisko', 'Leszka Białego', 'Leszka Czarnego', 'rondo ppor. pil. Janiny Lewandowskiej', 'Lubocka', 'Luborzycka', 'Ludmierska', 'ks. Mariana Luzara', 'Łazowa', 'Łšcka', 'Stanisława Łempickiego', 'Łęczycka', 'Łęgowa', 'Elżbiety Łokietkówny', 'Jacka Augustyna Łopackiego', 'Karola Łowińskiego', 'Władysława Łozińskiego', 'Łubinowa', 'Łuczanowicka', 'rondo gen. Stanisława Maczka', 'Kornela Makuszyńskiego', 'Małego Księcia', 'Marglowa', 'Mariana Markowskiego', 'Martenowska', 'Szymona Marycjusza', 'Królowej Marysieńki', 'ks. Stefana Mazanka', 'Mieczysława Medweckiego', 'Mierniczych', 'Stanisława Mierzwy', 'Stanisława Mikołajczyka', 'os. Mistrzejowice', 'Mistrzejowicka', 'Minieńska', 'os. Młodoci', 'Młotków', 'gen. Bernarda Monda', 'Gustawa Morcinka', 'Morgi', 'Ludwika Hieronima Morstina', 'Hanny Mortkowicz-Olczakowej', 'Morwowa', 'Jana Mosdorfa', 'Ignacego Mocickiego', 'Mrozowa', 'Andrzeja Mycielskiego', 'os. Na Lotnisku', 'Na Łškach', 'Na Niwach', 'os. Na Skarpie', 'os. Na Stoku', 'os. Na Wzgórzach', 'Na Załęczu', 'Na Zboczu', 'Nad Baranówkš', 'Nad Dłubniš', 'Nadbrzezie', 'Nadwodna', 'Nagłowicka', 'Narciarska', 'Nastrojowa', 'Marcelego Nenckiego', 'Niebyła', 'os. Niepodległoci', 'Niepokalanej Panny Marii', 'Niepołomska', 'Nieszawska', 'Niewielka', 'Nowohucka', 'Nowolipki', 'Obrońców Krzyża', 'Obrońców Warszawy', 'Obwodowa', 'Odmętowa', 'Odmogile', 'Ogłęczyzna', 'Ognistych Wici', 'os. Ogrodowe', 'gen. Leopolda Okulickiego', 'Organki', 'Władysława Orkana', 'Orła Białego', 'Aleksandra Orłowskiego', 'Ludwika Osieckiego', 'Osiedle', 'Józefa Ostafina', 'Ostrów', 'Ostrówka', 'os. Owiecenia', 'pl. Piotra Ożańskiego', 'bp. Filipa Padniewskiego', 'Józefa Pankiewicza', 'Teodora Parnickiego', 'Pastelowa', 'Pasterska', 'Perkuna', 'Sandora Petöfiego', 'Piasta Kołodzieja', 'os. Piastów', 'Pińczowska', 'Piotrusia Pana', 'Planty Bieńczyckie', 'Plastusia', 'Plażowa', 'Kazimierza Pluty-Czachowskiego', 'Płaska', 'Płomyczka', 'Płoszczyny', 'Pod Gajem', 'Podbagnie', 'Podbiałowa', 'Longinusa Podbipięty', 'Podleska', 'Podrzecze', 'Podstawie', 'al. Pokoju', 'Gustawa Pokrzywki', 'Poległych w Krzesławicach', 'Poleska', 'Braci Polskich', 'Polskiego Czerwonego Krzyża', 'Pomykany', 'Stanisława Augusta Poniatowskiego', 'Popielidów', 'Popielnik', 'Janiny Porazińskiej', 'Powiatowa', 'Powojowa', 'Powstańców', 'Romana Prawocheńskiego', 'Adama Próchnika', 'Pruska', 'Zdzisława Przebindowskiego', 'Przemysława II', 'os. Przy Arce', 'Juliana Przybosia', 'al. Przyjani', 'Przylasek', 'Przymiarki', 'Franciszka Ptaka', 'Tadeusza Ptaszyckiego', 'os. 2 Pułku Lotniczego', 'Pysocice', 'Pysońce', 'Barbary Radziwiłłówny', 'Węzeł Drogowy gen. Ludomiła Rayskiego', 'Henryka Rowida', 'Równa', 'al. Róż', 'Rudni', 'Rumiankowa', 'Rusiecka', 'Rycerska', 'marsz. Edwarda Rydza-migłego', 'Rzepakowa', 'Sajakówka', 'Opata Salwińskiego', 'Samorzšdowa', 'Stanisława Samostrzelnika', 'Magdaleny Samozwaniec', 'Zbigniewa Seiferta', 'ks. kard. Adama Stefana Sapiehy', 'Sasanek', 'Józefa Sawy-Calińskiego', 'Braci Schindlerów', 'Siejówka', 'Wacława Sieroszewskiego', 'Sierpowa', 'Sikorki', 'Sitowiny', 'Siwka', 'Stanisława Skarżyńskiego', 'Władysława Skoczylasa', 'Skręcona', 'os. Słoneczne', 'Słowicza', 'Soczyny', 'al. Solidarnoci', 'Sołtysowska', 'Spławy', 'os. Sportowe', 'os. Spółdzielcze', 'Spytka z Melsztyna', 'Srebrnych Orłów', 'Stadionowa', 'Stalowa', 'os. Stalowe', 'Stare Wilisko', 'Stary Gociniec', 'Franciszka Stefczyka', 'Izydora Stella-Sawickiego', 'Stokowa', 'Andrzeja Stopki', 'Stręcka', 'Andrzeja Struga', 'Strumyk', 'os. Józefa Strusia', 'Studzienna', 'Styczna', 'Suchy Jar', 'Sulisława', 'Swarożyca', 'Sybiraków', 'Marka Sycha', 'Syrachowska', 'Szafrańska', 'Jerzego Szajnowicza-Iwanowa', 'por. Szczeklika', 'os. Szklane Domy', 'os. Szkolne', 'Szlifierska', 'Szybka', 'Edwarda Szymańskiego', 'liwkowa', 'widnicka', 'więtej Rodziny', 'Tabaczna', 'Tarasowa', 'Tatarakowa', 'os. Teatralne', 'bp. Piotra Tomickiego', 'Truskawkowa', 'Trzcinowa', 'Trzech Króli', 'pl. Marii Turzymy', 'Juliana Tuwima', 'Franciszka Twaroga', 'Tymiankowa', 'os. Tysišclecia', 'Ubeliny', 'Ujastek', 'Ujastek Mogilski', 'Uniwersału Połanieckiego', 'Urbanistów', 'gen. Witolda Urbanowicza', 'os. Urocze', 'Urszulki', 'Henryka Uziembły', 'Wadowska', 'Andrzeja Waligórskiego', 'os. Wandy', 'Melchiora Wańkowicza', 'Wawelska', 'Wšwozowa', 'Węgrzynowicka', 'Franciszka Wężyka', 'Narcyza Wiatra', 'Wiatraczna', 'Wišzowa', 'Macieja Wielgusa', 'Wielkich Pieców', 'Wielkie Pola', 'Mikołaja Wierzynka', 'Wiewiórcza', 'Wiklinowa', 'os. Willowe', 'w. Wincentego', 'Wilicka', 'Jeremiego Winiowieckiego', 'Winiowy Sad', 'Edwarda Wittiga', 'Władysława IV', 'Władysława Jagiełły', 'Bronisława Włodarczyka', 'pl. Bogdana Włosika', 'Wodocza', 'Wodzickich', 'Stanisława Wojciechowskiego', 'Wojenna', 'Michała Wołodyjowskiego', 'Woniców', 'Wróżenicka', 'Wrzosowa', 'Wycišska', 'Stanisławy Wysockiej', 'os. Wysokie', 'Za Górš', 'Za Ogrodem', 'Franciszka Zabłockiego', 'Jakuba Zachemskiego', 'Zagłoby', 'Zagociniec', 'Zajęcza', 'Zakarnie', 'Zakępie', 'Zakładowa', 'Zakole', 'Andrzeja i Józefa Załuskich', 'Zaporębie', 'Zapusta', 'ks. Józefa Zastawniaka', 'Zawielgusie', 'Jerzego Zawieyskiego', 'Zbyszka z Bogdańca', 'Zesławicka', 'os. Zgody', 'Ziarkowa', 'os. Zielone', 'Zielony Jar', 'Ziemianek', 'Ziemska', 'Zjazdu Gnienieńskiego', 'Złoczowska', 'os. Złotego Wieku', 'os. Złotej Jesieni', 'Zuchów', 'Żaglowa', 'Stefana Żeromskiego', 'Żonkilowa', 'Żółwia', 'Abrahama', 'Węzeł Łagiewnicki im. ks.kard. Adama Stefana Sapiehy', 'Agatowa', 'Agawy', 'Albańska', 'Albatrosów', 'Adolfa Aleksandrowicza', 'Aleksandry', 'Algierska', 'Amarantowa', 'Ametystowa', 'Iwona Andricia', 'Józefa Andrusikiewicza', 'Andrychowska', 'Anusi', 'Arktyczna', 'Armii "Kraków"', 'Babiego Lata', 'Babinicza', 'dr. Józefa Babińskiego', 'Krzysztofa Kamila Baczyńskiego', 'Andrzeja Badurskiego', 'Bagienna', 'Bagrowa', 'Balanówka', 'Stanisława Balickiego', 'Michała Bałuckiego', 'Tadeusza Banachiewicza', 'Barbary', 'Piotra Bardowskiego', 'Barska', 'prof. Wojciecha Marii Bartla', 'Bartników', 'płk. Barty', 'Barycka', 'Henryka Barycza', 'Bastionowa', 'Batalionów Chłopskich', 'Mariana Batki', 'Bazarowa', 'Kaspra Bażanki', 'Bednarska', 'Józefa Bellerta', 'Władysława Bełzy', 'w. Benedykta', 'Benedyktyńska', 'Berdyczowska', 'Beskidzka', 'Biała Droga', 'Białoruska', 'Białostocka', 'Marcina Bielskiego', 'prof. Janiny Bieniarzówny', 'Ludwika Bierkowskiego', 'Biernata z Lublina', 'Biesiadna', 'Bieszczadzka', 'Bieżanowska', 'Billewiczów', 'Biskupińska', 'Blacharska', 'Bluszczowa', 'Bławatkowa', 'Błotna', 'Błotniska', 'Bobrowa', 'prof. Michała Bobrzyńskiego', 'Adama Bochenka', 'o. Józefa Bocheńskiego', 'prof. Adama Bochnaka', 'Boczna', 'Bocznica', 'Bodzowska', 'Karola Bogdanowicza', 'Wincentego Bogdanowskiego', 'Bogucianka', 'Bogucicka', 'pl. Bohaterów Getta', 'Bojanówka', 'Jakuba Bojki', 'Bolesława miałego', 'Bonarka', 'Czesława Boratyńskiego', 'Borkowska', 'Borkowskie Błonia', 'Borowinowa', 'Borsucza', 'Christo Botewa', 'Do Sanktuarium Bożego Miłosierdzia', 'Bór', 'Konstantego Brandla', 'Braterska', 'Braterstwa Broni', 'Kazimierza Brodzińskiego', 'Browarniana', 'Jana Brożka', 'Aleksandra Brücknera', 'Brzask', 'Bugaj', 'Franciszka Bujaka', 'Bukowa', 'Bulwar Podolski', 'Bulwar Poleski', 'Bulwar Wołyński', 'Bułgarska', 'Jana Bułhaka', 'Karola Bunscha', 'Buraczana', 'Burgundzka', 'Butrymów', 'Bystra', 'Cechowa', 'Cegielniana', 'Ceglarska', 'Celna', 'Centkiewiczów', 'Benedykta Cesarza', 'Tytusa Chałubińskiego', 'Heleny Chanieckiej', 'Chęcińska', 'Chlebiczna', 'Chłodna', 'Chłopska', 'Chmieleniec', 'Chmielna', 'Chochołowska', 'Chojnicka', 'Chorzowska', 'Ignacego Chrzanowskiego', 'Ciasna', 'Ciechanowska', 'Ciechocińska', 'Ciepła', 'Ciesielska', 'Adama Ciołkosza', 'Tadeusza Czackiego', 'Józefa Czajkowskiego', 'Czajna', 'Stefana Czarnieckiego', 'Czarnochowicka', 'Czarnogórska', 'Czarodziejska', 'Czechosłowacka', 'Szymona Czechowicza', 'Braci Czechów', 'Henryka Czeczotta', 'prof. Zdzisława Czeppe', 'Czerska', 'Rafała Czerwiakowskiego', 'Czerwone Maki', 'Czołgistów', 'Czorsztyńska', 'Mariana Czuchnowskiego', 'Czwartaków', 'Emiliana Czyrniańskiego', 'Czyżówka', 'Mieczysławy Ćwiklińskiej', 'Ćwikłowa', 'Daliowa', 'Danalówka', 'Danusi Jurandówny', 'Wojciecha Darasza', 'Alfreda Dauna', 'płk. Stanisława Dšbka', 'Dšbrowa', 'gen. Henryka Dšbrowskiego', 'Dšbrówki', 'Dekarzy', 'Jana Dekerta', 'al. Edwarda Dembowskiego', 'Deotymy', 'ks. Władysława Dercza', 'Dereniowa', 'Stanisława Dębickiego', 'Dębnicka', 'Rynek Dębnicki', 'Dęboroga', 'Dębowa', 'Macieja Dębskiego', 'Jana Długosza', 'Do Groty', 'Do Luboni', 'Do Wilgi', 'Dobczycka', 'Antoniego Dobrowolskiego', 'Mariana Domagały', 'Domowa', 'Witolda Doroszewskiego', 'Drewniana', 'Droga Rokadowa', 'Karola i Jerzego Drozdowskich', 'Drożdżowa', 'Dróżka', 'Druhny Hanki', 'Drukarska', 'Druskiennicka', 'Elżbiety Drużbackiej', 'Stanisława Dubois', 'pl. Braci Dudzińskich', 'Duża Góra', 'Dworcowa', 'Dworska', 'Dworski Ogród', 'Dworzec', 'al. Adolfa Dygasińskiego', 'Dymnik', 'Działkowa', 'Stanisława Działowskiego', 'Dziewiarzy', 'Dzikiej Róży', 'ks. Franciszka Dwigońskiego', 'Eugeniusza Eibischa', 'Władysława Ekielskiego', 'por. Emira', 'Estakada Obrońców Lwowa', 'Estońska', 'Facimiech', 'Falista', 'Falowa', 'Fałęcka', 'Rynek Fałęcki', 'Familijna', 'Siostry Faustyny', 'Jerzego Fedkowicza', 'gen. Juliana Filipowicza', 'Leopolda Flanka', 'Forteczna', 'Fosa', 'Aleksandra Fredry', 'Gacki', 'Walerego Gadomskiego', 'Gajowa', 'Galaktyczna', 'Józefa Gałęzowskiego', 'Ludwika Gardowskiego', 'Wacława Gšsiorowskiego', 'Geologów', 'Gerberowa', 'Wojciecha Gersona', 'Aleksandra i Maksymiliana Gierymskich', 'Gilowa', 'Gipsowa', 'Gliniana', 'Głogowska', 'Gminna', 'Golikówka', 'Golkowicka', 'Gołaka', 'Stanisława Gołšba', 'Witolda Gombrowicza', 'Goplana', 'Jana Aleksandra Gorczyna', 'Juliana Goslara', 'Seweryna Goszczyńskiego', 'Gocinna', 'Godzikowa', 'Górników', 'Górska', 'Granitowa', 'Grawerska', 'Grochowa', 'Grodzisko', 'Gromady Grudzišż', 'Gromadzka', 'Gronostajowa', 'Gronowa', 'gen. Stefana Grota-Roweckiego', 'rondo Grunwaldzkie', 'Włodzimierza Gruszczyńskiego', 'Aleksandra Gryglewskiego', 'Jana Grzecha', 'Marii Grzegorzewskiej', 'Stanisława Grzepskiego', 'Grzybki', 'Gumniska', 'Jana Gumowskiego', 'Jana Gutenberga', 'Gwarna', 'Gwiedzista', 'Adama Habeli', 'Jana Hallera', 'por. Halszki', 'Jerzego Harasymowicza', 'Harcerska', 'Harcerzy Krakowskich', 'Edwarda Heila', 'Heleny', 'Heligundy', 'Wiktora Heltmana', 'Zbigniewa Herberta', 'Herbowa', 'Gustawa Herlinga-Grudzińskiego', 'Hetmańska', 'Jana Heweliusza', 'Hiacyntowa', 'Antoniego Hoborskiego', 'bp. Franciszka Hodura', 'Klementyny Hoffmanowej', 'Tadeusza Hollendra', 'Karola Homolacsa', 'Alojzego Horaka', 'Henryka Hoyera', 'Hubalczyków', 'Huculska', 'Hufcowa', 'Aleksandra Humboldta', 'Husarska', 'Franciszka Hypty', 'Iłowa', 'Imielna', 'Inicjatywy Lokalnej', 'Irysowa', 'Jarosława Iwaszkiewicza', 'Iwonicka', 'Zdzisława Jachimeckiego', 'w. Jacka', 'Michała i Stanisława Jaglarzów', 'Jagodowa', 'Roberta Jahody', 'Władysława Jakubca', 'Macieja Jakubowskiego', 'Braci Jamków', 'Jana XXIII', 'Janasówka', 'Janowa Wola', 'Jana Janowskiego', 'Jar', 'Władysława Jarockiego', 'Jarosławska', 'Jasielska', 'Pawła Jasienicy', 'Feliksa Jasieńskiego', 'gen. Jakuba Jasińskiego', 'Stanisława Jasiukowicza', 'Jastrzębia', 'Jaworowa', 'Jeleniogórska', 'Konstantego Jelskiego', 'Jemiołowa', 'Jerozolimska', 'Erazma Jerzmanowskiego', 'Jesienna', 'Jedziecka', 'Jeżów', 'Ludwika Jędrzejczyka', 'Józefińska', 'dr. Judyma', 'Jugowicka', 'Juranda ze Spychowa', 'Kacza', 'Juliusza Kadena-Bandrowskiego', 'Wincentego Kadłubka', 'Kaimska', 'ks. Władysława Kajzera', 'Kaktusowa', 'Kalinowa', 'Kaliska', 'Filipa Kallimacha', 'Kalwaryjska', 'Kameliowa', 'Kamieniarska', 'Kamieniecka', 'gen. Henryka Kamieńskiego', 'Kanarkowa', 'Kapelanka', 'Mieczysława Kaplickiego', 'ks. Wojciecha Karabuły', 'gen. Jana Karcza', 'Karpacka', 'Franciszka Karpińskiego', 'Kawowa', 'Kšcik', 'Kšpielowa', 'Antoniego Kenara', 'Ketlinga', 'Kędzierzyńska', 'Antoniego Kępińskiego', 'Kępna', 'Romana Kiełkowskiego', 'Braci Kiemliczów', 'Jana Kiepury', 'Kazimierza Kierzkowskiego', 'Kijanki', 'Jana Kilińskiego', 'w. Kingi', 'Stanisława Klimeckiego', 'Kliniec', 'os. Kliny Borkowskie', 'Sebastiana Klonowica', 'Jana Krzysztofa Kluka', 'Jacka Kluszewskiego', 'Franciszka Kłaka', 'Kłodzka', 'Kłuszyńska', 'Kminkowa', 'Kobierzyńska', 'Tadeusza Kochmańskiego', 'Kokosowa', 'Kokotowska', 'Kolarzy', 'Kolejarzy', 'Kolejowa', 'os. Kolejowe', 'Kolista', 'Kolna', 'Kolonijna', 'Stefana Kołaczkowskiego', 'Kołobrzeska', 'Kołodziejska', 'Komandosów', 'Komuny Paryskiej', 'Konfederacka', 'Marii Konopnickiej', 'Konwaliowa', 'Izydora Kopernickiego', 'Koprowa', 'Ludomiła Korczyńskiego', 'Kordiana', 'Jana Korepty', 'Kormoranów', 'Michała Korpala', 'Kosiarzy', 'Kosocicka', 'Kazimierza Kostaneckiego', 'Kostrzecka', 'Józefa Kostrzewskiego', 'Koszalińska', 'Koszarówka', 'Koszutki', 'Koszykarska', 'Kociuszkowców', 'Floriana Kotowskiego', 'Kotówka', 'Aleksandra Kotsisa', 'Kowalska', 'Kozia', 'Kozienicka', 'Jana Kozietulskiego', 'Kolarska', 'Kajetana Komiana', 'Krajobrazowa', 'Kraka', 'Krakusa', 'Ignacego Krasickiego', 'Krasowa', 'Krawiecka', 'Kresowa', 'Aleksandra Krępy', 'Krochmalniki', 'Krokusowa', 'Kronieńska', 'Królówka', 'Konstantego Krumłowskiego', 'Władysława Krygowskiego', 'Krymska', 'Krystyna z Ostrowa', 'Kryształowa', 'Krzemieniecka', 'Krzemionki', 'Krzewowa', 'Edmunda Krzymuskiego', 'Krzywda', 'Adama Krzyżanowskiego', 'Mirosława Krzyżańskiego', 'Krzyżtoporska', 'Feliksa Księżarskiego', 'Księżycowa', 'Kukiełek Golkowickich', 'płk. Ryszarda Kuklińskiego', 'Henryka Kułakowskiego', 'Ferdynanda Kurasia', 'Jana Kurczaba', 'Karola Kurpińskiego', 'Jerzego Kuryłowicza', 'ks. Jana Kusia', 'gen. Józefa Kustronia', 'gen. Tadeusza Kutrzeby', 'Kwatery', 'Kwiatowa', 'Kwiecista', 'Kwietna', 'Lanckorońska', 'Lwa Landaua', 'Jerzego Lande', 'Lasek', 'Laskowa', 'Lasogórska', 'pl. Lasoty', 'Lasówka', 'Konstantego Laszczki', 'Laudańska', 'Lecha', 'Lechicka', 'Lecznicza', 'Legionów', 'Legionów Józefa Piłsudskiego', 'Franciszka Lei', 'Letnia', 'Anny Libera', 'Libertowska', 'Lilli Wenedy', 'Bolesława Limanowskiego', 'Wacława Lipińskiego', 'Lipowa', 'Wojciecha Lipowskiego', 'Lipska', 'Lirników', 'Leopolda Lisa-Kuli', 'Liciasta', 'Lubostroń', 'Lubuska', 'Ludowa', 'Ludwinowska', 'Ludwisarzy', 'Lusińska', 'Lutego Tura', 'Lwowska', 'Łabędzia', 'ks. Prałata Mariana Łaczka', 'Łagiewnicka', 'pl. Łagiewnicki', 'Łamana', 'Łanowa', 'Łany', 'Łapanowska', 'Łazy', 'Łężce', 'Józefa Łobodowskiego', 'Łosiówka', 'Łowienicka', 'Łódzka', 'Łuczników', 'dr. Zygmunta Łuczyńskiego', 'Waleriana Łukasińskiego', 'Łukowiec', 'Łutnia', 'Łużycka', 'Łysogórska', 'Macedońska', 'Macierzanki', 'Maćka z Bogdańca', 'gen. Antoniego Józefa Madalińskiego', 'Madejówka', 'Madera', 'Magazynowa', 'Magnolii', 'ks. Franciszka Maja', 'Jana Maklakiewicza', 'Makowa', 'Malachitowa', 'Malborska', 'Bronisława Malinowskiego', 'Malutka', 'Malwowa', 'Mała Góra', 'Zbigniewa Małka', 'Andrzeja Małkowskiego', 'Mały Płaszów', 'Józefa Marcika', 'Marcowa', 'Heleny Marusarzówny', 'Franciszka Maryewskiego', 'Marzanny', 'rondo Antoniego Matecznego', 'Matematyków Krakowskich', 'Mazurska', 'ks. Władysława Mšczyńskiego', 'Medalionów', 'Medyczna', 'Merkuriusza Polskiego', 'Miarowa', 'Andrzeja Michalika', 'Tadeusza Micińskiego', 'Mieczników', 'Mieczykowa', 'Miejscowa', 'gen. Ludwika Mierosławskiego', 'Mierzeja Wilana', 'Mieszczańska', 'harc. Stanisława Millana', 'Miła', 'Zygmunta Miłkowskiego', 'Jana Miodońskiego', 'Mirtowa', 'Stanisława Mitery', 'Władysława Mitkowskiego', 'Młodzieży', 'Młynowa', 'Maurycego Mochnackiego', 'Mochnaniec', 'Moczydło', 'Modra', 'Mogiłki', 'Mokra', 'Monte Cassino', 'Monterska', 'Józefa Montwiłła-Mireckiego', 'Macieja Moraczewskiego', 'Pawła Morawiańskiego', 'Józefa Morozewicza', 'Most Nowohucki', 'Most Wandy', 'Kazimierza Moszyńskiego', 'Tadeusza Motarskiego', 'Motyla', 'Jana Muszyńskiego', 'Muzyków', 'Mydlarska', 'Mylenicka', 'Myliwska', 'Na Dołach', 'Na Grzšdkach', 'Na Jazkach', 'Na Klińcu', 'Na Kozłówce', 'Na Leszczu', 'Na Łuku', 'Na Obrydki', 'Na Pokusie', 'Na Ustroniu', 'Na Wrzosach', 'Na Zakolu Wisły', 'Na Zjedzie', 'Na Zrębie', 'Nad Czernš', 'Nad Drwinš', 'Nad Fosš', 'Nad Potokiem', 'Nad Serafš', 'Nadwilańska', 'Nadzieja', 'Nałęczowska', 'Zofii Nałkowskiej', 'Narvik', 'Nazaretańska', 'Nefrytowa', 'Julii Nenko', 'Edmunda Neussera', 'Niebieska', 'Niecała', 'Niedzicka', 'Niedwiedziny', 'Juliana Ursyna Niemcewicza', 'pl. Niepodległoci', 'Franciszka Niepokólczyckiego', 'Nierówna', 'Henryka Niewodniczańskiego', 'Niwy', 'Normandzka', 'Norymberska', 'Adolfa Nowaczyńskiego', 'Jana Nowaka', 'Maksymiliana Nowickiego', 'Bartłomieja Nowodworskiego', 'Nowogródzka', 'Nowohucka', 'Nowosšdecka', 'Nowotarska', 'Obozowa', 'Obronna', 'Obrony Tyńca', 'Obrońców Helu', 'Obrońców Modlina', 'Obrońców Poczty Gdańskiej', 'Obrońców Tobruku', 'Ochocza', 'Odrzańska', 'Sławomira Odrzywolskiego', 'Ogórkowa', 'Ogrodniki', 'Okocimska', 'Stanisława Okonia', 'Okopowa', 'Okólna', 'Okręglik', 'Stefana Okrzei', 'Ondraszka', 'Łukasza Opalińskiego', 'Opalowa', 'prof. Kazimierza Tadeusza Opałka', 'Opatkowicka', 'Zdzisława Opiala', 'Opty', 'Oraczy', 'Orawska', 'Orlšt Lwowskich', 'Orleańska', 'Orszańska', 'Harcmistrza Orszy-Broniewskiego', 'Orzechowa', 'Osikowa', 'Michała Ossowskiego', 'Juliusza Osterwy', 'Owocowa', 'Pagórkowa', 'Antoniego Pajdaka', 'Pana Tadeusza', 'Pańska', 'Paproci', 'Parafialna', 'Parkowa', 'Pasieczna', 'Jana Chryzostoma Paska', 'Pastelowa', 'Heleny i Leona Patynów', 'ks. Stefana Pawlickiego', 'Pawła z Krosna', 'Bogumiła Pawłowskiego', 'Perłowa', 'Leona Petrażyckiego', 'Sergiusza Piaseckiego', 'Pienińska', 'Bronisława Pierackiego', 'Pierzchówka', 'Jana Pietrusińskiego', 'dr. Jana Piltza', 'Piłkarska', 'Hieronima Pinocci', 'w. Piotra', 'Piwna', 'Planty Floriana Nowackiego', 'Płaszowska', 'Kazimierza Pochwalskiego', 'Pochyła', 'Pocztowa', 'Pod Dębami', 'Pod Gwiazdami', 'al. Pod Kopcem', 'Pod Pomnikiem', 'Pod Strugš', 'Pod Wierzbami', 'Podedworze', 'Podgórki', 'Podgórki Tynieckie', 'Rynek Podgórski', 'Podgwiezdna', 'Podhalańska', 'Podhalnie', 'Podlesie', 'Podłęska', 'Podmiłów', 'Podmokła', 'Podskale', 'os. Podwawelskie', 'Podwórkowa', 'Filipa Pokutyńskiego', 'Polarna', 'Polonijna', 'Tadeusza Połomskiego', 'ks. Jerzego Popiełuszki', 'Wacława Popławskiego', 'Poprzeczna', 'Porfirowa', 'Poronińska', 'Port Solny', 'Portowa', 'Andrzeja Potebni', 'Potrzask', 'Jerzego Potrzebowskiego', 'Władysława Poturalskiego', 'Powały z Taczewa', 'Powronicza', 'al. Powstańców lšskich', 'Powstańców Wielkopolskich', 'Półłanki', 'Praska', 'Adama Prażmowskiego', 'al. Elvisa Presleya', 'Prokocimska', 'Promienna', 'Promowa', 'Andrzeja i Zbigniewa Pronaszków', 'Stanisława Pronia', 'Prosta', 'Ksawerego Pruszyńskiego', 'Tomasza Prylińskiego', 'Przebiniegów', 'Przecinek', 'Przedwionie', 'Przekštna', 'Przełazek', 'Przełęcz', 'Przełom', 'Przemiarki', 'Przemysłowa', 'Przewiewna', 'Przewóz', 'Przy Cegielni', 'Przy Kuni', 'Przy Mocie', 'Przy Torze', 'Przykopy', 'Przylaszczki', 'Przyrodnicza', 'pl. Przystanek', 'Jana Kantego Przyzby', 'Pszczelna', 'Pszenna', 'Kazimierza Pułaskiego', '8 Pułku Ułanów', 'Pustelnia', 'Pustynna', 'Puszkarska', 'Pychowicka', 'Władysława Pytlasińskiego', 'Rabczańska', 'Rabsztyńska', 'Raciborska', 'Radłowa', 'Zygmunta Radnickiego', 'Radosna', 'Raku', 'Ratajska', 'Cyryla Ratajskiego', 'Ršczna', 'Rdzawa', 'Redemptorystów', 'Tadeusza Rejtana', 'Republiki Korczakowskiej', 'Rękawka', 'Wilhelma i Jana Ripperów', 'Robotnicza', 'Rodzinna', 'Rodziny Jędów', 'gen. Bolesława Roi', 'Karola Rollego', 'Rolna', 'Tadeusza Romanowicza', 'Rosista', 'gen. Stanisława Rostworowskiego', 'Rozdroże', 'Władysława Rożena-Jaksy', 'Różana', 'Ruciana', 'Ruczaj', 'Maksymiliana Rutkowskiego', 'Rybitwy', 'Rydlówka', 'Ludwika Rydygiera', 'Teodora Rygiera', 'Maksyma Rylskiego', 'Rymanowska', 'Rytownicza', 'Józefa Rzebika', 'Rzemielnicza', 'Rżšcka', 'Andrieja Sacharowa', 'Sadka', 'Salezjańska', 'Sanatoryjna', 'Sandomierska', 'Sanocka', 'Franciszka Sapalskiego', 'Sarmacka', 'Saska', 'Jana Sas-Zubrzyckiego', 'Józefa i Floriana Sawiczewskich', 'Sšsiedzka', 'Bronisława Schönborna', 'Brunona Schulza', 'Alberta Schweitzera', 'Emilii Sczanieckiej', 'Stefanii Sempołowskiej', 'Serbska', 'pl. Emila Serkowskiego', 'prof. Tadeusza Seweryna', 'Siarczana', 'Siarczanogórska', 'Siarczki', 'Sidzińska', 'bł. Franciszki Siedliskiej', 'Sielska', 'Kazimierza Siemienowicza', 'Siemomysła', 'Maksymiliana Siły-Nowickiego', 'Siostrzana', 'Skalica', 'Zbigniewa Skšpskiego', 'Skołczanka', 'Skona', 'Skotnicka', 'Skowronia', 'Skromna', 'Jana Skrzetuskiego', 'al. gen. Jana Skrzyneckiego', 'Skwerowa', 'mjr. Mieczysława Słabego', 'Walerego Sławka', 'Słomiana', 'Słona Woda', 'Gabriela Słońskiego', 'Słupska', 'Smolarzy', 'Jana Smolenia', 'Jerzego Smoleńskiego', 'Stanisława Smolki', 'Smolna', 'Snozy', 'Snycerska', 'Tadeusza Sobesto', 'Soboniowicka', 'Sobótka', 'Sodowa', 'Sokolska', 'Andrzeja Sokołowskiego', 'Solarzy', 'Solna', 'Solówki', 'Ernesta Solvaya', 'Soroki', 'Sowia', 'Spacerowa', 'Spiska', 'Sporna', 'Sportowa', 'Spółdzielców', 'płk. Józefa Spychalskiego', 'os. Srebrne Uroczysko', 'Konrada Srzednickiego', 'Stacyjna', 'Tadeusza Starca', 'Staromostowa', 'Starowiejska', 'Stefana Starzyńskiego', 'Wojciecha Stattlera', 'por. Antoniego Stawarza', 'Stawisko', 'Stepowa', 'Stępice', 'Józefa Stępnia', 'Stoczniowców', 'Stoigniewa', 'Stanisława Stojałowskiego', 'Stefana Stolarza', 'Storczykowa', 'ks. Ignacego Stoszki', 'Strażacka', 'Strškowa', 'Stroma', 'Stróża Rybna', 'Strumienna', 'Strycharska', 'Tadeusza Stryjeńskiego', 'Studzianki', 'Sucha', 'Henryka Sucharskiego', 'Sudecka', 'gen. Józefa Sułkowskiego', 'Jana Surzyckiego', 'Swoboda', 'Swoszowicka', 'Szymona Syreńskiego', 'Szaflarska', 'Tadeusza Szafrana', 'Klemensa Szaniawskiego-Junoszy', 'Szara', 'Jacka Szarskiego', 'Szarych Szeregów', 'Jana Szastera', 'Szczawnicka', 'Szczecińska', 'Szczegów', 'Karola Szczerbińskiego', 'Szczęliwa', 'Stanisława Szczygielskiego', 'Szczygla', 'Szerokie Łški', 'Szklarska', 'Szkolna', 'Szmaragdowa', 'Szpakowa', 'Szparagowa', 'Jana Izydora Sztaudyngera', 'Aleksandra Szukiewicza', 'Jana Szumca', 'Szuwarowa', 'Jana Szwai', 'Anny Szwed-niadowskiej', 'Szwedzka', 'Szybisko', 'gen. Antoniego Szyllinga', 'Dezyderego Szymkiewicza', 'Szymona Szymonowica', 'ks. Piotra ciegiennego', 'prof. Jana laskiego', 'liska', 'Tadeusza liwiaka', 'Leopolda liwy', 'Leona lósarczyka', 'lusarska', 'nieżna', 'wiatowida', 'Henryka widzińskiego', 'wiebodzicka', 'wieża', 'więtojańska', 'Taborowa', 'Władysława Taklińskiego', 'Teodora Talowskiego', 'Czesława Tańskiego', 'ks. Karola Targosza', 'Targowa', 'Tarnobrzeska', 'Tarnowska', 'Jana Tarnowskiego', 'Tatrzańska', 'Leonida Teligi', 'Telimeny', 'Tęczowa', 'ks. Józefa Tischnera', 'Leona Tochowicza', 'Tokarska', 'Topazowa', 'Topiarnia', 'Topografów', 'Toporczyków', 'Torfowa', 'Torowa', 'Totus tuus', 'Traczy', 'Romualda Traugutta', 'Trawniki', 'Tretówka', 'Truskawiecka', 'Trybuny Ludów', 'Tuchowska', 'Tulipanowa', 'Turecka', 'ks. Wincentego Turka', 'Turniejowa', 'Turonia', 'Jerzego Turowicza', 'Twardowskiego', 'Tymotkowa', 'Tyniecka', 'Tynkarzy', 'Jana Leopolda Tyranowskiego', 'Tyrczanka', 'Seweryna Udzieli', 'Ukona', 'Eugenii Umińskiej', 'Józefa Unruga', 'Urocza', 'Urwana', 'Umiech', 'Uzdrowiskowa', 'Leona Wachholza', 'Wadowicka', 'Walgierza Wdałego', 'Konrada Wallenroda', 'Wałbrzyska', 'Wałowa', 'Wandejska', 'Wapienna', 'Bernarda Wapowskiego', 'Edwarda Warchałowskiego', 'Warowna', 'Józefa Warszewicza', 'Edmunda Wasilewskiego', 'Tadeusza Ważewskiego', 'por. Wšchały', 'Wczasowa', 'Ferdynanda Weigla', 'Piusa Welońskiego', 'Węgierska', 'Węglarska', 'prof. Bolesława Wiktora Wicherkiewicza', 'Wichrowa', 'Widłakowa', 'Widnokršg', 'Wielicka', 'Wielkanocna', 'Wielogórska', 'Wierchowa', 'Wierzbowa', 'Wilgotna', 'Winnicka', 'prof. Jerzego Winiewskiego', 'Wincentego Witosa', 'Wlotowa', 'Władysława Warneńczyka', 'Włodarska', 'Włoska', 'Wodna', 'Wojciecha z Brudzewa', 'Wojnicka', 'Wolnoci', 'Wolska', 'Feliksa Wrobela', 'Mieczysława Wrony', 'Kmr. Bohdana Wrońskiego', 'Wróblowicka', 'Wspólna', 'ks. Jakuba Wujka', 'Wygrana', 'Wyłom', 'Wypoczynkowa', 'Wyrwa', 'Marii i Bolesława Wysłouchów', 'ks. Prymasa Stefana Wyszyńskiego', 'Wyżynna', 'Wzgórze', 'Za Lipkami', 'Za Torem', 'Zabawa', 'Zabłocie', 'Zaborze', 'Zachodnia', 'Zaciernie', 'Zadworze', 'Zagaje', 'Zagonów', 'Zagórze', 'Zagrody', 'ks. Adolfa Zagrodzkiego', 'Zagumnie', 'Zakarczmie', 'Zaklenie', 'Zakopiańska', 'Zakrzowiecka', 'Zalesie', 'Zamiejska', 'Zamknięta', 'Zamkowa', 'Zamłynie', 'Jana Zamoyskiego', 'Tomasza Zana', 'Zaporoska', 'Zarosie', 'Mariusza Zaruskiego', 'Wiesława Zarzyckiego', 'Zatorska', 'Zaułek', 'os. Zaułek Jugowicki', 'Zawiła', 'Zawiszy', 'Zbaraska', 'Zbrojarzy', 'Zbydniowicka', 'Zdrojowa', 'Zdunów', 'Zduńska', 'Aleksandra Zelwerowicza', 'Zembrzycka', 'Zieleniec', 'gen. Bohdana Zielińskiego', 'Zielna', 'Zielona', 'Zielonogórska', 'Michała Zientary', 'Siostry Zygmunty Zimmer', 'Zimna', 'Stefana Ziobrowskiego', 'Złocieniowa', 'Zmartwychwstania Pańskiego', 'Fryderyka Zolla', 'Zyndrama z Maszkowic', 'ródlana', 'Żabia', 'Michała Żaka', 'Żaków Krakowskich', 'Romana Żelazowskiego', 'Żeńców', 'Narcyzy Żmichowskiej', 'Żniwna', 'Żołnierska', 'Żurawia', 'Żywiecka', 'Żyzna');
	WHILE CNTR < 1000000 DO
			INSERT INTO ADDRESS SELECT 		
				:CNTR,
				:STREET[SUBSTR(ROUND(RAND() * 2362, 0 ),1,3) + 1],
				:CITY[SUBSTR(ROUND(RAND() * 910, 0 ),1,3) + 1],
				ROUND(RAND() * 300,2),
		        ROUND(RAND() * 100,0)
		 	FROM DUMMY;
			CNTR := CNTR + 1;
	END WHILE;
END;
 
--=====================================================
--CREATE TABLE DIMENSIONS
--=====================================================
CREATE COLUMN TABLE "DIMENSIONS" ( "ID" INTEGER NOT NULL,
       "WEIGHT" INTEGER,
       "HEIGHT" INTEGER,
       "LENGHT" INTEGER,
       PRIMARY KEY ("ID"));

--=====================================================
--FILL TABLE DIMENSIONS
--=====================================================
DO 
BEGIN
DECLARE CNTR INTEGER DEFAULT 0;
	WHILE CNTR < 100000 DO
			INSERT INTO DIMENSIONS SELECT 		
				:CNTR,
				ROUND(RAND() * 8000,1),
		        ROUND(RAND() * 8000,1),
		        ROUND(RAND() * 8000,1)		        
		 	FROM DUMMY;
			CNTR := CNTR + 1;
	END WHILE;
END;

--=====================================================
--CREATE TABLE COMPANY
--=====================================================
CREATE COLUMN TABLE "COMPANY" ( "ID" INTEGER NOT NULL,
       "NAME" NVARCHAR(255),
       "BA_ACC_NUM" NVARCHAR(200),
       "NIP" NVARCHAR(50),
       "REGON" NVARCHAR(50),
       "ADDRESS_ID" INTEGER,
       PRIMARY KEY ("ID"),
       FOREIGN KEY ("ADDRESS_ID") REFERENCES "ADDRESS");

--=====================================================
--FILL TABLE COMPANY
--=====================================================
DO 
BEGIN
DECLARE CNTR INTEGER DEFAULT 0;
DECLARE APLHABET NVARCHAR(30) ARRAY;
APLHABET = ARRAY('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
	WHILE CNTR < 500000 DO
			INSERT INTO COMPANY SELECT 		
				:CNTR,
				CONCAT (:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1],CONCAT (:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1],CONCAT (:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1],CONCAT (:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1],CONCAT (:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1],CONCAT (:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1],CONCAT (:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1], CONCAT (:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1],:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1])))))))),
		        ROUND(RAND() * 9000000000000,0),
		        ROUND(RAND() * 9000000000,0),
		        ROUND(RAND() * 9000000000,0),	
		        ROUND((RAND() * (SELECT COUNT(*) FROM ADDRESS)), 0 )	        
		 	FROM DUMMY;
			CNTR := CNTR + 1;
	END WHILE;	
END;

--=====================================================
--CREATE TABLE INVOICE
--=====================================================
CREATE COLUMN TABLE "INVOICE" ( "ID" INTEGER NOT NULL,
       "NUM" INTEGER,
       "DATE" DATE,
       "PAYMENTTYPE" NVARCHAR(20),
       PRIMARY KEY ("ID"));

--=====================================================
--FILL TABLE INVOICE
--=====================================================
DO 
BEGIN
DECLARE CNTR INTEGER DEFAULT 0;
DECLARE PAYMENT NVARCHAR(10) ARRAY;
PAYMENT = ARRAY('cash','card','cheque');
	WHILE CNTR < 100000 DO
			INSERT INTO INVOICE SELECT 		
				:CNTR,
		        ROUND(RAND() * CNTR,0),
		        ADD_DAYS (TO_DATE ('2011-01-01', 'YYYY-MM-DD'), RAND() * 730),
		        :PAYMENT[SUBSTR(ROUND(RAND() * 2, 0 ),1,3) + 1]		        	        
		 	FROM DUMMY;
			CNTR := CNTR + 1;
	END WHILE;	
END;

--=====================================================
--CREATE TABLE SUPPLIER
--=====================================================
CREATE COLUMN TABLE "SUPPLIER" ( "ID" INTEGER NOT NULL,
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
DO 
BEGIN
DECLARE CNTR INTEGER DEFAULT 0;
	WHILE CNTR < 200000 DO
			INSERT INTO SUPPLIER SELECT 		
				:CNTR,
				ADD_DAYS (TO_DATE ('2011-01-01', 'YYYY-MM-DD'), RAND() * 730),
				ADD_DAYS (TO_DATE ('2011-01-01', 'YYYY-MM-DD'), RAND() * 730),
		        ROUND(RAND() * 30,0) +1 ,
		        ROUND((RAND() * (SELECT COUNT(*) FROM COMPANY)), 0 ),
		        ROUND((RAND() * (SELECT COUNT(*) FROM INVOICE)), 0 )		        	        
		 	FROM DUMMY;
			CNTR := CNTR + 1;
	END WHILE;	
END;

--=====================================================
--CREATE TABLE CUSTOMER
--=====================================================
CREATE COLUMN TABLE "CUSTOMER" ( "ID" INTEGER NOT NULL,
       "LA_CON_DATE" DATE,
	   "COMPANY_ID" INTEGER,
       PRIMARY KEY ("ID"),
       FOREIGN KEY ("COMPANY_ID") REFERENCES "COMPANY");

--=====================================================
--FILL TABLE CUSTOMER
--=====================================================
DO 
BEGIN
DECLARE CNTR INTEGER DEFAULT 0;
	WHILE CNTR < 300000 DO
			INSERT INTO CUSTOMER SELECT 		
				:CNTR,
				ADD_DAYS (TO_DATE ('2011-01-01', 'YYYY-MM-DD'), RAND() * 730),
		        ROUND((RAND() * (SELECT COUNT(*) FROM COMPANY)), 0 )	        	        
		 	FROM DUMMY;
			CNTR := CNTR + 1;
	END WHILE;	
END;

--=====================================================
--CREATE TABLE PERSON
--=====================================================
CREATE COLUMN TABLE "PERSON" ( "ID" INTEGER NOT NULL,
       "NAME" NVARCHAR(50),
       "L_NAME" NVARCHAR(50),
       "E_MAIL" NVARCHAR(50),
       "PHONE" NVARCHAR(50),
       "FUNCTION" NVARCHAR(50),
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
DO 
BEGIN
DECLARE CNTR INTEGER DEFAULT 0;
DECLARE NAME NVARCHAR(20) ARRAY;
DECLARE L_NAME NVARCHAR(10) ARRAY;
DECLARE APLHABET NVARCHAR(30) ARRAY;
DECLARE FUNC NVARCHAR(30) ARRAY;
NAME = ARRAY('Kacper','Karolina','Marcin','Mariusz','Pawel','Aleksandra','Dariusz','Marek','Miroslaw','Kamil','Kondrad','Sandra','Malgorzata','Kamil','Michal','Igor','John','Bob','Rob','Mickel');
L_NAME = ARRAY('Stelmach','Nowak','Zieba','Bocian','Sikora','Majcher','Orzech','Duda','Oleksy','Truskawka');
APLHABET = ARRAY('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
FUNC = ARRAY('szef','prezes','kierownik','dział zamówień');
	WHILE CNTR < 500000 DO
			INSERT INTO PERSON SELECT 		
				:CNTR,
				:NAME[SUBSTR(ROUND(RAND() *19, 0 ),1,3) + 1],
				:L_NAME[SUBSTR(ROUND(RAND() * 9, 0 ),1,3) + 1],
				CONCAT (:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1],CONCAT (:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1],CONCAT('@',CONCAT (:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1],CONCAT (:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1],CONCAT (:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1],CONCAT (:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1],CONCAT (:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1],CONCAT('.', CONCAT (:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1],:APLHABET[SUBSTR(ROUND(RAND() * 23, 0 ),1,3) + 1])))))))))),
				ROUND(RAND() * 9000000000000,0),
				:FUNC[SUBSTR(ROUND(RAND() * 3, 0 ),1,3) + 1],
		        ROUND((RAND() * (SELECT COUNT(*) FROM ADDRESS)), 0 ),
		        ROUND((RAND() * (SELECT COUNT(*) FROM SUPPLIER)), 0 ),
		        ROUND((RAND() * (SELECT COUNT(*) FROM CUSTOMER)), 0 )	        	        
		 	FROM DUMMY;
			CNTR := CNTR + 1;
	END WHILE;	
END;

--=====================================================
--CREATE TABLE WAREHOUSE
--=====================================================
CREATE COLUMN TABLE "WAREHOUSE" ( "ID" INTEGER NOT NULL,
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
DO 
BEGIN
DECLARE CNTR INTEGER DEFAULT 0;
	WHILE CNTR < 2000 DO
			INSERT INTO WAREHOUSE SELECT 		
				:CNTR,
				ROUND((RAND() * (SELECT COUNT(*) FROM ADDRESS)), 0 ),
		        ROUND((RAND() * (SELECT COUNT(*) FROM PERSON)), 0 ),
		        ROUND((RAND() * (SELECT COUNT(*) FROM CUSTOMER)), 0 )  	        
		 	FROM DUMMY;
			CNTR := CNTR + 1;
	END WHILE;	
END;

--=====================================================
--CREATE TABLE SUPPLY
--=====================================================
CREATE COLUMN TABLE "SUPPLY" ( "ID" INTEGER NOT NULL,
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
DO 
BEGIN
DECLARE CNTR INTEGER DEFAULT 0;
	WHILE CNTR < 5000 DO
			INSERT INTO SUPPLY SELECT 		
				:CNTR,
				ADD_DAYS (TO_DATE ('2011-01-01', 'YYYY-MM-DD'), RAND() * 730),
		        ROUND(RAND() * 500000,0) +1 ,				
		        ROUND((RAND() * (SELECT COUNT(*) FROM SUPPLIER)), 0 ),
		        ROUND((RAND() * (SELECT COUNT(*) FROM WAREHOUSE)), 0 )  	        
		 	FROM DUMMY;
			CNTR := CNTR + 1;
	END WHILE;	
END;

--=====================================================
--CREATE TABLE ITEM
--=====================================================
CREATE COLUMN TABLE "ITEM" ( "ID" INTEGER NOT NULL,
	   "VALUE" INTEGER,
	   "TAX" INTEGER,
	   "WAREHOUSE_ID" INTEGER,
       PRIMARY KEY ("ID"),
       FOREIGN KEY ("WAREHOUSE_ID") REFERENCES "WAREHOUSE");

--=====================================================
--FILL TABLE ITEM
--=====================================================
DO 
BEGIN
DECLARE CNTR INTEGER DEFAULT 12000;
	WHILE CNTR < 20000 DO
			INSERT INTO ITEM SELECT 		
				:CNTR,
				ROUND(RAND() * 500000,0) +1 ,
		        ROUND(RAND() * 20,0) +1 ,				
		        ROUND((RAND() * (SELECT COUNT(*) FROM WAREHOUSE)), 0 )  	        
		 	FROM DUMMY;
			CNTR := CNTR + 1;
	END WHILE;	
END;

--=====================================================
--CREATE TABLE ITEM_DIMENSIONS
--=====================================================
CREATE COLUMN TABLE "ITEM_DIMENSIONS" ( 
	   "ITEM_ID" INTEGER,
	   "DIMENSIONS_ID" INTEGER,
	   FOREIGN KEY ("ITEM_ID") REFERENCES "ITEM",
	   FOREIGN KEY ("DIMENSIONS_ID") REFERENCES "DIMENSIONS" );

--=====================================================
--FILL TABLE ITEM_DIMENSIONS
--=====================================================
DO 
BEGIN
DECLARE CNTR INTEGER DEFAULT 9000;
	WHILE CNTR < 20000 DO
			INSERT INTO ITEM_DIMENSIONS SELECT 					
		        ROUND((RAND() * (SELECT COUNT(*) FROM ITEM)), 0 ),
		        ROUND((RAND() * (SELECT COUNT(*) FROM DIMENSIONS)), 0 )    	        
		 	FROM DUMMY;
			CNTR := CNTR + 1;
	END WHILE;	
END;

--=====================================================
--CREATE TABLE INVOICE_ITEM
--=====================================================
CREATE COLUMN TABLE "INVOICE_ITEM" ( 
	   "ITEM_ID" INTEGER,
	   "INVOICE_ID" INTEGER,
	   FOREIGN KEY ("ITEM_ID") REFERENCES "ITEM",
	   FOREIGN KEY ("INVOICE_ID") REFERENCES "INVOICE" );

--=====================================================
--FILL TABLE INVOICE_ITEM
--=====================================================
DO 
BEGIN
DECLARE CNTR INTEGER DEFAULT 0;
	WHILE CNTR < 10000 DO
			INSERT INTO INVOICE_ITEM SELECT 					
		        ROUND((RAND() * (SELECT COUNT(*) FROM ITEM)), 0 ),
		        ROUND((RAND() * (SELECT COUNT(*) FROM INVOICE)), 0 )    	        
		 	FROM DUMMY;
			CNTR := CNTR + 1;
	END WHILE;	
END;

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

 


       
