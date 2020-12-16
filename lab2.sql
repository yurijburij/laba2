CREATE TABLE [dbo].[��������] (
[��� ��������] INTEGER NOT NULL,

[����� ��������] VARCHAR(30) NOT NULL,
[̳���] VARCHAR(20) NOT NULL,
[������] VARCHAR(20) NOT NULL,
[�������] INTEGER  NOT NULL,
[���������� ����� ��������] VARCHAR(30) NOT NULL,
[���� ��������] VARCHAR(30) NOT NULL,
[��'� ��������� ��������� ��������] VARCHAR(30) NOT NULL,
[������� ��������� ��������� ��������] VARCHAR(30) NOT NULL,
PRIMARY KEY ([��� ��������])
);

CREATE TABLE [dbo].[�������] (
[��� �������] INTEGER NOT NULL,
[����� �������] VARCHAR(30) NOT NULL,
[ֳ�� �������] FLOAT NOT NULL,
[��� �������] VARCHAR(30) NOT NULL,
[��������� �������(��.)] INTEGER NOT NULL,
[���� �������] VARCHAR(255) NOT NULL,
PRIMARY KEY ([��� �������])
);

CREATE TABLE [dbo].[����������](
[��� ����������] INTEGER NOT NULL,
[����� ����������] VARCHAR(50) NOT NULL,
[��� ����������] VARCHAR(50) NOT NULL,
[ֳ�� ����������] FLOAT NOT NULL,
[������ ����������] VARCHAR(30) NOT NULL,
[����� ������ ����������] DATE,
[���� ������������ ����������] DATE,
PRIMARY KEY ([��� ����������])
);

CREATE TABLE [dbo].[��������](
[��� ����������] INTEGER NOT NULL,
[��*� ����������] VARCHAR(30) NOT NULL,
[������� ����������] VARCHAR(30) NOT NULL,
[�� ������� ����������] VARCHAR(30) NOT NULL,
[���� ����������] DATE,
[������� ����������] INTEGER NOT NULL,
[�����] VARCHAR(7) NOT NULL,
[̳���] VARCHAR(20) NOT NULL,
[������] VARCHAR(20) NOT NULL,
[�������] INTEGER  NOT NULL,
PRIMARY KEY ([��� ����������])
);
CREATE TABLE [dbo].[�������](
[��� ��������] INTEGER NOT NULL,

[��*� ��������] VARCHAR(30) NOT NULL,
[������� ��������] VARCHAR(30) NOT NULL,
[��-������� ��������] VARCHAR(30) NOT NULL,
[̳���] VARCHAR(20) NOT NULL,
[������] VARCHAR(20) NOT NULL,
[�������] INTEGER  NOT NULL,
[���������� ����� ��������] VARCHAR(30) NOT NULL,
[����� ��������] VARCHAR(7) NOT NULL,
PRIMARY KEY ([��� ��������])
);

CREATE TABLE [dbo].[����� ��������](
[��� ������] INTEGER NOT NULL,

[��� �������] INTEGER NOT NULL,
[��� ��������] INTEGER NOT NULL,

[������ ������] TIME,
[���� ������] DATE,

[��� ����������] INTEGER NOT NULL,
[��� ����������] INTEGER NOT NULL,
[��� ��������] INTEGER NOT NULL,

PRIMARY KEY ([��� ������]),

CONSTRAINT ���������
FOREIGN KEY ([��� �������]) 
REFERENCES [dbo].[�������]([��� �������]) 
ON DELETE CASCADE ON UPDATE CASCADE,

CONSTRAINT ���������
FOREIGN KEY ([��� ��������])
REFERENCES [dbo].[�������]([��� ��������])
ON DELETE CASCADE ON UPDATE CASCADE,

CONSTRAINT ����������
FOREIGN KEY ([��� ����������])
REFERENCES [dbo].[��������]([��� ����������])
ON DELETE CASCADE ON UPDATE CASCADE,

CONSTRAINT ������������
FOREIGN KEY ([��� ����������])
REFERENCES [dbo].[����������]([��� ����������])
ON DELETE CASCADE ON UPDATE CASCADE,

CONSTRAINT ����������
FOREIGN KEY ([��� ��������])
REFERENCES [dbo].[��������]([��� ��������])
ON DELETE CASCADE ON UPDATE CASCADE
);
