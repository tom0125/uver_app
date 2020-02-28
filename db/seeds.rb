%W[特になし 駐輪場所が無い、または遠い 汁漏れ注意 商品が大きい バックの持込み必須 バックの持込み不可 待ち時間が長い その他].each { |a| Caution.create(matter: a) }
%W[中央区 東区 西区 南区 博多区].each { |a| Area.create(name: a) }