# coding: utf-8

path = Rails.root.join("db/seeds/trash.json")
json = ActiveSupport::JSON.decode(File.read(path))

json.each do |data|
  Trash.create(
    title: data["品目名"],
    read: data["読み"],
    category_id: 0,
    knowledge_id: nil
  )
end
