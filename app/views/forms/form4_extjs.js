/*
 * The original ExtJs example, inside a .js rwt view.
 *
 */
var tabs = new Ext.FormPanel({
    labelWidth: 75,
    border:false,
    width: 350,

    items: {
        xtype:'tabpanel',
        activeTab: 0,
        defaults:{autoHeight:true, bodyStyle:'padding:10px'},
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
        }]
    },

    buttons: [{
        text: 'Save'
    },{
        text: 'Cancel'
    }]
});


var win=new Ext.Window({
                x:80,
                title: 'Forms can be a TabPanel... - extjs',
                width:360,
                y:80,
                height:230,
                items:tabs
    });
win.show();

'<%show_code("app/controllers/forms_controller.rb")%>'
'<%show_code("app/views/forms/form4_extjs.js")%>'

 