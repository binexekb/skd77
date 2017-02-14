
Процедура СменитьКодировкуФайла(пИмяФайла)
	ТекстовыйДокумент = Новый ТекстовыйДокумент();
	ТекстовыйДокумент.Прочитать(пИмяФайла, "Windows-1251");
	ТекстовыйДокумент.Записать(пИмяФайла, "UTF-8");
КонецПроцедуры

Ответ = "";

ИсходникиОбработки = "src\reytingprodaj";

ЗапуститьПриложение("gcomp -d -F reytingprodaj.ert -DD " + ИсходникиОбработки,,Истина,Ответ);

// Если разборка успешна, то сменим кодировку у файлов.
Если Ответ = 0 Тогда
	СменитьКодировкуФайла(ИсходникиОбработки + "\МодульФормы.1s");
	СменитьКодировкуФайла(ИсходникиОбработки + "\Форма.frm");
	СменитьКодировкуФайла(ИсходникиОбработки + "\Структура.mdp");
	СменитьКодировкуФайла(ИсходникиОбработки + "\ОбъектыМетаданных.txt");
Иначе
	Сообщить("Ошибка декодирования!");
КонецЕсли;

