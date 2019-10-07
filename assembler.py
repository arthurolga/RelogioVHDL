
Commands={"ADD":{"Value":"000","Type":"Operator"},
  "MOV":{"Value":"001","Type":"Move"},
    "AND":{"Value":"010","Type":"Operator"},
    "JE":{"Value":"011","Type":"JmC"},
    "JL":{"Value":"100","Type":"Operator"},
    "EQL":{"Value":"101","Type":"Operator"},
    "JMP":{"Value":"110","Type":"Jump"},
    "STR":{"Value":"111","Type":"Operator"}
}

RegA=""
RegB=""
RegC=""
reservado=""
C=""

def to_bin(N,fill):
    N=int(N)
    return str(format(N,'0{}b'.format(fill)))

def checkNumberSize(N,size):
    N=int(N)
    global linha
    if(N>=size):
        print(N)
        print("Operacao invalida,Valor muito Grande  LINHA {}".format(linha))

        exit()

def get_Imediato(S):
    Imediato_Index=0
    endereco_Index=0
    Ni=0
    for j in range(len(S)):
            typeOff=(S[j][0])
            if(typeOff=="$"):
                Imediato_Index=j+1
                Ni=Ni+1
    if Ni>1:
        print("Operacao invalida, adicionar somente um valor imediato")
        exit()
    if Imediato_Index==3:
        print("Operacao invalida,salvar em endereco")
        exit() 
    if Imediato_Index==1:
        endereco_Index=2
    else:
        endereco_Index=1

    return Imediato_Index,endereco_Index
      
def operator(Line,cleanRead):
    imediato=""
    enderecoB=""
    temImediato=False
    if(get_Imediato(Line[1:])[0]!=0):
        temImediato=True
        imediato=Line[get_Imediato(Line[1:])[0]][1:]
        enderecoB=Line[get_Imediato(Line[1:])[1]][1:]
    Upcode=Commands[Line[0]]["Value"]
    if temImediato==False:
        checkNumberSize(Line[1][1:],16)
        checkNumberSize(Line[2][1:],16)
        checkNumberSize(Line[3][1:],16)
        RegA = to_bin(Line[1][1:],4)
        RegB = to_bin(Line[2][1:],4)
        RegC = to_bin(Line[3][1:],4)
        reservado="000"
        C=Upcode+" "+RegA+" "+RegB+" "+RegC+" "+reservado+"\n"
    else:
        checkNumberSize(enderecoB,16)
        checkNumberSize(imediato,128)
        checkNumberSize(Line[3][1:],16)
        RegA = to_bin(imediato,7)[:4]
        RegB = to_bin(enderecoB,4)
        RegC = to_bin(Line[3][1:],4)
        reservado=to_bin(imediato,7)[4:]
        C=Upcode+" "+RegA+" "+RegB+" "+RegC+" "+reservado+"\n"

    return(C)

def Move(Line,cleanRead):  
    Upcode=Commands[Line[0]]["Value"]
    imediato=Line[get_Imediato(Line[1:])[0]][1:]
    checkNumberSize(imediato,128)
    checkNumberSize(Line[2][1:],16)
    RegA = to_bin(imediato,7)[:4]
    RegB="0000"
    reservado=to_bin(imediato,7)[4:]
    RegC = to_bin(Line[2][1:],4)
    C=Upcode+" "+RegA+" "+RegB+" "+RegC+" "+reservado+"\n"

    return C


def Jump(Line,cleanRead):
    endereco=Line[1][1:]
    checkNumberSize(endereco,128)
    Upcode=Commands[Line[0]]["Value"]
    RegA=to_bin(endereco,7)[:4]
    RegB = "0000"
    RegC = "0000"
    reservado=to_bin(endereco,7)[4:]
    C=Upcode+" "+RegA+" "+RegB+" "+RegC+" "+reservado+"\n"

    return C

def JE(Line,cleanRead):
    checkNumberSize(Line[1][1:],16)
    Upcode=Commands[Line[0]]["Value"]
    RegB1 = to_bin(Line[1][1:],4)
    C=Upcode+" 0000 "+RegB1+" 0000 "+" 000 "

    print(C)

    return "penis"







linha=0
def readCode(filename,cleanRead):
    global linha
    benis=0
    g = open("MachineLanguage.txt","w+")
    f = open(filename, "r")
    for i in f:
        Line=i.split()
        linha=linha+1
        if Commands[Line[0]]["Type"] == "Operator":
            g.write(operator(Line,cleanRead))

        elif Commands[Line[0]]["Type"] == "Move":
             g.write(Move(Line,cleanRead))

        elif Commands[Line[0]]["Type"] == "Jump":
             g.write(Jump(Line,cleanRead))

        elif Commands[Line[0]]["Type"] == "JmC":
             g.write(JE(Line,cleanRead))
       
readCode("assembly.txt",False)