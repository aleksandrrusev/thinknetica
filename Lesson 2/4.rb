alphabet_gl = ['A', 'E', 'I', 'O', 'U']
h = {}

('A'..'Z').each_with_index {|l, i| h[l] = i + 1 if alphabet_gl.include?(l)}
print h
