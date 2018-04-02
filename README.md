# Veterinary List REST API

List from https://github.com/enderahmetyurt/veterinary-list

# Endpoints
```
/veterinaries
/search?name=adem
/search?city=ordu
/searcy_town=beşiktaş
```

# Request
```
/veterinaries
```
# Response
```
[
  {
    "id": 1,
    "name": "Adem Ünüvar Veteriner Kliniği",
    "address": "Belirtilmemiş",
    "city": "Adana",
    "town": "Aladağ",
    "telephone": "Belirtilmemiş",
    "website": "",
    "email": ""
  },
  {
    "id": 2,
    "name": "Şafak Veteriner Kliniği",
    "address": "Belirtilmemiş",
    "city": "Adana",
    "town": "Aladağ",
    "telephone": "Belirtilmemiş",
    "website": "",
    "email": ""
  },
  {
    "id": 3,
    "name": "Bayat Veteriner Kliniği",
    "address": "Kurtuluş No:1",
    "city": "Adana",
    "town": "Bayat",
    "telephone": "0322 491 26 73",
    "website": "",
    "email": ""
  },
  {
    "id": 4,
    "name": "Özdemir Veteriner Kliniği",
    "address": "Yenimahalle",
    "city": "Adana",
    "town": "Bayat",
    "telephone": "0322 491 31 61",
    "website": "",
    "email": ""
  },
  {
    "id": 5,
    "name": "Akın Veteriner Kliniği",
    "address": "Belirtilmemiş",
    "city": "Adana",
    "town": "Ceyhan",
    "telephone": "0322 613 70 32",
    "website": "",
    "email": ""
  },
...
]
```

# Request
```
/search?name=adem
```

# Response
```
[
  {
    "id": 2381,
    "name": "Acıbadem Veteriner Kliniği",
    "address": "Acıbadem, Necipbey",
    "city": "Istanbul",
    "town": "Kadıköy",
    "telephone": "0216 326 24 53",
    "website": "",
    "email": ""
  },
  {
    "id": 2576,
    "name": "Akademi Veteriner Kliniği",
    "address": "Kuleli Mah. Çengelköy Cad. No:42/C",
    "city": "Istanbul",
    "town": "Üsküdar",
    "telephone": "0216 422 37 88",
    "website": "",
    "email": ""
  },
  {
    "id": 2706,
    "name": "Badem Veteriner Kliniği",
    "address": "Bostanlı 2014 No:15/3",
    "city": "Izmir",
    "town": "Karşıyaka",
    "telephone": "Belirtilmemiş",
    "website": "",
    "email": ""
  },
  {
    "id": 3434,
    "name": "Akademi Veteriner Kliniği",
    "address": "Şeyhsadresttin Mah. Millet Cad. No:10/H",
    "city": "Konya",
    "town": "Meram",
    "telephone": "0332 321 53 07",
    "website": "",
    "email": ""
  }
]
```
