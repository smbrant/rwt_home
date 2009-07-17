/*
 * The original ExtJs example coded in javascript inside a .js rwt view.
 *
 */
Ext.QuickTips.init();

/* turn on validation errors beside the field globally */
Ext.form.Field.prototype.msgTarget = 'side';

var fs = new Ext.FormPanel({
    frame: true,
    labelAlign: 'right',
    labelWidth: 85,
    width:340,
    waitMsgTarget: true,

    /* configure how to read the XML Data */
    reader : new Ext.data.XmlReader({
        record : 'contact',
        success: '@success'
    }, [
        {name: 'first', mapping:'name/first'}, /* custom mapping */
        {name: 'last', mapping:'name/last'},
        'company', 'email', 'state',
        {name: 'dob', type:'date', dateFormat:'m/d/Y'} /* custom data types */
    ]),

    /* reusable eror reader class defined at the end of this file */
/*    errorReader: new Ext.form.XmlErrorReader(),*/

    items: [
        new Ext.form.FieldSet({
            title: 'Contact Information',
            autoHeight: true,
            defaultType: 'textfield',
            items: [{
                    fieldLabel: 'First Name',
                    name: 'first',
                    width:190
                }, {
                    fieldLabel: 'Last Name',
                    name: 'last',
                    width:190
                }, {
                    fieldLabel: 'Company',
                    name: 'company',
                    width:190
                }, {
                    fieldLabel: 'Email',
                    name: 'email',
                    vtype:'email',
                    width:190
                },

                new Ext.form.ComboBox({
                    fieldLabel: 'State',
                    hiddenName:'state',
                    /*
                    store: new Ext.data.SimpleStore({
                        fields: ['abbr', 'state'],
                        data : Ext.exampledata.states
                    }),
                    */
                    valueField:'abbr',
                    displayField:'state',
                    typeAhead: true,
                    mode: 'local',
                    triggerAction: 'all',
                    emptyText:'Select a state...',
                    selectOnFocus:true,
                    width:190
                }),

                new Ext.form.DateField({
                    fieldLabel: 'Date of Birth',
                    name: 'dob',
                    width:190,
                    allowBlank:false
                })
            ]
        })
    ]
});

/* simple button add */
fs.addButton('Load', function(){
    fs.getForm().load({url:'xml-form.xml', waitMsg:'Loading'});
});

/* explicit add */
var submit = fs.addButton({
    text: 'Submit',
    disabled:true,
    handler: function(){
        fs.getForm().submit({url:'xml-errors.xml', waitMsg:'Saving Data...'});
    }
});

/*fs.render('form-ct');*/

fs.on({
    actioncomplete: function(form, action){
        if(action.type == 'load'){
            submit.enable();
        }
    }
});

/* A reusable error reader class for XML forms */
/*
Ext.form.XmlErrorReader = function(){
    Ext.form.XmlErrorReader.superclass.constructor.call(this, {
            record : 'field',
            success: '@success'
        }, [
            'id', 'msg'
        ]
    );
};
Ext.extend(Ext.form.XmlErrorReader, Ext.data.XmlReader);
*/
var win=new Ext.Window({
                x:80,
                title:'XML Form',
                width:353,
                y:80,
                height:280,
                items:fs
    });
win.show();

/*
 * js views are erb's. They do the same processing that we have in .js.erb files.
 * If you prefer not to offend the javascript syntax, you can encapsulate erb
 * sequences with '': use '<%%>' instead of <%%>
 *
 * The following are just helper calls to show this code.
 */
'<%show_code("app/controllers/ajax_xml_controller.rb")%>'
'<%show_code("app/views/ajax_xml/form1_extjs.js")%>'

/*
 * Comments
 * ========
 *
 * The javascript code inside .js views is normal javascript code. You can
 * have access to the ruby environment (controler instance variables) via
 * erb processing.
 *
 */
 