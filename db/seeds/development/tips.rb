# coding: utf-8

path = Rails.root.join("db/seeds/tips.json")
json = ActiveSupport::JSON.decode(File.read(path))

json.each do |data|
  Tip.create(
    title: data["タイトル"],
    detail: data["本文"],
    genre: data["ジャンル"],
  )
end
