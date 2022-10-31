5.times do |topic|
Topic.create!(
    titel: "My topic #{topic}"
)
end
puts "10 topics created"

10.times do |blog|
   Blog.create!(
    titel:"my blog post #{blog}",
    body: "It is a long established fact that a reader will be distracted by 
    the readable content of a page when looking at its layout. 
    The point of using Lorem Ipsum is that it has a more-or-less normal distribution of 
    letters, as opposed to using 'Content here,Many desktop publishing packages and web p
    age editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' 
    will uncover many web sites still in their infancy. Various versions have evolved over the 
    years, sometimes by accident, sometimes on purpose (injected humour and the like). ",
    topic_id: Topic.last.id
   )
end    
puts "10 blogs created"

5.times do |skill|
    Skill.create!(
    titel: "Rails #{skill}",
    percent_utilized:15
    )
end    
puts "5 skills created"

8.times do |portfolio|
    Portfolio.create!(
    titel: "Portfolio titel #{portfolio}",
    subtitel:"Ruby on rails",
    body:"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). ",
    main_image:"https://via.placeholder.com/600x400",
    thumb_image:"https://via.placeholder.com/350x200"

    )
end  
1.times do |portfolio|
    Portfolio.create!(
    titel: "Portfolio titel #{portfolio}",
    subtitel:"Angular",
    body:"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). ",
    main_image:"https://via.placeholder.com/600x400",
    thumb_image:"https://via.placeholder.com/350x200"

    )
end  

puts "9 portfolio items created"

5.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology}"
        
    )
end

puts "5 technologies created"