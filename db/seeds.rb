# coding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def regist_album(tune_info)
  al = Album.find_or_create_by_title(tune_info.shift)
  tune_info.each do |t|
    tune   = Tune.find_or_create_by_title(t[0])
    tuning = Tuning.find_or_create_by_name_and_capo( t[1], t[2] != nil ? t[2] : 0 )
    tuning.tunes << tune

    recording = Recording.find_or_create_by_tune_id_and_album_id( tune.id, al.id )
    tune.save
  end
end

regist_album [
  "Kotaro Oshio",
  ["光のつばさ", "CGDGCD"],
  ["彩音",  "CGDGCD"],
  ["第三の男",  "DGDGBE"],
  ["禁じられた遊び",  "Standard"],
  ["アイルランドの風",  "AAEGAD"],
  ["木もれ陽",  "Standard", 5],
  ["Dancin' コオロギ",  "Standard"],
  ["戦場のメリークリスマス",  "DADGAC"],
  ["カバティーナ",  "DGDGBD"],
  ["ボレロ",  "CGCGBE"],
  ["星砂",  "DADGAD"],
  ["アトランティス大陸",  "GGDGGG"],
  ["ちいさな輝き",  "Standard"],
]

regist_album [
  "LOVE STRINGS",
  ["Blue Sky",  "CGDGBD"],
  ["In the morning",  "Standard"],
  ["リボンの騎士",  "Standard"],
  ["ライムライト",  "Standard"],
  ["ピアノレッスン",  "CADGBE"],
  ["LOVE STRINGS",  "FCGDAE"],
  ["宵待月",  "Standard", 5],
  ["ニューシネマパラダイス",  "Standard"],
  ["遥かなる大地",  "EEBEF#B"],
  ["HARD RAIN",  "GGDGGD"],
  ["リベルタンゴ",  "Standard"],
  ["いつか王子様が",  "Standard"],
  ["ずっと… ",  "Standard"],
]

regist_album [
  "STARTING POINT",
  ["Fantasy!",  "CGDGBD"],
  ["Destiny",  "Standard"],
  ["ティコ",  "Standard"],
  ["Breeze",  "Standard"],
  ["黄昏",  "Standard"],
  ["Merry Christmas Mr. Lawrence",  "DADGAC"],
  ["Blue sky (exciting version)",  "CGDGBD"],
  ["初恋",  "AEEF#BE"],
  ["Tension",  "CGDGB♭D"],
  ["ハリー・ライムのテーマ","DGDGBE"],
  ["木もれ陽 (cinema version)",  "Standard", 5],
  ["HARD RAIN (type:D)",  "GGDGGD"],
]

regist_album [
  "DRAMATIC",
  ["SPLASH",  "DADGAD"],
  ["太陽のダンス",  "AEEF#BE"],
  ["風の詩",  "Standard"],
  ["ハッピー・アイランド",  "DADGBD"],
  ["カノン",  "DADGBD", 5],
  ["ボレロ",  "CGCGBE"],
  ["そらはキマグレ",  "DADF#AD"],
  ["約束",  "CGDGAD", 5],
  ["Chaser",  "CGCGB♭D"],
  ["プロローグ",  "Standard"],
  ["again...",  "Standard"],
]

regist_album [
  "Be HAPPY",
  ["翼 ～you are the HERO～",  "DADGAD"],
  ["ミスティ・ナイト",  "EADGBD"],
  ["天使の日曜日",  "E♭B♭E♭A♭C♭E♭"],
  ["ジュピター",  "Standard"],
  ["Dear...",  "Standard"],
  ["AQUA-MARINE",  "CGDGBD"],
  ["見上げてごらん夜の星を",  "Standard"],
  ["ファイト！",  "BEADF#B"],
  ["Busy2",  "AAC#GBE"],
  ["桜・咲くころ",  "Standard"],
  ["坂の上の公園",  "Standard"],
]
  
regist_album [
  "BOLERO! Be HAPPY LIVE",
  ["ボレロ",  "CGCGBE"],
  ["ブルー・ホール",  "CGDGBD"],
  ["AQUA-MARINE",  "CGDGBD"],
  ["Blue sky",  "CGDGBD"],
  ["ミスティ・ナイト",  "EADGBD"],
  ["Breeze",  "Standard"],
  ["Merry Christmas Mr. Lawrence",  "DADGAC"],
  ["オールド・フレンド",  "Standard"],
  ["Dear...",  "Standard"],
  ["見上げてごらん夜の星を",  "Standard"],
  ["Busy2",  "AAC#GBE"],
  ["HARD RAIN",  "GGDGGD"],
  ["翼 ～you are the HERO～",  "DADGAD"],
  ["ちいさな輝き",  "Standard"],
]

regist_album [
  "Panorama",
  ["Departure",  "CGDGBD"],
  ["オアシス",  "AEEF#BE"],
  ["サバンナ",  "DADF#AD"],
  ["オーロラ",  "DADGAD"],
  ["コンドルは飛んで行く",  "CGDGBD"],
  ["Passion",  "Standard"],
  ["空色のみずうみ",  "Standard"],
  ["Friend",  "Standard" ,3],
  ["Brilliant Road",  "DAEAC#E"],
  ["家路",  "Standard"],
  ["Carnival",  "Standard"],
  ["夢のつづき",  "Standard"],
]

