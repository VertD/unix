#1. Войдите в систему, используя имя пользователя и пароль, выданные вам преподавателем.
#2. Определите имя машины. Найдите две разные команды, которыми можно это сделать.
hostname
uname -n

#3. Определите архитектуру процессора машины, используемой вами.
arch
uname -m

#4. Выведите на экран время и дату в формате «31/12/2099 23:59».
date "+%d/%m/%y %H:%M"

#5. Выведите на экран полный список алиасов пользователя. Создайте алиас для команды newdate, чтобы она выводила дату в формате «31/12/2099 23:59».
alias
alias newdate='date "+%d/%m/%y %H:%M"'
newdate

#6. Выведите на экран переменные среды. Объясните, что означают переменные SHELL, USER, PATH, HOME, LANG, MAIL, PS1.
# SHELL - твой shell
# USER - твой юзер
# PATH - текущая директория
# HOME - твой хомяк (домашняя дира) # LANG - текущая локаль
# MAIL - директория с письмами
# PS1 - пригласительное сообщение для ввода команды

#7. Измените переменную PS1, что изменилось?
PS1="myshell: "

#8. Запустите приложение bash, изменив переменную домашнего каталога пользователя.
HOME=/ bash
#Проверьте, что изменения вступили в силу. Как это можно сделать?
echo $HOME
# по ctrl+D выйдите из bash

#9. Определите местоположение в системе файла вызываемого командой bash, используя команду which.
which bash

