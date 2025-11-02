create table Planta(
idPlanta integer primary key not null,
nomePopular varchar(50) not null,
nomeCientifico varchar(50) not null,
familia varchar(50) not null,
origem varchar(100) not null,
tipoPlanta varchar(80) not null,
imagemPlanta text not null
);

create table Identificacao(
idPlanta integer  primary key not null,
genero varchar(50) not null,
especie varchar(50) not null,
autor text not null,
sinonimias text not null,
foreign key (idPlanta) references Planta (idPlanta)
);

create table Usoscurio(
idPlanta integer primary key not null,
medicinal text null,
culinario text  null,
ornamental text null,
curiosidade text null,
nomeIngles text not null,
nomeEspanhol text not null,
foreign key (idPlanta) references Planta (idPlanta)
);

create type ciclo_Vida as enum(
'anual',
'bienal',
'perene',
'efemera',
'monocarpica',
'policarpica'
);

create table Descricao(
idPlanta integer primary key not null,
folha text not null,
flor text null,
fruto text null,
raiz text not null,
alturaMedia text not null,
cicloVida ciclo_Vida not null,
foreign key (idPlanta) references Planta (idPlanta)
);

create table Ambiente(
idPlanta integer primary key not null,
habitatNat text not null,
exigLuz text not null,
exigAgua text not null,
tipoSolo text not null,
resistPragas text not null,
foreign key (idPlanta) references Planta (idPlanta)
);

create table Galeria(
idGaleria integer primary key not null,
idPlanta integer not null,
foto text not null,
foreign key (idPlanta) references Planta (idPlanta)
);

create table Links(
idLink integer primary key not null,
url text not null
);

create table Planta_Links(
idPlanta integer not null,
idLink integer not null,
primary key (idPlanta, idLink),
foreign key (idPlanta) references Planta (idPlanta),
foreign key (idLink) references Links (idLink)
);

--planta 1 Singônio
insert into Planta values(1, 
'Singônio',
'Syngonium angustatum', 
'Araceae',
'América Central',
'Trepadeira e ornamental',
'https://i.ibb.co/Xk7qpgNB/singonio.jpg'
);

insert into Identificacao values(
1, 
'Syngonium',
'angustatum',
'Heinrich Wilhelm Schott', 
'Nephthytis triphylla, Syngonium albolineatum, Syngonium gracile, Syngonium oerstedianum'
);

insert into Usoscurio values(
1,
null,
null,
'Muito usada como planta de interior, em vasos, jardineiras ou como planta pendente/trepadeira.',
'Muito popular na decoração de interiores por sua resistência e facilidade de cultivo.',
'Arrowhead Vine.',
'Singonio de hoja estrecha.'
);

insert into Descricao values(
1,
'Alongadas, estreitas e com formato de flecha; possuem lóbulos bem definidos.',
'Pequenas, tipo espádice, mas raramente aparecem quando cultivada como ornamental.',
'Bagas pequenas e carnudas, apenas se a planta florescer (incomum em cultivo doméstico).',
'Fibrosas e superficiais; apresenta raízes adventícias que se desenvolvem ao longo do caule.',
'Entre 10 e 60cm.',
'perene'
);

insert into Ambiente values(
1,
'Florestas tropicais úmidas da América Central.',
'Meia-sombra ou luz indireta. A exposição direta ao Sol pode causar queimadura nas folhas.',
'Gosta de solo levemente úmido, mas sem encharcamento. Tolera curtos períodos de seca.',
'Solo bem drenado, rico em matéria orgânica.',
'Relativamente resistente, mas pode sofrer com cochonilhas, pulgões e ácaros se o ambiente estiver muito seco.'
);

insert into Galeria values(
1, 
1,
'https://i.ibb.co/DHXSf27L/singonio-syngonium-angustatum-1-2.jpg'
);

insert into Galeria values(
2,
1,
'https://i.ibb.co/HT2HqNZS/Syngonium-angustatum-flower.jpg'
);


insert into Links values(
1,
'https://www.jardineiro.net/plantas/singonio-syngonium-angustatum.html'
);

insert into Planta_Links values(
1,
1
);

--planta 2 helicônia-papagaio
Insert into Planta values (
2,
'Helicônia-papagaio',
'Heliconia psittacorum',
'Heliconiaceae',
'América do Sul, Brasil',
'Ornamental',
'https://i.ibb.co/CGpbbmv/heliconia.jpg'
);

Insert into identificacao (idPlanta, genero, especie, autor, sinonimias) values (
2,
'Heliconia',
'psittacorum',
'Desconhecido',
'Bihai psittacorum, Heliconia humilis, Musa humilis'
);

Insert into Usoscurio (idPlanta, medicinal, culinario, ornamental, curiosidade, nomeIngles, nomeEspanhol ) values (
2,
null,
null,
'Composição de arranjos florais e jardins',
'A heliconia-papagaio é levemente tóxica para os humanos, se ingerida pode causar náuseas, vômitos e diarreia. Se sua seiva tiver contato com a pele pode causar irritação em alguns indivíduos',
'false-bird-of-paradise, golden torch e parrot plant',
'heliconia pico de loro e heliconia loro'
);

Insert into Descricao (idPlanta, folha, flor, fruto, raiz, alturaMedia, cicloVida) values (
2,
'Textura coriácea, formato oval-lanceolado',
'A cor de suas brácteas varia entre laranja, rosa e marrom, e suas inflorescências possuem longa duração, o que as torna ótimas para arranjos florais. ',
'frutos do tipo bagas, com cor azulada',
'Raízes adventícias',
'de 0.4 a 1.8 metros',
'perene'
);

Insert into Ambiente (idPlanta, habitatNat, exigLuz, exigAgua, tipoSolo, resistPragas) values (
2,
'Equatorial, subtropical, tropical',
'Meia Sombra',
'Regas frequentes (uma vez por dia), sendo feitas durante a parte da manhã ou tarde',
'Drenado, rico em matéria orgânica e fósforo e potássio, sendo levemente ácido',
'Apesar de ser resistente sem os devidos cuidados pode sofrer com pulgões, cochonilhas e doenças como ferrugem e míldio.'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
3,
2,
'https://i.ibb.co/99vSHBQC/heliconia-papagaio-heliconia-psittacorum.jpg'
);

