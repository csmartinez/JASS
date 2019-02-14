# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

profiles = Profile.create([{
  fname: 'Linda',
  lname: 'Batala',
  ethnicity: 'Native American',
  iep: 'YES',
  background: '',
  math: 'Meeting standards'
},
{
  fname: 'Skyker',
  lname: 'Bell',
  ethnicity: 'White',
  iep: 'NO',
  background: '',
  math: 'Meeting standards'
},
{
  fname: 'Ryan',
  lname: 'Lee',
  ethnicity: 'Native American',
  iep: 'NO',
  background: '',
  math: 'Meeting standards'
},
{
  fname: 'Anastasia',
  lname: 'Everson',
  ethnicity: 'White',
  iep: 'NO',
  background: '',
  math: 'Excelling standards'
},
{
  fname: 'Shawna',
  lname: 'Givens',
  ethnicity: 'Native American',
  iep: 'YES',
  background: '',
  math: 'Falling far below'
},
{
  fname: 'Elizabeth',
  lname: 'Holliman',
  ethnicity: 'Native American',
  iep: 'Single parents with Mom',
  background: '',
  math: 'Falling far below'
},
{
  fname: 'Robert',
  lname: 'Johnson',
  ethnicity: 'Native American',
  iep: 'YES',
  background: '',
  math: 'Meeting standards'
},
{
  fname: 'Aaron',
  lname: 'Kock',
  ethnicity: 'Native American',
  iep: 'NO',
  background: '',
  math: 'Meeting standards'
},
{
  fname: 'Samantha',
  lname: 'Lopez',
  ethnicity: 'Native American',
  iep: 'NO',
  background: '',
  math: 'Meeting standards'
},
{
  fname: 'Chelsey',
  lname: 'Lovett',
  ethnicity: 'Native American',
  iep: 'NO',
  background: '',
  math: 'Meeting standards'
}

])

users = User.create([
  {
  email: 'admin@test.com',
  acc_type: 'admin',
  superior: 8,
  faculty_key: 'testing4',
  student_key: 'testing4',
  admin_key: 'testing4',
  password: 'admin123',
  password_confirmation: 'admin123'
  },
  {
  email: 'superadmin@test.com',
  acc_type: 'superadmin',
  faculty_key: 'testing2',
  student_key: 'testing3',
  admin_key: 'testing',
  password: 'superadmin123',
  password_confirmation: 'superadmin123'
  },
  {
  email: 'faculty@test.com',
  acc_type: 'faculty',
  student_key: 'testing5',
  superior: 10,
  password: 'faculty123',
  password_confirmation: 'faculty123'
  }
])

scenarios = Scenario.create([

  {
    name: 'Bilingual Student',
    description: 'Lorem ipsum dolor sit amet, c
              onsectetur adipiscing elit, sed do eiusmod tempor
              incididunt ut labore et dolore magna aliqua. Ut
              enim ad minim veniam, quis nostrud exercitation
               ullamco laboris',
    link: 'link',
    profile_relationship: 'Johnson, Robert',
    exercise_id: 10100101
  }
  ])

classrooms = Classroom.create([
  {
    name: 'Classroom 1',
    description: 'Test classroom #1',
    user_id: 2
  },
  {
    name: 'Classroom 2',
    description: 'Test classroom #2',
    user_id: 3
  },
  {
    name: 'Classroom 3',
    description: 'Test classroom #3',
    user_id: 4
  }
])
