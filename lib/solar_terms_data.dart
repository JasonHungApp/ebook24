class SolarTerm {
  final String name;
  final String date;
  final String description;
  final String imageUrl; 

  SolarTerm({required this.name, required this.date, required this.description, required this.imageUrl});
  
}

final Map<String, List<SolarTerm>> solarTerms = {
    "春": [
      SolarTerm(name: "立春", date: "2月3或4或5日", description: "立春是二十四節氣中的第一個節氣，表示春季的開始，萬物復甦。\n\n"
              "由於台灣氣候暖和，立春時，中南部地區一期水稻已進行插秧，北部地區則為休耕或播種。\n\n"
              "立春又象徵春天開始的意思，因此人們常根據立春之天氣，預期未來一年之收成。\n\n"
              "節氣與漁業\n"
              "大陸沿岸冷水海流繼續迫降南下，使等水溫線往南下移動，而鰆魚類之最適水溫範圍在18℃～20℃，故在彭佳嶼、釣魚台方海域可捕到鰆魚。\n\n"
              "鯖魚主要有尖頭花鯖（花腹鯖）及白腹鯖，鯖的漁場主要在釣魚台以北附近海域系外．尚有東沙群島系之鯖，產卵時所需之水溫為16.7℃～25.5℃，因此在本節氣中鯖魚之產卵洄游在蘇澳以北及高雄外海之同等水溫線上均可捕獲鯖魚。\n\n"
              "烏魚由上月繼續南下洄游，其卵巢已經成熟，並洄游至恆春外海，其水域之等溫線亦在21℃~23℃，已是烏魚最適產卵之環境。\n\n"
              "北方冷水勢力愈強，可將東海中鯖、沙魚（雙髻鮫黑沙、青鮫等）壓迫至台灣東北部，使魚族為索餌、產卵及作季節性之洄游。\n\n"
              "在基隆外海及彰化外海捕獲之黑鯧及白帶魚同屬於19℃等水溫線上，此兩種魚族原屬棲息於東海之魚群，冬天因北方冷水團南下，被迫南下越冬洄游，造成盛漁期。\n\n"
              "嘉腊魚，童尖隨冷水團繼續南下，故可在澎湖及高雄外海等水溫（20℃~21℃）區捕獲。\n\n"
              "節氣與民俗\n"
              "立春是二十四節氣中的第一個．它的意義是指春天從此開始。\n\n"
              "古代立春日有一項饒富意義的民俗活動－打春牛，大約漢朝時代，立春日便有塑立土牛及耕人的禮俗。起初是藉以象徵春天來臨，農民必須準備春耕，本是一種靜態的陳列，後來則演變成「鞭打春牛」的活動，而「耕人」也變成勾芒神，勾芒是春神。\n\n"
              "宋代的「鞭春」，從地方到中央都須舉行，首都地區，立春前一天即須將土牛（春牛）抬進皇宮讓皇帝御覽。第二天一大早，近臣內官便用五色絲杖鞭牛，有人說這是因為牛休息了一個冬天，不鞭策牠會變成懶骨頭。官吏鞭春後，在旁圍觀的民眾便蜂湧而上爭奪「牛肉」；據說搶得到「牛肉」者，表示家有「好采頭」今年會豐收。\n\n"
              "進入民國以後，打春牛的禮俗就很少聽說，但是政府重視農民的政策千古不變，所以民國三十年特別選定立春日這一天為農民節，每年農民節都盛大慶祝，並表揚傑出農民。\n\n"
              "二十四節氣的「節」一般都在月初，而「氣」則在月中，立春日在正月初一的情形，很少遇到，因此被稱為「百年難逢歲朝春」。正月初一開新正，戶戶貼春聯，人人穿新衣，不但要隆重地祭祝祖先，還必須到附近的寺廟行香，到親友家拜年，街頭巷尾，恭喜聲、爆竹聲不絕於耳。初二繼續祭祖拜年，出嫁女兒此日歸寧向父母拜年。初三俗稱垃圾日，略事休息，初四接神，初五俗稱「隔開」表示春節告一段落，各行業開始興工大吉。\n\n"
              "正月初六清水祖師廟誕辰，是日有盛大祭典。正月初九天公生；天公生就是玉皇大帝生日。\n\n"
              "節氣與諺語\n"
              "• 立春落雨透清明：立春日若下雨，直到清明前都會多雨。春喜晴不喜雨，尤忌打雷。\n"
              "• 立春打雷，十處豬欄九處空：表六畜不安。\n"
              "• 雷不打春，今年一定好年冬。\n"
              "• 正月展春流：立春以後，潮汐海流加大。\n"
              "• 春天後母面：入春以後，氣候陰晴冷煖無常。\n"
              "• 春霧曝死鬼，夏霧做大水：春天降霧會放晴，夏天降霧會雨澇成災。\n\n"
              "節氣與種植\n"
              "北部：茄子、番茄、大蔥、牛蒡、分蔥\n"
              "中部：白芋、西瓜、胡瓜、甜瓜、鵲豆、蕹菜、莧菜、莿瓜、肉豆、蔥\n"
              "南部：白芋、薑、越瓜、鵲豆、刁豆、萵苣、肉豆",
  imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/lichun.jpg", 
),
      SolarTerm(name: "雨水", date: "2月18或19日", description: "雨水表示降雨開始增多，氣溫回升，適宜農業耕作。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/yushui.jpg",),
      SolarTerm(name: "驚蟄", date: "3月5或6日", description: "驚蟄表示春雷驚醒冬眠的蟲類，農民開始忙於春耕。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/jingzhe.jpg",),
      SolarTerm(name: "春分", date: "3月20或21日", description: "春分時節晝夜平分，氣溫逐漸升高，春耕工作展開。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/chunfen.jpg",),
      SolarTerm(name: "清明", date: "4月4或5日", description: "清明是掃墓祭祖的節日，同時也是農耕的重要時期。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/qingming.jpg",),
      SolarTerm(name: "穀雨", date: "4月19或20日", description: "穀雨表示降雨增多，有利於穀物的生長，標誌著春季接近尾聲。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/guyu.jpg",),
    ],
    "夏": [
      SolarTerm(name: "立夏", date: "5月5或6日", description: "立夏標誌著夏季的開始，氣溫逐漸升高，農作物進入快速生長期。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/lixia.jpg",),
      SolarTerm(name: "小滿", date: "5月20或21日", description: "小滿表示農作物開始灌漿，但未完全成熟，需注意水分管理。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/xiaoman.jpg",),
      SolarTerm(name: "芒種", date: "6月5或6日", description: "芒種是播種忙碌的時節，適合種植稻、麥等有芒作物。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/mangzhong.jpg",),
      SolarTerm(name: "夏至", date: "6月21或22日", description: "夏至是一年中白天最長的一天，氣溫最高，需注意防暑。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/xiazhi.jpg",),
      SolarTerm(name: "小暑", date: "7月6或7日", description: "小暑表示進入炎熱的季節，但尚未達到最熱，農作物需加強管理。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/xiaoshu.jpg",),
      SolarTerm(name: "大暑", date: "7月22或23日", description: "大暑是一年中最炎熱的時期，農田需加強灌溉防旱。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/dashu.jpg",),
    ],
    "秋": [
      SolarTerm(name: "立秋", date: "8月7或8日", description: "立秋標誌著秋季的開始，天氣逐漸轉涼，農作物進入收穫期。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/liqiu.jpg",),
      SolarTerm(name: "處暑", date: "8月22或23日", description: "處暑表示炎熱的夏季結束，秋高氣爽的天氣開始。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/chushu.jpg",),
      SolarTerm(name: "白露", date: "9月7或8日", description: "白露表示氣溫下降，夜晚的露水增多，秋意漸濃。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/bailu.jpg",),
      SolarTerm(name: "秋分", date: "9月22或23日", description: "秋分時節晝夜平分，氣候宜人，適合收穫與播種。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/qiufen.jpg",),
      SolarTerm(name: "寒露", date: "10月8或9日", description: "寒露表示氣溫繼續下降，露水更冷，需注意保暖。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/hanlu.jpg",),
      SolarTerm(name: "霜降", date: "10月23或24日", description: "霜降是秋季的最後一個節氣，氣溫驟降，霜凍開始出現。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/shuangjiang.jpg",),
  ],
    "冬": [
      SolarTerm(name: "立冬", date: "11月7或8日", description: "立冬標誌著冬季的開始，天氣轉冷，農作物進入休眠期。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/lidong.jpg",),
      SolarTerm(name: "小雪", date: "11月22或23日", description: "小雪表示氣溫下降，開始有少量降雪，冬季作物進入冬藏。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/xiaoxue.jpg",),
      SolarTerm(name: "大雪", date: "12月7或8日", description: "大雪表示降雪量增多，氣溫驟降，需注意防寒保暖。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/daxue.jpg",),
      SolarTerm(name: "冬至", date: "12月21或22日", description: "冬至是一年中白天最短的節氣，表示寒冬的正式來臨。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/dongzhi.jpg",),
      SolarTerm(name: "小寒", date: "1月6或7日", description: "小寒是冬季最寒冷的時期之一，氣候乾冷，需注意防寒。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/xiaohan.jpg",),
      SolarTerm(name: "大寒", date: "1月20或21日", description: "大寒是一年中最寒冷的節氣，標誌著冬季的最終階段。", imageUrl: "https://f.bmcx.com/file/jieqi/jieqi/dahan.jpg",),
    ],
  };