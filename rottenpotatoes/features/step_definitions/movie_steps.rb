Given /the following movies exist/ do |movies_table|
    movies_table.hashes.each do |movie|
        Movie.create!(movie)
    end 
end 

Then /^the director of "(.*)" should be "(.*)"$/ do |title_value, director_value|
    movie = Movie.find_by_title(title_value)
    expect(movie.director).to eq director_value
end

Then /I should see "(.*)" before "(.*)"/ do |movie_title1, movie_title2|
    body = page.body
    loc1 = body.index(movie_title1)
    loc2 = body.index(movie_title2)
    if loc1==nil || loc2==nil
        fail "One of both search parameters not found"
    else
        expect(loc1<loc2).to eq true
    end
end    
    

    