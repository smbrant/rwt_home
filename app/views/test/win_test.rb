window(:title=>'Simple window',:width=>600,:height=>300) do
  button(:text=>'Displays a message') do |b|
    b.on('click') do
      message('Rwt will make your life easier!')
    end
  end
  button(:text=>'Creates a new window') do |b|
    b.on('click') do
      show_view('/test/win_test')
    end
  end
end

show_code('/app/views/desktop/examples.rb')
show_code('/app/views/test/win_test.rb')
