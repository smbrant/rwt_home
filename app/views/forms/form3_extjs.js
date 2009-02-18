/*
 * The original ExtJs example, inside a .js rwt view.
 *
 */
var top = new Ext.FormPanel({
    labelAlign: 'top',
    frame:true,
    bodyStyle:'padding:5px 5px 0',
    width: 600,
    items: [{
        layout:'column',
        items:[{
            columnWidth:.5,
            layout: 'form',
            items: [{
                xtype:'textfield',
                fieldLabel: 'First Name',
                name: 'first',
                anchor:'95%'
            }, {
                xtype:'textfield',
                fieldLabel: 'Company',
                name: 'company',
                anchor:'95%'
            }]
        },{
            columnWidth:.5,
            layout: 'form',
            items: [{
                xtype:'textfield',
                fieldLabel: 'Last Name',
                name: 'last',
                anchor:'95%'
            },{
                xtype:'textfield',
                fieldLabel: 'Email',
                name: 'email',
                vtype:'email',
                anchor:'95%'
            }]
        }]
    },{
        xtype:'htmleditor',
        id:'bio',
        fieldLabel:'Biography',
        height:200,
        anchor:'98%'
    }],

    buttons: [{
        text: 'Save'
    },{
        text: 'Cancel'
    }]
});

var win=new Ext.Window({
                x:80,
                title: 'Multi Column, Nested Layouts and Anchoring - extjs',
                width:600,
                y:80,
                height:400,
                items:top
    });
win.show();

'<%show_code("app/controllers/forms_controller.rb")%>'
'<%show_code("app/views/forms/form3_extjs.js")%>'

 