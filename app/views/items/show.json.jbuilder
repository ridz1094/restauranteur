json.item do
  json.id @item.id
  json.name @item.name
  json.price @item.price
  json.tag_list @item.tag_list.map{ |i| "#"+i}.join(" ")
end
