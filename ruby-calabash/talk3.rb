
class AndroidPage
	def print(value)
		puts "Android - #{value}"
	end
end

class IOSPage
	def print(value)
		puts "iOS - #{value}"
	end
end

module Base
	def test
		print 'Test!'
	end
end

module Android
	class LoginPage < AndroidPage
		include Base

		def foo
			puts 'Android'
		end
	end
end

module IOS
	class LoginPage < IOSPage
		include Base

		def foo
			puts 'iOS'
		end
	end
end

def calabash_run(platform)
	page = nil
	if platform == 'android'
		page = Android::LoginPage.new
	elsif platform == 'ios'
		page = IOS::LoginPage.new
	end

	# STEPS
	# page.test unless page.nil?

	unless page.nil?
		page.test
		page.foo
	end
end

#calabash_run 'android'
calabash_run 'ios'