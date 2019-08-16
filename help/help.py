f1=open("1.txt","r")
f2=open("2.txt","r")
f3=open("3.txt","w")
s1=""
s2=""
s3=""
c=f1.read(1)
while(c!='\n'):
    s1=s1+c
    c=f1.read(1)
s1=s1+c
c=f2.read(1)
while(c!='\n'):
    s2=s2+c
    c=f2.read(1)
s2=s2+c
while(s1!="\n" and s2!="\n"):
    if(s2[0]=='*'and s2[15]=='\n'):
        if s1[0]=='*':
            s1=s1[0:13]+s1[19:22]
    elif(s2[0]=='*' and s2[17]=='\n' and s1[0]=='*'):
        if s1[0]=='*':
            s1=s1[0:13]+s1[17:22]
    if(s2[0:5]=="ISim>"):
        c=f2.read(1)
        while(c!='\n'):
            s2=s2+c
            c=f2.read(1)
        s2=s2+c
        c=f2.read(1)
        s2=""
        while(c!='\n'):
            s2=s2+c
            c=f2.read(1)
        s2=s2+c
    if(s1==s2):
        f3.write(s2)
        s1=""
        s2=""
        s3=""
        c=f1.read(1)
        while(c!='\n'):
            s1=s1+c
            c=f1.read(1)
        s1=s1+c
        c=f2.read(1)
        while(c!='\n'):
            s2=s2+c
            c=f2.read(1)
        s2=s2+c
    elif(s1[0:3]!="$ 0"and s1[0:3]!="$34" and s1[0:3]!="$33" and s1[0:3]!="$32" and s2[0:3]!="$ 0"):
        s3=s2+"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
        f3.write(s3)
        s1=""
        s2=""
        s3=""
        c=f1.read(1)
        while(c!='\n'):
            s1=s1+c
            c=f1.read(1)
        s1=s1+c
        c=f2.read(1)
        while(c!='\n'):
            s2=s2+c
            c=f2.read(1)
        s2=s2+c
    else:
        if(s1[0:3]=="$ 0" or s1[0:3]=="$32" or s1[0:3]=="$33" or s1[0:3]=="$34"):
            s1=""
            c=f1.read(1)
            while(c!='\n'):
                s1=s1+c
                c=f1.read(1)
            s1=s1+c
        if(s2[0:3]=="$ 0"):
            s2=""
            c=f2.read(1)
            while(c!='\n'):
                s2=s2+c
                c=f2.read(1)
            s2=s2+c
f1.close()
f2.close()
f3.close()
