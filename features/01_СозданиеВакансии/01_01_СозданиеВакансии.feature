﻿#language: ru

@tree

Функционал: Создание вакансии (спр.Вакансии)

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание вакансии
	* Создание элемента справочника
		И В командном интерфейсе я выбираю "Подбор персонала" "Вакансии"
		Тогда открылось окно "Вакансии"
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно "Вакансия (создание)"
		И в поле с именем 'Наименование' я ввожу текст "Грузчик"
		И из выпадающего списка с именем 'ОрганизацияВладелец' я выбираю по строке "АО \"Торговый дом\""
		И из выпадающего списка с именем 'Должность' я выбираю по строке "Грузчик"
		И в поле с именем 'Обязанности' я ввожу текст "Погрузка-разгрузка товаров"
		И в поле с именем 'Требования' я ввожу текст "Возраст от 18 лет"
		И в поле с именем 'Условия' я ввожу текст "График 2/2 с 10:00 до 21:00"
	
	* Контроль ошибки сумма зарплаты не заполнена
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
		Тогда в логе сообщений TestClient есть строки:
			|'Поле "Сумма зарплаты" не заполнено'|
		
	* Запись элемента справочника
		И в поле с именем 'СуммаЗарплаты' я ввожу текст "45 000,00"
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
				


	

		

										