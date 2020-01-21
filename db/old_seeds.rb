count = 1
Contact.all.each do |contact|
  p count 
  count += 1
  contact.update(bio: Faker::Hipster.paragraphs)
end