$PBExportHeader$w_1.srw
forward
global type w_1 from window
end type
type cb_4 from commandbutton within w_1
end type
type cb_3 from commandbutton within w_1
end type
type cb_2 from commandbutton within w_1
end type
type cb_1 from commandbutton within w_1
end type
end forward

global type w_1 from window
integer width = 3959
integer height = 1648
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
end type
global w_1 w_1

on w_1.create
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.cb_4,&
this.cb_3,&
this.cb_2,&
this.cb_1}
end on

on w_1.destroy
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
end on

type cb_4 from commandbutton within w_1
integer x = 1961
integer y = 916
integer width = 457
integer height = 132
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

type cb_3 from commandbutton within w_1
integer x = 1285
integer y = 532
integer width = 457
integer height = 132
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "mod"
end type

event clicked;long ldec_return,af_num,bf_num


ldec_return = Mod(32526,8261.15)
messagebox('',ldec_return)
ldec_return = Mod(af_num,bf_num)

end event

type cb_2 from commandbutton within w_1
integer x = 709
integer y = 888
integer width = 457
integer height = 132
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;blob lbl_return
byte ly_temp[]
lbl_return = blob(ly_temp)

messagebox('',string(lbl_return))
end event

type cb_1 from commandbutton within w_1
integer x = 311
integer y = 412
integer width = 457
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;
blob lb_data
lb_data = blob("convert string to blob")
string ls_data
messagebox('',string(lb_data))
lb_data = blob(ls_data)

messagebox('',string(lb_data))
end event

