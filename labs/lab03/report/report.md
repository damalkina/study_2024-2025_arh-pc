---
## Front matter
title: "Отчёт по лабораторной работе №3"
subtitle: "Язык разметки Markdown"
author: "Дарья Александровна Малкина"

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

Целью работы является освоение процедуры оформления отчетов с помощью легковесного
языка разметки Markdown.

# Выполнение лабораторной работы

1. Открываем терминал, переходим в каталог курса, сформированный при выполнении лабораторной работы №2 и обновляем локальный репозиторий, скачав изменения из удаленного репозитория с помощью команды git pull:

![Рис.1. Обновление локального репозитория](image/1.gitpull.png){#fig:001 width=70%}

2. Переходим в каталог с шаблоном отчета по лабораторной работе №3 и проводим компиляцию шаблона с использованием Makefile:

![Рис.2.1 Компиляция шаблонов](image/2.1.make.png){#fig:002 width=70%}

Сгенерировались файлы report.pdf и report.docx:

![Рис.2.2 Сгенерированные файлы](image/2.2.files.png){#fig:003 width=70%}

3. Удаляем файлы, полученные с использованием Makefile:

![Рис.3.1 Удаление сгенерированных файлов](image/3.1.makeclean.png){#fig:004 width=70%}

Файлы report.pdf и report.docx были удалены:

![Рис.3.2 Файлы удалены](image/3.2.files.png){#fig:005 width=70%}

4. Открываем файл report.md c помощью текстового редактора gedit:

![Рис.4 Открываем файл report.md](image/4.openreport.png){#fig:006 width=70%}

5. Заполняем отчет и компилируем отчет с использованием Makefile:



6. Загружаем файлы на Github

# Задание для самостоятельной работы

1. Переходим в каталог lab02, открываем файл report.md c помощью текстового редактора gedit:



2. Заполняем отчет и компилируем отчет с использованием Makefile:



3. Загружаем файлы на Github

# Выводы

В результате работы была получена практическая база знаний по использованию Markdown для оформления отчетов. Были освоены навыки создания отчетов в форматах pdf, docx и md. Изучено использование Makefile для компиляции отчетов, полученные навыки будут применены в дальнейших работах.


