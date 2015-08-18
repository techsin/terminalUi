require 'colorize'
@running = true



def animatedMenu
	_show ""
	while @running
		input = getInput
		case input
		when 'exit' then exitApp
		when 'list' then showList
		when 'error' then error
		when 'success' then success
		when 'blink' then blink
		when 'progress' then progressAni
		else _show ""
		end
	end
end

def _show (m)
	system('clear')
	system('cls')
	puts ":::::Welcome to Demo App:::::::"
	puts m
end


def getInput
	puts ""
	puts "please input commands or type list"
	gets.chomp
end
	


def exitApp
	@running = false
	_show('Later...')
end

def showList
	_show '''
		Here are options to type:
		>_ list
		>_ error
		>_ progress
		>_ success
		>_ exit
		>_ blink
		'''
end

def error
	_show "Here is one example of an error".red
end

def success
	_show "Here is one example of an success".white.on_green
end

def blink
	_show "wow such msg".blink
end

def progressAni
	chr = '='
	n = 20
	x = 0
	_show 'Demo animation running ...'
	while x<n
		print "[ #{"="*x} ]"
		sleep(0.1)
		print "\r"
		x+=1
	end
	puts "\ndone..." unless x<n

end

animatedMenu