Insert into Links (idLink, url)
values (
2,
'https://www.jardineiro.net/plantas/heliconia-papagaio-heliconia-psittacorum.html'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
2,
2
);



--planta 3 Mãe-de-milhares
Insert into Planta values (
3,
'Mãe-de-milhares',
'Kalanchoe daigremontiana',
'Crassulaceae',
'Madagascar',
'ornamental e medicinal tradicional',
'https://i.ibb.co/MyLdH9zV/m-e-de-milhares.jpg'
);

Insert into identificacao (idPlanta, genero, especie, autor, sinonimias) values (
3,
'Kalanchoe',
'daigremontiana',
'Desconhecido',
'Mãe-de-milhares, Aranto, Calanchoê, Planta-chapéu-mexicano, Planta-jacaré'
);

Insert into Usoscurio (idPlanta, medicinal, culinario, ornamental, curiosidade, nomeIngles, nomeEspanhol ) values (
3,
'Serve para fins medicinais tradicionais, embora com riscos de intoxicação e pouca comprovação científica,  : utilizada popularmente por suas ações anti-inflamatória, cicatrizante, analgésica e, em alguns contextos, antibiótica e imunossupressora. É aplicada no tratamento de ferimentos de pele, queimaduras superficiais, dores musculares e furúnculos. As folhas podem ser usadas em chás, sucos ou compressas.',
null,
'Serve como planta ornamental devido à sua folhagem e porte',
'é uma suculenta que fascina pela sua rápida reprodução, gerando "bebês" (mudas) nas margens das suas folhas, que, ao caírem, dão origem a novas plantas. É conhecida pelo seu simbolismo de abundância e fertilidade.',
'Mother of Thousands, Mexican Hat Plant',
'Planta madre de miles, Aranto'
);

Insert into Descricao (idPlanta, folha, flor, fruto, raiz, alturaMedia, cicloVida) values (
3,
'Carnudas e serrilhadas que crescem de 15 a 20 cm de comprimento',
'Pequenas mudas (bulbilhos) nas margens das suas folhas, que, ao caírem, enraízam-se no solo e dão origem a novas plantas.',
'Embora esta planta produza flores e sementes, ela não possui frutos, sendo mais conhecida pela sua reprodução assexuada através dos "filhotes" que se formam nas margens das folhas.',
'As raízes são responsáveis pela absorção de água e nutrientes do solo, além de ancorar a planta, garantindo sua sustentação. Como uma suculenta, suas raízes são eficientes na absorção de água em ambientes com pouca umidade.',
'Entre 30 cm e 1 metro.',
'perene'
);

Insert into Ambiente (idPlanta, habitatNat, exigLuz, exigAgua, tipoSolo, resistPragas) values (
3,
'É encontrada em ambientes rochosos e secos em climas subtropicais e temperados.',
'Precisa de bastante luz solar, mas tolera sombra parcial, preferindo sol pleno nas horas mais amenas ou luz indireta brilhante dentro de casa.',
'São moderadas a baixas, sendo crucial evitar o excesso de rega para prevenir o apodrecimento das raízes.',
'Bem drenado, idealmente uma mistura para cactos e suculentas, para evitar o excesso de umidade e o apodrecimento das raízes.',
'É geralmente considerada resistente, mas pode ser suscetível a certas pragas. As pragas mais comuns que podem afetar são cochonilhas e pulgões, especialmente em ambientes com pouca ventilação.'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
4,
3,
'https://i.ibb.co/zWMds1ns/mae-de-milhares-suculenta-facil-de-cuidar-2.webp'
);

Insert into Links (idLink, url)
values (
3,
'https://www.jardineiro.net/plantas/mae-de-milhares-kalanchoe-daigremontiana.html'
);

Insert into Links (idLink, url)
values (
4,
'https://pt.wikipedia.org/wiki/Kalanchoe_daigremontiana'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
3,
3
);

Insert into Planta_Links(idPlanta, idLink) 
values (
3,
4
);


--planta 4 Alpínia
Insert into Planta values (
4,
'Alpínia',
'Alpinia purpurata',
'Zingiberaceae',
'Ásia tropical',
'Herbácea perene e rizomatosa',
'https://i.ibb.co/hxBDjq3L/alpinia.jpg'
);

Insert into identificacao (idPlanta, genero, especie, autor, sinonimias) values (
4,
'Alpinia',
'purpurata',
'Karl Moritz Schumann',
'Alpinia purpurea, Alpinia grandis, Alpinia purpurata'
);

Insert into Usoscurio (idPlanta, medicinal, culinario, ornamental, curiosidade, nomeIngles, nomeEspanhol ) values (
4,
'Rizomas podem ter uso medicinal popular',
null,
'Ornamental em paisagismo tropical Muito usada em arranjos florais Em algumas culturas, representa hospitalidade.',
'Planta tropical com brácteas vermelhas muito vistosas',
'Red Ginger',
'Jengibre Rojo'
);

Insert into Descricao (idPlanta, folha, flor, fruto, raiz, alturaMedia, cicloVida) values (
4,
'Grandes, alongadas e verde-brilhantes, típicas de clima úmido.',
'Pequenas e brancas, mas escondidas sob brácteas vermelhas super chamativas (também há variedades rosa ou brancas).',
null,
'Rizomas subterrâneos, espessos, que armazenam nutrientes.',
'1,5 a 3 metros',
'perene'
);

Insert into Ambiente (idPlanta, habitatNat, exigLuz, exigAgua, tipoSolo, resistPragas) values (
4,
'Jardins tropicais, canteiros e vasos grandes',
'Pleno sol ou meia-sombra',
'Solo sempre úmido, mas bem drenado',
'Rico em matéria orgânica',
'apresenta boa resistência a pragas, mas não é completamente imune. Pragas comuns na Alpinia purpurata: Ácaros, Cochonilhas, Pulgões e Formigas'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
5,
4,
'https://i.ibb.co/xNvXFy3/alpinia-purpurata.jpg'
);

Insert into Links (idLink, url)
values (
5,
'https://bioparquepantanal.ms.gov.br/wp-content/uploads/2024/06/Alpinia-.pdf'
);

