# coding: utf-8

path = Rails.root.join("db/seeds/trash.json")
# path = Rails.root.join("db/trash.json")
json = ActiveSupport::JSON.decode(File.read(path))

json.each do |data|
  Trash.create(
    title: data["品目名"],
    read: data["読み"],
    category: data["出し方"],
    knowledge_id: nil
  )
end
