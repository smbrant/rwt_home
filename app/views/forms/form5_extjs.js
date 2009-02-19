/*
 * The original ExtJs example, inside a .js rwt view.
 *
 */
var tab2 = new Ext.FormPanel({
    labelAlign: 'top',
    title: 'Inner Tabs',
    bodyStyle:'padding:5px',
    width: 600,
    items: [{
        layout:'column',
        border:false,
        items:[{
            columnWidth:.5,
            layout: 'form',
            border:false,
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
            border:false,
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
        xtype:'tabpanel',
        plain:true,
        activeTab: 0,
        height:235,
        defaults:{bodyStyle:'padding:10px'},
        items:[{
            title:'Personal Details',
            layout:'form',
            defaults: {width: 230},
            defaultType: 'textfield',

            items: [{
                fieldLabel: 'First Name',
                name: 'first',
                allowBlank:false,
                value: 'Jack'
            },{
                fieldLabel: 'Last Name',
                name: 'last',
                value: 'Slocum'
            },{
                fieldLabel: 'Company',
                name: 'company',
                value: 'Ext JS'
            }, {
                fieldLabel: 'Email',
                name: 'email',
                vtype:'email'
            }]
        },{
            title:'Phone Numbers',
            layout:'form',
            defaults: {width: 230},
            defaultType: 'textfield',

            items: [{
                fieldLabel: 'Home',
                name: 'home',
                value: '(888) 555-1212'
            },{
                fieldLabel: 'Business',
                name: 'business'
            },{
                fieldLabel: 'Mobile',
                name: 'mobile'
            },{
                fieldLabel: 'Fax',
                name: 'fax'
            }]
        },{
            cls:'x-plain',
            title:'Biography',
            layout:'fit',
            items: {
                xtype:'htmleditor',
                id:'bio2',
                fieldLabel:'Biography'
            }
        }]
    }],

    buttons: [{
        text: 'Save'
    },{
        text: 'Cancel'
    }]
});


var win=new Ext.Window({
                x:80,
                title: '... and forms can contain TabPanel(s) - extjs',
                width:612,
                y:80,
                height:450,
                items:tab2
    });
win.show();

'<%show_code("app/controllers/forms_controller.rb")%>'
'<%show_code("app/views/forms/form5_extjs.js")%>'

 