Insert into Links (idLink, url)
values (
6,
'https://www.jardineiro.net/plantas/alpinia-alpinia-purpurata.html'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
4,
5
);

Insert into Planta_Links(idPlanta, idLink) 
values (
4,
6
);


--planta 5 trapoeraba
Insert into Planta values (
5,
'trapoeraba',
'Tradescantia pallida',
'Commelinaceae',
'México e na América Central',
'rasteira e ornamental',
'https://i.ibb.co/Y79Ly1pP/Starr-080531-5033-Tradescantia-pallida.jpg'
);

Insert into identificacao (idPlanta, genero, especie, autor, sinonimias) values (
5,
'Tradescantia',
'pallida',
'Rose (no gênero Tradescantia) e mais tarde a D. R. Hunt (que promoveu a variação dentro da espécie).',
'Setcreasea pallida, Setcreasea purpurea, Tradescantia purpurea'
);

Insert into Usoscurio (idPlanta, medicinal, culinario, ornamental, curiosidade, nomeIngles, nomeEspanhol ) values (
5,
'tem usos na medicina popular como anti-inflamatório e diurético, ajudando a reduzir a pressão arterial e o colesterol. ',
'Usada na culinária, para fazer sucos e pratos.',
'Como bioindicadora de poluição, pois acumula metais pesados no seu interior, sendo analisada para monitoramento atmosférico',
'A planta se multiplica facilmente ao cortar um ramo e fincá-lo em solo úmido, fértil e rico em matéria orgânica.',
'Purple Heart, Purple Queen, Wandering Jew',
'Corazón púrpura, Tradescantia púrpura'
);

Insert into Descricao (idPlanta, folha, flor, fruto, raiz, alturaMedia, cicloVida) values (
5,
'Carnosas, lanceoladas, com face adaxial de cor roxo-escuro e de textura agradável ao toque. A face abaxial possui cor roxa-esbranquiçada, com nervuras um pouco mais escuras, muito visíveis próximo à bainha da folha.',
'Terminais, trímeras, com pétalas cor de rosa claro, contrastando com as anteras amarelas. Utilizada como bioindicadora da emissão de gases poluentes.',
null,
'Fibroso, adventício.',
'Atinge entre 15 e 30 cm de altura, com hastes frágeis.',
'perene'
);

Insert into Ambiente (idPlanta, habitatNat, exigLuz, exigAgua, tipoSolo, resistPragas) values (
5,
'É originário das florestas tropicais e regiões da América Central e do Sul, com uma origem específica no México',
'gosta de sol pleno ou meia sombra, quanto mais sol, mais intensa a cor roxa das folhas.',
'precisa de umidade constante, mas não de solo encharcado. O solo deve secar ligeiramente entre as regas, e é crucial que a água possa drenar bem do vaso para evitar o apodrecimento das raízes.',
'Rico em matéria orgânica, úmido, mas bem drenado, como uma mistura de terra vegetal e esterco.',
'Não é imune a elas, mas também não é muito suscetível. Insetos sugadores como pulgões, ácaros-aranha e cochonilhas podem afetá-la. Doenças fúngicas também podem surgir se a planta for submetida a excesso de água, levando a mofo ou apodrecimento das folhas.'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
27,
5,
'https://i.ibb.co/BK3Fr7kD/Tradescantia-purpurea-4-scaled.jpg'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
6,
5,
'https://i.ibb.co/sdMMtxDR/tradescantia-zebrina-1024x576.jpg'
);

Insert into Links (idLink, url)
values (
7,
'https://www.unirio.br/ccbs/ibio/herbariohuni/tradescantia-pallida-rose-d-r.hunt'
);

Insert into Links (idLink, url)
values (
8,
'https://www.jardineiro.net/plantas/trapoeraba-roxa-tradescantia-pallida-purpurea.html'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
5,
7
);

Insert into Planta_Links(idPlanta, idLink) 
values (
5,
8
);


--planta 6 Bromélia
Insert into Planta values (
6,
'Bromélia',
'Bromelia antiacantha',
'Bromeliaceae',
'Nativa do Brasil (especialmente na Mata Atlântica)',
'Herbácea, perene, podendo ser terrestre ou epífita',
'https://i.ibb.co/zhTmKtrq/bromelia-Bosque.jpg'
);

Insert into identificacao (idPlanta, genero, especie, autor, sinonimias) values (
6,
'Bromelia',
'antiacantha',
'Bertol. (Antonio Bertoloni, botânico italiano do século XIX)',
'Conhecida também como caraguatá, gravatá ou macambira em algumas regiões do Brasil'
);

Insert into Usoscurio (idPlanta, medicinal, culinario, ornamental, curiosidade, nomeIngles, nomeEspanhol ) values (
6,
'Algumas tribos indígenas utilizavam partes da planta como remédios naturais',
'O gênero Ananas (da mesma família) inclui o abacaxi, de grande importância econômica mundial. Algumas tribos indígenas utilizavam partes da planta como alimento',
'Ornamentais em jardins, interiores e paisagismo urbano, devido à sua beleza e resistência',
'As bromélias criam micro-habitats aquáticos que abrigam insetos, anfíbios (como pererecas) e pequenos invertebrados, contribuindo para a biodiversidade local. Muitas bromélias são endêmicas do Brasil, especialmente na Mata Atlântica, o que reforça a importância da conservação desses biomas, A capacidade de acumular água nas folhas ajuda a planta a sobreviver em períodos de seca, funcionando como um reservatório natural. A polinização é frequentemente realizada por beija-flores, que são atraídos pelas cores vibrantes das brácteas e flores',
'Bromeliad',
'Bromelia, piñuela'
);

Insert into Descricao (idPlanta, folha, flor, fruto, raiz, alturaMedia, cicloVida) values (
6,
'Longas, lineares, rígidas, geralmente com espinhos nas bordas, formando roseta. A coloração varia do verde ao avermelhado, podendo apresentar tonalidades arroxeadas em algumas espécies.',
'Pequenas, agrupadas em inflorescências vistosas, geralmente com brácteas coloridas que atraem polinizadores como beija-flores e abelhas.',
'Bagas carnosas, que podem ser vermelhas, alaranjadas ou roxas, dependendo da espécie; algumas são comestíveis e outras atraem animais para dispersão das sementes.',
'Fibrosas e superficiais; em espécies epífitas, as raízes atuam principalmente na fixação, absorvendo pouca água e nutrientes, que são captados pelas folhas.',
'De 30 cm a 1,5 m, dependendo da espécie.',
'perene'
);

