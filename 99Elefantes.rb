# -*- encoding: utf-8 -*-
def sing_a_song(max)
	for i in (1..99).step(1) do
    	if i == 1
    		elef = "elefante"
    		colu = "columpiaba"
    		fuer = "fue"
    	else
    		elef = "elefantes"
    		colu = "columpiaban"
    		fuer = "fueron"
    	end
    	if i == (max)
    		p "#{i} #{elef} se #{colu} sobre la tela de una arana pero ya no resistio y se rompio"
    		break
    	else
    		p "#{i} #{elef} se #{colu} sobre la tela de una arana, como veia que resistia #{fuer} a llamar a otro elefante"
    	end
    end
    return ""
end
p sing_a_song(3) == "" 