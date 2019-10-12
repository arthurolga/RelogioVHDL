
Commands={"ADD":{"Value":"000","Type":"Operator"},
  "MOV":{"Value":"001","Type":"Move"},
    "CMP":{"Value":"010","Type":"CMP"},
    "JE":{"Value":"011","Type":"JE"},
    "JL":{"Value":"100","Type":"JL"},
    "LOAD":{"Value":"101","Type":"LOAD"},
    "JMP":{"Value":"110","Type":"Jump"},
    "STR":{"Value":"111","Type":"Store"}
}

labels={}

linha=-1

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
    global linha
    Imediato_Index=0
    endereco_Index=0
    Ni=0
    for j in range(len(S)):
            typeOff=(S[j][0])
            if(typeOff=="$"):
                Imediato_Index=j+1
                Ni=Ni+1
    if Ni>1:
        print("Operacao invalida, adicionar somente 1 valor imediato LINHA {}".format(linha))
        exit()
    if Imediato_Index==3:
        print("Operacao invalida,salvar em endereco& LINHA {}".format(linha))
        exit() 
    if Imediato_Index==1:
        endereco_Index=2
    else:
        endereco_Index=1

    return Imediato_Index,endereco_Index
      
def operator(Line,cleanRead):
    global linha
    imediato=""
    enderecoB=""
    temImediato=False
    if(get_Imediato(Line[1:])[0]!=0):
        temImediato=True
        imediato=Line[get_Imediato(Line[1:])[0]][1:]
        enderecoB=Line[get_Imediato(Line[1:])[1]][1:]
    Upcode=Commands[Line[0]]["Value"]
    if temImediato==False:
        print("Operacao invalida,Somente usar 1 endereco LINHA {}".format(linha))
        exit()

    else:
        checkNumberSize(enderecoB,16)
        checkNumberSize(imediato,128)
        checkNumberSize(Line[3][1:],16)
        RegA = to_bin(imediato,7)[:4]
        RegB = to_bin(enderecoB,4)
        RegC = to_bin(Line[3][1:],4)
        reservado=to_bin(imediato,7)[4:]
        C=Upcode+""+RegA+""+RegB+""+RegC+""+reservado+";"+"\n"

    return str(linha)+" : "+C

def Move(Line,cleanRead):  
    Upcode=Commands[Line[0]]["Value"]
    imediato=Line[get_Imediato(Line[1:])[0]][1:]
    checkNumberSize(imediato,128)
    checkNumberSize(Line[2][1:],16)
    RegA = to_bin(imediato,7)[:4]
    RegB="0000"
    reservado=to_bin(imediato,7)[4:]
    RegC = to_bin(Line[2][1:],4)
    C=Upcode+""+RegA+""+RegB+""+RegC+""+reservado+";"+"\n"

    return str(linha)+" : "+C


def Jump(Line,cleanRead):
    imediato=Line[get_Imediato(Line[1:])[0]][1:]
    checkNumberSize(imediato,128)
    Upcode=Commands[Line[0]]["Value"]
    RegA=to_bin(imediato,7)[:4]
    RegB = "0000"
    RegC = "0000"
    reservado=to_bin(imediato,7)[4:]
    C=Upcode+""+RegA+""+RegB+""+RegC+""+reservado+";"+"\n"

    return str(linha)+" : "+C

def Store(Line,cleanRead):
    Upcode=Commands[Line[0]]["Value"]
    imediato=Line[get_Imediato(Line[1:])[0]][1:]
    enderecoB=Line[get_Imediato(Line[1:])[1]][1:]
    checkNumberSize(imediato,128)
    checkNumberSize(enderecoB,16)
    RegB=to_bin(enderecoB,4)
    RegA = to_bin(imediato,7)[:4]
    RegC="0000"
    reservado=to_bin(imediato,7)[4:]
    C=Upcode+""+RegA+""+RegB+""+RegC+""+reservado+";"+"\n"

    return str(linha)+" : "+C

def JE(Line,cleanRead):
    global linha
    # JE $3
    imediato=Line[get_Imediato(Line[1:])[0]][1:]
    
    Upcode=Commands[Line[0]]["Value"]
    
    
    bin_i = to_bin(imediato,7)
    bin_regA = bin_i[:4]
    bin_rese = bin_i[4:]
    

    C1=str(linha)+" : "+Upcode+bin_regA+"0000"+"0000"+bin_rese+";"+"\n"
    return C1

