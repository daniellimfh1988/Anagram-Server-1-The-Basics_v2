
get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/anagrams' do
  @anagram_array = Word.is_anagram(params[:anagram_word])
  erb :index
end
