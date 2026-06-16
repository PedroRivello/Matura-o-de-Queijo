DROP DATABASE IF EXISTS quexo;
CREATE DATABASE IF NOT EXISTS quexo;
use quexo;

CREATE TABLE usuario (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
senha VARCHAR(100) NOT NULL
);

CREATE TABLE tipo (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50)
);

CREATE TABLE queijo (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
foto varchar(255),
descricao varchar(400),
umidade varchar(50),
fkTipo INT NOT NULL,
FOREIGN KEY (fkTipo) REFERENCES tipo(id)
);

CREATE TABLE favorito (
fkQueijo INT,
fkUsuario INT,
PRIMARY KEY (fkQueijo, fkUsuario),
FOREIGN KEY (fkQueijo) REFERENCES queijo(id),
FOREIGN KEY (fkUsuario) REFERENCES usuario(id)
);


-- INSERTS DUS QUEXO --

INSERT INTO tipo (nome) VALUES
('Extra gordo'),
('Gordo'),
('Semigordo'),
('Magro'),
('Desnatado');

INSERT INTO queijo (nome, foto, descricao, umidade, fkTipo) VALUES
('Morro Azul',
'https://dcdn-us.mitiendanube.com/stores/005/179/067/products/ec02948c-6736-4ba2-8100-73f4d3866bd5-118938957b058878a017562309226367-1024-1024.webp',
'O Morro Azul é um queijo brasileiro produzido pela Vermont Queijos Especiais, em Pomerode, Santa Catarina. É um queijo de mofo branco, com casca formada por Penicillium candidum, massa muito cremosa e envolto por uma cinta de carvalho. Tem sabor de média intensidade, aroma marcante e textura macia.',
'Muito alta',
2),

('Minas Frescal',
'https://commons.wikimedia.org/wiki/Special:FilePath/Queijo_Minas_Frescal.JPG',
'O queijo Minas Frescal é um queijo brasileiro fresco, branco, macio e de sabor suave. É consumido logo após a fabricação, por isso apresenta textura úmida e delicada. É muito comum no café da manhã, em lanches e em preparações leves.',
'Muito alta',
3),

('Ricota',
'https://commons.wikimedia.org/wiki/Special:FilePath/RicottaSpoon.JPG',
'A ricota é um produto lácteo fresco, obtido tradicionalmente a partir do soro do leite. Tem textura granulada, sabor suave e aparência branca. É muito usada em recheios, massas, tortas, patês e dietas com menor teor de gordura.',
'Muito alta',
4),

('Cottage',
'https://commons.wikimedia.org/wiki/Special:FilePath/Cottagecheese200px.jpg',
'O cottage é um queijo fresco, úmido e de sabor suave. Sua textura é formada por pequenos grãos macios, geralmente envolvidos em uma parte cremosa. É muito usado em dietas, saladas, torradas e preparações frias.',
'Muito alta',
4),

('Cream Cheese',
'https://commons.wikimedia.org/wiki/Special:FilePath/Truly_traditional_cream_cheese.jpg',
'O cream cheese é um queijo fresco, cremoso e levemente ácido. Tem textura espalhável e é muito usado em pães, patês, molhos e sobremesas, como cheesecake. Por ser um queijo fresco e cremoso, apresenta alto teor de umidade.',
'Muito alta',
2),

('Mascarpone',
'https://commons.wikimedia.org/wiki/Special:FilePath/Mascarpone_2.jpg',
'O mascarpone é um queijo italiano muito cremoso, feito a partir de creme de leite. Possui sabor suave, levemente adocicado e textura densa. É muito usado em sobremesas, especialmente no tiramisù.',
'Muito alta',
1),

('Burrata',
'https://commons.wikimedia.org/wiki/Special:FilePath/Burrata_di_bufala.jpg',
'A burrata é um queijo italiano fresco, feito com uma camada externa de mussarela e recheio cremoso. Seu interior é formado por fios de massa misturados com creme, criando uma textura muito macia. É consumida fresca, geralmente com azeite, tomate, saladas ou pães.',
'Muito alta',
2),

('Mussarela de Búfala',
'https://cdn.awsli.com.br/2500x2500/1550/1550750/produto/59435003/a023dafa54.jpg',
'A mussarela de búfala é um queijo fresco de massa filada, produzido com leite de búfala. Tem textura macia, úmida e sabor lácteo delicado. É muito usada em saladas, pizzas especiais e pratos frios.',
'Muito alta',
2),

('Brie',
'https://commons.wikimedia.org/wiki/Special:FilePath/Brie_01.jpg',
'O brie é um queijo francês de mofo branco, com casca aveludada e comestível. Sua massa é macia e cremosa, com sabor amanteigado e suave quando jovem. Com a maturação, o aroma fica mais intenso e a textura mais cremosa.',
'Alta',
2),

('Camembert',
'https://commons.wikimedia.org/wiki/Special:FilePath/Camembert_(Cheese).jpg',
'O camembert é um queijo francês de mofo branco, semelhante ao brie, porém geralmente menor e mais intenso. Tem casca comestível, massa macia e aroma característico. Quando maduro, fica mais cremoso e com sabor mais marcante.',
'Alta',
2),

('Gorgonzola',
'https://commons.wikimedia.org/wiki/Special:FilePath/Gorgonzola.jpg',
'O gorgonzola é um queijo azul de origem italiana, reconhecido pelos veios azul-esverdeados formados por fungos específicos. Possui sabor intenso, levemente picante e aroma marcante. É muito usado em molhos, risotos, carnes, massas e tábuas de queijos.',
'Alta',
2),

