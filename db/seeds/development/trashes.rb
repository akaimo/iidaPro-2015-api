# coding: utf-8

0.upto(9) do |idx|
  Trash.create(
    title: "hoge",
    read: "ほげ",
    category_id: 0,
    knowledge_id: nil
  )
end
