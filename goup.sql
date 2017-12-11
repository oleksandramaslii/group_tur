CREATE DATABASE Group_DMDR
ON (NAME=DMDR_dat,
FILENAME='D:\Моє\ЛНУ\4 курс\7 семестр\база даних.mdf')
LOG ON (NAME=Group_DMDR_Log,
FILENAME='D:\Моє\ЛНУ\4 курс\7 семестр\база даних.ldf')

create table klient
(id int primary key not null,
surname nvarchar(20) not null,
name nvarchar(20) not null,
seria_pasport nvarchar(2) not null,
nomer_pasport int not null,
misto nvarchar(20) not null,
vulytsa nvarchar(20) not null,
nomer_budynku int not null,
phone int not null unique,
day_hb int not null,
month_hb int not null,
year_hb int not null)

alter table klient
drop column year_hb

insert into klient
values('2347074863', 'Хвалько', 'Віта', 'МЮ', '947287', 'Вараш', 'Перемоги', '9', '380685378518', '8', '10')
insert into klient
values('6875412398', 'Пригара', 'Віталік', 'НК', '985631', 'Стоянів', 'Бандери','19', '380688692157', '1', '4')
insert into klient
values('2157936578', 'Бойко', 'Роман', 'ЮГ', '721287', 'Львів','Грузинська', '45', '380931258796', '27', '11')
insert into klient
values('9874563215', 'Музика', 'Євген', 'ДК', '458632', 'Красне', 'Возенсіння', '97', '380936587423', '2', '12')
insert into klient
values ('6985472369', 'Грицик', 'Юлія', 'ВК', '158746', 'Львів', 'Широка', '81', '380986502368', '9', '7')
insert into klient
values('5874230698', 'Гайдун', 'Аліна', 'БЛ', '956320', 'Дніпро', 'Будівельників', '85', '380976203587', '13', '6')
insert into klient
values('5259630583', 'Бак', 'Роман', 'ГЮ', '968520', 'Радехів', 'Ювілейна', '7', '380639520147', '1', '5')
insert into klient
values('8754236901', 'Харечко', 'Андрій', 'ВД', '758632', 'Одеса', 'Фруктова', '13', '380673625478', '10','10')
insert into klient
values('5412398758', 'Каразія', 'Роман', 'ЛА', '542369', 'Вараш', 'Будівельників', '24', '380978526345', '7', '3')
insert into klient
values ('8752369883', 'Медведів', 'Мєдя', 'МЮ', '258741', 'Вараш', 'Перемоги', '52', '380685325750', '8', '10')
insert into klient
values ('2347074865', 'Кушнір', 'Валера', 'НВ', '852146', 'Одеса', 'Приморська', '79', '380660869852','5', '8')
insert into klient
values ('2347074863', 'Михайлишина', 'Олена', 'КП', '854123', 'Червоноград', 'Першотравнева', '12', '380993652148', '11', '12')
insert into klient
values ('9865412307', 'Ракова', 'Настя', 'ДП', '854123', 'Кілія', 'Стеценка', '9', '380672510369', '5', '4')
insert into klient
values ('5214698236', 'Арама', 'Ольга', 'РУ', '541236', 'Вараш', 'Перемоги', '9', '380685378518', '8', '10')
insert into klient
values ('1236985472', 'Поліщак', 'Ірина', 'ТП', '254785', 'Львів', 'Просторова', '35', '380685203654', '6', '2')
insert into klient
values ('5214589632', 'Когут', 'Анастасія', 'ВН', '327854', 'Радехів', 'Пасічна', '42', '380975236952', '16', '1')
insert into klient
values ('9852364582', 'Кушнір', 'Юлія', 'ДШ', '745236', 'Вараш', 'Енергетиків', '25', '380680215478', '18', '11')
insert into klient
values ('2547896325', 'Алінич', 'Марія', 'ЛЗ', '632598', 'Червоноград', 'Вузька', '49', '380676521458', '17','6')
insert into klient
values ('3698547120', 'Гутів', 'Віталік', 'ВР', '874520', 'Львів', 'Підвальна', '20', '380673685210', '5', '4')
insert into klient
values ('2541589630','Смольскій', 'Андрій', 'МЛ', '695210', 'Одеса','Стеценка', '5', '380985210365','28', '5')

