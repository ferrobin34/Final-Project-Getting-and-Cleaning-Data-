   ###  PROYECTO FINAL  ###

library(dplyr)

   ####EXTRACCIÓN DE DATOS###
if(!file.exists("data.zip")){

   fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
   download.file(fileUrl,destfile = "./data.zip")

  #Descomprimimos
   unzip(zipfile = "data.zip", exdir = "./Data")
}

#Creamos dirección.
direcc <- "./Data/UCI HAR Dataset"

#Leemos datos
subject_test <- read.table( file.path(direcc,"test","subject_test.txt")  )
X_test <- read.table(file.path(direcc,"test","X_test.txt"))
y_test <- read.table(file.path(direcc,"test","y_test.txt"))

subject_train <- read.table(file.path(direcc,"train","subject_train.txt"))
X_train <- read.table(file.path(direcc,"train","X_train.txt"))
y_train <- read.table(file.path(direcc,"train","y_train.txt"))

#Juntamos todo
data <- rbind(cbind(subject_test,y_test,X_test),
              cbind(subject_train,y_train,X_train))

#leemos el archivo que contiene la posición las variables de X.
features <- read.table(file.path(direcc,"features.txt"),col.names = c("posición","variables"),
                       stringsAsFactors = FALSE)

#Buscamos las posiciones donde aparezca mean() y std() 
#y la extraemos de data.
#NOTA: ponemos \\() porque si solo ponemos () nos da 
#una función y \\ lo quita y lee a () como carácter y
#no como función.

#Le sumamos 2 porque la tabla de X empieza apartir de la segunda col

data <- data[,c(1,2,grep("mean\\()|std\\()",features$variables)+2)]

##Le ponemos sus nombres a las columnas de data
names <- features[grep("mean\\()|std\\()",features$variables),]$variables
names <- gsub("-",".",names)
names <- gsub("^f","Freq",names)
names <- gsub("^t","Time",names)
names <- gsub("mean\\()","Mean",names)
names <- gsub("std\\()","Std",names)
names <- gsub("Acc","Accelerometer",names)
names <- gsub("Gyro","Gyroscope",names)
names <- gsub("BodyBody","Body",names)

View(names)


colnames(data) <- c("Subject","Activity",names)  

##Leemos los nombres de actividades en activity_labels.txt
actividades <- read.table(file.path(direcc,"activity_labels.txt"),
                          col.names = c("Num","ActivityName"))

#Ahora vamos a poner esos nombres de actividades en la columna
#Activity de data.

   #FORMA 1
     #mutate(darla, nombres = actividades$ActivityName[Activity])
   #FORMA 2

data$Activity <-actividades$ActivityName[data$Activity]

##Agrupamos por Subject  y Activity y sacamos mean() 
dataMean <- group_by(data,Subject,Activity)
dataMean <- summarize_each(dataMean , mean)

#Guardamos los datos

write.table(dataMean, file = "TydiData.txt") 
