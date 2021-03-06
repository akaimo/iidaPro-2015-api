# coding: utf-8

path = Rails.root.join("db/seeds/district.json")
json = ActiveSupport::JSON.decode(File.read(path))

json.each do |data|
  District.create(
    area: data["区"],
    town: data["町名"],
    read: data["よみがな"],
    read_head: data["頭文字"],
    office: data["事業所"],
    normal_1: data["普通ごみ1"],
    normal_2: data["普通ごみ2"],
    bottle: data["PET等・乾電池"],
    plastic: data["プラ容器"],
    mixedPaper: data["ミックスペーパー"],
    bigRefuse_date: data["粗大・金属"],
    bigRefuse_1: data["粗大・金属1"],
    bigRefuse_2: data["粗大・金属2"]
  )
end
