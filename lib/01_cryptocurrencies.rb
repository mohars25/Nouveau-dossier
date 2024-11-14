# Liste des cryptos et leurs valeurs
noms_crypto =   ["Bitcoin", "Ethereum", "XRP", "Bitcoin Cash", "EOS", "Litecoin", "Cardano", "Stellar"]
valeurs_crypto = ["6558.07", "468.95", "0.487526", "762.84", "8.86", "85.26", "0.151268", "0.206756"]

# Conversion des valeurs en Float
valeurs_crypto = valeurs_crypto.map(&:to_f)

# Si les deux tableaux sont ==
if noms_crypto.length != valeurs_crypto.length
  puts "Les tableaux ne sont pas égaux, looserrrrr 🤪"
else
  # Création du hash
  mon_hash = {}
  noms_crypto.each_with_index do |nom, i|
    mon_hash[nom] = valeurs_crypto[i] # Ajoute crypto dans le hash
  end

  # 1. Crypto la + chère
  crypto_max = mon_hash.max_by { |_k, v| v } # Trouve max
  puts "La plus chère : #{crypto_max[0]} => #{crypto_max[1]}"

  # 2. Crypto la - chère
  crypto_min = mon_hash.min_by { |_k, v| v } # Trouve min
  puts "La moins chère : #{crypto_min[0]} => #{crypto_min[1]}"

  # 3. Cryptos < 6000
  cryptos_basses = mon_hash.select { |_k, v| v < 6000 } # < 6000
  puts "Cryptos < 6000 :"
  cryptos_basses.each { |k, v| puts "#{k} : #{v}" } # Affiche cryptos

  # 4. Crypto la + chère < 6000
  crypto_max_basse = cryptos_basses.max_by { |_k, v| v } # Trouve max < 6000
  if crypto_max_basse
    puts "La plus chère < 6000 : #{crypto_max_basse[0]} => #{crypto_max_basse[1]}"
  else
    puts "pas de < 6000."
  end
end
