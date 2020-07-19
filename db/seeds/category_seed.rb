categories = [
    'エンタメ',
    'スポーツ',
    'ビジネス',
    '教育',
    '政治',
    '経済',
    'IT',
    '医療',
    'テクノロジー',
    '旅行',
    '恋愛',
    '雑談'
]

categories.each do |category_name|
    Category.create!(
        name: category_name
    )
end