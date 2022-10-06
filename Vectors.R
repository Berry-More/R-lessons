# Функции задания векторов

print( c(1, 2, 3) ) # Как [1, 2, 3] в питоне
print( 1:7 ) # от 1 до 7 с шагом 1
print( seq(1, 5, by = 0.1) ) # от 1 до 5 с шагом 0.1
print( seq(1, 5, length = 10) ) # с заданием конечной длины



# Если складывать вектора разной длины, то меньший из них 
# будет повторяться

a <- c(1, 2, 3, 4, 5)
b <- c(1:2)
print(a + b)



# Чтение элементов вектора

x <- seq(0, 1, by = 0.01)


x[c(10:5)] # положительные индексы

x[-1] # выведет все элементы кроме указанного

x[c(TRUE, FALSE)] # выведет только четные

x[x > 0.3 & x < 0.6] # выведет вектор в указанных пределах

a <- c(1, 2, 3, 4)
names(a) = c('one', 'two', 'three', 'four')
a['one'] # вместо индексов слова



# Функции all и any

all(x < 0.5) # если все элементы меньше, то TRUE

any(x < 0.5) # если хотя бы один меньше, то TRUE



# Функция which

which(x >= 0.7) # даст индексы удовлетворяющих иксов

which.max(x) # индекс максимального

which.min(x) # индекс минимального


# Атрибуты объектов

length(x)

attributes(a)

# Функции которые прошли
# ?c , ?':' , ?sec , ?rep
# ?typeof , ?is.logical , ?as.logical
# ?length , ?names , ?all , ?any
# ?which , ?which.min , ?which.max
# ?attributes

# Задание 1

x <- 1:100
z <- 1:100

z[x %% 5 == 0] <- 'buzz'
z[x %% 3 == 0] <- 'fizz'
z[x %% 5 == 0 & x %% 3 == 0] <- 'buzz fizz'


# Задание 2

letters[c(1, 23, 5, 19, 15, 13, 5)]


# Задание 3

is_monotone <- function(x) {
  
  answer = FALSE
  
  if (x[1] <= x[2] & x[length(x)] >= x[length(x)-1]) {
    x1 <- x[length(x)*-1] - x[-1]
    if (all(x1 <= 0)) answer <- TRUE
  }
  
  if (x[1] >= x[2] & x[length(x)] <= x[length(x)-1]) {
    x1 <- x[length(x)*-1] - x[-1]
    if (all(x1 >= 0)) answer <- TRUE
  }
  
  return(answer)
}

is_monotone(c(2, 2, 3, 4, 5, 6, 7))


# Задание 3


combin_count <- function(n, k, with_repretitions = FALSE) {
  
  if (with_repretitions == FALSE){
    cnk <- factorial(n)/(factorial(k)*factorial(n-k))
  } else {
    cnk <- factorial(n+k-1)/(factorial(k)*factorial(n-1))
  }
  
  return(cnk)
  
}

combin_count(5, 3, with_repretitions = FALSE)










