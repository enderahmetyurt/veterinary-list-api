# Veterinary List REST API

List from https://github.com/enderahmetyurt/veterinary-list

Source: https://veteriner.co/veteriner-klinikleri

Last update for data: 01.12.2017

# Endpoints
```
http://veterinaries.enderahmetyurt.com/veterinaries
http://veterinaries.enderahmetyurt.com/veterinaries?page=15
http://veterinaries.enderahmetyurt.com/search?name=adem
http://veterinaries.enderahmetyurt.com/search?city=ordu
http://veterinaries.enderahmetyurt.com/search?town=beşiktaş
http://veterinaries.enderahmetyurt.com/search?town=beşiktaş&page=2
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

# Request
```
/search?city=ordu
```

# Response
```
[
  {
    "id": 4109,
    "name": "Veteriner Kliniği",
    "address": "Merkez, Meydan Sok.",
    "city": "Ordu",
    "town": "Akkuş",
    "telephone": "0452 611 20 43",
    "website": "",
    "email": ""
  },
  {
    "id": 4110,
    "name": "Veteriner Kliniği",
    "address": "Belirtilmemiş",
    "city": "Ordu",
    "town": "Aybastı",
    "telephone": "0452 714 14 21",
    "website": "",
    "email": ""
  },
  {
    "id": 4111,
    "name": "Cömert Veteriner Kliniği",
    "address": "Fevzi Şenel Cad. Merkez Mah. No:9",
    "city": "Ordu",
    "town": "Çatalpınar",
    "telephone": "Belirtilmemiş",
    "website": "",
    "email": ""
  },
  {
    "id": 4112,
    "name": "Özel Çaybaşı Veteriner Kliniği",
    "address": "Belirtilmemiş",
    "city": "Ordu",
    "town": "Çaybaşı",
    "telephone": "0452 391 30 64",
    "website": "",
    "email": ""
  },
  {
    "id": 4113,
    "name": "Çınar Veteriner Kliniği",
    "address": "M.Kemalpaşa Mah. Reşadiye Cad.",
    "city": "Ordu",
    "town": "Fatsa",
    "telephone": "Belirtilmemiş",
    "website": "",
    "email": ""
  },
  ...
]
```

# Request
```
/search?town=beşiktaş
````

# Response
```
  [
  {
    "id": 2259,
    "name": "Anemon Veteriner Kliniği",
    "address": "Akatlar Mah. Zeytinoğlu Cad. No:23/1",
    "city": "Istanbul",
    "town": "Beşiktaş",
    "telephone": "0212 352 00 80",
    "website": "",
    "email": ""
  },
  {
    "id": 2260,
    "name": "Animal Doctors Veteriner Kliniği",
    "address": "Ortaköy, Muallim Naci Işık Apt. No:39/3",
    "city": "Istanbul",
    "town": "Beşiktaş",
    "telephone": "0212 261 51 22",
    "website": "",
    "email": ""
  },
  {
    "id": 2261,
    "name": "Animate Veteriner Kliniği",
    "address": "3.Levent, Sülün, 12 Aralık",
    "city": "Istanbul",
    "town": "Beşiktaş",
    "telephone": "0212 282 38 38",
    "website": "",
    "email": ""
  },
  {
    "id": 2262,
    "name": "Arı Veteriner Kliniği",
    "address": "4.Gazeteciler Sit. Ebulula Cad. 3. Levent",
    "city": "Istanbul",
    "town": "Beşiktaş",
    "telephone": "0212 281 73 54",
    "website": "",
    "email": ""
  },
  {
    "id": 2263,
    "name": "Barbaros Veteriner Kliniği",
    "address": "Cihannüma Mah. Babaros Bulvarı Bostanveli Sok. No:10/A",
    "city": "Istanbul",
    "town": "Beşiktaş",
    "telephone": "0212 227 36 77",
    "website": "",
    "email": ""
  },
  ...
]
```

# Todos
- Improve like search query
- Add tests
- Handle city or town that starts with Turkish character
