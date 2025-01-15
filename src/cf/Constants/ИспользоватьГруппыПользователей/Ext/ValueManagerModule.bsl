﻿///////////////////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2024, ООО 1С-Софт
// Все права защищены. Эта программа и сопроводительные материалы предоставляются 
// в соответствии с условиями лицензии Attribution 4.0 International (CC BY 4.0)
// Текст лицензии доступен по ссылке:
// https://creativecommons.org/licenses/by/4.0/legalcode
///////////////////////////////////////////////////////////////////////////////////////////////////////

#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ОбработчикиСобытий

Процедура ПередЗаписью(Отказ)
	
	Если ОбменДанными.Загрузка Тогда
		Возврат;
	КонецЕсли;
	
	СтароеЗначение = Константы.ИспользоватьГруппыПользователей.Получить();
	
	Если Значение = СтароеЗначение Тогда
		Возврат;
	КонецЕсли;
	
	Если ОбщегоНазначения.ЭтоАвтономноеРабочееМесто() Тогда
		ТекстОшибки =
			НСтр("ru = 'Изменение использования групп пользователей следует выполнить в приложении в сервисе.'");
		ВызватьИсключение ТекстОшибки;
		
	ИначеЕсли ОбщегоНазначения.ЭтоПодчиненныйУзелРИБ() Тогда
		ТекстОшибки =
			НСтр("ru = 'Изменение использования групп пользователей следует выполнить в главной узле информационной базы.'");
		ВызватьИсключение ТекстОшибки;
	КонецЕсли;
	
КонецПроцедуры

Процедура ПриЗаписи(Отказ)
	
	Если ОбменДанными.Загрузка Тогда
		Возврат;
	КонецЕсли;
	
	Константы.ИспользоватьГруппыВнешнихПользователей.Обновить();
	
КонецПроцедуры

#КонецОбласти

#Иначе
ВызватьИсключение НСтр("ru = 'Недопустимый вызов объекта на клиенте.'");
#КонецЕсли