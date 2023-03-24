import sqlite3
import sys

help_message = """
Виберіть який запит ви хочете виконати?
0 -- Вихід
1 -- Знайти 5 студентів з найбільшим середнім балом по всім предметам
2 -- Знайти студента з найбільшим середнім балом з дисципліни. (Перша дисципліна)
3 -- Знайти середній балл в групі по дисципліні. (Друга дисципліна)
4 -- Знайти середній бал на потоці (по всій таблиці grades)
5 -- Які курси веде викладач. (Перший id=1)
6 -- Список студентів в групі. (Перша група)
7 -- Оцінки студентів в окремій групі за конкретною дисципліною.
8 -- Знайти середній балл, який ставить викладач по своїм дисциплінам. (Перший викладач)
9 -- Знайти список курсів, які відвідує студент.
10 -- Знайти список курсів, які конкретному студенту веде конкретний викладач.
11 -- Середній балл, який конкретний викладач ставит конкретному студенту.
12 -- Оцінки студентів в групі по дисципліні на останньому занятті.
"""

def query_sql(file):
    with open(file) as f:
        sql = f.read()

    with sqlite3.connect('university.db') as conn:
        cursor = conn.cursor()
        cursor.execute(sql)
        return cursor.fetchall()


def main():
    print(help_message)
    while True:
        task = int(input("Виберіть номер запиту: "))
        if task == 0:
            sys.exit()
        result = query_sql(f'query_{task}.sql')
        print(result)


if __name__ == '__main__':
    try:
        exit(main())
    except KeyboardInterrupt:
        exit()