Insert into Ambiente (idPlanta, habitatNat, exigLuz, exigAgua, tipoSolo, resistPragas) values (
6,
'Florestas tropicais e subtropicais, restingas, áreas de cerrado e matas de altitude. Muitas espécies são adaptadas a ambientes com solos pobres e condições de seca temporária.',
'Preferem meia-sombra, mas algumas espécies toleram sol pleno, especialmente as terrestres.',
'Mantêm água acumulada nas folhas centrais (tanque foliar), que serve como reserva hídrica e abrigo para fauna associada. Devem ser regadas tanto no solo quanto no "copo" formado pela roseta, evitando o acúmulo excessivo para prevenir pragas.',
'Solo bem drenado, leve, rico em matéria orgânica, com pH levemente ácido a neutro.',
'Relativamente resistentes, mas podem atrair mosquitos quando acumulam água parada (precisam de manejo adequado para evitar doenças como dengue). Também podem ser atacadas por cochonilhas e pulgões.'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
7,
6,
'https://i.ibb.co/wFn0Q2TS/bromelia1.jpg'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
8,
6,
'https://i.ibb.co/kg9CXcY6/bromelia2.jpg'
);

Insert into Links (idLink, url)
values (
9,
'https://museunacional.ufrj.br/hortobotanico/restinga/bromeliaantiacantha.html'
);

Insert into Links (idLink, url)
values (
10,
'https://pt.wikipedia.org/wiki/Bromelia_antiacantha'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
6,
9
);

Insert into Planta_Links(idPlanta, idLink) 
values (
6,
10
);


--planta 7 Guiné-Pipiu
Insert into Planta values (
7,
'Guiné-Pipiu',
'Petiveria alliacea',
'Phytolaccaceae',
'Nativa da América Tropical',
'Erva perene medicinal',
'https://i.ibb.co/MxqCkyT0/Guin-pipiu.jpg'
);

Insert into identificacao (idPlanta, genero, especie, autor, sinonimias) values (
7,
'Petiveria',
'alliacea',
'Linnaeus',
'Petiveria tetrandra'
);

Insert into Usoscurio (idPlanta, medicinal, culinario, ornamental, curiosidade, nomeIngles, nomeEspanhol ) values (
7,
'Tradicionalmente utilizada para tratar febres, inflamações, dores musculares, reumatismo e problemas digestivos; conhecida por propriedades antibacterianas e anti-inflamatórias.',
null,
null,
'Também usada em rituais espirituais em algumas culturas do Caribe e América Central. Conhecida como “erva-gambá” devido ao odor forte das folhas; seu aroma é percebido até quando se pisa sobre a planta.',
'Anamu ou Guinea Henweed',
'Apacina'
);

Insert into Descricao (idPlanta, folha, flor, fruto, raiz, alturaMedia, cicloVida) values (
7,
'Pequenas, simples, lanceoladas a ovais.',
'Pequenas e brancas ou esbranquiçadas agrupadas em inflorescências racimosas.',
'Pequenos, cápsula com sementes.',
'Ramificadas, de aroma forte e característico.',
'0,5 a 1 metro',
'perene'
);

Insert into Ambiente (idPlanta, habitatNat, exigLuz, exigAgua, tipoSolo, resistPragas) values (
7,
'Florestas tropicais e matas secundárias, áreas sombreadas e úmidas.',
'Pleno sol a meia sombra.',
'Moderada; solo deve estar úmido, mas bem drenado.',
'Argiloso, rico em matéria orgânica; tolera solos arenosos.',
'Moderada; folhas podem ser atacadas por pulgões ou fungos se houver excesso de umidade.'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
9,
7,
'https://i.ibb.co/jZRTQySH/Petiveria-Guin.jpg'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
10,
7,
'https://i.ibb.co/1GtmqpDY/Petiveria-Ehret.jpg'
);

Insert into Links (idLink, url)
values (
11,
'https://pt.wikipedia.org/wiki/Petiveria_tetrandra'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
7,
11
);


--planta 8 Amoreira-branca
Insert into Planta values (
8,
'Amoreira-branca',
'Morus alba',
'Moraceae',
'Ásia (China), exótica no Brasil',
'Arbórea, frutífera, medicinal, ornamental e forrageira',
'https://i.ibb.co/qYCvcj31/amora-branca.jpg'
);

Insert into identificacao (idPlanta, genero, especie, autor, sinonimias) values (
8,
'Morus',
'alba',
'Lineu (L.)',
' Morus stylosa, Morus tatarica, entre outros nomes usados em diferentes regiões.'
);

Insert into Usoscurio (idPlanta, medicinal, culinario, ornamental, curiosidade, nomeIngles, nomeEspanhol ) values (
8,
'Folhas utilizadas em infusões contra diabetes e colesterol; frutos ricos em vitaminas C e K, antioxidantes e fibras.',
'Frutos consumidos in natura ou em sucos, geleias, vinhos, compotas e sorvetes.',
'Árvores sombreadoras e paisagísticas em áreas urbanas e rurais.',
'Introduzida no Brasil no século XIX para impulsionar a produção de seda. Importante na alimentação do bicho-da-seda (Bombyx mori), o que a tornou fundamental para a sericicultura mundial. Símbolo de longevidade e sabedoria em culturas asiáticas. Em algumas regiões do interior do Brasil, seus frutos são chamados de “moras” ou “morrinhas”.',
'White mulberry',
'Morera blanca'
);

Insert into Descricao (idPlanta, folha, flor, fruto, raiz, alturaMedia, cicloVida) values (
8,
'Simples, alternas, grandes (até 20 cm), de bordas serrilhadas; verdes e brilhantes, muito utilizadas para alimentar o bicho-da-seda.',
'Pequenas, esbranquiçadas a amareladas, pouco vistosas, dispostas em inflorescências cilíndricas.',
'Drupa múltipla, carnosa, em formato semelhante a uma amora, variando entre branco, róseo e roxo-escuro quando maduro.',
'Sistema radicular profundo e bem desenvolvido, conferindo boa resistência à seca.',
'Entre 10 e 20 metros.',
'perene'
);

