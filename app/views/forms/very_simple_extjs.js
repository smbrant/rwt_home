/*
 * The original ExtJs example of a simple form, coded in javascript inside
 * a .js rwt view.
 *
 */
var simple = new Ext.FormPanel({
    labelWidth: 75, /* label settings here cascade unless overridden */
    url:'/contacts_rwt/create',
    frame:true,
    bodyStyle:'padding:5px 5px 0',
    defaults: {width: 230},
    defaultType: 'textfield',
    width:'auto',
    baseParams:{authenticity_token:"'<%=form_authenticity_token%>'"},
    items: [{
            fieldLabel: 'First Name',
            name: 'contact[first]',
            allowBlank:false
        },{
            fieldLabel: 'Last Name',
            name: 'contact[last]'
        },{
            fieldLabel: 'Company',
            name: 'contact[company]'
        }, {
            fieldLabel: 'Email',
            name: 'contact[email]',
            vtype:'email'
        }, new Ext.form.TimeField({
            fieldLabel: 'Time',
            name: 'contact[time]',
            minValue: '8:00am',
            maxValue: '6:00pm'
        })
    ],

    buttons: [{
        text: 'Save',
        tooltip: 'Save data',
        handler: function(){simple.form.submit()}
    },{
        text: 'Cancel',
        tooltip: 'Cancel',
        handler: function(){win.close()}
    },{
        text: 'Scaffold',
        tooltip: 'See data with a traditional Rails scaffold',
        handler: function(){window.open('/contacts')}
    }]
});

var win=new Ext.Window({
                x:80,
                title:'Simple Form - plain ExtJs javascript code',
                width:360,
                y:80,
                height:210,
                items:simple
    });
win.show();

/*
 * js views are erb's. They do the same processing that we have in .js.erb files.
 * If you prefer not to offend the javascript syntax, you can encapsulate erb
 * sequences with '': use '<%%>' instead of <%%>
 *
 * The following are just helper calls to show this code.
 */
'<%show_code("app/controllers/forms_controller.rb")%>'
'<%show_code("app/views/forms/very_simple_extjs.js")%>'

/*
 * Comments
 * ========
 *
 * The javascript code inside .js views is normal javascript code. You can
 * have access to the ruby environment (controler instance variables) via
 * erb processing.
 *
 * This is a fully working form. You can save data and see the results with
 * a normal rails scaffold (press the scaffold button).
 * 
 */
 