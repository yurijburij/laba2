CREATE TABLE [dbo].[Санаторій] (
[Код санаторію] INTEGER NOT NULL,

[Назва санаторію] VARCHAR(30) NOT NULL,
[Місто] VARCHAR(20) NOT NULL,
[Вулиця] VARCHAR(20) NOT NULL,
[Будинок] INTEGER  NOT NULL,
[Електронна пошта санаторію] VARCHAR(30) NOT NULL,
[Сайт санаторію] VARCHAR(30) NOT NULL,
[Ім'я головного директора санаторію] VARCHAR(30) NOT NULL,
[Прізвище головного директора санаторію] VARCHAR(30) NOT NULL,
PRIMARY KEY ([Код санаторію])
);

CREATE TABLE [dbo].[Послуги] (
[Код послуги] INTEGER NOT NULL,
[Назва послуги] VARCHAR(30) NOT NULL,
[Ціна послуги] FLOAT NOT NULL,
[Тип послуги] VARCHAR(30) NOT NULL,
[Тривалість послуги(хв.)] INTEGER NOT NULL,
[Опис послуги] VARCHAR(255) NOT NULL,
PRIMARY KEY ([Код послуги])
);

CREATE TABLE [dbo].[Обладнання](
[Код обладнання] INTEGER NOT NULL,
[Назва обладнання] VARCHAR(50) NOT NULL,
[Вид обладнання] VARCHAR(50) NOT NULL,
[Ціна обладнання] FLOAT NOT NULL,
[Модель обладнання] VARCHAR(30) NOT NULL,
[Термін гарантії обладнання] DATE,
[Дата виготовлення обладнання] DATE,
PRIMARY KEY ([Код обладнання])
);

CREATE TABLE [dbo].[Персонал](
[Код працівника] INTEGER NOT NULL,
[Ім*я працівника] VARCHAR(30) NOT NULL,
[Прізвище працівника] VARCHAR(30) NOT NULL,
[По батькові працівника] VARCHAR(30) NOT NULL,
[Дата народження] DATE,
[Телефон працівника] INTEGER NOT NULL,
[Стать] VARCHAR(7) NOT NULL,
[Місто] VARCHAR(20) NOT NULL,
[Вулиця] VARCHAR(20) NOT NULL,
[Будинок] INTEGER  NOT NULL,
PRIMARY KEY ([Код працівника])
);
CREATE TABLE [dbo].[Пацієнт](
[Код пацієнта] INTEGER NOT NULL,

[Ім*я пацієнта] VARCHAR(30) NOT NULL,
[Прізвище пацієнта] VARCHAR(30) NOT NULL,
[По-батькові пацієнта] VARCHAR(30) NOT NULL,
[Місто] VARCHAR(20) NOT NULL,
[Вулиця] VARCHAR(20) NOT NULL,
[Будинок] INTEGER  NOT NULL,
[Електронна пошта пацієнта] VARCHAR(30) NOT NULL,
[Стать пацієнта] VARCHAR(7) NOT NULL,
PRIMARY KEY ([Код пацієнта])
);

CREATE TABLE [dbo].[Запис санаторію](
[Код запису] INTEGER NOT NULL,

[Код послуги] INTEGER NOT NULL,
[Код пацієнта] INTEGER NOT NULL,

[Година запису] TIME,
[Дата запису] DATE,

[Код працівника] INTEGER NOT NULL,
[Код обладнання] INTEGER NOT NULL,
[Код санаторію] INTEGER NOT NULL,

PRIMARY KEY ([Код запису]),

CONSTRAINT ФКПослуга
FOREIGN KEY ([Код послуги]) 
REFERENCES [dbo].[Послуги]([Код послуги]) 
ON DELETE CASCADE ON UPDATE CASCADE,

CONSTRAINT ФКПацієнт
FOREIGN KEY ([Код пацієнта])
REFERENCES [dbo].[Пацієнт]([Код пацієнта])
ON DELETE CASCADE ON UPDATE CASCADE,

CONSTRAINT ФКПерсонал
FOREIGN KEY ([Код працівника])
REFERENCES [dbo].[Персонал]([Код працівника])
ON DELETE CASCADE ON UPDATE CASCADE,

CONSTRAINT ФКОбладнання
FOREIGN KEY ([Код обладнання])
REFERENCES [dbo].[Обладнання]([Код обладнання])
ON DELETE CASCADE ON UPDATE CASCADE,

CONSTRAINT ФКСанаторій
FOREIGN KEY ([Код санаторію])
REFERENCES [dbo].[Санаторій]([Код санаторію])
ON DELETE CASCADE ON UPDATE CASCADE
);
