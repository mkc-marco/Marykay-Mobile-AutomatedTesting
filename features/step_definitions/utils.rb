
def random_string(len)
	(('a'..'z').to_a + ('A'..'Z').to_a).sample(len).join
end

def random_number(len)
	(0..9).to_a.sample(len).join
end

def random_email
	(('a'..'z').to_a + ('A'..'Z').to_a).sample(6).join + (0..9).to_a.sample(6).join + "@mkcorp.com"
end

def check_text_length(index,len)
	actual_len = query("android.widget.EditText")[index-1]["text"].length
	Loggin.log_error("Actual length of the text is #{actual_len} not equal to excepted length #{len}") if actual_len != len
end

def get_tw_gov_id
first =(('A'..'Z').to_a).sample(1).join + '2' +(0..9).to_a.sample(8).join
puts first
if validate_gov_id first
return first
else
return get_tw_gov_id
end
end

def validate_gov_id govid
_tmp=String.new("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
_dig=String.new("0123456789")
_index1 = _tmp.index(govid[0]);
_index2 = _dig.index(govid[1]);
_index3 = _dig.index(govid[2]);
_index4 = _dig.index(govid[3]);
_index5 = _dig.index(govid[4]);
_index6 = _dig.index(govid[5]);
_index7 = _dig.index(govid[6]);
_index8 = _dig.index(govid[7]);
_index9 = _dig.index(govid[8]);
_index10 = _dig.index(govid[9]);

con = ((_index1+10)/10+(_index1+10)%10*9+_index2*8+_index3*7+_index4*6+_index5*5+_index6*4+_index7*3+_index8*2+_index9+_index10)%10
if con!=0
return false
else
return true
end 
end
