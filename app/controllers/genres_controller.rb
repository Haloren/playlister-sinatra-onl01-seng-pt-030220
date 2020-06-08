class GenresController < ApplicationController
    # This should present the user with a list of all genres in the library.
    # Each genre should be a clickable link to that particular genre's show page.

    get '/genres' do
        @genres = Genre.all
        erb :'genres/index'
    end

    get '/genres/:slug' do
        @genre = Genre.find_by_slug(parmas[:slug])
        erb :'/genres/show'
    end

end