Insert into Ambiente (idPlanta, habitatNat, exigLuz, exigAgua, tipoSolo, resistPragas) values (
8,
'Regiões temperadas e subtropicais da Ásia.',
'Pleno sol.',
'Moderada, tolera curtos períodos de seca.',
'Solos profundos, bem drenados, férteis e levemente ácidos.',
'Relativamente resistente, mas pode sofrer com cochonilhas, pulgões e fungos se cultivada em locais muito úmidos.'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
11,
8,
'https://i.ibb.co/PZs88LMh/Morus-alba.jpg'
);


Insert into Links (idLink, url)
values (
13,
'https://pt.wikipedia.org/wiki/Morus_alba'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
8,
13
);


--planta 9 Jiboia
Insert into Planta values (
9,
'Jiboia',
'Epipremnum aureum.',
'Araceae',
'Ilhas Salomão (Oceania) - exótica no Brasil.',
'Trepadeira, pendente e ornamental.',
'https://i.ibb.co/PsWXDxWQ/jiboia.jpg'
);

Insert into identificacao (idPlanta, genero, especie, autor, sinonimias) values (
9,
'Epipremnum',
'aureum',
'Carl Linnaeus, Heinrich Gustav Adolf Engler.',
'Pothos aureus, Scindapsus aureus, Rhaphidophora aurea.'
);

Insert into Usoscurio (idPlanta, medicinal, culinario, ornamental, curiosidade, nomeIngles, nomeEspanhol ) values (
9,
null,
null,
'Amplamente usada como planta de interior (em vasos, cestas suspensas, trepadeiras em suportes) e em jardins tropicais. É conhecida por sua capacidade de purificar o ar.',
'Muito popular por sua resiliência, facilidade de propagação (por estaquia) e adaptação a diversos ambientes internos. Tóxica se ingerida, causando irritação na boca e garganta.',
'Pothos, Devils Ivy.',
'Poto'
);

Insert into Descricao (idPlanta, folha, flor, fruto, raiz, alturaMedia, cicloVida) values (
9,
'Em formato de coração, brilhantes, verdes com variegadas em tons de amarelo, creme ou branco. As folhas tendem a ser maiores e mais lobadas em plantas maduras ou em ambiente natural.',
'Pequenas, tipo espádice envolvida por uma espata, mas são extremamente raras de aparecer quando cultivada fora de seu habitat natural (em vasos).',
'Bagas pequenas e carnudas, que se formam apenas após a floração (muito incomum em cultivo doméstico). ',
'Fibrosas e superficiais; desenvolve raízes adventícias (aéreas) ao longo do caule, que ajudam na fixação e absorção de umidade quando trepa.',
'Em vasos, as hastes podem atingir de 1 a 2 metros; na natureza ou como trepadeira, pode chegar a 20 metros ou mais.',
'perene'
);

Insert into Ambiente (idPlanta, habitatNat, exigLuz, exigAgua, tipoSolo, resistPragas) values (
9,
'Florestas tropicais úmidas, crescendo como epífita (sobre outras árvores) ou terrestre.',
'Meia-sombra ou luz indireta brilhante. Folhas perdem a variegatação em pouca luz e queimam com luz solar direta intensa.',
'Gosta de solo levemente úmido. Regar quando o substrato estiver seco na superfície. Não tolera encharcamento. Tolera curtos períodos de seca, mas desenvolve-se melhor com umidade constante.',
'Solo bem drenado, leve e rico em matéria orgânica (substrato para vasos com boa aeração).',
'Relativamente resistente, mas pode ser atacada por cochonilhas e ácaros em ambientes com baixa umidade e má ventilação.'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
12,
9,
'https://i.ibb.co/BVjjCcLC/jiboia-jpg.webp'
);

Insert into Links (idLink, url)
values (
14,
'https://powo.science.kew.org/taxon/urn:lsid:ipni.org:names:87023-1'
);

Insert into Links (idLink, url)
values (
15,
'http://www.missouribotanicalgarden.org/PlantFinder/PlantFinderDetails.aspx?kempercode=x740'
);

Insert into Links (idLink, url)
values (
16,
'https://www.aspca.org/pet-care/animal-poison-control/toxic-and-non-toxic-plants/pothos'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
9,
14
);

Insert into Planta_Links(idPlanta, idLink) 
values (
9,
15
);

Insert into Planta_Links(idPlanta, idLink) 
values (
9,
16
);


--planta 10 Sanquesia

Insert into Planta values (
10,
'Sanquesia',
'Sanchezia oblonga',
'Acanthaceae',
'Nativa da América do Sul (Peru, Equador, Brasil)',
'Arbusto ornamental',
'https://i.ibb.co/vvmRQwm8/Sanchezia-sp-1.jpg'
);

Insert into identificacao (idPlanta, genero, especie, autor, sinonimias) values (
10,
'Sanchezia',
'oblonga',
'Leonard',
'Nenhuma registrada'
);

Insert into Usoscurio (idPlanta, medicinal, culinario, ornamental, curiosidade, nomeIngles, nomeEspanhol ) values (
10,
null,
null,
'Muito utilizada para dar cor ao jardim, por flores vistosas e folhagem brilhante',
'Considerada símbolo de hospitalidade em algumas regiões tropicais',
'Sanchezia, Oblong Sanchezia',
'Sanchezia, Oblonga'
);

Insert into Descricao (idPlanta, folha, flor, fruto, raiz, alturaMedia, cicloVida) values (
10,
'Largas, oblongas e brilhantes.',
'Tubulares de cor amarela a laranja, agrupadas em inflorescências terminais.',
null,
'Fibrosas superficiais.',
'1 a 3 metros',
'perene'
);

