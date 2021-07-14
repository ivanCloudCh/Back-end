after :type_users, :permissions do
  permissions = []
  # (1..7).each do |index|
  #   permissions << Permission.find(index)
  # end
  permissions << Permission.find(1)
  User.create(email: "admin@admin.com", type_user_id: TypeUser::ADMINISTRATOR, password: "admin", password_confirmation: 'admin',
              name: "Alex", last_name: "Burgos", last_mother_name: "González", permissions: permissions, phone:'9994425654')
end