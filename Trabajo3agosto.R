
listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))

#EJERCICIO 1
x=0
c=0
b=0
ContarMP<-function(Y){
  for(k in Y){
    if(k[1]=="mp"){
    niños<-(length(k)-1)
    if (niños==1){
      x=x+1
    }
    if(niños==2){
      c=c+1
    }
    if(niños==3){
      b=b+1
    }
    }
  }
  sc<-c("se cuentan")
  mpd1<-c("mp de 1 niño")
  mpd2<-c("mp de 2 niños")
  mpd3<-c("mp de 3 niños")
  v1<-c(sc,x,mpd1)
  v2<-c(sc,c,mpd2)
  v3<-c(sc,b,mpd3)
  v1
  v2
  v3
  print(v1)
  print(v2)
  print(v3)
}

ContarMP(listaDocumentos)



#EJERCICIO 2

Cod_of<-function(X){
  a1=c("av01")
  a2=c("av02")
  a3=c("av03")
  a4=c("av04")
  a5=c("av05")
  a7=c("av07")
  a8=c("av08")
  for(i in X){
    if(i[2]=="av01"){
      v1<-c(a1,i[3])
      print(v1)
    }
  }
  print(c(a1,"ampr","ante","meca"))
  for(i in X){
    if(i[2]=="av02"){
       v1<-c(a2,i[3])
       print(v1)
      }
  }
  print(c(a2,"ante","dape","arme"))
  for(i in X){
    if(i[2]=="av03"){
      v1<-c(a3,i[3])
      print(v1)
    }
  }
  for(i in X){
    if(i[2]=="av04"){
      v1<-c(a4,i[3])
      print(v1)
    }
  }
  for(i in X){
    if(i[2]=="av05"){
      v1<-c(a5,i[3])
      print(v1)
    }
  }
  for(i in X){
    if(i[2]=="av07"){
      v1<-c(a7,i[3])
      print(v1)
    }
  }
  for(i in X){
    if(i[2]=="av08"){
      v1<-c(a8,i[3])
      print(v1)
    }
  }
  }

Cod_of(listaDocumentos)

#EJERCICIO 3

#El criterio para seleccionar si un oficio fue aprobado o no, es según la naturaleza
#del oficio: se descartan como aprobados los oficios "ante" y "dape" ya que solo son datos
#asociados a un oficio y no son implicantes de aprobacion. Se descarto "meca" debido a que existe
#el oficio "arme" ya que si hay una audiencia para revisar una medida, significa que la medida aun
#no ha sido aprobada. Por lo anterior, si una medida esta en revision implica que aun no se aprueba
#por lo tanto, el único tipo de oficio que implica una aprobacion previa es la ampliacion de medidas,
# ya que logicamente, ampliar una medida, significa que fue aprobada previamente.

aprob=0
reprob=0
c_of=0
Juez=function(M){
  for(m in M){
    if(m[1]=="of"){
      c_of=c_of+1
      if(m[3]=="ampr"){
        aprob=aprob+1
      }
      else{
        reprob=reprob+1
      }
    }
  }
  print(c("llegaron",c_of,"oficios de los cuales",aprob,"son aprobados y",reprob,"reprobados"))
}

Juez(listaDocumentos)
