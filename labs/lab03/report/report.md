---
## Front matter
title: "Отчёт по лабораторной работе №3"
subtitle: "Язык разметки Markdown"
author: "Новикова Анастасия Андреевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью данной работы является освоение процедуры оформления отчётов с помощью легковесного языка разметки Markdown. 

# Задание

Сформировать отчёт по лабораторноё работе №2 с помощью языка разметки Markdown.

# Выполнение лабораторной работы

Открываю терминал. Перехожу в каталог курса, сфрмированный при выполнении лабораторной работы №2. (рис. [-@fig:001]).

![Переход в каталог курса](image/im1.jpg){#fig:001 width=70%}

Обновляю локальный репозиторий. (рис. [-@fig:002]).

![Обновление репозитория](image/im2.jpg){#fig:002 width=70%}

Перехожу в каталог с шаблоном отчета по лабораторной работе №3. Компелирую шаблон с помощью команды make. Проверяю правильность компиляции. (рис. [-@fig:003]).

![Компиляция шаблона и проверка создания файлов](image/im3.jpg){#fig:003 width=70%}

Затем с помощью команды make clean удаляю файлы. (рис. [-@fig:004]).

![Удаление файлов](image/im4.jpg){#fig:004 width=70%}

Затем проверяю, удалились файлы. (рис. [-@fig:005]).

![Проверка удаления](image/im5.jpg){#fig:005 width=70%}

Открваем файл report.md. (рис. [-@fig:006]).

![Открытие файла md с помощью команды report](image/im6.jpg){#fig:006 width=70%}

Ознакамливаюсь с файлом. (рис. [-@fig:007]).

![Ознакомление с файлом](image/im7.jpg){#fig:007 width=70%}

## Задание для самостоятельной работы 

### Оформление лабораторной работы № 2 с помощью языка разметки Markdown.

Открываю файл report.md в соответсвующей папке лабораторной работы №2. Начинаю изменять файл. (рис. [-@fig:008]).

![Изменение файла отчета для лабораторной работы №2](image/im8.jpg){#fig:008 width=70%}

После изменения файла сохраняю его. Применяю команду make для создания файлов pdf и docx. Загружаю файлы на github. (рис. [-@fig:009]), (рис. [-@fig:010]). Проверяю, отправились ли файлы в репозиторий на github. (рис. [-@fig:011])

![Комплериую файлы pdf и docx](image/im9.jpg){#fig:009 width=70%}

![Отправляю файлы на github](image/im10.jpg){#fig:010 width=70%}

![Проверка отправки файлов](image/im11.jpg){#fig:011 width=70%}



# Выводы

В ходе лабораторной работы была освоена процедура оформления отчета с помощью легковесного языка разметки Markdown.


::: {#refs}
:::
