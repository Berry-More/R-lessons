# В R пакет - это совокупность функций
# А библиотека - место на диске, где харнятся пакеты

require(grid) # Подключение пакета
grid.newpage()
grid.lines()


# Установка пакета
install.packages('xts', dependencies = TRUE)

# update.pakages() - обновление пакетов

sessionInfo()


###################################################
###################################################
###################################################

# Задание 1

path <- 'D:/Program Files/R-4.2.0/library'
install.packages('randtoolbox', lib = path)
require('randtoolbox')


# Задание 2

help(package= 'xts')
sessionInfo()