Update klient
Set surname = 'Пригара'
Where name = 'Роман'

create table krayina
(id int primary key not null,
neobhidnist_viza nvarchar(3) not null,
constraint check_neobhidnist_viza check (neobhidnist_viza in ('Так', 'Ні')))

alter table krayina
add name nvarchar(30) not null

insert into krayina
values ('57', 'Так','Україна')
insert into krayina
values ('76','Так','Греція')
insert into krayina
values ('21','Ні','Грузія')
insert into krayina
values ('15','Ні','Німеччина')
insert into krayina
values ('36','Так','Нідерланди')
insert into krayina
values ( '95','Так','Італія')
insert into krayina
values ( '85','Ні','Болгарія')
insert into krayina
values ( '55', 'Так','Бельгія')
insert into krayina
values ( '39', 'Ні','Англія')
insert into krayina
values ('42','Так','США')
insert into krayina
values ('90','Так','Канада')
insert into krayina
values ('18','Так','Бразилія')
insert into krayina
values ( '51', 'Ні','Японія')
insert into krayina
values ( '87','Так','Китай')
insert into krayina
values ( '40', 'Ні','Казахстан')
insert into krayina
values ( '96','Так','Чехія')
insert into krayina
values ( '28','Так','Молдова')
insert into krayina
values ( '13', 'Ні','Туреччина')
insert into krayina
values ( '97', 'Так','Чилі')
insert into krayina
values ( '24','Так','Франція')

Update krayina
Set name='Грузія'
Where neobhidnist_viza ='Так'

Update krayina
Set neobhidnist_viza = case
When id <50 then neobhidnist_viza = 'Так'
Else neobhidnist_viza = 'Ні'

create table eat
(id int primary key not null,
vartist int not null,
kilkist_raziv int not null,
kalorii int not null)

alter table eat
drop column kalorii

insert into eat
values ('6528', '158', '4')
insert into eat
values ('2584', '170', '4')
insert into eat
values ('5426', '80', '2')
insert into eat
values ('4120', '200', '4')
insert into eat
values ('9520', '250', '6')
insert into eat
values ('4258', '130', '3')
insert into eat
values ('9135', '140', '4')
insert into eat
values ('7456', '100', '2')
insert into eat
values ('6520', '125', '2')
insert into eat
values ('6985', '143', '4')
insert into eat
values ('4305', '195', '5')
insert into eat
values ('4596', '158', '4')
insert into eat
values ('6987', '136', '3')
insert into eat
values ('6584', '148', '4')
insert into eat
values ('2485', '102', '2')
insert into eat
values ('9654', '106', '2')
insert into eat
values ('1258', '149', '3')
insert into eat
values ('6742', '176', '4')
insert into eat
values ('6524', '137', '3')
insert into eat
values ('2985', '200', '4')

Update eat
Set vartist=case
Where vartist < 100 then vartist + 20
Where vartist > 100 then vartist + 5

Update eat
Set kilkist_raziv = kilkist_raziv *1.5

create table transport
(id int primary key not null,
id_krayina int not null,
name nvarchar(20) not null,
constraint foreign_krayina foreign key (id_krayina) references krayina(id))

alter table transport
add vartist int not null