Insert into Ambiente (idPlanta, habitatNat, exigLuz, exigAgua, tipoSolo, resistPragas) values (
10,
'Florestas tropicais úmidas e áreas próximas a cursos de água',
'Meia sombra; não tolera sol intenso direto por longos períodos',
'Solo constantemente úmido, mas bem drenado',
'Solo fértil, rico em matéria orgânica e com boa capacidade de retenção de água',
'Baixa a moderada; folhas podem ser atacadas por cochonilhas e pulgões'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
13,
10,
'https://i.ibb.co/BHGTLv09/Sanquesia.jpg'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
14,
10,
'https://i.ibb.co/prbP2hpP/sanquesia-sanchezia-speciosa-1.jpg'
);

Insert into Links (idLink, url)
values (
17,
'https://www.sitiodamata.com.br/especies-de-plantas/sanquesia-sanchezia-oblonga.html'
);

Insert into Links (idLink, url)
values (
18,
'https://www.jardineiro.net/plantas/sanquesia-sanchezia-nobilis.html'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
10,
17
);

Insert into Planta_Links(idPlanta, idLink) 
values (
10,
18
);


--planta 11 zebrinha

Insert into Planta values (
11,
'Zebrina, lambari-roxo',
'Tradescantia zebrina Bosse',
'Commelinaceae',
'América do Sul, Caribe, África, Ásia e ilhas oceânicas',
'Rasteira ornamental',
'https://i.ibb.co/Psh5W3C8/zebrinha.jpg'
);

Insert into identificacao (idPlanta, genero, especie, autor, sinonimias) values (
11,
'Tradescantia',
'zebrina',
'Bosse',
'Zebrina pendula Schnizl.'
);

Insert into Usoscurio (idPlanta, medicinal, culinario, ornamental, curiosidade, nomeIngles, nomeEspanhol ) values (
11,
null,
null,
'Muito usada como planta de forração e em vasos pendentes.',
'Conhecida como “trapoeraba-zebrina” em algumas regiões do Brasil. Plantas do gênero Tradescantia já foram estudadas como bioindicadores de poluição ambiental. ',
'Zebra plant',
'Pamplinas'
);

Insert into Descricao (idPlanta, folha, flor, fruto, raiz, alturaMedia, cicloVida) values (
11,
'Ovais/lanceoladas, face superior exibe coloração verde-escura ou arroxeada com duas faixas longitudinais prateadas bem marcadas; a face inferior é uniformemente magenta ou púrpura intensa.',
'Pequenas, róseas a roxas, com três pétalas.',
null,
'Fasciculada, superficial e pouco profunda. São finas e se originam facilmente nos nós dos caules quando em contato com substrato úmido.',
'10–30 cm',
'perene'
);

Insert into Ambiente (idPlanta, habitatNat, exigLuz, exigAgua, tipoSolo, resistPragas) values (
11,
'Florestas úmidas tropicais, margens de rios e áreas sombreadas ou parcialmente abertas até altitudes de cerca de 2.000 metros, sub-bosques sombreados ou clareiras úmidas.',
'Meia-sombra a sol pleno',
'Rega frequente',
'Rico em matéria orgânica, com boa umidade e drenagem.',
'Cresce rápido, fácil propagação'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
15,
11,
'https://i.ibb.co/sdMMtxDR/tradescantia-zebrina-1024x576.jpg'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
16,
11,
'https://i.ibb.co/zhfsv5W8/T-zebrina-flower.jpg'
);


Insert into Links (idLink, url)
values (
19,
'https://hort.extension.wisc.edu/articles/tradescantia-zebrina/'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
11,
19
);


--planta 12 espada de são jorge

Insert into Planta values (
12,
'Espada-de-São-Jorge',
'Dracaena trifasciata',
'Asparagaceae',
'África Ocidental (exótica no Brasil)',
'herbácea perene, suculenta e rizomatosa',
'https://i.ibb.co/6cqfzy1m/espada-de-s-o-jorge-flora-o.jpg'
);

Insert into identificacao (idPlanta, genero, especie, autor, sinonimias) values (
12,
'Dracaena',
'trifasciata',
'Prain',
'Sansevieria trifasciata'
);


Insert into Usoscurio (idPlanta, medicinal, culinario, ornamental, curiosidade, nomeIngles, nomeEspanhol ) values (
12,
'Na medicina popular, suas folhas são usadas contra inflamações e infecções.',
null,
null,
'Usada em religiões afro-brasileiras como planta de proteção. Simboliza força, proteção e coragem.',
'Foi incluída em estudos da NASA como purificadora de ar (absorve CO₂ à noite). Pode ser tóxica se ingerida por animais domésticos ou crianças pequenas, podendo causar irritação gastrointestinal, vômitos e diarreia.'
'Snake Plant, Mother-in-laws Tongue',
'Lengua de Suegra, Espada de San Jorge'
);

Insert into Descricao (idPlanta, folha, flor, fruto, raiz, alturaMedia, cicloVida) values (
12,
'Eretas, rígidas, em rosetas, verde-escuro com manchas cinza e bordas amareladas em algumas variedades.',
'Pequenas, branco-esverdeadas, aromáticas.',
'Bagas laranjas.',
'raízes rizomatosas.',
'Até 1,2 m.',
'perene'
);

Insert into Ambiente (idPlanta, habitatNat, exigLuz, exigAgua, tipoSolo, resistPragas) values (
12,
'Áreas áridas da África.',
'Adapta-se a ambientes internos com baixa luminosidade, mas também tolera sol e sombra, sendo uma planta muito resistente.',
'Baixa necessidade; muito tolerante à seca.',
'Substrato bem drenado e rico em matéria orgânica.',
'Extremamente rústica.'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
18,
12,
'https://i.ibb.co/67pB7CX7/espada-de-s-o-jorge-pequena.jpg'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
19,
12,
'https://i.ibb.co/k2v1mNWq/espada-de-s-o-jorge.jpg'
);

Insert into Links (idLink, url)
values (
20,
'https://www.jardineiro.net/plantas/espada-de-sao-jorge-dracaena-trifasciata.html'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
12,
20
);



--planta 13 Sete léguas
Insert into Planta values (
13,
'Sete léguas',
'Portulaca grandiflora',
'Portulacaceae',
'Nativa do Brasil, Argentina e Uruguai',
'Suculenta rasteira ornamental',
'https://i.ibb.co/GQHdrW8X/sete-l-guas-bosque.jpg'
);

