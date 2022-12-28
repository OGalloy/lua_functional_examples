function map_users(tab, fun)
  local data = {}
  for i in pairs(tab) do
    data[i] = fun(tab[i])
  end
  return data
end
--get name
get_name = function(tab)
  return tab.name
end
--actual users
users = {{name="dima", age=18, damage = 30},
         {name="Anton", age=19, damage = 46},
         {name="Jonny", age=34, damage = 345},
         {name="Vova", age=45, damage = 34}
        }
result = map_users(users, get_name)

for i in pairs(result) do
  print(result[i])
end