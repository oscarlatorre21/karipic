# Crear un usuario de prueba
user = User.create!(email: 'karina@example.com', password: 'password', name: 'Karina')

# Adjuntar una imagen de perfil al usuario
profile_image_path = Rails.root.join('db', 'seeds', '../../../profile_user.png')
user.profile_image.attach(io: File.open(profile_image_path), filename: 'profile_user.png', content_type: 'image/jpeg')

# Crear un par de imágenes de prueba y adjuntar imágenes a las Picture
picture1 = Picture.create!(name: 'Sunset', content: 'Beautiful sunset over the hills', user: user)
picture2 = Picture.create!(name: 'Mountains', content: 'Snowy mountains in winter', user: user)

# Adjuntar imágenes a las Pictures
picture1_image_path = Rails.root.join('db', 'seeds', '../../../picture1.jpg')
picture1.image.attach(io: File.open(picture1_image_path), filename: 'picture1.jpg', content_type: 'image/jpeg')

picture2_image_path = Rails.root.join('db', 'seeds', '../../../picture2.png')
picture2.image.attach(io: File.open(picture2_image_path), filename: 'picture2.png', content_type: 'image/jpeg')

# Crear comentarios de prueba
Comment.create!(content: 'Amazing picture!', user: user, picture: picture1)
Comment.create!(content: 'Looks so peaceful!', user: user, picture: picture2)