insert into transport
values ('685', '57', 'Яхта', '2500')
insert into transport
values ('806', '76', 'Автобус', '500')
insert into transport
values ('462', '21', 'Авто', '700') 
insert into transport
values ('210', '15', 'Поїзд', '350')
insert into transport
values ('752', '36', 'Авто', '500')
insert into transport
values ('558', '95', 'Яхта', '1800')
insert into transport
values ('658', '85', 'Автобус', '600')
insert into transport
values ('741', '55', 'Корабель', '1000')
insert into transport
values ('852', '39', 'Авто', '650')
insert into transport
values ('963', '42', 'Автобус', '630')
insert into transport
values ('987', '90', 'Літак', '2000')
insert into transport
values ('654', '18', 'Поїзд', '190')
insert into transport
values ('321', '51', 'Автобус', '250')
insert into transport
values ('753', '87', 'Авто', '800')
insert into transport
values ('951', '40', 'Корабель', '1700')
insert into transport
values ('751', '96', 'Поїзд', '300')
insert into transport
values ('954', '28', 'Автобус', '450')
insert into transport
values ('350', '13', 'Яхта', '3000')
insert into transport
values ('952', '97', 'Автобус', '1800')
insert into transport
values ('608', '24', 'Поїзд', '1500')

Update transport
Set name='Автобус'
Where id_krayina='57'

Update transport
Set vartist=vartist*2
Where name='Яхта'


create table tur
(id int primary key not null,
id_krayina int not null,
misto nvarchar(30) not null,
hotel nvarchar(30) not null,
constraint foreign_krayin foreign key (id_krayina) references krayina(id))

alter table tur
add kilkist_dniv int not null

insert into tur
values ('362', '76', 'Афіни', 'Галіція', '10')
insert into tur
values ('179', '21', 'Тбілісі', 'Телаві', '8')
insert into tur
values ('521', '76', 'Волос', 'Пірей', '12')
insert into tur
values ('492', '15', 'Дрезден', 'Кронберг', '6')
insert into tur
values ('658', '36', 'Амстердам', 'Таурус', '10')
insert into tur
values ('375', '95', 'Рим', 'Ла Міралонті', '8')
insert into tur
values ('908', '95', 'Венеція', 'Павилон', '10')
insert into tur
values ('460', '85', 'Золоті піски', 'Кристал','10')
insert into tur
values ('602', '55', 'Брюсель', 'Левен', '6')
insert into tur
values ('584', '39', 'Лондон', 'Ліверпуль', '16')
insert into tur
values ('111', '42', 'Нью-Йорк', 'Далаc', '15')
insert into tur
values ('210', '18', 'Ріо-де-Жанейро', 'Белен', '10')
insert into tur
values ('185', '51', 'Токіо', 'Макурадзакі', '12')
insert into tur
values ('395', '13', 'Стамбул', 'Станхашіл', '8')
insert into tur
values ('582', '13', 'Анталья', 'Ізмір', '12')
insert into tur
values ('254', '97', 'Сантьяго', 'Талька', '9')
insert into tur
values ('470', '24', 'Париж', 'Бурлатіс', '10')
insert into tur
values ('705', '24', 'Ніцца', 'Руан', '10')
insert into tur
values ('532', '96', 'Прага', 'Кальтан', '8')
insert into tur
values ('453', '13', 'Анкара', 'Санчо', '10')

Update tur
Set kilkist_dniv
Where kilkist_dniv > 12

Update tur
Set hotel = 'Кронберг'
Where misto = 'Сантьяго'


create table tur_oper
(id int primary key not null,
id_tur int not null,
name nvarchar(30) not null unique,
vulytsa nvarchar(20) not null,
nomer_budynku int not null,
constraint foreign_tur foreign key (id_tur) references tur(id))

alter table tur_oper
add phone nvarchar(12) not null

