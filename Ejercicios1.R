#Ejercicio1
ejercicio1 <- function(variables) {
 n<-readline(prompt = "Insertar nota:")
 if(n>=3){
   print("Aprobado")
 }else{
   print("suspenso")
 }
}
ejercicio1()

#Ejercicio2
ejercicio2 <- function(variables) {
 x<-readline(prompt = "Insertar nota:")
 if(x>=0&x<5){
   print("suspenso")
 }else if(x>=5&x<7){
   print("Aprobado")
 }else if(x>=7&x<9){
   print("Notable")
 }else if(x>=9&x<=10){
   print("Sobresaliente")
 }else {
   print("Error")
 }
}
ejercicio2()

#Ejercicio3
ejercicio3 <- function() {
  max<-readline(prompt = "?Cu?ntas notas va a introducir?")
  y<-scan(,,max)
  for (i in 1:length(y)) {
    if(y[i]>=0 & y[i]<5){
      print("Suspenso")
    }else {
      print("Aprobado")
    }
  }
}
ejercicio3()
#otra opci?n
notas <- function() {
  max<-readline(prompt = "?Cu?ntas notas va a introducir?")
  print("Introduce las notas:")
  i<-1
  while (i<=max) {
    a<-scan(,,1)
    i<-i+1
    if(a<5){
      print("suspenso")
    }else{
      print("aprobado")
    }
  }
}
notas()

#Ejercicio4
notas<-c(4,7,2,9,3,5,7,9.5,3,8)
suspensos<-0
aprobados<-0
notables<-0
sobresalientes<-0

for (u in 1:length(notas)) {
  if(notas[u]>=0 & notas[u]<5){
    suspensos<-suspensos+1
  }else if(notas[u]>=5 & notas[u]<7){
    aprobados<-aprobados+1
  }else if(notas[u]>=7 & notas[u]<9){
    notables<-notables+1
  }else if(notas[u]>=9 & notas[u]<=10){
    sobresalientes<-sobresalientes+1
  }
}
print(paste("Suspensos:", suspensos, "Aprobados:", aprobados, "Notables:", notables, "Sobresalientes:", sobresalientes))

#Ejercicio5

ejercicio5 <- function(variables) {
 Suspensos_E<-0
 Aprobados_E<-0
 Erasmus<-0
 Aprob<-0
 Susp<-0
 vector<-c(4,"si",8,"no",6,"si",8,"si",3,"no")
 for (i in c(2,4,6,8,10)) {
    j<-i-1
    if(vector[i]=="si"){
      Erasmus<-Erasmus+1
    }
    if((vector[i]=="si")&(vector[j]<5)){
     Suspensos_E<-Suspensos_E+1
    }else if((vector[i]=="si")&(vector[j]>=5))   {
      Aprobados_E<-Aprobados_E+1
    }
  }
  for (i in c(1,3,5,7,9)) {
    if(vector[i]<5){
      Susp<-Susp+1
    }else{
      Aprob<-Aprob+1
    }
  }
  print(paste("Aprobados:", Aprob,", Suspensos:",Susp, ", Erasmus:", Erasmus, ", E.suspensos:", Suspensos_E, ", E.aprobados:", Aprobados_E))
}
ejercicio5()
#otra opci?n del 5#

ejercicio5bis <- function(variables) {
 erasmus<-c()
 notas<-c()
 vector<-c(4,"si",8,"no",6,"si",8,"si",3,"no")
 for (i in 1:length(vector)) {
    if((i%%2)==0){
      erasmus<-c(erasmus,vector[i])
    }else{
      notas<-c(notas,vector[i])
    }
  }
  notas<-as.integer(notas)
  for (i in 1:length(notas)) {
    if(notas[i]<5){
      
    }
  }
}
ejercicio5bis()

#ejercicio6
ejercicio6 <- function(variables) {
  A<-c(2,4,5,7)
  Res<-c()
  for (i in 1:length(A)) {
    if(i==1){
      Res[i]<-A[i]
    }else{
      Res<-c(Res,A[i]+A[i-1])
    }
  }
  return(Res)
}
ejercicio6()

#ejercicio7
ejercicio7 <- function(variables) {
  A<-c(2,4,5,7)
  Res<-c()
  for (i in 1:length(A)) {
    if(i==length(A)){
      Res[i]<-A[i]
    }else{
      Res<-c(Res, A[i]+A[i+1])
    }
  }
  return(Res)
}
ejercicio7()

#ejercicio8
ejercicio8 <- function(variables) {
  A<-c(2,4,5,7)
  pares<-c()
  impares<-c()
  for (i in 1:length(A)) {
    if((A[i]%%2)==0){
      pares<-c(pares,A[i])
    }else{
      impares<-c(impares,A[i])
    }
  }
  print(pares)
  print(impares)
}
ejercicio8()
