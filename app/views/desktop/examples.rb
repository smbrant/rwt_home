rwt_app do
  toolbar(:place=>'tb') do
    text('<b>Rwt Examples:</b>')
    menu('IDE') do
      menu_item('Activate',call_view("/ide/activate"))
      menu_item('De-activate',call_view("/ide/deactivate"))
      menu_item('Clear',call_view("/ide/clear"))
    end
    menu('Simple tests') do
      menu_item('Simple window',call_view("/test/win_test"))
      menu_item('Inline code',call_view("/test/inline_test"))
    end
    menu('Forms') do
      menu('Very Simple') do
        menu_item('extjs',call_view('/forms/very_simple_extjs'))
        menu_item('rwt',call_view('/forms/very_simple_rwt'))
      end
      menu('Adding fieldsets') do
        menu_item('extjs',call_view('/forms/with_fieldsets_extjs'))
        menu_item('rwt',call_view('/forms/with_fieldsets_rwt'))
      end
    end

  end

  tabpanel( :renderTo=>'ide-main',
            :resizeTabs=>true,
            :enableTabScroll=>true,
            :id=>'ide',
            :activeTab=>0,
            :width=>'auto',
            :minTabWidth=>100,
            :tabWidth=>150,
            :height=>700,
            :plain=>true,
            :hidden=>true,
            :defaults=>{:autoScroll=>true},
            :items=>[{:title=>'Welcome',
                :closable=>true,
                :autoLoad=>{:url=>'/introduction.html'}
              }]
  )
end
