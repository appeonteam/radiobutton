$PBExportHeader$w_offline.srw
forward
global type w_offline from window
end type
type cb_2 from commandbutton within w_offline
end type
type cb_1 from commandbutton within w_offline
end type
type rb_3 from radiobutton within w_offline
end type
type rb_2 from radiobutton within w_offline
end type
type rb_1 from radiobutton within w_offline
end type
type gb_1 from groupbox within w_offline
end type
end forward

global type w_offline from window
integer width = 1129
integer height = 536
windowtype windowtype = response!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
cb_1 cb_1
rb_3 rb_3
rb_2 rb_2
rb_1 rb_1
gb_1 gb_1
end type
global w_offline w_offline

on w_offline.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.rb_3=create rb_3
this.rb_2=create rb_2
this.rb_1=create rb_1
this.gb_1=create gb_1
this.Control[]={this.cb_2,&
this.cb_1,&
this.rb_3,&
this.rb_2,&
this.rb_1,&
this.gb_1}
end on

on w_offline.destroy
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.rb_3)
destroy(this.rb_2)
destroy(this.rb_1)
destroy(this.gb_1)
end on

event open;integer li_ini

li_ini = profileint('offline.ini','Type' ,'offline',1)

if li_ini = 1 then
	rb_1.checked = true
elseif li_ini = 2 then
	rb_2.checked = true
else
	rb_3.checked = true
end if
end event

type cb_2 from commandbutton within w_offline
integer x = 599
integer y = 356
integer width = 343
integer height = 104
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "取消"
end type

event clicked;closewithreturn(parent,'cancel')
end event

type cb_1 from commandbutton within w_offline
integer x = 599
integer y = 176
integer width = 343
integer height = 104
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "确定"
end type

event clicked;string ls_return

if rb_1.checked then
	ls_return = 'online'
	setprofilestring('offline.ini','Type','offline','1')
end if

if rb_2.checked then
	ls_return = 'sqlite'
	setprofilestring('offline.ini','Type','offline','2')
end if

if rb_3.checked then
	ls_return = 'ultralite'
	setprofilestring('offline.ini','Type','offline','3')
end if

closewithreturn(parent,ls_return)
end event

type rb_3 from radiobutton within w_offline
integer x = 114
integer y = 400
integer width = 343
integer height = 76
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 134217857
long backcolor = 67108864
string text = "Ultralite"
end type

type rb_2 from radiobutton within w_offline
integer x = 114
integer y = 292
integer width = 343
integer height = 76
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 134217857
long backcolor = 67108864
string text = "Sqlite"
end type

type rb_1 from radiobutton within w_offline
integer x = 114
integer y = 184
integer width = 343
integer height = 76
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 134217857
long backcolor = 67108864
string text = "On Line"
boolean checked = true
end type

type gb_1 from groupbox within w_offline
integer x = 23
integer y = 4
integer width = 1097
integer height = 592
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 134217857
long backcolor = 67108864
string text = "Online or Offline"
end type

