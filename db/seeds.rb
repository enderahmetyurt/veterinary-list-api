require 'json'

Veterinary.delete_all
Veterinary.reset_autoincrement

puts "Veterinary list loading.."

vet_file = File.read("./db/veterinary-list.json")
vet_hash = JSON.parse(vet_file)

vet_hash.each do |v|
  puts v
  v = Veterinary.new(name: v["name"], address: v["address"], city: v["city"], town: v["town"],
        telephone: v["telephone"], website: v["website"], email: v["email"])

  v.save!
end

puts "Veterinary count #{Veterinary.count}"