insert into tur_oper
values ('2348', '362', 'Джоін ап', 'Січових Стрільців','4', '098 748 7177')
insert into tur_oper
values ('1234', '179', 'Відвідай', 'Замарстинівська','34', '0322 553 655')
insert into tur_oper
values ('3568', '521','Море турів', 'Шведська','3', '093 723 9882')
insert into tur_oper
values ('3690', '375', 'Танго тревел', 'князя Ярослава Осмомисла','1','097 957 7007')
insert into tur_oper
values ('2564', '908', 'Диліжанс тревел', 'Івана Франка','50', '0322 425 818')
insert into tur_oper
values ('7834', '908', 'Корал','Під Дубом','4а', '0800302929')
insert into tur_oper
values ('6110', '460', 'Леотур', 'Вірменьска','8', '0322970118')
insert into tur_oper
values ('9033', '602', 'Міст-тур', 'проспект Шевченка','34', '0322970852')
insert into tur_oper
values ('9754', '111', 'Моноліт', 'Коперника','19', '0322614475')
insert into tur_oper
values ('7890', '584', 'Піраміда-тур', 'проспект Шевченка','26', '0322425565')
insert into tur_oper
values ('1834', '582', 'Трайдент', 'Коперника','18', '0322989100')
insert into tur_oper
values ('6750', '111', 'Поїхали з нами', 'Стрийська','3', '0975797477')
insert into tur_oper
values ('3491', '395', 'Всесвіт', 'Ференца Ліста','3','0322970568')
insert into tur_oper
values ('4329', '705', 'Лемберг тревел', 'Пантелеймона Куліша','30','099655091')
insert into tur_oper
values ('4990', '532', 'Галопом по світу', 'Городоцька','12', '0977463046')
insert into tur_oper
values ('7441', '453', 'Бумеранг', 'Шота Руставелі','1', '0322970657')
insert into tur_oper
values ('2008', '584', 'Везувій тревел', 'Євгена Пертушевича','3', '0322426979')
insert into tur_oper
values ('8854', '395', 'Юнта', 'Івана Франка','84', '0322444048')
insert into tur_oper
values ('2111', '602', 'Тур де Львів', 'В’ячислава Чорновола','63', '0676750171')
insert into tur_oper
values ('0956', '453', 'Адріатік тревел', 'В’ячислава Чорновола','67', '032232871')

Update tur_oper
Set vulytsa
Where vulytsa = 'проспект Шевченка'


create table putivka
(id int primary key not null,
id_klient int not null,
id_eat int not null,
id_transport int not null,
id_tur int not null,
vartist int not null,
constraint foreign_klient foreign key (id_klient) references klient(id),
constraint foreign_eat foreign key (id_eat) references eat(id),
constraint foreign_transport foreign key (id_transport) references transport(id),
constraint foreign_turu foreign key (id_tur) references tur(id))

insert into putivka
values ('2348', '2347074863',  '6528', '685', '362', '3508')
insert into putivka
values ('6985', '6875412398', '2584', '806', '179', '1620')
insert into putivka
values ('8521', '2157936578', '5426', '462', '521', '1800')
insert into putivka
values ('9158', '9874563215', '4120', '210', '492', '750')
insert into putivka
values ('2014', '6985472369', '9520', '752', '658', '1000')
insert into putivka
values ('3028', '5874230698', '4258', '558', '375', '2600')
insert into putivka
values ('8410', '5259630583', '9135', '658', '908', '1200')
insert into putivka
values ('1235', '8754236901', '7456', '741', '460', '2100')
insert into putivka
values ('6950', '5412398758', '6520', '852', '602', '940')
insert into putivka
values ('7530', '8752369883', '6985', '963', '584', '900')
insert into putivka
values ('3209', '2347074865', '4305', '987', '111', '3150')
insert into putivka
values ('4238', '2347074863', '4305', '654', '210', '430')
insert into putivka
values ('3079', '9865412307', '6987', '321', '185', '520')
insert into putivka
values ('8029', '5214698236', '6584', '753', '395', '1450')
insert into putivka
values ('4692', '1236985472', '2485', '951', '582', '2500')
insert into putivka
values ('3671', '5214589632', '9654', '751', '254', '680')
insert into putivka
values ('9080', '9852364582', '1258', '954', '470', '900')
insert into putivka
values ('6040', '2547896325', '6742', '350', '705', '4500')
insert into putivka
values ('2080', '3698547120', '6524', '952', '532', '2450')
insert into putivka
values ('6480', '2541589630', '2985', '608', '453', '2000')

Update putivka
Set vartist = vartist * 1.5



