rwt_app do |app|
  app << toolbar do |tb|
    tb << menu('Test') do |m|
      m << menu_item('Basic CRUD',call_view('/rwt_contacts/index'))
      m << menu_item('Other tests',Rwt.message('Other tests','To include other tests, alter the menu in /app/views/desktop/index.rb'))
    end
  end
end
