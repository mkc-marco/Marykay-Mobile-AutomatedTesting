#!/usr/bin/ruby -w

def randomchinaidcard
    idchar1 = 31020119
    idchar_year3 = rand(6...9)
    idchar_year4 = rand(0...10)
    idchar_month1 = 0
    idchar_month2 = rand(1...10)
    idchar_day1= rand(0...3)
    idchar_day2= rand(0...9)
    #idchar5 = 010

    #7 9 10 5 8 4 2 1 
    #6 3 7 9 10 5 
    #8 4 2
    #s1_8=3*7+1*9+0*10+2*5+0*8+1*4+1*2+9*1
    s1_8=55
    s9_14=idchar_year3*6+idchar_year4*3+idchar_month1*7+idchar_month2*9+idchar_day1*10+idchar_day2*5
    #S3=0*8+1*4+0*2
    #s3=1*4+0*2
    s15_17=4

    s=s1_8+s9_14+s15_17

    yushu = s%11

    idchar6	=0
    if yushu==0 then idchar6=1 
    	elsif  yushu==1  then idchar6=0
    		elsif  yushu==2 then idchar6='x'
    			elsif  yushu==3 then idchar6=9
    				elsif  yushu==4 then idchar6=8
    					elsif  yushu==5 then idchar6=7
    						elsif  yushu==6 then idchar6=6
    							elsif  yushu==7 then idchar6=5
    								elsif  yushu==8 then idchar6=4
   										elsif  yushu==9 then idchar6=3 
    										elsif  yushu==10 then idchar6=2 end
 										
 
    idchar=idchar1.to_s+idchar_year3.to_s+idchar_year4.to_s+idchar_month1.to_s+idchar_month2.to_s+idchar_day1.to_s+idchar_day2.to_s+'010'+idchar6.to_s
    return idchar

end


def randomphonenumber
    mychar1 = rand(14000000000...19999999999)

end

def randomusername
    mychar1 = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
string1 = (0...10).map { mychar1[rand(mychar1.length)] }.join
step1 = string1
end
