# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seeds to populate Activity table.

puts 'Creando actividades...'
Activity.create([
    {
        name: 'Apoyo Escolar para el nivel Primario',
        content: 'El espacio de apoyo escolar es el corazón del área educativa. Se realizan los
        talleres de lunes a jueves de 10 a 12 horas y de 14 a 16 horas en el
        contraturno, Los sábados también se realiza el taller para niños y niñas que
        asisten a la escuela doble turno. Tenemos un espacio especial para los de
        1er grado 2 veces por semana ya que ellos necesitan atención especial!
        Actualmente se encuentran inscriptos a este programa 150 niños y niñas de
        6 a 15 años. Este taller está pensado para ayudar a los alumnos con el
        material que traen de la escuela, también tenemos una docente que les da
        clases de lengua y matemática con una planificación propia que armamos
        en Manos para nivelar a los niños y que vayan con más herramientas a la
        escuela.'
    },
    {
        name: 'Apoyo Escolar Nivel Secundaria',
        content: 'Del mismo modo que en primaria, este taller es el corazón del área
        secundaria. Se realizan talleres de lunes a viernes de 10 a 12 horas y de 16 a
        18 horas en el contraturno. Actualmente se encuentran inscriptos en el taller
        50 adolescentes entre 13 y 20 años. Aquí los jóvenes se presentan con el
        material que traen del colegio y una docente de la institución y un grupo de
        voluntarios los recibe para ayudarlos a estudiar o hacer la tarea. Este
        espacio también es utilizado por los jóvenes como un punto de encuentro y
        relación entre ellos y la institución.'
    },
    {
        name: 'Tutorías',
        content:'Es un programa destinado a jóvenes a partir del tercer año de secundaria,
        cuyo objetivo es garantizar su permanencia en la escuela y construir un
        proyecto de vida que da sentido al colegio. El objetivo de esta propuesta es
        lograr la integración escolar de niños y jóvenes del barrio promoviendo el
        soporte socioeducativo y emocional apropiado, desarrollando los recursos
        institucionales necesarios a través de la articulación de nuestras
        intervenciones con las escuelas que los alojan, con las familias de los
        alumnos y con las instancias municipales, provinciales y nacionales que
        correspondan.'
    }
])
puts 'Actividades creadas.'

Role.create([
              { name: 'user', description: 'Usuario' },
              { name: 'admin', description: 'Administrador' }
            ])
puts 'Roles creados:'
Role.all.each { |role| puts "* #{role.name}" }
User.create([
              { first_name: 'Ender', last_name: 'Ruiz', email: 'user1@gmail.com', password: 'alkemy123', role: Role.first },
              { first_name: 'Joaquin', last_name: 'Logiudice', email: 'user2@gmail.com', password: 'alkemy123', role: Role.first },
              { first_name: 'Danielid', last_name: 'Ramirez', email: 'admin1@gmail.com', password: 'alkemy123', role: Role.last },
              { first_name: 'Luis', last_name: 'Castro Martinez', email: 'admin2@gmail.com', password: 'alkemy123', role: Role.last },
              { first_name: 'Miguel', last_name: 'Liendo', email: 'admin2@gmail.com', password: 'alkemy123', role: Role.last }
            ])
puts 'Usuarios creados:'
User.all.each { |user| puts "*#{user.email}" }
