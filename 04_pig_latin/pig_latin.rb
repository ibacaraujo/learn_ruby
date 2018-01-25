def translate(s)
	s = s.split
	r = []
	s.each do |w|
		puts(w)
		if w[0..1] == 'qu'
			r.push(w[2..w.length-1] + w[0..1] + 'ay')
			next
		end
		if w[0..2] == 'squ'
			r.push(w[3..w.length-1] + w[0..2] + 'ay')
			next
		end
		if w[0] =~ /[bcdfghjklmnpqrstvwxyz]/
			if w[1] =~ /[bcdfghjklmnpqrstvwxyz]/
				if w[2] =~ /[bcdfghjklmnpqrstvwxyz]/
					r.push(w[3..w.length-1] + w[0..2] + 'ay')
					next
				end
				r.push(w[2..w.length-1] + w[0..1] + 'ay')
				next
			end
			r.push(w[1..w.length-1] + w[0] + 'ay')
		else
			r.push(w + 'ay')
		end
	end
	r = r.join(" ")
	return r
end