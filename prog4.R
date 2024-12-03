

library(dplyr)
setwd("C:/Users/conta/OneDrive/Desktop")
dataset1<-read.csv("sales.csv")
dataset2<-read.csv("salary.csv")


print(getwd())

merged_data=merge(dataset1,dataset2,by="ID")
print(merged_data)


aggregated_data=merged_data%>%
  group_by(Gender)%>%
  summarise(
    total_salary=sum(Salary),
    average_age=mean(Age),
    count=n()
  )
print(aggregated_data)


filtered_data=merged_data%>%
  filter(Age>25)
print(filtered_data)


transformed_data=merged_data%>%
  mutate(
    double_salary=Salary*2,
    seniority=ifelse(Age>28,"Senior","Junior")
  )
print(transformed_data)

