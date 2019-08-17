# frozen_string_literal: true

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: 'Incididunt excepteur exercitation proident consectetur cupidatat sint qui velit elit esse velit in nostrud cupidatat consequat laborum qui eiusmod.'
  )
end

puts '10 blog posts created'

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts '5 skills created'

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "My great service",
    body: "Aliqua ex qui eu consequat duis ut exercitation tempor culpa fugiat in nostrud est minim est incididunt ullamco dolore sint cillum sit labore eiusmod cillum dolore nostrud cupidatat ad incididunt nostrud ut ut ullamco eu eiusmod veniam laborum deserunt.",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

puts '9 portfolio items created'
