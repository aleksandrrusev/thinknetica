alphabet_gl = [:A, :E, :I, :O, :U]
h = {}

(:A..:Z).each.with_index(1) { |letter, index| h[letter] = index if alphabet_gl.include?(letter) }
print h