Insert into identificacao (idPlanta, genero, especie, autor, sinonimias) values (
13,
'Portulaca',
'grandiflora',
'Hooker',
'Nenhuma registrada'
);

Insert into Usoscurio (idPlanta, medicinal, culinario, ornamental, curiosidade, nomeIngles, nomeEspanhol ) values (
13,
null,
null,
'Excelente para cobertura de solo e bordaduras, muito apreciada em jardins de baixa manutenção',
'Flores fecham à noite e em dias nublados; o nome “sete léguas” remete à rapidez de abertura das flores',
'Rose Moss',
'Mananitas'
);

Insert into Descricao (idPlanta, folha, flor, fruto, raiz, alturaMedia, cicloVida) values (
13,
'Pequenas e carnudas.',
'Grandes, coloridas (vermelha, rosa, amarela, laranja, branca), que se abrem durante o dia e fecham à noite.',
'Cápsulas contendo numerosas sementes minúsculas.',
'raízes do tipo pivotante',
'10 a 20 cm',
'anual'
);

Insert into Ambiente (idPlanta, habitatNat, exigLuz, exigAgua, tipoSolo, resistPragas) values (
13,
'Regiões áridas e semiáridas, terrenos secos e expostos ao sol',
'Pleno sol',
'Baixa; tolera seca, requer solo bem drenado',
'Arenoso ou rochoso, pobre a moderadamente fértil',
'Alta; raramente atacada, mas pode sofrer com pulgões'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
20,
13,
'https://i.ibb.co/p6cHynVh/Sete-leguas-Podranea-ricasoliana-3.jpg'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
21,
13,
'https://i.ibb.co/h1y0M9S6/Sete-leguas-Podranea-3.jpg'
);

Insert into Links (idLink, url)
values (
21,
'https://jardim.biz/sete-leguas/'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
13,
21
);


-- planta 14 COMIGO-NINGUÉM-PODE

Insert into Planta values (
14,
'Comigo-ninguém-pode',
'Dieffenbachia seguine',
'Araceae',
'América Central e América do Sul',
'Herbácea perene ornamental',
'https://i.ibb.co/23vjBm11/comigo-ningu-m-pode-bosque.jpg'
);

Insert into identificacao (idPlanta, genero, especie, autor, sinonimias) values (
14,
'Dieffenbachia',
'seguine',
'Desconhecido',
'não encontrada'
);

Insert into Usoscurio (idPlanta, medicinal, culinario, ornamental, curiosidade, nomeIngles, nomeEspanhol ) values (
14,
null,
null,
'Muito usada como planta ornamental por suas folhas decorativas.',
'Na tradição popular, é associada a proteção contra mau-olhado e energias negativas. Tóxica: contém oxalato de cálcio, podendo causar irritação, inchaço e dificuldade de respirar se ingerida.',
'Dumb cane',
'Dieffenbachia, Hoja de tigre'
);

Insert into Descricao (idPlanta, folha, flor, fruto, raiz, alturaMedia, cicloVida) values (
14,
'Grandes, verdes com manchas brancas ou amareladas, de formato ovalado',
'Pequenas, brancas-esverdeadas, em espádice com espata; raras em cultivo ornamental.',
null,
'Subterrâneas, fibrosas.',
'0,5 a 1,5 m em vasos; até 3 m em ambiente natural',
'perene'
);

Insert into Ambiente (idPlanta, habitatNat, exigLuz, exigAgua, tipoSolo, resistPragas) values (
14,
'Florestas tropicais úmidas, em sub-bosques sombreados.',
'Meia-sombra, não gosta de sol direto nas folhas.',
'Moderada; regar quando o substrato estiver levemente seco.',
'Rico em matéria orgânica e bem drenado',
'Relativamente resistente, mas pode sofrer com excesso de água (podridão radicular) e ataque de cochonilhas.'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
22,
14,
'https://i.ibb.co/VY0dLGMh/comigo-n-p.jpg'
);

Insert into Links (idLink, url)
values (
22,
'https://pt.wikipedia.org/wiki/Dieffenbachia_seguine'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
14,
22
);



-- planta 15 alceia

Insert into Planta values (
15,
'Alceia',
'Alcea rosea',
'Malvaceae',
'Ásia / Mediterrâneo',
' Herbácea bienal ou perene de vida curta',
'https://i.ibb.co/Jw5jdDj8/alceia.jpg'
);

Insert into identificacao (idPlanta, genero, especie, autor, sinonimias) values (
15,
'Alcea',
'rosea',
'Linnaeus',
'Althaea rosea; Althaea chinensis; Althaea ficifolia' 
);


Insert into Usoscurio (idPlanta, medicinal, culinario, ornamental, curiosidade, nomeIngles, nomeEspanhol ) values (
15,
'Calmante; emoliente; propriedades anti‑inflamatórias; analgésicas; expectorantes; laxantes; usado para tosse, inflamações de mucosas, aparelho digestivo; inflamações crônicas; colite; febre; diurético; etc.',
'Flores, folhas, raízes usadas em infusões, decocções; botões florais e flores comestíveis, às vezes; pétalas usadas em saladas e chás; raízes usadas para extrair amido; etc.',
'Muito usada como ornamental nos jardins, cercas, muros; flores vistosas; variedades de várias cores.',
'Atrai polinizadores (abelhas, borboletas, beija‑flores); usada para tinturas naturais; pode colorear chás‑ervas; uso tradicional, etnobotânico; folhas grandes; variedades diferentes de cor etc.',
'Hollyhock',
'Malvarrosa; Malva real'
);

Insert into Descricao (idPlanta, folha, flor, fruto, raiz, alturaMedia, cicloVida) values (
15,
'Grandes, arredondadas (cordiformes), verde‑claras, levemente pilosas/pubescente, lobadas / recortadas; folhas maiores na base, menores topo.',
'Flores grandes, simples ou dobradas, várias cores (rosa, branca, vermelha, amarela, roxa/quase preta); dispostas ao longo do caule; solitárias ou em pares / espessas espigas/ hastes florais.',
'Fruto tipo esquizocarpo discreto; frutos não muito destacados no uso; colheitas de sementes',
'Pivotante, profunda, bem adaptada para solos soltos; sistema radicular robusto para fixação. ',
'Cerca de 1,5 a 3 m.',
'bienal'
);

