---
## Front matter
title: "Отчёт по лабораторной работе №2"
subtitle: "Система контроля версии Git"
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

Изучить идеологию и применение средств контроля версий. Приобрести практические навыки по работе с системой git. 

# Задание

Создать репозиторий для курса на основе готового шаблона.

# Выполнение лабораторной работы
## Базовая настройка git: 

Делаем предварительную конфигурацию git. (рис. [-@fig:001]).

![Задаём имя и email владельца репозитория](/home/aanovikova123/Изображения/im1.png){#fig:001 width=70%}

Настравиваем utf-8 в выводе сообщения git.(рис. [-@fig:002]),(рис. [-@fig:003]).

![Настраиваем utf-8 Задаём имя начальной ветки](/home/aanovikova123/Изображения/im2.png){#fig:002 width=70%}

![Задаем имя начальной ветки(master), настраиваем параметр autocrlf и параметр safecrlf.](/home/aanovikova123/Изображения/im3.png){#fig:003 width=70%}


## Создание SSH ключа.

![Создание SSH ключа.](/home/aanovikova123/Изображения/im4.png){#fig:004 width=70%}

![Копируем SSH ключ из локальной консоли в буфер обмена.](/home/aanovikova123/Изображения/im5.png){#fig:005 width=70%}

Далее заходим в свой аккаунт на GitHub. Переходим в настройки и выбираем вкладку “SSH and GPG keys”. Выбираем “New SSH key” и в открывшееся окно вставляем скопированный ключ. (рис. [-@fig:006])

![Добавляем ключ и задаём его название (Title).](/home/aanovikova123/Изображения/im6.png){#fig:006 width=70%}

В терминале создаём каталог для предмета «Архитектура компьютера». (рис. [-@fig:007])

![Создание каталога для предмета «Архитектура компьютера».](/home/aanovikova123/Изображения/im7.png){#fig:007 width=70%}

## Создание репозитория курса на основе шаблона. 

Далее переходим на страницу с шаблоном курса и выбираем “Use this template”. Задаём имя для репозитория как «study_2024-2025_arh-pc». Создаём репепозиторий. (рис. [-@fig:008])

![Создание репозитория курса на основе шаблона.](/home/aanovikova123/Изображения/im8.png){#fig:008 width=70%}

Далее открываем в терминал, переходим в каталог курса и клонируем созданный репозиторий. (рис. [-@fig:009])

![Переход в каталог курса и клонирование созданного репозитория.](/home/aanovikova123/Изображения/im9.png){#fig:009 width=70%}

## Настройка каталога курса.
 
Переходим в каталог курса и удаляем лишние файлы. (рис. [-@fig:010])
Затем создаём необходимые каталоги. (рис. [-@fig:011])
После этого отправляем файлы на сервер и проверяем правильность создания иерархии в локальном репозитории и на странице github. (рис. [-@fig:012]),(рис. [-@fig:013]),(рис. [-@fig:014])

![Переход в каталог курса и удаление лишних файлов.](/home/aanovikova123/Изображения/im10.png){#fig:010 width=70%}

![Создание необходимых каталогов.](/home/aanovikova123/Изображения/im11.png){#fig:011 width=70%}

![Выбор и комментарий файлов, которые будут отправлены.](/home/aanovikova123/Изображения/im12.png){#fig:012 width=70%}

![Отправка файлов на сервер.](/home/aanovikova123/Изображения/im13.png){#fig:013 width=70%}

![Проверка правильности иерархии.](/home/aanovikova123/Изображения/im14.png){#fig:014 width=70%}

# Задание для самостоятельной работы.

Добавляем отчет по лабораторной работе №1 в папку /study_2024-2025_arh-pc/labs/lab01/report.(рис. [-@fig:015])

![Добавление отчета в соответствующую папку.](/home/aanovikova123/Изображения/im15.png){#fig:015 width=70%}

# Выводы

В ходе лабораторной работы была изучена идеология и применение средств контроля версий, приобретены практические навыки по работе с системой git, создан репозиторий на платформе github на основе шаблона, где в последствии будут храниться все будущие отчеты по лабораторным работам.


::: {#refs}
:::
