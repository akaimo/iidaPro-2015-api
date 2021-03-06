# coding: utf-8

path = Rails.root.join("db/seeds/trash.json")
# path = Rails.root.join("db/trash.json")
json = ActiveSupport::JSON.decode(File.read(path))

json.each do |data|
  Trash.create(
    title: data["品目名"],
    read: data["読み"],
    read_head: data["頭文字"],
    category: data["検索用出し方"],
    all_category: data["詳細用出し方"],
    info: data["出し方のポイント"]
  )
end
