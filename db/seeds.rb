# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(username: 'opiniyo_admin', password: 'admin123', password_confirmation: 'admin123')
Report.create(write_up: 'I walk home after tutor at around 6 plus, and the streets look kind of sketchy. As in not much guards, and not much lights.', name: 'Phil Co', age: 16)
Tag.create(name: 'Security', report_id: 1) 
Comment.create(write_up: 'I agree with the public trashcans so people won’t throw their trash on the ground anymore.', name: 'Quade Ong', age: 16, report_id: 1)
Report.create(write_up: 'Some places are not well lit and there is also heavy traffic in the area.', name: 'Anika Gaw', age: 14)
Tag.create(name: 'Security', report_id: 2)
Tag.create(name: 'Traffic', report_id: 2)
Petition.create(write_up: 'The lights along Jose Abad Santos are no longer working thus compromising the security of resi- dents, civilians, and pedestrians in the area during night time.', title: 'Get New Street Lights')
Report.create(write_up: 'The roads are too crowded because of all the cars. Roads are also broken, and the sidewalks are filled with sari sari stores and vendors.', name: 'Ethan Tantuco', age: 17)
Tag.create(name: 'Traffic', report_id: 3)
Tag.create(name: 'Roads', report_id: 3)
Petition.create(write_up: 'Lorem ipsum Lorem.', title: 'Lorem')
Petition.create(write_up: 'I love bacon', title: 'Bacon')


Call.create(event: 'Relief Goods Packing', date: 'March 4, 2016', time: '8.00 AM', venue: 'Barangay Hall')
Announcement.create(write_up: 'Santolan road scheduled for road widening construction this weekend')
Survey.create(write_up: 'Kindly answer the survey by clicking the link below:', link: 'http://docs.google.com/asdfs/.aods')
Poll.create(information: 'Would you like the barangay to have a sportsfest?', deadline: 'March 22, 2016')
Choice.create(name: 'Yes', poll_id: 1)
Choice.create(name: 'No', poll_id: 1)
Announcement.create(write_up: 'Akyat Bahay break in house at Jose Abad Santos Please stay vigilant and take care! Please contact the barangay for any concerns')
Call.create(event: 'Miting de Avance', date: 'April 1, 2016', time: '4.30PM-6.00PM', venue: 'Barangay Sports Centre')

About.create(write_up: "This project aims to empower the youth of Barangay Little Baguio to participate through submitting their concerns and insights to this website Submissions of this website will be filtered and then forwarded to the barangay heads in the form of a monthly newsletter to officiate the concerns of the youth of Barangay Little Baguio.
The youth possess a unique perspective as to how they can contribute to their own communities that is unlike their older counterparts. Adolescents nowadays take to the internet and social media as their main medium to voice out not just their political opinions, but also their economic and social stands. This website shall serve as a means for the youth express the changes they want to initiate for them to develop a fuller sense of community.
For inquiries, please contact [email]")

Code.create(code: 'pie')