# Read crypto text from file
crypto = File.read("encrypted.dat").delete(" ")

# Make array a - z to compare
crypt_array = ("a".."z").to_a

#String where decrypted words are added
decrypted_string = ''

n = 0

while n < 20000 do
	i = 0
	while i <= 25 do
		# Compare a-z with crypted words
		if crypt_array[i] === crypto[n]
			if i <= 12
				decrypted_string = decrypted_string + crypt_array[i + 13].to_s		
			end
			if i >= 13
				decrypted_string = decrypted_string + crypt_array[i - 13].to_s
			end
			# End the while loop
			i = 26
		else
		i += 1
		end
	end
	# Make sure i is set to zero
	i = 0
	n += 1
end

puts decrypted_string