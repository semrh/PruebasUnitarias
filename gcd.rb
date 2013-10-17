# Máximo común divisor
def gcd(u, v)
  u, v = u.abs, v.abs
  while v != 0
    #u = v % v
    #v = u % v
    u, v = v, u % v
  end
  u
end

# Mínimo común múltiplo
def mcm (u, v)
  (u*v)/gcd(u,v)
end

#puts gcd(-30,-150)