Insert into Ambiente (idPlanta, habitatNat, exigLuz, tipoSolo, exigAgua, resistPragas) values (
15,
'Jardins, muros, cercas; regions com clima mediterrâneo ou temperado; adaptada a solos mais soltos; cultivada em ambiente de jardins ornamentais.',
'Sol pleno',
'Rega regular, sem encharcar; gosta de umidade moderada; tolera curtos períodos de seca mas prefere irrigação estável.',
'Solo bem drenado, fértil, rico em matéria orgânica; solos leves ou médios; evitar solos pesados argilosos ou encharcados.',
'Moderadamente resistente a pragas, mas suscetível a ferrugem (Puccinia malvacearum) e ataques de pulgões, lesmas e caracóis. Recomenda-se monitoramento preventivo e cultivo em locais bem ventilados para reduzir incidência de fungos.'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
23,
15,
'https://i.ibb.co/Y48cQ4fd/alceia2.jpg'
);

Insert into Links (idLink, url)
values (
23,
'https://en.wikipedia.org/wiki/Alcea_rosea?utm_source=chatgpt.com'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
15,
23
);

Insert into Links (idLink, url)
values (
24,
'https://www.medicinanatural.com.br/malva-rosa-alcea-rosea/?utm_source=chatgpt.com'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
15,
24
);


--planta 16 Aningapara

Insert into Planta values (
16,
'Aningapara',
'Philodendron bipinnatifidum',
'Araceae',
'América do Sul (Brasil, Paraguai, Argentina, Bolívia e Uruguai)',
'Herbácea perene e ornamental',
'https://i.ibb.co/7xby7NJG/aningarapa.png'
);

Insert into identificacao (idPlanta, genero, especie, autor, sinonimias) values (
16,
'Philodendron',
'bipinnatifidum',
'Schott ex Endl.',
'Philodendron selloum'
);

Insert into Usoscurio (idPlanta, medicinal, culinario, ornamental, curiosidade, nomeIngles, nomeEspanhol ) values (
16,
null,
null,
'Muito utilizada em paisagismo, principalmente em jardins tropicais',
'Planta tóxica se ingerida, pois contém oxalato de cálcio',
'Tree philodendron, Lacy tree philodendron, Selloum',
'Filodendro, Guaimbé'
);

Insert into Descricao (idPlanta, folha, flor, fruto, raiz, alturaMedia, cicloVida) values (
16,
'Grandes, profundamente recortadas, verde-escuras, com até 1 m de comprimento',
'Inflorescência típica da família Araceae (espádice envolto por espata esbranquiçada); raras em cultivo ornamental',
null,
'Subterrâneas e aéreas, firmes e fortes, que ajudam na fixação e absorção de nutrientes',
'2 a 5 m em ambiente natural; em cultivo doméstico costuma ficar menor',
'perene'
);

Insert into Ambiente (idPlanta, habitatNat, exigLuz, exigAgua, tipoSolo, resistPragas) values (
16,
'Florestas tropicais da América do Sul',
'Meia-sombra ou sol filtrado; tolera sombra parcial',
'Rega regular, mantendo o solo úmido sem encharcar',
'Rico em matéria orgânica, úmido e bem drenado',
'Resistente a pragas comuns, mas pode ser afetada por cochonilhas, pulgões e ácaros.'
);


Insert into Galeria (idGaleria, idPlanta, foto) values (
24,
16,
'https://i.ibb.co/Xfq3wz0H/aningarapa2.jpg'
);


Insert into Links (idLink, url)
values (
25,
'https://thursd.com/articles/philodendron-bipinnatifidum'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
16,
25
);

--planta 17 Dracena
Insert into Planta values (
17,
'Dracena',
'Dracaena fragrans',
'Asparagaceae',
'África tropical',
'Arbusto ornamental, usado em vasos ou jardins',
'https://i.ibb.co/qYtTfKnV/dracena.jpg'
);

Insert into identificacao (idPlanta, genero, especie, autor, sinonimias) values (
17,
'Dracaena',
'fragrans',
'(L.) Ker Gawl.',
'Dracaena deremensis'
);

Insert into Usoscurio (idPlanta, medicinal, culinario, ornamental, curiosidade, nomeIngles, nomeEspanhol ) values (
17,
null,
null,
'Muito usada como planta ornamental em interiores por ser resistente',
'Indicada como purificadora do ar (estudos da NASA). Tóxica para animais de estimação se ingerida.',
'Corn plant, Striped dracaena',
'Tronco de Brasil, Palo de agua'
);

Insert into Descricao (idPlanta, folha, flor, fruto, raiz, alturaMedia, cicloVida) values (
17,
'Longas, arqueadas, verdes ou com listras amareladas/esbranquiçadas (dependendo da variedade).',
'Pequenas, brancas a levemente rosadas, aromáticas, dispostas em cachos; surgem raramente em vasos',
null,
'Subterrâneas, firmes, com capacidade de armazenar água; o caule pode enraizar',
'1,5 a 3m em cultivo',
'perene'
);

Insert into Ambiente (idPlanta, habitatNat, exigLuz, exigAgua, tipoSolo, resistPragas) values (
17,
'África tropical',
'Prefere meia-sombra e luz indireta. Tolera ambientes internos bem iluminados.',
'Moderada; regar quando o substrato começar a secar. Evitar excesso de água.',
'Bem drenado, rico em matéria orgânica',
'Resistente a pragas comuns de plantas internas, como ácaros e cochonilhas'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
25,
17,
'imagens/como_cuidar_de_uma_dracena_17826_orig.jpg'
);

Insert into Galeria (idGaleria, idPlanta, foto) values (
26,
17,
'https://i.ibb.co/KcfLnxpB/como-cuidar-de-uma-dracena-17826-orig.jpg'
);

Insert into Links (idLink, url)
values (
26,
'https://casa.umcomo.com.br/artigo/como-cuidar-de-uma-dracena-17826.html'
);

Insert into Planta_Links(idPlanta, idLink) 
values (
17,
26
);