# Пример цикла на "if else"

b <- 2

if (b == 2) {
  print('Da')
} else {
  print('Net')
}


# Прмер цикла "repeat"

i <- 0
repeat {
  i <- i + runif(1)
  print(i)
  if (i > 5) break
}


# Примеры цикла "for"
# Зачастую лучше пользоваться векторизацией

for (i in 1:8) {
  if (i %% 2 == 0) print(i)
}

for (i in letters) {
  if (i == 'b') next
  if (i == 'd') break
  print(i)
}


# Пример сравнения функции в цикле и функции векторизацией

v <- 1:1e7
system.time({
  x <- 0
  for (i in v) x[i] = sqrt(v[i])
})

system.time({
  x = sqrt(v)
})


##############################################
##############################################
##############################################


# Задание 1

set.seed(1337)
x <- runif(1e6, min = -1, max = 1)
num <- 0
for (i in x) {
  if (i > -0.2 & i < 0.3) num <- num + 1
}
print(num)


# Задание 2

kosti <- function(n) {
  n = runif(n)
  ifelse(n > 5/6, 6, 
         ifelse(n > 4/6, 5, 
                ifelse(n > 3/6, 4,
                       ifelse(n > 2/6, 3,
                              ifelse(n > 1/6, 2, 1)))))
}

kosti(1:5)
