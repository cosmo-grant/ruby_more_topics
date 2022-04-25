=begin
store names as array
map array using decrypt_name subprocedure

SUBPRO: decrypt name
initialize decrypt hash: a => n, b => o, ..., z => m
convert name to array of chars
map array using decrypt hash
join resulting array
return string
=end

NAMES = "Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu".split("\n")

def decrypt_rot13(str)
  str.tr('a-zA-Z', 'n-za-mN-ZA-M')
end

def decrypt_rot13_all(arr)
  arr.map { |str| decrypt_rot13(str) }
end

p decrypt_rot13_all(NAMES)