('Feta',
'https://commons.wikimedia.org/wiki/Special:FilePath/Feta_Cheese.jpg',
'O feta é um queijo grego tradicionalmente produzido com leite de ovelha ou mistura de leite de ovelha e cabra. É conservado em salmoura, o que dá sabor salgado e textura quebradiça. É muito usado em saladas, pratos mediterrâneos e preparações frias.',
'Alta',
2),

('Minas Padrão',
'https://images.tcdn.com.br/img/img_prod/1282640/queijo_minas_padrao_400g_143_1_349913792670502d481fbdaf25137b16.jpg',
'O queijo Minas Padrão é uma versão maturada do queijo mineiro, com textura mais firme que o Minas Frescal. Tem sabor levemente ácido, massa compacta e coloração amarelada clara. É usado em lanches, receitas, tábuas e consumo direto.',
'Alta',
2),

('Havarti',
'https://commons.wikimedia.org/wiki/Special:FilePath/Cream_havarti_on_bread.jpg',
'O havarti é um queijo dinamarquês semimacio, de sabor suave e textura cremosa. Pode apresentar pequenas olhaduras e massa flexível. É consumido em sanduíches, tábuas de queijos e receitas gratinadas.',
'Alta',
2),

('Queijo Prato',
'https://cdn.awsli.com.br/600x700/2370/2370413/produto/180786806/57719c7b4d.jpg',
'O queijo prato é um queijo brasileiro de massa semidura, textura elástica e sabor suave. É muito usado em lanches, misto-quente, hambúrgueres e receitas gratinadas. Possui boa capacidade de derretimento e sabor pouco picante.',
'Média',
2),

('Gouda',
'https://commons.wikimedia.org/wiki/Special:FilePath/Gouda_Cheese.jpg',
'O gouda é um queijo holandês de massa semidura, sabor suave e levemente adocicado. Quando jovem, tem textura mais macia e elástica; quando maturado, fica mais firme e complexo. É usado em tábuas, sanduíches e preparações quentes.',
'Média',
2),

('Edam',
'https://commons.wikimedia.org/wiki/Special:FilePath/Edam_cheese_with_knife.jpg',
'O edam é um queijo holandês de massa semidura, conhecido pelo formato arredondado e pela casca vermelha em algumas versões. Tem sabor suave, levemente amanteigado e textura firme. É muito utilizado em tábuas de queijos e sanduíches.',
'Média',
2),

('Cheddar',
'https://commons.wikimedia.org/wiki/Special:FilePath/Danish_cheddar_cheese.jpg',
'O cheddar é um queijo inglês de massa firme, sabor que varia de suave a intenso conforme a maturação. A versão tradicional é diferente do queijo processado sabor cheddar. É muito usado em sanduíches, hambúrgueres, molhos e tábuas.',
'Média',
2),

('Emmental',
'https://commons.wikimedia.org/wiki/Special:FilePath/A_slice_of_Emmental_Cheese.jpg',
'O emmental é um queijo suíço de massa firme, famoso pelos buracos chamados de olhaduras. Tem sabor suave, levemente adocicado e com notas de nozes. É usado em fondues, gratinados, sanduíches e tábuas de queijos.',
'Média',
2),

('Provolone',
'https://commons.wikimedia.org/wiki/Special:FilePath/3-Provolone.jpg',
'O provolone é um queijo de massa filada, geralmente maturado e muitas vezes defumado. Tem textura firme e sabor mais marcante do que a mussarela. É usado em tábuas, sanduíches, aperitivos e preparações gratinadas.',
'Média',
2),

('Queijo Coalho',
'https://comidinhasdochef.com/wp-content/uploads/2020/02/Queijo-Coalho-na-Frigideira.jpg',
'O queijo coalho é um queijo típico do Nordeste brasileiro, conhecido por manter a estrutura quando aquecido. Tem textura firme, elástica e sabor salgado. É muito consumido assado, grelhado ou em espetinhos.',
'Média',
3),

('Parmesão',
'https://commons.wikimedia.org/wiki/Special:FilePath/Parmigiano_Reggiano_cheese.jpg',
'O parmesão é um queijo duro, maturado e de sabor intenso. Tem textura granulosa, quebradiça e baixa umidade. É muito usado ralado sobre massas, risotos, sopas e pratos gratinados.',
'Baixa',
2),

('Gruyère',
'https://commons.wikimedia.org/wiki/Special:FilePath/Gruyere_cheese_in_Basel.jpg',
'O gruyère é um queijo suíço maturado, de massa firme e sabor complexo. Apresenta notas de nozes, leve doçura e boa capacidade de derretimento. É tradicional em fondues, gratinados e pratos quentes.',
'Baixa',
2),

('Pecorino Romano',
'https://upload.wikimedia.org/wikipedia/commons/e/ee/Pecorino_romano_cheese.jpg',
'O pecorino romano é um queijo italiano duro, produzido com leite de ovelha. Tem sabor intenso, salgado e marcante, sendo muito usado ralado em massas. Sua longa maturação contribui para textura firme e baixa umidade.',
'Baixa',
2);




/*
`SELECT 
	q.id,
    q.nome,
    q.foto,
    q.descricao,
    q.umidade,
    t.nome,
    t.gordura
FROM favorito f
JOIN queijo q ON q.id = f.fkQueijo
JOIN tipo t ON q.fkTipo = t.id
WHERE f.fkUsuario = ?
order by q.id;`
*/

SELECT
	q.id,
    q.nome,
    q.foto,
    q.descricao Descrição,
    q.umidade,
    t.nome Tipo
FROM queijo q
JOIN tipo t on q.fkTipo = t.id
order by q.id;