def JL(Line,cleanRead):
    global linha
    # JL $3
    imediato=Line[get_Imediato(Line[1:])[0]][1:]
    
    Upcode=Commands[Line[0]]["Value"]
    
    
    bin_i = to_bin(imediato,7)
    bin_regA = bin_i[:4]
    bin_rese = bin_i[4:]
    

    C1=str(linha)+" : "+Upcode+bin_regA+"0000"+"0000"+bin_rese+";"+"\n"
    return C1


def LOAD(Line,cleanRead):
    global linha
    # JE $3
    imediato=Line[get_Imediato(Line[1:])[0]][1:]
    endereco=Line[get_Imediato(Line[1:])[1]][1:]
    Upcode=Commands[Line[0]]["Value"]
    
    print(imediato,endereco)
    
    bin_i = to_bin(imediato,7)
    RegC = to_bin(endereco,4)
    bin_regA = bin_i[:4]
    bin_rese = bin_i[4:]
    print(bin_regA+bin_rese)

    

    C1=str(linha)+" : "+Upcode+bin_regA+"0000"+RegC+bin_rese+";"+"\n"
    return C1

def CMP(Line,cleanRead):
    global linha
    # CMP &4 $2
    imediato=Line[get_Imediato(Line[1:])[0]][1:]
    endereco = Line[get_Imediato(Line[1:])[1]][1:]
    Upcode=Commands[Line[0]]["Value"]

    bin_i = to_bin(imediato,7)
    bin_add = to_bin(endereco,4)
    bin_regA = bin_i[:4]
    bin_rese = bin_i[4:]

    C1=str(linha)+" : "+Upcode+bin_regA+bin_add+"0000"+bin_rese+";"+"\n"
    
    return C1



# def JL(Line,cleanRead):
#     global linha
#     checkNumberSize(Line[1][1:],16)
#     checkNumberSize(Line[2][1:],128)
#     checkNumberSize(Line[3][1:],128)
#     Upcode=Commands[Line[0]]["Value"]
#     RegA = to_bin(Line[2][1:],7)[:4]
#     RegB1 = to_bin(Line[1][1:],4)
#     reservado=to_bin(Line[2][1:],7)[4:]
#     RegA2 = to_bin(Line[3][1:],7)[:4]
#     reservado2=to_bin(Line[3][1:],7)[4:]
#     C1=str(linha)+" : "+Upcode+""+RegA+""+RegB1+"0000"+reservado+";"+"\n"
#     linha=linha+1
#     C2=str(linha)+" : "+"010"+RegA2+"0000"+"0000"+reservado2+";"+"\n"
#     return C1+C2

def readCode(filename,cleanRead):
    global linha
    contadorLinhas = 0
    g = open("MachineLanguageFinal.txt","w+")
    f0 = open(filename, "r")
    f1 = open(filename, "r")
    
    for j in f0: # Conta labels
        j=j.split()
        if j[0] == "JL" or j[0] == "JE":
            contadorLinhas += 2
        elif j[0] in Commands:
            contadorLinhas += 1
        
        last=j[len(j)-1]
        if last[-1:]==":":
            labels[last[:-1]]=contadorLinhas
    print(labels)
    for i in f1: # Conta operacoes
        Line=i.split()
        linha=linha+1
        if Commands[Line[0]]["Type"] == "Operator":
            g.write(operator(Line,cleanRead))

        elif Commands[Line[0]]["Type"] == "Move":
             g.write(Move(Line,cleanRead))

        elif Commands[Line[0]]["Type"] == "Jump":
             g.write(Jump(Line,cleanRead))

        elif Commands[Line[0]]["Type"] == "JE":
             g.write(JE(Line,cleanRead))

        elif Commands[Line[0]]["Type"] == "CMP":
             g.write(CMP(Line,cleanRead))

        elif Commands[Line[0]]["Type"] == "Store":
             g.write(Store(Line,cleanRead))

        elif Commands[Line[0]]["Type"] == "JL":
             g.write(JL(Line,cleanRead))

        elif Commands[Line[0]]["Type"] == "LOAD":
             g.write(LOAD(Line,cleanRead))
        

        
       
readCode("codigo.txt",False)