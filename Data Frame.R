# Data Frame
# гибрид матрицы и списка


df <- data.frame(x = 1:4, y = LETTERS[1:4], 
                 z = c(T, F)); df

str(df) # описание объекта


df <- data.frame(x = 1:4, 
                 y = LETTERS[1:4], 
                 z = c(T, F), 
                 row.names = c('Al', 'Br', 'Ch', 'De'))

rownames(df)
colnames(df)

dim(df) # размерность

length(df) # получаем кол-во столбцов

# решение задачи с сайта
new_df <- order(attitude$learning, decreasing = TRUE); new_df
add_sum = c()
for (i in new_df[1:5]){
  add_sum <- c(add_sum, 
               c(attitude$complaints[i]+attitude$raises[i]+attitude$advance[i]))
}
print(new_df[1:5])
print(add_sum)

# отфильтровать по определенной строке
attitude[attitude$rating < 50, names(attitude) != "rating"]
subset(sel = -rating, sub = rating < 50, attitude)
subset(attitude, rating < 50, -rating)

sum(quakes$depth)/length(quakes$depth)
