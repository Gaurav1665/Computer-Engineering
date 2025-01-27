export default function StudentList(){

    const students = [
        {
            "name": "Adeel Solangi",
            "language": "Sindhi",
            "_id": "V59OF92YF627HFY0",
            "bio": "Donec lobortis eleifend condimentum. Cras dictum dolor lacinia lectus vehicula rutrum. Maecenas quis nisi nunc. Nam tristique feugiat est vitae mollis. Maecenas quis nisi nunc.",
            "spi": 6.1
        },
        {
            "name": "Afzal Ghaffar",
            "language": "Sindhi",
            "_id": "ENTOCR13RSCLZ6KU",
            "bio": "Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et. Pellentesque massa sem, scelerisque sit amet odio id, cursus tempor urna. Etiam congue dignissim volutpat. Vestibulum pharetra libero et velit gravida euismod.",
            "spi": 1.88
        },
        {
            "name": "Aamir Solangi",
            "language": "Sindhi",
            "_id": "IAKPO3R4761JDRVG",
            "bio": "Vestibulum pharetra libero et velit gravida euismod. Quisque mauris ligula, efficitur porttitor sodales ac, lacinia non ex. Fusce eu ultrices elit, vel posuere neque.",
            "spi": 7.27
        },
        {
            "name": "Abla Dilmurat",
            "language": "Uyghur",
            "_id": "5ZVOEPMJUI4MB4EN",
            "bio": "Donec lobortis eleifend condimentum. Morbi ac tellus erat.",
            "spi": 2.53
        },
        {
            "name": "Adil Eli",
            "language": "Uyghur",
            "_id": "6VTI8X6LL0MMPJCC",
            "bio": "Vivamus id faucibus velit, id posuere leo. Morbi vitae nisi lacinia, laoreet lorem nec, egestas orci. Suspendisse potenti.",
            "spi": 6.49
        },
        {
            "name": "Adile Qadir",
            "language": "Uyghur",
            "_id": "F2KEU5L7EHYSYFTT",
            "bio": "Duis commodo orci ut dolor iaculis facilisis. Morbi ultricies consequat ligula posuere eleifend. Aenean finibus in tortor vel aliquet. Fusce eu ultrices elit, vel posuere neque.",
            "spi": 1.9
        },
        {
            "name": "Abdukerim Ibrahim",
            "language": "Uyghur",
            "_id": "LO6DVTZLRK68528I",
            "bio": "Vivamus id faucibus velit, id posuere leo. Nunc aliquet sodales nunc a pulvinar. Nunc aliquet sodales nunc a pulvinar. Ut viverra quis eros eu tincidunt.",
            "spi": 5.9
        },
        {
            "name": "Adil Abro",
            "language": "Sindhi",
            "_id": "LJRIULRNJFCNZJAJ",
            "bio": "Etiam malesuada blandit erat, nec ultricies leo maximus sed. Fusce congue aliquam elit ut luctus. Etiam malesuada blandit erat, nec ultricies leo maximus sed. Cras dictum dolor lacinia lectus vehicula rutrum. Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero.",
            "spi": 9.32
        },
        {
            "name": "Afonso Vilarchán",
            "language": "Galician",
            "_id": "JMCL0CXNXHPL1GBC",
            "bio": "Fusce eu ultrices elit, vel posuere neque. Morbi ac tellus erat. Nunc tincidunt laoreet laoreet.",
            "spi": 5.21
        },
        {
            "name": "Mark Schembri",
            "language": "Maltese",
            "_id": "KU4T500C830697CW",
            "bio": "Nam laoreet, nunc non suscipit interdum, justo turpis vestibulum massa, non vulputate ex urna at purus. Morbi ultricies consequat ligula posuere eleifend. Vivamus id faucibus velit, id posuere leo. Sed laoreet posuere sapien, ut feugiat nibh gravida at. Ut maximus, libero nec facilisis fringilla, ex sem sollicitudin leo, non congue tortor ligula in eros.",
            "spi": 3.17
        },
        {
            "name": "Antía Sixirei",
            "language": "Galician",
            "_id": "XOF91ZR7MHV1TXRS",
            "bio": "Pellentesque massa sem, scelerisque sit amet odio id, cursus tempor urna. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. Morbi finibus dui sed est fringilla ornare. Duis pellentesque ultrices convallis. Morbi ultricies consequat ligula posuere eleifend.",
            "spi": 6.44
        },
        {
            "name": "Aygul Mutellip",
            "language": "Uyghur",
            "_id": "FTSNV411G5MKLPDT",
            "bio": "Duis commodo orci ut dolor iaculis facilisis. Nam semper gravida nunc, sit amet elementum ipsum. Donec pellentesque ultrices mi, non consectetur eros luctus non. Pellentesque massa sem, scelerisque sit amet odio id, cursus tempor urna.",
            "spi": 9.1
        },
        {
            "name": "Awais Shaikh",
            "language": "Sindhi",
            "_id": "OJMWMEEQWMLDU29P",
            "bio": "Nunc aliquet sodales nunc a pulvinar. Ut dictum, ligula eget sagittis maximus, tellus mi varius ex, a accumsan justo tellus vitae leo. Donec pellentesque ultrices mi, non consectetur eros luctus non. Nulla finibus massa at viverra facilisis. Nunc tincidunt laoreet laoreet.",
            "spi": 1.59
        },
        {
            "name": "Ambreen Ahmed",
            "language": "Sindhi",
            "_id": "5G646V7E6TJW8X2M",
            "bio": "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et. Ut maximus, libero nec facilisis fringilla, ex sem sollicitudin leo, non congue tortor ligula in eros.",
            "spi": 2.35
        },
        {
            "name": "Celtia Anes",
            "language": "Galician",
            "_id": "Z53AJY7WUYPLAWC9",
            "bio": "Nullam ac sodales dolor, eu facilisis dui. Maecenas non arcu nulla. Ut viverra quis eros eu tincidunt. Curabitur quis commodo quam.",
            "spi": 8.34
        },
        {
            "name": "George Mifsud",
            "language": "Maltese",
            "_id": "N1AS6UFULO6WGTLB",
            "bio": "Phasellus tincidunt sollicitudin posuere. Ut accumsan, est vel fringilla varius, purus augue blandit nisl, eu rhoncus ligula purus vel dolor. Donec congue sapien vel euismod interdum. Cras dictum dolor lacinia lectus vehicula rutrum. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula.",
            "spi": 7.47
        },
        {
            "name": "Aytürk Qasim",
            "language": "Uyghur",
            "_id": "70RODUVRD95CLOJL",
            "bio": "Curabitur ultricies id urna nec ultrices. Aliquam scelerisque pretium tellus, sed accumsan est ultrices id. Duis commodo orci ut dolor iaculis facilisis.",
            "spi": 1.32
        },
        {
            "name": "Dialè Meso",
            "language": "Sesotho sa Leboa",
            "_id": "VBLI24FKF7VV6BWE",
            "bio": "Maecenas non arcu nulla. Vivamus id faucibus velit, id posuere leo. Nullam sodales convallis mauris, sit amet lobortis magna auctor sit amet.",
            "spi": 6.29
        },
        {
            "name": "Breixo Galáns",
            "language": "Galician",
            "_id": "4VRLON0GPEZYFCVL",
            "bio": "Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero. Morbi ac tellus erat. In id elit malesuada, pulvinar mi eu, imperdiet nulla. Vestibulum pharetra libero et velit gravida euismod. Cras dictum dolor lacinia lectus vehicula rutrum.",
            "spi": 1.62
        },
        {
            "name": "Bieito Lorme",
            "language": "Galician",
            "_id": "5DRDI1QLRGLP29RC",
            "bio": "Ut viverra quis eros eu tincidunt. Morbi vitae nisi lacinia, laoreet lorem nec, egestas orci. Curabitur quis commodo quam. Morbi ac tellus erat.",
            "spi": 4.45
        },
        {
            "name": "Azrugul Osman",
            "language": "Uyghur",
            "_id": "5RCTVD3C5QGVAKTQ",
            "bio": "Maecenas tempus neque ut porttitor malesuada. Donec lobortis eleifend condimentum.",
            "spi": 3.18
        },
        {
            "name": "Brais Verdiñas",
            "language": "Galician",
            "_id": "BT407GHCC0IHXCD3",
            "bio": "Quisque maximus sodales mauris ut elementum. Ut viverra quis eros eu tincidunt. Sed eu libero maximus nunc lacinia lobortis et sit amet nisi. In id elit malesuada, pulvinar mi eu, imperdiet nulla. Curabitur quis commodo quam.",
            "spi": 5.01
        },
        {
            "name": "Ekber Sadir",
            "language": "Uyghur",
            "_id": "AGZDAP8D8OVRRLTY",
            "bio": "Quisque efficitur vel sapien ut imperdiet. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. In id elit malesuada, pulvinar mi eu, imperdiet nulla. Sed nec suscipit ligula. Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero.",
            "spi": 2.04
        },
        {
            "name": "Doreen Bartolo",
            "language": "Maltese",
            "_id": "59QSX02O2XOZGRLH",
            "bio": "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et. Nam semper gravida nunc, sit amet elementum ipsum. Ut viverra quis eros eu tincidunt. Curabitur sed condimentum felis, ut luctus eros.",
            "spi": 9.31
        },
        {
            "name": "Ali Ayaz",
            "language": "Sindhi",
            "_id": "3WNLUZ5LT2F7MYVU",
            "bio": "Cras dictum dolor lacinia lectus vehicula rutrum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et. Etiam malesuada blandit erat, nec ultricies leo maximus sed.",
            "spi": 7.8
        },
        {
            "name": "Guzelnur Polat",
            "language": "Uyghur",
            "_id": "I6QQHAEGV4CYDXLP",
            "bio": "Nam laoreet, nunc non suscipit interdum, justo turpis vestibulum massa, non vulputate ex urna at purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et. Nulla finibus massa at viverra facilisis.",
            "spi": 8.56
        },
        {
            "name": "John Falzon",
            "language": "Maltese",
            "_id": "U3AWXHDTSU0H82SL",
            "bio": "Sed nec suscipit ligula. Nullam sodales convallis mauris, sit amet lobortis magna auctor sit amet.",
            "spi": 9.96
        },
        {
            "name": "Erkin Qadir",
            "language": "Uyghur",
            "_id": "GV6TA1AATZYBJ3VR",
            "bio": "Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. .",
            "spi": 3.53
        },
        {
            "name": "Anita Rajput",
            "language": "Sindhi",
            "_id": "XLLVD0NO2ZFEP4AK",
            "bio": "Nam semper gravida nunc, sit amet elementum ipsum. Etiam congue dignissim volutpat.",
            "spi": 5.16
        },
        {
            "name": "Ayesha Khalique",
            "language": "Sindhi",
            "_id": "Q9A5QNGA0OSU8P6Y",
            "bio": "Morbi vitae nisi lacinia, laoreet lorem nec, egestas orci. Etiam mauris magna, fermentum vitae aliquet eu, cursus vitae sapien.",
            "spi": 3.9
        },
        {
            "name": "Pheladi Rammala",
            "language": "Sesotho sa Leboa",
            "_id": "EELSIRT2T4Q0M3M4",
            "bio": "Quisque efficitur vel sapien ut imperdiet. Morbi ac tellus erat. Aliquam scelerisque pretium tellus, sed accumsan est ultrices id. Ut maximus, libero nec facilisis fringilla, ex sem sollicitudin leo, non congue tortor ligula in eros.",
            "spi": 1.88
        },
        {
            "name": "Antón Caneiro",
            "language": "Galician",
            "_id": "ENTAPNU3MMFUGM1W",
            "bio": "Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero. Vestibulum pharetra libero et velit gravida euismod.",
            "spi": 4.84
        },
        {
            "name": "Qahar Abdulla",
            "language": "Uyghur",
            "_id": "OGLODUPEHKEW0K83",
            "bio": "Duis commodo orci ut dolor iaculis facilisis. Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et. Fusce congue aliquam elit ut luctus. Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero. Quisque maximus sodales mauris ut elementum.",
            "spi": 3.65
        },
        {
            "name": "Reyhan Murat",
            "language": "Uyghur",
            "_id": "Y91F4D54794E9ANT",
            "bio": "Suspendisse sit amet ullamcorper sem. Curabitur sed condimentum felis, ut luctus eros.",
            "spi": 2.69
        },
        {
            "name": "Tatapi Phogole",
            "language": "Sesotho sa Leboa",
            "_id": "7JA42P5CMCWDVPNR",
            "bio": "Duis luctus, lacus eu aliquet convallis, purus elit malesuada ex, vitae rutrum ipsum dui ut magna. Nullam ac sodales dolor, eu facilisis dui. Ut viverra quis eros eu tincidunt.",
            "spi": 3.78
        },
        {
            "name": "Marcos Amboade",
            "language": "Galician",
            "_id": "WPX7H97C7D70CZJR",
            "bio": "Nulla finibus massa at viverra facilisis. Pellentesque massa sem, scelerisque sit amet odio id, cursus tempor urna. Curabitur ultricies id urna nec ultrices. Ut maximus, libero nec facilisis fringilla, ex sem sollicitudin leo, non congue tortor ligula in eros. Nunc aliquet sodales nunc a pulvinar.",
            "spi": 7.37
        },
        {
            "name": "Grace Tabone",
            "language": "Maltese",
            "_id": "K4XO8G8DMRNSHF2B",
            "bio": "Curabitur sed condimentum felis, ut luctus eros. Duis luctus, lacus eu aliquet convallis, purus elit malesuada ex, vitae rutrum ipsum dui ut magna.",
            "spi": 5.36
        },
        {
            "name": "Shafqat Memon",
            "language": "Sindhi",
            "_id": "D8VFLVRXBXMVBRVI",
            "bio": "Aliquam scelerisque pretium tellus, sed accumsan est ultrices id. . Curabitur quis commodo quam. Quisque maximus sodales mauris ut elementum. Quisque mauris ligula, efficitur porttitor sodales ac, lacinia non ex.",
            "spi": 8.95
        },
        {
            "name": "Zeynep Semet",
            "language": "Uyghur",
            "_id": "Z324TZV8S0FGDSAO",
            "bio": "Quisque mauris ligula, efficitur porttitor sodales ac, lacinia non ex. Fusce eu ultrices elit, vel posuere neque. Nulla finibus massa at viverra facilisis.",
            "spi": 1.03
        },
        {
            "name": "Meladi Papo",
            "language": "Sesotho sa Leboa",
            "_id": "RJAZQ6BBLRT72CD9",
            "bio": "Quisque efficitur vel sapien ut imperdiet. Pellentesque massa sem, scelerisque sit amet odio id, cursus tempor urna. Ut accumsan, est vel fringilla varius, purus augue blandit nisl, eu rhoncus ligula purus vel dolor. Etiam congue dignissim volutpat. Donec congue sapien vel euismod interdum.",
            "spi": 7.22
        },
        {
            "name": "Semet Alim",
            "language": "Uyghur",
            "_id": "HI7L2SR4RCS8C8CS",
            "bio": "Duis commodo orci ut dolor iaculis facilisis. Ut viverra quis eros eu tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "spi": 1.01
        },
        {
            "name": "Sabela Veloso",
            "language": "Galician",
            "_id": "QA55WXDLC7SRH97X",
            "bio": "Duis commodo orci ut dolor iaculis facilisis. Suspendisse potenti. Cras dictum dolor lacinia lectus vehicula rutrum.",
            "spi": 7.32
        },
        {
            "name": "Madule Ledimo",
            "language": "Sesotho sa Leboa",
            "_id": "IHJN2DGJB5O1Y00D",
            "bio": "Maecenas non arcu nulla. Aliquam scelerisque pretium tellus, sed accumsan est ultrices id.",
            "spi": 7.47
        },
        {
            "name": "Michelle Caruana",
            "language": "Maltese",
            "_id": "EG1I21R75IV9Q0Q8",
            "bio": "Nam tristique feugiat est vitae mollis. Morbi ultricies consequat ligula posuere eleifend. Pellentesque massa sem, scelerisque sit amet odio id, cursus tempor urna.",
            "spi": 4.95
        },
        {
            "name": "Philip Camilleri",
            "language": "Maltese",
            "_id": "FCO0URUHARX5FDFW",
            "bio": "Quisque efficitur vel sapien ut imperdiet. Suspendisse sit amet ullamcorper sem. Aliquam scelerisque pretium tellus, sed accumsan est ultrices id. . Aenean finibus in tortor vel aliquet.",
            "spi": 9.97
        },
        {
            "name": "Olalla Romeu",
            "language": "Galician",
            "_id": "WOCMVO6CYPG01ZHY",
            "bio": "Maecenas tempus neque ut porttitor malesuada. Sed nec suscipit ligula. Morbi vitae nisi lacinia, laoreet lorem nec, egestas orci. Nullam sodales convallis mauris, sit amet lobortis magna auctor sit amet.",
            "spi": 1.98
        },
        {
            "name": "Gulnur Perhat",
            "language": "Uyghur",
            "_id": "VO3M22TTQMBA2XEM",
            "bio": "Nullam ac sodales dolor, eu facilisis dui. Etiam mauris magna, fermentum vitae aliquet eu, cursus vitae sapien. Ut accumsan, est vel fringilla varius, purus augue blandit nisl, eu rhoncus ligula purus vel dolor. Maecenas quis nisi nunc. Duis pellentesque ultrices convallis.",
            "spi": 5.03
        },
        {
            "name": "Hunadi Makgatho",
            "language": "Sesotho sa Leboa",
            "_id": "MRJDOV2MU7PTCDXE",
            "bio": "Phasellus tincidunt sollicitudin posuere. Maecenas quis nisi nunc. Duis luctus, lacus eu aliquet convallis, purus elit malesuada ex, vitae rutrum ipsum dui ut magna.",
            "spi": 8.18
        },
        {
            "name": "Charmaine Abela",
            "language": "Maltese",
            "_id": "F6FJP1QDJL944X4Z",
            "bio": "Nam rutrum sollicitudin ante tempus consequat. Suspendisse sit amet ullamcorper sem. Morbi ac tellus erat. Sed nec suscipit ligula.",
            "spi": 6.95
        },
        {
            "name": "Tumelò Letamo",
            "language": "Sesotho sa Leboa",
            "_id": "F8BL9NPIKV0OWO1X",
            "bio": "Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et. Etiam congue dignissim volutpat. Sed nec suscipit ligula. Nullam sodales convallis mauris, sit amet lobortis magna auctor sit amet.",
            "spi": 7.17
        },
        {
            "name": "Aneela Mohan",
            "language": "Sindhi",
            "_id": "CRYN52CXKNJU0YXU",
            "bio": "Sed nec suscipit ligula. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. Maecenas tempus neque ut porttitor malesuada.",
            "spi": 4.45
        },
        {
            "name": "Koketšo Montjane",
            "language": "Sesotho sa Leboa",
            "_id": "0TTAMXC9TENQCA2O",
            "bio": "Curabitur sed condimentum felis, ut luctus eros. Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et. Etiam mauris magna, fermentum vitae aliquet eu, cursus vitae sapien. Ut maximus, libero nec facilisis fringilla, ex sem sollicitudin leo, non congue tortor ligula in eros.",
            "spi": 3.61
        },
        {
            "name": "Tegra Núnez",
            "language": "Galician",
            "_id": "NC1ZUV6B853BZZCW",
            "bio": "Maecenas tempus neque ut porttitor malesuada. Pellentesque massa sem, scelerisque sit amet odio id, cursus tempor urna.",
            "spi": 6.68
        },
        {
            "name": "Dilnur Qeyser",
            "language": "Uyghur",
            "_id": "JVQ8RQ4YRPGLFMR8",
            "bio": "Maecenas non arcu nulla. Nulla finibus massa at viverra facilisis. Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero. Ut maximus, libero nec facilisis fringilla, ex sem sollicitudin leo, non congue tortor ligula in eros.",
            "spi": 7.93
        },
        {
            "name": "Tania Agius",
            "language": "Maltese",
            "_id": "WTDGKLDWJLR1BJKR",
            "bio": "Etiam congue dignissim volutpat. Pellentesque massa sem, scelerisque sit amet odio id, cursus tempor urna.",
            "spi": 4.78
        },
        {
            "name": "Iago Peirallo",
            "language": "Galician",
            "_id": "D51G7XQTX2SPHR52",
            "bio": "Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et. Donec congue sapien vel euismod interdum. Suspendisse potenti. Quisque maximus sodales mauris ut elementum. Quisque maximus sodales mauris ut elementum.",
            "spi": 6.3
        },
        {
            "name": "Mpho Lamola",
            "language": "Sesotho sa Leboa",
            "_id": "UGL8EOTXYBW1ILLW",
            "bio": "In id elit malesuada, pulvinar mi eu, imperdiet nulla. Curabitur ultricies id urna nec ultrices. Maecenas tempus neque ut porttitor malesuada. In sed ultricies lorem. Nullam sodales convallis mauris, sit amet lobortis magna auctor sit amet.",
            "spi": 2.05
        },
        {
            "name": "Josephine Balzan",
            "language": "Maltese",
            "_id": "4OLTG6QD0A2VB432",
            "bio": "Maecenas tempus neque ut porttitor malesuada. Sed eu libero maximus nunc lacinia lobortis et sit amet nisi. Maecenas non arcu nulla. Ut accumsan, est vel fringilla varius, purus augue blandit nisl, eu rhoncus ligula purus vel dolor. Curabitur quis commodo quam.",
            "spi": 7.64
        },
        {
            "name": "Thabò Motongwane",
            "language": "Sesotho sa Leboa",
            "_id": "NROE4ZZVGKZGDFNO",
            "bio": "Donec pellentesque ultrices mi, non consectetur eros luctus non. Suspendisse potenti. Suspendisse potenti.",
            "spi": 2.07
        },
        {
            "name": "Mmathabò Mojapelo",
            "language": "Sesotho sa Leboa",
            "_id": "VXJDXYPV5L300IFW",
            "bio": "Sed laoreet posuere sapien, ut feugiat nibh gravida at. Duis luctus, lacus eu aliquet convallis, purus elit malesuada ex, vitae rutrum ipsum dui ut magna. Nunc tincidunt laoreet laoreet. .",
            "spi": 9.36
        },
        {
            "name": "Kgabo Lerumo",
            "language": "Sesotho sa Leboa",
            "_id": "D63WWKQE2R4TFDIL",
            "bio": "Vestibulum pharetra libero et velit gravida euismod. Maecenas tempus neque ut porttitor malesuada. Morbi ultricies consequat ligula posuere eleifend. Quisque efficitur vel sapien ut imperdiet. Nam rutrum sollicitudin ante tempus consequat.",
            "spi": 6.69
        },
        {
            "name": "Lawrence Scicluna",
            "language": "Maltese",
            "_id": "0KDA7XKZNNZWL2SR",
            "bio": "Donec pellentesque ultrices mi, non consectetur eros luctus non. In id elit malesuada, pulvinar mi eu, imperdiet nulla. Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et.",
            "spi": 6.53
        },
        {
            "name": "Iria Xamardo",
            "language": "Galician",
            "_id": "ULUDKBP9PHBGHX2J",
            "bio": "Vivamus id faucibus velit, id posuere leo. Sed eu libero maximus nunc lacinia lobortis et sit amet nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam malesuada blandit erat, nec ultricies leo maximus sed. Ut viverra quis eros eu tincidunt.",
            "spi": 3.42
        },
        {
            "name": "Joseph Grech",
            "language": "Maltese",
            "_id": "T4P1164RJBJ8S6XD",
            "bio": "Aliquam scelerisque pretium tellus, sed accumsan est ultrices id. Donec lobortis eleifend condimentum.",
            "spi": 7.68
        },
        {
            "name": "Napogadi Selepe",
            "language": "Sesotho sa Leboa",
            "_id": "AJK91MKRFIHAQHHG",
            "bio": "Quisque maximus sodales mauris ut elementum. Maecenas quis nisi nunc.",
            "spi": 4.95
        },
        {
            "name": "Lesetja Theko",
            "language": "Sesotho sa Leboa",
            "_id": "AATM20BURO1DHDAE",
            "bio": "Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. Etiam mauris magna, fermentum vitae aliquet eu, cursus vitae sapien. Nulla finibus massa at viverra facilisis. Morbi finibus dui sed est fringilla ornare.",
            "spi": 6.81
        },
        {
            "name": "Martiño Arxíz",
            "language": "Galician",
            "_id": "CQ56N9MH3WK7H5YQ",
            "bio": "Proin tempus eu risus nec mattis. Morbi vitae nisi lacinia, laoreet lorem nec, egestas orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et. Nam rutrum sollicitudin ante tempus consequat. .",
            "spi": 7.13
        },
        {
            "name": "Malehumò Ledwaba",
            "language": "Sesotho sa Leboa",
            "_id": "E4F3HGRTKQKCT1SE",
            "bio": "Ut accumsan, est vel fringilla varius, purus augue blandit nisl, eu rhoncus ligula purus vel dolor. Curabitur quis commodo quam. Quisque maximus sodales mauris ut elementum. Curabitur sed condimentum felis, ut luctus eros. Curabitur ultricies id urna nec ultrices.",
            "spi": 6.52
        },
        {
            "name": "Musa Yasin",
            "language": "Uyghur",
            "_id": "1AF8GIQZ1LF8QW0U",
            "bio": "Phasellus tincidunt sollicitudin posuere. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. Ut maximus, libero nec facilisis fringilla, ex sem sollicitudin leo, non congue tortor ligula in eros. Ut accumsan, est vel fringilla varius, purus augue blandit nisl, eu rhoncus ligula purus vel dolor.",
            "spi": 1.54
        },
        {
            "name": "Lajwanti Kumari",
            "language": "Sindhi",
            "_id": "INRW3R54RAY7J9IS",
            "bio": "In sed ultricies lorem. Sed eu libero maximus nunc lacinia lobortis et sit amet nisi. Quisque mauris ligula, efficitur porttitor sodales ac, lacinia non ex. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "spi": 9.34
        },
        {
            "name": "Maria Sammut",
            "language": "Maltese",
            "_id": "BJRF0BWIHJ0Q12A1",
            "bio": "Maecenas tempus neque ut porttitor malesuada. Curabitur ultricies id urna nec ultrices.",
            "spi": 6.83
        },
        {
            "name": "Rita Busuttil",
            "language": "Maltese",
            "_id": "1QLMU6QZ7EYUNNZV",
            "bio": "Phasellus tincidunt sollicitudin posuere. Quisque efficitur vel sapien ut imperdiet. Vestibulum pharetra libero et velit gravida euismod. Maecenas tempus neque ut porttitor malesuada.",
            "spi": 2.09
        },
        {
            "name": "Roi Fraguela",
            "language": "Galician",
            "_id": "UAT0M2O42E9M4SFT",
            "bio": "Donec congue sapien vel euismod interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce congue aliquam elit ut luctus. Morbi ac tellus erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "spi": 1.08
        },
        {
            "name": "Matome Molamo",
            "language": "Sesotho sa Leboa",
            "_id": "7HI0UZZLRB9N5CBI",
            "bio": "Vestibulum pharetra libero et velit gravida euismod. Fusce eu ultrices elit, vel posuere neque. Duis pellentesque ultrices convallis.",
            "spi": 9.55
        },
        {
            "name": "Mapula Selokela",
            "language": "Sesotho sa Leboa",
            "_id": "6ZQTOKQI6K82EE9Q",
            "bio": "Duis pellentesque ultrices convallis. Nam laoreet, nunc non suscipit interdum, justo turpis vestibulum massa, non vulputate ex urna at purus. Ut viverra quis eros eu tincidunt. Proin tempus eu risus nec mattis.",
            "spi": 5.27
        },
        {
            "name": "Noa Ervello",
            "language": "Galician",
            "_id": "W9FR842CI16V8NU3",
            "bio": "Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et. Suspendisse sit amet ullamcorper sem. Quisque mauris ligula, efficitur porttitor sodales ac, lacinia non ex.",
            "spi": 9.33
        },
        {
            "name": "Naseem Kakepoto",
            "language": "Sindhi",
            "_id": "6C7HZV4WPV9C9KS6",
            "bio": "Morbi ultricies consequat ligula posuere eleifend. Fusce congue aliquam elit ut luctus. . Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula.",
            "spi": 1.4
        },
        {
            "name": "sayama Amir",
            "language": "Sindhi",
            "_id": "7K4IJT1X7G0EK9WC",
            "bio": "Morbi ac tellus erat. Aliquam scelerisque pretium tellus, sed accumsan est ultrices id. Maecenas quis nisi nunc. Etiam congue dignissim volutpat. Sed nec suscipit ligula.",
            "spi": 9.48
        },
        {
            "name": "Mariña Quintá",
            "language": "Galician",
            "_id": "7GXC4OQYXX5JJY9F",
            "bio": "Phasellus tincidunt sollicitudin posuere. Morbi ac tellus erat. Nullam ac sodales dolor, eu facilisis dui.",
            "spi": 8.81
        },
        {
            "name": "Memet Tursun",
            "language": "Uyghur",
            "_id": "KSFMV2JK2D553083",
            "bio": "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et. Morbi finibus dui sed est fringilla ornare. Suspendisse sit amet ullamcorper sem.",
            "spi": 7.56
        },
        {
            "name": "Carmen Vella",
            "language": "Maltese",
            "_id": "WUALBIMS4E8JS4L2",
            "bio": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc aliquet sodales nunc a pulvinar. Morbi vitae nisi lacinia, laoreet lorem nec, egestas orci. Vestibulum pharetra libero et velit gravida euismod.",
            "spi": 4.55
        },
        {
            "name": "Sobia Khanam",
            "language": "Sindhi",
            "_id": "YG1ERFWBJ7TIW35D",
            "bio": "Phasellus tincidunt sollicitudin posuere. Aliquam scelerisque pretium tellus, sed accumsan est ultrices id. Morbi ultricies consequat ligula posuere eleifend. Curabitur sed condimentum felis, ut luctus eros.",
            "spi": 4.59
        },
        {
            "name": "Raheela Ali",
            "language": "Sindhi",
            "_id": "7JGX9SMLD5DE2IMG",
            "bio": "Morbi finibus dui sed est fringilla ornare. Maecenas quis nisi nunc. Maecenas tempus neque ut porttitor malesuada. Curabitur ultricies id urna nec ultrices.",
            "spi": 4.75
        },
        {
            "name": "Rashid Rajput",
            "language": "Sindhi",
            "_id": "UNBGUGDUATATCLS4",
            "bio": "Donec congue sapien vel euismod interdum. Maecenas quis nisi nunc.",
            "spi": 8.51
        },
        {
            "name": "Uxía Feal",
            "language": "Galician",
            "_id": "35ZPXUNH1M6W3ZJP",
            "bio": "Vestibulum pharetra libero et velit gravida euismod. Vivamus id faucibus velit, id posuere leo.",
            "spi": 1.31
        },
        {
            "name": "Andrew Fenech",
            "language": "Maltese",
            "_id": "VEYKDKL8L0R0C7GQ",
            "bio": "In sed ultricies lorem. Etiam mauris magna, fermentum vitae aliquet eu, cursus vitae sapien. Sed laoreet posuere sapien, ut feugiat nibh gravida at.",
            "spi": 2.5
        },
        {
            "name": "Nicholas Micallef",
            "language": "Maltese",
            "_id": "ZYCAI905154LSICR",
            "bio": "Nam tristique feugiat est vitae mollis. Curabitur ultricies id urna nec ultrices. Morbi finibus dui sed est fringilla ornare.",
            "spi": 6.47
        },
        {
            "name": "Paul Borg",
            "language": "Maltese",
            "_id": "8AD5MMJ0TD0NJ6H2",
            "bio": "Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. Etiam mauris magna, fermentum vitae aliquet eu, cursus vitae sapien.",
            "spi": 3.77
        },
        {
            "name": "Sara Saleem",
            "language": "Sindhi",
            "_id": "5LPKMTZI7OPSJRBA",
            "bio": "Maecenas tempus neque ut porttitor malesuada. Etiam congue dignissim volutpat. Proin tempus eu risus nec mattis. Morbi vitae nisi lacinia, laoreet lorem nec, egestas orci. Duis commodo orci ut dolor iaculis facilisis.",
            "spi": 5.31
        },
        {
            "name": "Xurxo Golán",
            "language": "Galician",
            "_id": "526ZUSGXEETODHJK",
            "bio": "Ut viverra quis eros eu tincidunt. Morbi finibus dui sed est fringilla ornare. Sed laoreet posuere sapien, ut feugiat nibh gravida at. Duis commodo orci ut dolor iaculis facilisis. In sed ultricies lorem.",
            "spi": 1.75
        },
        {
            "name": "Peter Zammit",
            "language": "Maltese",
            "_id": "NNRT5QWNWO2WLS5V",
            "bio": "Duis commodo orci ut dolor iaculis facilisis. Maecenas quis nisi nunc.",
            "spi": 8.23
        },
        {
            "name": "Maname Mohlare",
            "language": "Sesotho sa Leboa",
            "_id": "KZJZ9SD0DIWTIBUC",
            "bio": "Quisque mauris ligula, efficitur porttitor sodales ac, lacinia non ex. Vestibulum pharetra libero et velit gravida euismod. Ut accumsan, est vel fringilla varius, purus augue blandit nisl, eu rhoncus ligula purus vel dolor. Sed eu libero maximus nunc lacinia lobortis et sit amet nisi.",
            "spi": 8.95
        },
        {
            "name": "Tshepè Mobu",
            "language": "Sesotho sa Leboa",
            "_id": "8CH586LQR7ZCP73P",
            "bio": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla finibus massa at viverra facilisis.",
            "spi": 7.82
        },
        {
            "name": "Monica Lohana",
            "language": "Sindhi",
            "_id": "KP1C2WN3DN1R3Y52",
            "bio": "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et. Aenean finibus in tortor vel aliquet. Nam laoreet, nunc non suscipit interdum, justo turpis vestibulum massa, non vulputate ex urna at purus. Morbi vitae nisi lacinia, laoreet lorem nec, egestas orci.",
            "spi": 7.95
        },
        {
            "name": "Patigul Rahman",
            "language": "Uyghur",
            "_id": "NXMNLB0SOYET1VMN",
            "bio": "In sed ultricies lorem. Proin tempus eu risus nec mattis. Nam rutrum sollicitudin ante tempus consequat. Aliquam scelerisque pretium tellus, sed accumsan est ultrices id.",
            "spi": 2.98
        },
        {
            "name": "Joanne Scerri",
            "language": "Maltese",
            "_id": "H8FJ2WKLGGF3K26U",
            "bio": "Fusce eu ultrices elit, vel posuere neque. Nulla finibus massa at viverra facilisis. Duis commodo orci ut dolor iaculis facilisis. Nam laoreet, nunc non suscipit interdum, justo turpis vestibulum massa, non vulputate ex urna at purus. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula.",
            "spi": 8.4
        },
        {
            "name": "Ratanang Maphutha",
            "language": "Sesotho sa Leboa",
            "_id": "EZXJTQQ2JWPB5DI3",
            "bio": "Vivamus id faucibus velit, id posuere leo. Phasellus tincidunt sollicitudin posuere. Duis pellentesque ultrices convallis.",
            "spi": 9.17
        },
        {
            "name": "Kamil Mehmud",
            "language": "Uyghur",
            "_id": "M24A9OMYPSX7FD16",
            "bio": "Donec congue sapien vel euismod interdum. Suspendisse potenti. In id elit malesuada, pulvinar mi eu, imperdiet nulla. Nunc aliquet sodales nunc a pulvinar. Ut viverra quis eros eu tincidunt.",
            "spi": 4.66
        },
        {
            "name": "Thobile Mbele",
            "language": "isiZulu",
            "_id": "631M00M8YFFBC5NC",
            "bio": "Nunc aliquet sodales nunc a pulvinar. Proin tempus eu risus nec mattis. Proin tempus eu risus nec mattis. Aliquam scelerisque pretium tellus, sed accumsan est ultrices id. Nam laoreet, nunc non suscipit interdum, justo turpis vestibulum massa, non vulputate ex urna at purus.",
            "spi": 8.96
        },
        {
            "name": "Kristján Kristjánsson",
            "language": "Icelandic",
            "_id": "0WT0ZW50DNSTCHKW",
            "bio": "Quisque maximus sodales mauris ut elementum. Pellentesque massa sem, scelerisque sit amet odio id, cursus tempor urna. Donec congue sapien vel euismod interdum. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. Donec lobortis eleifend condimentum.",
            "spi": 8.82
        },
        {
            "name": "Stefán Stefánsson",
            "language": "Icelandic",
            "_id": "1UOL8UK8BWAOSYTC",
            "bio": "Suspendisse potenti. Duis luctus, lacus eu aliquet convallis, purus elit malesuada ex, vitae rutrum ipsum dui ut magna. Morbi ultricies consequat ligula posuere eleifend.",
            "spi": 7.87
        },
        {
            "name": "Preeti Rajdan",
            "language": "Hindi",
            "_id": "3UN0X88Y4WYH3X8X",
            "bio": "In sed ultricies lorem. Vivamus id faucibus velit, id posuere leo. Duis commodo orci ut dolor iaculis facilisis. Nam rutrum sollicitudin ante tempus consequat.",
            "spi": 9.17
        },
        {
            "name": "Sanjay Trivedi",
            "language": "Hindi",
            "_id": "CPHR246457BD01KY",
            "bio": "Quisque maximus sodales mauris ut elementum. Morbi ac tellus erat. Maecenas tempus neque ut porttitor malesuada. Cras dictum dolor lacinia lectus vehicula rutrum.",
            "spi": 8.3
        },
        {
            "name": "Smiriti Sisodiya",
            "language": "Hindi",
            "_id": "X3KWIL5KEHTMCKOM",
            "bio": "Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero. Morbi finibus dui sed est fringilla ornare.",
            "spi": 3.27
        },
        {
            "name": "Sandeep Benarjee",
            "language": "Hindi",
            "_id": "9TS6CIE3UAIFG2IB",
            "bio": "Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et. Sed nec suscipit ligula. Quisque efficitur vel sapien ut imperdiet. Suspendisse sit amet ullamcorper sem.",
            "spi": 3.86
        },
        {
            "name": "Damir Benic",
            "language": "Bosnian",
            "_id": "QUNL9VBRHUGNOFMJ",
            "bio": ". Ut dictum, ligula eget sagittis maximus, tellus mi varius ex, a accumsan justo tellus vitae leo.",
            "spi": 9.56
        },
        {
            "name": "Sigrún Kristjánsdóttir",
            "language": "Icelandic",
            "_id": "BT1Q0NUPKHDVCFLE",
            "bio": "Ut dictum, ligula eget sagittis maximus, tellus mi varius ex, a accumsan justo tellus vitae leo. Nulla finibus massa at viverra facilisis.",
            "spi": 6.78
        },
        {
            "name": "Basetsana Thage",
            "language": "Setswana",
            "_id": "R9P3P2IAN7NY2X2Y",
            "bio": "Pellentesque massa sem, scelerisque sit amet odio id, cursus tempor urna. Nulla finibus massa at viverra facilisis. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula.",
            "spi": 3.97
        },
        {
            "name": "Rajesh Santoshi",
            "language": "Hindi",
            "_id": "OXQTFZHZW8SVE3SY",
            "bio": "Donec lobortis eleifend condimentum. Nam rutrum sollicitudin ante tempus consequat. Nullam sodales convallis mauris, sit amet lobortis magna auctor sit amet.",
            "spi": 8.35
        },
        {
            "name": "Margrét Magnúsdóttir",
            "language": "Icelandic",
            "_id": "1P6VZEDGK2XUU97L",
            "bio": "Sed eu libero maximus nunc lacinia lobortis et sit amet nisi. Duis pellentesque ultrices convallis. Donec lobortis eleifend condimentum.",
            "spi": 3.76
        },
        {
            "name": "Makhosi Ngiba",
            "language": "isiZulu",
            "_id": "CTM3Y3TZOLC7TPDU",
            "bio": "Ut dictum, ligula eget sagittis maximus, tellus mi varius ex, a accumsan justo tellus vitae leo. Suspendisse sit amet ullamcorper sem. Donec lobortis eleifend condimentum. Aenean finibus in tortor vel aliquet. Proin tempus eu risus nec mattis.",
            "spi": 1.18
        },
        {
            "name": "Lorato Bogosi",
            "language": "Setswana",
            "_id": "EEZ0KS5E0RXACAIA",
            "bio": "Morbi ultricies consequat ligula posuere eleifend. Nam rutrum sollicitudin ante tempus consequat. Ut dictum, ligula eget sagittis maximus, tellus mi varius ex, a accumsan justo tellus vitae leo. Curabitur ultricies id urna nec ultrices.",
            "spi": 5.48
        },
        {
            "name": "Modisaotsile Bolokwe",
            "language": "Setswana",
            "_id": "DN068KNEOAQ8LM19",
            "bio": "Nullam ac sodales dolor, eu facilisis dui. Duis commodo orci ut dolor iaculis facilisis. In id elit malesuada, pulvinar mi eu, imperdiet nulla. Donec congue sapien vel euismod interdum. Sed nec suscipit ligula.",
            "spi": 4.23
        },
        {
            "name": "Mxolisi Mhlongo",
            "language": "isiZulu",
            "_id": "Q2HFB19RPLHIZXKH",
            "bio": "Aliquam scelerisque pretium tellus, sed accumsan est ultrices id. Maecenas tempus neque ut porttitor malesuada. . Duis commodo orci ut dolor iaculis facilisis.",
            "spi": 7.49
        },
        {
            "name": "Moni Sisodiya",
            "language": "Hindi",
            "_id": "3CR7CN74GCKXWUQF",
            "bio": "Vestibulum pharetra libero et velit gravida euismod. Donec congue sapien vel euismod interdum. Fusce congue aliquam elit ut luctus. Ut viverra quis eros eu tincidunt. Phasellus tincidunt sollicitudin posuere.",
            "spi": 4.58
        },
        {
            "name": "Anna Jónsdóttir",
            "language": "Icelandic",
            "_id": "CKJW1XVW90VWO4Y1",
            "bio": "Etiam mauris magna, fermentum vitae aliquet eu, cursus vitae sapien. Donec lobortis eleifend condimentum. Etiam mauris magna, fermentum vitae aliquet eu, cursus vitae sapien.",
            "spi": 5.78
        },
        {
            "name": "Darko Basic",
            "language": "Bosnian",
            "_id": "FWT1CZQOIVRJTXRD",
            "bio": "Donec congue sapien vel euismod interdum. Fusce eu ultrices elit, vel posuere neque. Duis luctus, lacus eu aliquet convallis, purus elit malesuada ex, vitae rutrum ipsum dui ut magna.",
            "spi": 2.27
        },
        {
            "name": "Kedibonye Magogwe",
            "language": "Setswana",
            "_id": "PCT0HLRPZLDSSDU1",
            "bio": "Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et. Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et. Quisque maximus sodales mauris ut elementum.",
            "spi": 5.57
        },
        {
            "name": "Nobuhle Xaba",
            "language": "isiZulu",
            "_id": "5K1K8V1OUUFKQ2UV",
            "bio": "Maecenas non arcu nulla. Morbi ac tellus erat.",
            "spi": 1.18
        },
        {
            "name": "Monty Dubey",
            "language": "Hindi",
            "_id": "B7SF955NFGAEBRXU",
            "bio": "Maecenas quis nisi nunc. Maecenas tempus neque ut porttitor malesuada. Morbi ultricies consequat ligula posuere eleifend. Ut accumsan, est vel fringilla varius, purus augue blandit nisl, eu rhoncus ligula purus vel dolor.",
            "spi": 6.69
        },
        {
            "name": "Richa Choukse",
            "language": "Hindi",
            "_id": "BADWLBP8CNJNBEC8",
            "bio": "Nunc tincidunt laoreet laoreet. Ut dictum, ligula eget sagittis maximus, tellus mi varius ex, a accumsan justo tellus vitae leo. Curabitur quis commodo quam. Morbi vitae nisi lacinia, laoreet lorem nec, egestas orci.",
            "spi": 7.8
        },
        {
            "name": "Dzenan Imamovic",
            "language": "Bosnian",
            "_id": "FVAHD0OY99X9DIRW",
            "bio": "Nam tristique feugiat est vitae mollis. Quisque mauris ligula, efficitur porttitor sodales ac, lacinia non ex. Nullam ac sodales dolor, eu facilisis dui. Morbi finibus dui sed est fringilla ornare. Quisque efficitur vel sapien ut imperdiet.",
            "spi": 1.64
        },
        {
            "name": "Amol Bhatnagar",
            "language": "Hindi",
            "_id": "3HPSETKL9VOW2WTL",
            "bio": "Vestibulum pharetra libero et velit gravida euismod. Nam semper gravida nunc, sit amet elementum ipsum.",
            "spi": 3.28
        },
        {
            "name": "Ingibjörg Ólafsdóttir",
            "language": "Icelandic",
            "_id": "9BXLMMM1PQOZRHCR",
            "bio": "Maecenas non arcu nulla. Sed nec suscipit ligula. Fusce congue aliquam elit ut luctus.",
            "spi": 9.59
        },
        {
            "name": "Shweta Chourasia",
            "language": "Hindi",
            "_id": "9GAO62FXPQMUTTLJ",
            "bio": "Duis luctus, lacus eu aliquet convallis, purus elit malesuada ex, vitae rutrum ipsum dui ut magna. Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero. Quisque maximus sodales mauris ut elementum. Sed eu libero maximus nunc lacinia lobortis et sit amet nisi.",
            "spi": 5.84
        },
        {
            "name": "Ayanda Ndimande",
            "language": "isiZulu",
            "_id": "VPK9MQRKX2L847HQ",
            "bio": "Duis commodo orci ut dolor iaculis facilisis. Nam laoreet, nunc non suscipit interdum, justo turpis vestibulum massa, non vulputate ex urna at purus.",
            "spi": 2.89
        },
        {
            "name": "Sigurjón Guðmundsson",
            "language": "Icelandic",
            "_id": "IAYT285H2U8JU94F",
            "bio": "Sed eu libero maximus nunc lacinia lobortis et sit amet nisi. Ut viverra quis eros eu tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et.",
            "spi": 4.85
        },
        {
            "name": "Jóhannes Jóhannsson",
            "language": "Icelandic",
            "_id": "J2RAROEJGKMR72I8",
            "bio": "Duis pellentesque ultrices convallis. Nulla finibus massa at viverra facilisis. Ut dictum, ligula eget sagittis maximus, tellus mi varius ex, a accumsan justo tellus vitae leo.",
            "spi": 4.83
        },
        {
            "name": "Neo Dikgaka",
            "language": "Setswana",
            "_id": "OQRF6Y37N20JILOC",
            "bio": "Nam tristique feugiat est vitae mollis. Sed nec suscipit ligula. Nam laoreet, nunc non suscipit interdum, justo turpis vestibulum massa, non vulputate ex urna at purus. Duis pellentesque ultrices convallis. Maecenas quis nisi nunc.",
            "spi": 1.07
        },
        {
            "name": "Sanja Jankovic",
            "language": "Bosnian",
            "_id": "HD94EKIPA6WAL05C",
            "bio": "Phasellus tincidunt sollicitudin posuere. Nam laoreet, nunc non suscipit interdum, justo turpis vestibulum massa, non vulputate ex urna at purus. In id elit malesuada, pulvinar mi eu, imperdiet nulla. Donec congue sapien vel euismod interdum. Nullam ac sodales dolor, eu facilisis dui.",
            "spi": 1.06
        },
        {
            "name": "Mogorosi Bakwena",
            "language": "Setswana",
            "_id": "FTZM8YDJJUH1OEM7",
            "bio": "Vestibulum pharetra libero et velit gravida euismod. Suspendisse sit amet ullamcorper sem.",
            "spi": 6.03
        },
        {
            "name": "Ronak Gupta",
            "language": "Hindi",
            "_id": "ZYPDGK8UDYJPTRKN",
            "bio": "Sed laoreet posuere sapien, ut feugiat nibh gravida at. Quisque mauris ligula, efficitur porttitor sodales ac, lacinia non ex. In sed ultricies lorem. Pellentesque massa sem, scelerisque sit amet odio id, cursus tempor urna.",
            "spi": 7.18
        },
        {
            "name": "Ditiro Kgosi",
            "language": "Setswana",
            "_id": "67C5ET66U59WYJ6K",
            "bio": "Fusce congue aliquam elit ut luctus. Ut dictum, ligula eget sagittis maximus, tellus mi varius ex, a accumsan justo tellus vitae leo. Cras dictum dolor lacinia lectus vehicula rutrum. Etiam congue dignissim volutpat.",
            "spi": 4.56
        },
        {
            "name": "Jelena Maric",
            "language": "Bosnian",
            "_id": "JTW9DH3B9QGB39JY",
            "bio": "Vestibulum pharetra libero et velit gravida euismod. Etiam malesuada blandit erat, nec ultricies leo maximus sed.",
            "spi": 3.39
        },
        {
            "name": "Esha Sastry",
            "language": "Hindi",
            "_id": "4OJULHY03Z6XTRMW",
            "bio": "Morbi vitae nisi lacinia, laoreet lorem nec, egestas orci. Nullam ac sodales dolor, eu facilisis dui.",
            "spi": 5.1
        },
        {
            "name": "Chetana Hegde",
            "language": "Hindi",
            "_id": "J9GS1RODDZL325LK",
            "bio": "Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et. Nulla finibus massa at viverra facilisis. Nam tristique feugiat est vitae mollis. Phasellus tincidunt sollicitudin posuere.",
            "spi": 9.99
        },
        {
            "name": "Rahul Shukla",
            "language": "Hindi",
            "_id": "2ANVMAVG6YX2VT6N",
            "bio": "Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula.",
            "spi": 1.72
        },
        {
            "name": "Samra Delic",
            "language": "Bosnian",
            "_id": "BXJWNTJ2TDID61PJ",
            "bio": "Donec pellentesque ultrices mi, non consectetur eros luctus non. Sed nec suscipit ligula.",
            "spi": 2.5
        },
        {
            "name": "Mohan Pandey",
            "language": "Hindi",
            "_id": "XAHKVLM3I1WSPNIW",
            "bio": "Maecenas quis nisi nunc. Ut dictum, ligula eget sagittis maximus, tellus mi varius ex, a accumsan justo tellus vitae leo. Ut maximus, libero nec facilisis fringilla, ex sem sollicitudin leo, non congue tortor ligula in eros. Morbi ac tellus erat.",
            "spi": 8.1
        },
        {
            "name": "Haris Osmanovic",
            "language": "Bosnian",
            "_id": "ZDXF5KESMW9XF2TJ",
            "bio": "Nam rutrum sollicitudin ante tempus consequat. Etiam mauris magna, fermentum vitae aliquet eu, cursus vitae sapien.",
            "spi": 9.41
        },
        {
            "name": "Kenosi Kwenaemang",
            "language": "Setswana",
            "_id": "DX2IYTQ9IMY75W08",
            "bio": "Sed laoreet posuere sapien, ut feugiat nibh gravida at. Donec lobortis eleifend condimentum.",
            "spi": 9.01
        },
        {
            "name": "Nontobeko Nzimande",
            "language": "isiZulu",
            "_id": "Y9C4HQHTOP74DFZT",
            "bio": "Nullam sodales convallis mauris, sit amet lobortis magna auctor sit amet. Morbi vitae nisi lacinia, laoreet lorem nec, egestas orci. Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero. Nam laoreet, nunc non suscipit interdum, justo turpis vestibulum massa, non vulputate ex urna at purus.",
            "spi": 4.77
        },
        {
            "name": "Sanjay Puranik",
            "language": "Hindi",
            "_id": "WF2WP6S0HX8GR8GZ",
            "bio": "Ut viverra quis eros eu tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et. Nam semper gravida nunc, sit amet elementum ipsum.",
            "spi": 3.37
        },
        {
            "name": "Sethunya Mpšwe",
            "language": "Setswana",
            "_id": "85MVUXVQ5H5HPA4F",
            "bio": "Quisque maximus sodales mauris ut elementum. Duis commodo orci ut dolor iaculis facilisis. Sed eu libero maximus nunc lacinia lobortis et sit amet nisi.",
            "spi": 1.75
        },
        {
            "name": "Dileep Chaturvedi",
            "language": "Hindi",
            "_id": "O95BY1KDMCEYQRFH",
            "bio": "Phasellus tincidunt sollicitudin posuere. In id elit malesuada, pulvinar mi eu, imperdiet nulla. Vivamus id faucibus velit, id posuere leo. Nullam ac sodales dolor, eu facilisis dui. Ut dictum, ligula eget sagittis maximus, tellus mi varius ex, a accumsan justo tellus vitae leo.",
            "spi": 4.94
        },
        {
            "name": "Adnan Spahic",
            "language": "Bosnian",
            "_id": "97IIDMHAJMBPI4ON",
            "bio": "Duis commodo orci ut dolor iaculis facilisis. Vivamus id faucibus velit, id posuere leo.",
            "spi": 9.1
        },
        {
            "name": "Madhur Jain",
            "language": "Hindi",
            "_id": "FM300CZ0VU9LTNTE",
            "bio": "Fusce eu ultrices elit, vel posuere neque. Donec congue sapien vel euismod interdum. Vivamus id faucibus velit, id posuere leo. Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero. Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et.",
            "spi": 4.99
        },
        {
            "name": "Nayan Mittal",
            "language": "Hindi",
            "_id": "S879KFFIHDNK8GSE",
            "bio": "Suspendisse sit amet ullamcorper sem. In id elit malesuada, pulvinar mi eu, imperdiet nulla. Duis commodo orci ut dolor iaculis facilisis.",
            "spi": 3.99
        },
        {
            "name": "Kabelo Morwe",
            "language": "Setswana",
            "_id": "JJDPB2983QRVATD3",
            "bio": "Nullam ac sodales dolor, eu facilisis dui. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. . Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero. Curabitur ultricies id urna nec ultrices.",
            "spi": 8.86
        },
        {
            "name": "Einar Einarsson",
            "language": "Icelandic",
            "_id": "ZWMFEUEBNYTW2WPB",
            "bio": "Etiam mauris magna, fermentum vitae aliquet eu, cursus vitae sapien. Duis pellentesque ultrices convallis. Nullam sodales convallis mauris, sit amet lobortis magna auctor sit amet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et. Donec congue sapien vel euismod interdum.",
            "spi": 9.05
        },
        {
            "name": "Luka Lovren",
            "language": "Bosnian",
            "_id": "9S4SGEQWBKMRISYZ",
            "bio": "Maecenas tempus neque ut porttitor malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur quis commodo quam. Nam rutrum sollicitudin ante tempus consequat.",
            "spi": 5.22
        },
        {
            "name": "Sigríður Einarsdóttir",
            "language": "Icelandic",
            "_id": "4IJVD6OE3C7IX3ZG",
            "bio": "Aenean finibus in tortor vel aliquet. Nam tristique feugiat est vitae mollis.",
            "spi": 6.63
        },
        {
            "name": "Sonu Jain",
            "language": "Hindi",
            "_id": "0OIB5SU9JB2PBJDV",
            "bio": "Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. Curabitur ultricies id urna nec ultrices.",
            "spi": 9.66
        },
        {
            "name": "Boitumelo Ngwako",
            "language": "Setswana",
            "_id": "INZITSS95L9V52JE",
            "bio": "Ut maximus, libero nec facilisis fringilla, ex sem sollicitudin leo, non congue tortor ligula in eros. Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et. Nam tristique feugiat est vitae mollis. Quisque mauris ligula, efficitur porttitor sodales ac, lacinia non ex. In sed ultricies lorem.",
            "spi": 9.07
        },
        {
            "name": "Shilpa Bhatia",
            "language": "Hindi",
            "_id": "SU0W3T6TF8G3JY5M",
            "bio": "Morbi ultricies consequat ligula posuere eleifend. Donec pellentesque ultrices mi, non consectetur eros luctus non. Quisque efficitur vel sapien ut imperdiet. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "spi": 4.43
        },
        {
            "name": "Modise Tau",
            "language": "Setswana",
            "_id": "U6SF3N4JXJEQSC1P",
            "bio": "Vivamus id faucibus velit, id posuere leo. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. Fusce eu ultrices elit, vel posuere neque. Nunc tincidunt laoreet laoreet.",
            "spi": 6.23
        },
        {
            "name": "Reena Shrivastav",
            "language": "Hindi",
            "_id": "Y57EEOVURYX1OA1P",
            "bio": "Donec lobortis eleifend condimentum. Curabitur ultricies id urna nec ultrices. Maecenas non arcu nulla.",
            "spi": 3.07
        },
        {
            "name": "Thabani Ngubani",
            "language": "isiZulu",
            "_id": "LR7FI8WEE3SLTW02",
            "bio": "Cras dictum dolor lacinia lectus vehicula rutrum. Nulla finibus massa at viverra facilisis.",
            "spi": 5.99
        },
        {
            "name": "Gunnar Gunnarsson",
            "language": "Icelandic",
            "_id": "UVI6EKJNMC3VE3WU",
            "bio": "In sed ultricies lorem. Donec congue sapien vel euismod interdum. Duis commodo orci ut dolor iaculis facilisis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et.",
            "spi": 8.7
        },
        {
            "name": "Lejla Selimagic",
            "language": "Bosnian",
            "_id": "ESBBT644VZ64SSEN",
            "bio": "Vivamus id faucibus velit, id posuere leo. Etiam congue dignissim volutpat. Donec lobortis eleifend condimentum. Fusce eu ultrices elit, vel posuere neque.",
            "spi": 5.59
        },
        {
            "name": "Kgosietsile Bogatsu",
            "language": "Setswana",
            "_id": "0B8IOVL2NSVJVV6T",
            "bio": "Curabitur quis commodo quam. In id elit malesuada, pulvinar mi eu, imperdiet nulla. Nullam ac sodales dolor, eu facilisis dui. Duis commodo orci ut dolor iaculis facilisis.",
            "spi": 6.78
        },
        {
            "name": "Sushant Bhargav",
            "language": "Hindi",
            "_id": "PRWA7HE1GJ7OCYQM",
            "bio": "Proin tempus eu risus nec mattis. Maecenas tempus neque ut porttitor malesuada. Quisque efficitur vel sapien ut imperdiet. Quisque efficitur vel sapien ut imperdiet.",
            "spi": 5.36
        },
        {
            "name": "Monika Nayak",
            "language": "Hindi",
            "_id": "RO0ZCWFTY6MJ66AZ",
            "bio": "Sed eu libero maximus nunc lacinia lobortis et sit amet nisi. Quisque efficitur vel sapien ut imperdiet. Nam rutrum sollicitudin ante tempus consequat. Curabitur ultricies id urna nec ultrices. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula.",
            "spi": 7.58
        },
        {
            "name": "Guðrún Guðmundsdóttir",
            "language": "Icelandic",
            "_id": "R1TRJT5TWANYO88D",
            "bio": "Maecenas non arcu nulla. In sed ultricies lorem.",
            "spi": 4.65
        },
        {
            "name": "Shakti Menon",
            "language": "Hindi",
            "_id": "J1NSHQXRWA7CY0AZ",
            "bio": "Vivamus id faucibus velit, id posuere leo. Etiam malesuada blandit erat, nec ultricies leo maximus sed. Nam semper gravida nunc, sit amet elementum ipsum.",
            "spi": 5.16
        },
        {
            "name": "Ndumiso Hlatshwayo",
            "language": "isiZulu",
            "_id": "533XA8H67VO8CSGQ",
            "bio": "Quisque efficitur vel sapien ut imperdiet. Nam semper gravida nunc, sit amet elementum ipsum. Donec pellentesque ultrices mi, non consectetur eros luctus non. Vestibulum pharetra libero et velit gravida euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "spi": 5.24
        },
        {
            "name": "Lucky Shastry",
            "language": "Hindi",
            "_id": "3OBF3U08WI1QF63N",
            "bio": "Morbi ultricies consequat ligula posuere eleifend. Suspendisse sit amet ullamcorper sem.",
            "spi": 7.86
        },
        {
            "name": "Pule Matlhaku",
            "language": "Setswana",
            "_id": "UPATVXM44DAFUDI7",
            "bio": "Maecenas tempus neque ut porttitor malesuada. Vivamus id faucibus velit, id posuere leo. Morbi finibus dui sed est fringilla ornare.",
            "spi": 4.12
        },
        {
            "name": "Raju Rathore",
            "language": "Hindi",
            "_id": "QQMNYP788DEFG4IS",
            "bio": "Nam rutrum sollicitudin ante tempus consequat. Pellentesque massa sem, scelerisque sit amet odio id, cursus tempor urna. Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero.",
            "spi": 9.86
        },
        {
            "name": "Xolani Ngcobo",
            "language": "isiZulu",
            "_id": "SXWZ4IYT5VZA6WEE",
            "bio": "Ut dictum, ligula eget sagittis maximus, tellus mi varius ex, a accumsan justo tellus vitae leo. Fusce eu ultrices elit, vel posuere neque. Curabitur quis commodo quam.",
            "spi": 4.77
        },
        {
            "name": "Meenakshi Benjaree",
            "language": "Hindi",
            "_id": "933PPBA946YX1K4X",
            "bio": "Maecenas tempus neque ut porttitor malesuada. Duis pellentesque ultrices convallis.",
            "spi": 7.9
        },
        {
            "name": "Ólafur Magnússon",
            "language": "Icelandic",
            "_id": "NWY9HV455M3W8QKY",
            "bio": "Morbi ultricies consequat ligula posuere eleifend. Duis pellentesque ultrices convallis. Vestibulum pharetra libero et velit gravida euismod. Ut dictum, ligula eget sagittis maximus, tellus mi varius ex, a accumsan justo tellus vitae leo. Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et.",
            "spi": 2.09
        },
        {
            "name": "Samir Simic",
            "language": "Bosnian",
            "_id": "6H2IO7A62ZVUXGKZ",
            "bio": "Etiam malesuada blandit erat, nec ultricies leo maximus sed. Quisque maximus sodales mauris ut elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "spi": 6.93
        },
        {
            "name": "Swarnika Soni",
            "language": "Hindi",
            "_id": "4GJF8C6P1Y5RFPMC",
            "bio": "Ut maximus, libero nec facilisis fringilla, ex sem sollicitudin leo, non congue tortor ligula in eros. Nunc tincidunt laoreet laoreet.",
            "spi": 4.82
        },
        {
            "name": "Lavanya Mittal",
            "language": "Hindi",
            "_id": "4Z09CO5IJH7CEUD2",
            "bio": "Suspendisse sit amet ullamcorper sem. Ut dictum, ligula eget sagittis maximus, tellus mi varius ex, a accumsan justo tellus vitae leo.",
            "spi": 1.08
        },
        {
            "name": "Bontle Mokgatle",
            "language": "Setswana",
            "_id": "4Y497GAOTAFUJDIC",
            "bio": "Maecenas non arcu nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "spi": 1.92
        },
        {
            "name": "Prashant Chourey",
            "language": "Hindi",
            "_id": "J4NMMNAALGOIZY8V",
            "bio": "Etiam malesuada blandit erat, nec ultricies leo maximus sed. Suspendisse potenti. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. Ut viverra quis eros eu tincidunt.",
            "spi": 8.59
        },
        {
            "name": "Prakash Malviya",
            "language": "Hindi",
            "_id": "P442H9CEHIU6HAFV",
            "bio": "Proin tempus eu risus nec mattis. Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero. Vivamus id faucibus velit, id posuere leo. In id elit malesuada, pulvinar mi eu, imperdiet nulla. Donec pellentesque ultrices mi, non consectetur eros luctus non.",
            "spi": 8.21
        },
        {
            "name": "Ivana Kalic",
            "language": "Bosnian",
            "_id": "31VIE8WWDJWKE5YL",
            "bio": "Quisque efficitur vel sapien ut imperdiet. Duis luctus, lacus eu aliquet convallis, purus elit malesuada ex, vitae rutrum ipsum dui ut magna.",
            "spi": 6.99
        },
        {
            "name": "Ajeet Vasav",
            "language": "Hindi",
            "_id": "ODNPTWVSRBPII0BH",
            "bio": "Aenean finibus in tortor vel aliquet. Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero. Morbi finibus dui sed est fringilla ornare. Morbi finibus dui sed est fringilla ornare. Ut maximus, libero nec facilisis fringilla, ex sem sollicitudin leo, non congue tortor ligula in eros.",
            "spi": 3.6
        },
        {
            "name": "Jóhanna Jóhannsdóttir",
            "language": "Icelandic",
            "_id": "ZI21GM8B08FVLMF0",
            "bio": "In sed ultricies lorem. Etiam malesuada blandit erat, nec ultricies leo maximus sed.",
            "spi": 4.93
        },
        {
            "name": "Seema Thapar",
            "language": "Hindi",
            "_id": "IZSO10C5ZHVYQ5O2",
            "bio": "Duis commodo orci ut dolor iaculis facilisis. Etiam mauris magna, fermentum vitae aliquet eu, cursus vitae sapien. Maecenas tempus neque ut porttitor malesuada. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et.",
            "spi": 1.79
        },
        {
            "name": "María Stefánsdóttir",
            "language": "Icelandic",
            "_id": "KWH2RVHSB25MYGL9",
            "bio": "In id elit malesuada, pulvinar mi eu, imperdiet nulla. Sed eu libero maximus nunc lacinia lobortis et sit amet nisi. Ut viverra quis eros eu tincidunt. Nam rutrum sollicitudin ante tempus consequat.",
            "spi": 5.21
        },
        {
            "name": "Denis Terzic",
            "language": "Bosnian",
            "_id": "1WQO4VGBS2U7DOSL",
            "bio": "Ut accumsan, est vel fringilla varius, purus augue blandit nisl, eu rhoncus ligula purus vel dolor. Curabitur quis commodo quam. Curabitur ultricies id urna nec ultrices. Nam rutrum sollicitudin ante tempus consequat. Morbi finibus dui sed est fringilla ornare.",
            "spi": 6.32
        },
        {
            "name": "Ana Livic",
            "language": "Bosnian",
            "_id": "8JYVK7SM07YQOVQ3",
            "bio": "Nam tristique feugiat est vitae mollis. Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et. Pellentesque massa sem, scelerisque sit amet odio id, cursus tempor urna. Proin tempus eu risus nec mattis. Sed eu libero maximus nunc lacinia lobortis et sit amet nisi.",
            "spi": 5.93
        },
        {
            "name": "Bukhosi Bhengu",
            "language": "isiZulu",
            "_id": "AFYXL0UNGMU0B1H2",
            "bio": "Curabitur quis commodo quam. Curabitur sed condimentum felis, ut luctus eros. Aliquam scelerisque pretium tellus, sed accumsan est ultrices id. Aliquam scelerisque pretium tellus, sed accumsan est ultrices id. Sed nec suscipit ligula.",
            "spi": 9.37
        },
        {
            "name": "Siyabonga Sithole",
            "language": "isiZulu",
            "_id": "NJDX77JXV51CNGF5",
            "bio": "Quisque mauris ligula, efficitur porttitor sodales ac, lacinia non ex. Sed laoreet posuere sapien, ut feugiat nibh gravida at.",
            "spi": 8.22
        },
        {
            "name": "Meena Dubey",
            "language": "Hindi",
            "_id": "GCJGYXSPDEFF9BTN",
            "bio": "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et. Donec lobortis eleifend condimentum. Morbi ac tellus erat. Maecenas quis nisi nunc.",
            "spi": 2.95
        },
        {
            "name": "Chandrika Gupta",
            "language": "Hindi",
            "_id": "7KFJHS86WKTL6Q12",
            "bio": "Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et. Suspendisse sit amet ullamcorper sem. Etiam mauris magna, fermentum vitae aliquet eu, cursus vitae sapien.",
            "spi": 5.35
        },
        {
            "name": "Akhilesh Khare",
            "language": "Hindi",
            "_id": "ATINHMT01VNMMDCP",
            "bio": "Donec congue sapien vel euismod interdum. Suspendisse potenti. Nullam ac sodales dolor, eu facilisis dui. Nam tristique feugiat est vitae mollis. Curabitur ultricies id urna nec ultrices.",
            "spi": 3.68
        },
        {
            "name": "Motsumi Basiang",
            "language": "Setswana",
            "_id": "MUELSFQENUOHGBZ3",
            "bio": "Cras dictum dolor lacinia lectus vehicula rutrum. Ut maximus, libero nec facilisis fringilla, ex sem sollicitudin leo, non congue tortor ligula in eros. Donec congue sapien vel euismod interdum.",
            "spi": 5.23
        },
        {
            "name": "Neha Benjaree",
            "language": "Hindi",
            "_id": "5VTSZUD0SA9JVL40",
            "bio": "Morbi ultricies consequat ligula posuere eleifend. Nulla finibus massa at viverra facilisis. Nam tristique feugiat est vitae mollis.",
            "spi": 5.73
        },
        {
            "name": "Kristín Sigurðardóttir",
            "language": "Icelandic",
            "_id": "ZP5TBBYX6RI2UJ31",
            "bio": "Cras dictum dolor lacinia lectus vehicula rutrum. Cras dictum dolor lacinia lectus vehicula rutrum. Duis luctus, lacus eu aliquet convallis, purus elit malesuada ex, vitae rutrum ipsum dui ut magna. Fusce congue aliquam elit ut luctus. Duis commodo orci ut dolor iaculis facilisis.",
            "spi": 2.8
        },
        {
            "name": "Rohini Vasav",
            "language": "Hindi",
            "_id": "UEFML43TCGS04KWM",
            "bio": "Ut accumsan, est vel fringilla varius, purus augue blandit nisl, eu rhoncus ligula purus vel dolor. Ut maximus, libero nec facilisis fringilla, ex sem sollicitudin leo, non congue tortor ligula in eros. Nam rutrum sollicitudin ante tempus consequat. Aliquam scelerisque pretium tellus, sed accumsan est ultrices id. Suspendisse sit amet ullamcorper sem.",
            "spi": 9.3
        },
        {
            "name": "Sunil Kapoor",
            "language": "Hindi",
            "_id": "VY2A0APGVHK5NAW2",
            "bio": "Proin tempus eu risus nec mattis. Ut dictum, ligula eget sagittis maximus, tellus mi varius ex, a accumsan justo tellus vitae leo. In id elit malesuada, pulvinar mi eu, imperdiet nulla.",
            "spi": 8.04
        },
        {
            "name": "Zamokuhle Zulu",
            "language": "isiZulu",
            "_id": "XU7BX2F8M5PVZ1EF",
            "bio": "Etiam congue dignissim volutpat. Phasellus tincidunt sollicitudin posuere. Phasellus tincidunt sollicitudin posuere. Nam tristique feugiat est vitae mollis.",
            "spi": 8.39
        },
        {
            "name": "Bhupesh Menon",
            "language": "Hindi",
            "_id": "0CEPNRDV98KT3ORP",
            "bio": "Maecenas tempus neque ut porttitor malesuada. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. Quisque mauris ligula, efficitur porttitor sodales ac, lacinia non ex. Maecenas quis nisi nunc.",
            "spi": 2.69
        }
    ]
    return(
        <>
            <div className="row">
                {
                    students.map((value)=>
                        <div className="card" style={{width: "23%",margin: "10px"}}>
                            <div className="card-body">
                                <h5 className="card-title">{ value.name }</h5>
                                <h6 className="card-subtitle mb-2 text-muted">{ value.language }</h6>
                                <p className="card-text">{ value.bio }</p>
                            </div>
                        </div>
                    )
                }
            </div>
        </>
    );
}