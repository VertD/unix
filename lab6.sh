#1. Выведите на экран листинг характеристик (в длинном и коротком форматах) процессов, инициализированных с Вашего терминала. Проанализируйте и объясните содержание каждого поля сообщения.
ps
ps auxwww

#2. Выведите на экран листинг характеристик всех процессов. Используйте при необходимости конвейер с more для постраничного просмотра листинга. Какой процесс является родительским для большинства процессов? Что означает символ ? в поле управляющий терминал процесса?
ps auxwww | more

#3. Выведите на экран листинг процессов, запущенных конкретным пользователем. Какой ключ пришлось использовать? Что говорит значение ? в поле управляющий терминал процесса?
ps -u albert

#4. Разработайте и запустите простейшую процедуру в фоновом режиме с бесконечным циклом выполнения, предусматривающую, например, перенаправление вывода каких- то сообщений в файл или в фиктивный файл, и использующую команду sleep для сокращения частоты циклов процедуры.
echo "while [ 1 ]; do echo 1 > testfile; sleep 1s; done" > testproc.sh
sh testproc.sh &

#5. Выполните п. 1. Объясните изменения в листинге характеристик процессов.
ps auxwww | grep testproc

#6. Понизьте значение приоритета процедуры. На что и как повлияет эта операция при управлении вычислительным процессом системы? Как отразятся ее результаты в описателях процессов?
renice -p <PID> 5

#7. Проанализируйте листинг процессов. Какой процесс является родительским для процедуры.
ps -o ppid= -p 55294

#8. Выйдите из системы и войдите заново. Проанализируйте листинг процессов.  Объясните изменения в системе.
#ctrl+d
ps auxwww

#9. Запустите процедуру в фоновом режиме, но предусмотрите ее защиту от прерывания при выходе из системы.
nohup sh testproc.sh &

#10. Выполните п.6. Объясните изменения PPID процедуры.
#ctrl+d
ps auxwww

#11. Завершите выполнение процесса процедуры.
ps auxwww | grep testproc
kill <PID>

#12. Запустите процедуру в интерактивном режиме с перенаправлением вывода в соответствующий файл.
sh testproc.sh

#13. Переведите задание с процедурой в фоновый режим и проанализируйте сообщение на экране. Что пришлось дополнительно сделать? Как выглядят приостановленные процессы в листинге команды ps?
#ctrl+z
bg %1


#14. Переведите задание с процедурой в интерактивный режим и проанализируйте сообщение на экране.
fg %1

#15. Завершите выполнение процедуры и проанализируйте сообщение на экране.
#ctrl+c
