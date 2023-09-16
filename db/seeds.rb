# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



1000.times do |i|
  Contact.create!(first_name: "#{i}_first_name", last_name: "#{i}_last_name", personal_email: "personal_email_#{i}", mobile_phone: "cellphone_#{i}")
end

AssessmentLevel.create!(level: "1")
AssessmentLevel.create!(level: "2")
AssessmentLevel.create!(level: "3")
AssessmentLevel.create!(level: "HR")
AssessmentLevel.create!(level: "MGR")

EventType.create(name: "OC Meeting")
EventType.create(name: "Protest - Solidarity")
EventType.create(name: "Protest - Our Union")
EventType.create(name: "Protest - Walkout")
EventType.create(name: "Union Day")

JobLevel.create(level: "1")
JobLevel.create(level: "2")
JobLevel.create(level: "3")
JobLevel.create(level: "4")
JobLevel.create(level: "5")
JobLevel.create(level: "6")
JobLevel.create(level: "7")
JobLevel.create(level: "8")
JobLevel.create(level: "10")
JobLevel.create(level: "11")
JobLevel.create(level: "12")
JobLevel.create(level: "99")

JobTitle.create(title: "HRBP")
JobTitle.create(title: "ICQA Programmer")
JobTitle.create(title: "Project Manager")
JobTitle.create(title: "Program Manager")
JobTitle.create(title: "SDE")
JobTitle.create(title: "SDE II")
JobTitle.create(title: "Sr. SDE")

SocialMediaType.create!(name: "dA")
SocialMediaType.create!(name: "Discord")
SocialMediaType.create!(name: "Facebook")
SocialMediaType.create!(name: "Mastodon")
SocialMediaType.create!(name: "Reddit")
SocialMediaType.create!(name: "Twitter")

Training.create(name: 'First Training')
Training.create(name: 'Second Training')
Training.create(name: 'Third Training')
Training.create(name: 'Fourth Training')
Training.create(name: 'Fifth Training')
