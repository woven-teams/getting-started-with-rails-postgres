# This isn't super efficient, but it's okay.

30.times do |n|
  article = Article.where(title: "Article #{n}").first_or_create \
    created_at: n.days.ago,
    text: Faker::Hipster.paragraph

  # Add between 1 and 3 comments to every 4th article
  if article.comments.empty? && n % 4 == 0
    (1 + rand(3)).times do |n|
      article.comments.create! \
        commenter: Faker::Name.name,
        body: Faker::Hipster.sentence
    end
  end
end
