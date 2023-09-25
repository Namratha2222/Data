#CREATE DIFFERENT DATA FRAMES(STUDENT DATA,ORGANIZATION DATA)
#1.CREATE/IMPORT DATA
#STUDENT DATA
id=c("21BCE7001","21BCE7134", "21BCE7212", "21BCE7307", "21BCE7401", "21BCE7576","21BCE7653", "21BCE7754", NA, "21BCE9542", "21BCE7977", "21BCE8008", "21BCE8122","21BCE8236","21BCE8341", "21BCE8557", "21BCE8627", NA, "21BCE8851","21BCE8951", "21BCE9002", "21BCE9194", "21BCE9270", "21BCE9333", "21BCE9494", NA, "21BCE9582", "21BCE9585","21BCE9664", "21BCE9671")
names=c("Bannu", "Manasa", "Eswar", "Gayathri", NA, "Phani", "Gauthami", "Rajesh", NA, "N irmala", "Syandilya", "Ramya", "Krithvi", "Prasanna", "Aditya", "Subhash", "Bhumika", "Har shitha", "Omkar", "Dhatri", "Pradeep", "Prerana", "Lakshmi", "Karthik", "Vikram", "Rupath i", "Surya", NA, "Jeevan", "Bhavya")
age=c(19,19, 19, 18, 17, 17, 19, 19, 18, 18, 18, 18, 18, 19, 19, 17, 18, 17, 17, 19, 19, 17, 19,18,17,19,19,17,17,19)
NCGPA=c(NA, 9.0,8.5,8.2,9.0,9.5,9.2,8.3,8.8,9.5,9.0,8.0, 7.9,8.2,9.2, 9.6,8.7,8.3, 8.1,9.7, 10.0,9.0,9.5,8.3,8.4, 8.5,9.7,8.8, 10.0, 10.0)
student_data=data.frame(id, names, age, NCGPA)
student_data
#ORGANIZATION DATA
id=c(74,96,69,18,07, NA, 14, 19, NA, 12, 50, 48, 32, 75, 89, 25, 15, 20, 22, 76, 84, 73, 42, 38, 29,59,84,99,11,10)
names=c("Anup", "Sudheer", "Faizan", "Anamika", "Lakshmi", "Pratheek", "Prem", "Iqba1", "Kiran", "Anirban", "Rithambara", "Sharma", "Asha", "Anindita", "Ramya","Dheeraj", "Eswaraiah", "Arjith", "Rafael", "Sudhakar", "Peeyush", "Ranjan", "Francis", "Susmitha", "Neelesh", "Ravi", "Manoj", "Basheer", "Chandu", "Harish")
salary=c(6000, 12000, NA, 2000, 1800, 3900, 4500, 15000, 7800, 3000, 3600, 1400, 6000, 4100, NA, 8000, 9400, 5300, 6700, 2300, 7100, 4400, 9900, 10000, 5000, 1350, 12000, 15000, 6200, NA)
organization_data=data.frame(id,names,salary)
organization_data
#2.PERFORM ORDERING OF DATA
student_data[order(student_data$NCGPA),]
organization_data[order(organization_data$id),]
#3.FINDING AND REMOVING DUPLICATE DATA
duplicated(student_data)
duplicated(organization_data)
duplicated(student_data$age)
duplicated(organization_data$salary)
duplicated(student_data$NCGPA)
unique(student_data$age)
unique(organization_data$salary)
unique(student_data$NCGPA)
#4.HANDLE THE MISSING VALUES AND PERFORM SUMMARIZE
student_data$age[is.na(student_data$age)]=19
student_data
student_data$NCGPA[is.na(student_data$NCGPA)]=8.5
student_data
student_data$id[is.na(student_data$id)]="21BCE9999"
student_data
student_data$names[is.na(student_data$names)]="Namratha"
student_data
organization_data$names[is.na(organization_data$names)]="Anindita"
organization_data
organization_data$id[is.na(organization_data$id)]=100
organization_data
organization_data$salary[is.na(organization_data$salary)]=19500
organization_data
#5.MERGING OPERATIONS
df1=merge(student_data,organization_data,by="id",all=TRUE)
df1
df2=merge(student_data,organization_data,by="id",all.x=TRUE)
df2
df3=merge(student_data,organization_data,by="id",all.y=TRUE)
df3
df4=merge(student_data,organization_data,by=NULL)
df4
df5=merge(student_data,organization_data)
df5
#6.PROJECT THE DATA VALUES USING BASIC PLOTS
#BAR GRAPH
barplot(names.arg=id,age,main="id",xlab="id",ylab="age",col="black")
#HISTOGRAM
hist(names.arg=id,salary,main="Histogram of Organization data",xlab="salary",ylab="id",col="blue",border="pink")
#BOX PLOT
boxplot(id~salary,data=organization_data,xlab="salary",ylab="id",main="NCGPA DATA")
#SCATTER PLOT
plot(x=student_data$age, y=student_data$NCGPA, xlab="age", ylab ="NCGPA",xlim=c (17,19), ylim=c(7.5,10), main="AGE VS NCGPA")
#PIE CHART
x <- c(10,15,3,10,2,15,15,10,10,10)
labels <- c("Bannu", "Namratha", "Surya", "Jeevan", "Rupathi", "Bhavya", "Manasa", "Prerana", "Rajesh", "Karthik")
pie(x, labels, main = "Student Pie Chart", col = rainbow (length(x)))
#LINE GRAPH
plot(x,type="o",col="red",xlab="id",ylab="NCGPA",main="NCGPA CHART")