﻿#language: ru

@tree

Функционал: <описание фичи>

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка расчета суммы от по полю количество
И Заполнение шапки документа

Сценарий: Проверка табличной части документа
Когда открылось окно "Заказ (создание) *"
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыТовар' я выбираю точное значение "Колбаса"
И я перехожу к следующему реквизиту
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "10"
И я перехожу к следующему реквизиту
Тогда таблица 'Товары' стала равной:
	| 'Товар'   | 'Цена'   | 'Количество' | 'Сумма'    |
	| 'Колбаса' | '250,00' | '10'         | '2 500,00' |

Когда открылось окно "Заказ (создание) *"
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "25"
И в таблице 'Товары' я завершаю редактирование строки
Тогда таблица 'Товары' стала равной:
	| 'Товар'   | 'Цена'   | 'Количество' | 'Сумма'    |
	| 'Колбаса' | '250,00' | '25'         | '6 250,00' |