regist_album [
  "Blue sky ～Kotaro Oshio Best Album～",
  ["Blue sky (exciting version)",  "CGDGBD"],
  ["HARD RAIN (type:D)",  "GGDGGD"],
  ["Fantasy!",  "CGDGBD"],
  ["桜・咲くころ",  "Standard"],
  ["SPLASH",  "DADGAD"],
  ["翼 ～you are the HERO～",  "DADGAD"],
  ["Departure",  "CGDGBD"],
  ["ハッピー・アイランド",  "DADGBD"],
  ["Chaser",  "CGCGB♭D"],
  ["ボレロ",  "CGCGBE"],
  ["カノン",  "G♭D♭G♭BE♭G♭"],
  ["Merry Christmas Mr. Lawrence",  "DADGAC"],
  ["オアシス",  "AEEF#BE"],
  ["風の彼方（風の詩）",  "Standard"],
  ["ラスト・クリスマス",  "DADGBD"],
  ["Friend (CM version)",  "Standard" , 3],
]

regist_album [
  "COLOR of LIFE",
  ["Big Blue Ocean",  "DADGAD"],
  ["YELLOW SUNSHINE",  "GGDGGD"],
  ["Indigo Love",  "Standard"],
  ["Red Shoes Dance",  "Standard"],
  ["クリスタル",  "CGDGBD"],
  ["グリーンスリーブス",  "Standard"],
  ["ブラックモンスター",  "DADGAC"],
  ["PINK CANDY",  "BBDG#BF#"],
  ["セピア色の写真",  "Standard"],
  ["星砂 ～金色に輝く砂浜～",  "DADGAD"],
  ["Purple Highway",  "CGDGB♭D"],
  ["あの夏の白い雲",  "DADGAD"],
]

regist_album [
  "Nature Spirit",
  ["Deep Silence",  "AAEGAE"],
  ["Rushin'",  "AAEGAE"],
  ["DREAMING",  "Standard"],
  ["My Home Town",  "Standard"],
  ["TREASURE",  "DADGBD"],
  ["Buzzer Beater",  "DADGAD"],
  ["ノスタルジア",  "Standard"],
  ["渚",  "CGDGBD"],
  ["永遠の青い空",  "Standard"],
  ["Hangover",  "Standard"],
  ["IN MY LIFE",  "Standard"],
  ["PEACE!",  "DADGBD"],
  ["スマイル",  "Standard"],
  ["Christmas Rose",  "CGDGBD", 4],
]

regist_album [
  "You & Me",
  ["Rushin'",  "AAEGAE"],
  ["Here We Go!",  "Standard"],
  ["君がくれた時間",  "Standard"],
  ["Big Blue Ocean",  "DADGAD"],
  ["あの夏の白い雲",  "DADGAD"],
  ["A Wonderful Day",  "Standard"],
  ["Purple Highway",  "CGDGB♭D"],
  ["HARD RAIN",  "GGDGGD"],
  ["ブラックモンスター",  "DADGAC"],
  ["With You",  "DADGAD"],
]

regist_album [
  "Tussie mussie",
  ["LOVIN' YOU",  "Standard"],
  ["CLOSE TO YOU",  "C#G#D#G#B#D#"],
  ["そして僕は途方に暮れる",  "C#G#D#G#B#D#",3],
  ["元気を出して",  "Standard"],
  ["FIRST LOVE",  "CGDGBD"],
  ["CAN’T TAKE MY EYES OFF OF YOU ～君の瞳に恋してる～",  "Standard"],
  ["SOMEDAY",  "C#G#C#F#A#C#"],
  ["TIME AFTER TIME",  "C#G#D#G#B#D#", 3],
  ["涙のキッス",  "C#G#D#G#B#D#", 3],
  ["LOVE",  "Standard"],
]

regist_album [
  "Eternal Chain",
  ["Prelude ～sunrise～",  "CGDGBD", 3],
  ["Landscape",  "CGDGBD", 3],
  ["Road Goes On",  "DADGAD"],
  ["Always",  "Standard"],
  ["Interlude ～forestbeat～",  "Standard"],
  ["Snappy!",  "AAEGAE"],
  ["旅の途中",  "C#G#EF#BE"],
  ["Interlude ～sunshine～",  "C#G#D#G#CD#"],
  ["楽園",  "C#G#D#G#CD#"],
  ["日曜日のビール",  "GCFB♭DG"],
  ["Believe",  "CGDGBD", 2],
  ["Interlude ～starlight～",  "C#G#EF#BE"],
  ["絆",  "C#G#EF#BE"],
  ["Earth Angel",  "AEEF#BE"],
  ["ハピネス",  "GCFB♭DG"],
  ["Coda ～sunset～",  "CGDGBD", 3],
]

regist_album [
  "Hand to Hand",
  ["Brand New Wings",  "C#G#EF#BE"],
  ["HEART BEAT!",  "Standard"],
  ["Jet",  "GGDGAC"],
  ["ナユタ",  "C#G#D#G#CD#"],
  ["Good Times",  "CGDGBD"],
  ["もっと強く",  "BA♭D♭G♭B♭E♭"],
  ["予感",  "CGDGB♭D"],
  ["Little Prayer",  "GCFB♭DG"],
  ["Go Ahead",  "DADGAD"],
  ["雨上がり",  "E♭B♭E♭A♭B♭E♭"],
  ["手のひら",  "Standard"],
  ["草笛",  "DADF#BD"],
  ["Over Drive",  "AAEEAE"],
  ["fly to the dream",  "CGDGBD"],
  ["また明日。",  "Standard"],
]
