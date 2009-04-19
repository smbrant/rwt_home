window(t(:'first_window'),300,200) do
  button(t(:'seems_easy')) do |b|
    b.on('click') {show_view('/test/first')}
  end
end
