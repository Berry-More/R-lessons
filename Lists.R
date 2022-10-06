############## Списки ###########################

# В векторе данные одинаковые, в списках можно разные
list(1:5, 'my_data', matrix(0, 2, 2))

# можно именовать определенные элементы списка
list(a = 1:5, jopa = 5)

# списки можно склеивать
l1 = list(matrix(1, 3, 3), 1:2, 34)
l2 = list(6:4, 78, matrix(2, 4, 4))
c(l1, l2)

# можно из списка сделать список
v1 = 1:7
l = list(v1); l

# доступ к элементам списка
l = list(1, 2, 3, 4, 5, 6)
l[3:2] # возвращается список
l[[3]] # возвращается число

# возвращается тоже элемент
l = list(first = 43, last = 20)
l$last # можно вызывать вот так
l$l # можно не писать полное имя


# удалить можно присваиванием NULL
l = list(1:6, 54, 43)
l[[3]] <- NULL

is.null(l$num) # проверка отсутствует ли имя


# функции
# ?matirx, ?dim, ?rownames, ?colnames
# ?rbind, ?cbind, ?apply, ?rowSums, ?rowMeans
# ?colSums, ?colMeans
# ?list, ?unlist, ?lapply, ?sapply

x <- c(1, 2, 2, 3, 4, 5)
x2 <- c(5, 4, 3, 2, 2, 1)
x[x <= 1]



################# Задание 2 ###########################

count_elements <- function(x) {
  
  un = sort(unique(x))
  m <- matrix(0, nrow = 2, ncol = length(un))
  
  for (i in 1:length(un)){
    n <- 0
    for (j in x){
      if (j == un[i]){
        n <- n + 1
      }
    }
    m[1:2, i] <- c(un[i], n)
  }
  m
}
count_elements(x2)


set.seed(1789)
bastille <- list(
  "La Chapelle Tower" = rbinom(5, 10, 1/2), 
  "Tresor Tower" = rbinom(8, 12, 1/4), 
  "Comte Tower" = rbinom(14, 3, 1/5) + 1,
  "Baziniere Tower" = rbinom(8, 4, 4/5), 
  "Bertaudiere Tower" = rbinom(4, 8, 2/3),
  "Liberte Tower" = rbinom(1, 100, 0.1), 
  "Puits Tower" = rbinom(5, 5, 0.7),
  "Coin Tower" = rbinom(3, 16, 0.4)
)
bastille

s <- 0
for (i in lapply(bastille, sum)){
  s = s + i
}
s
