$PBExportHeader$dg.srw
forward
global type dg from window
end type
type cb_1 from commandbutton within dg
end type
end forward

global type dg from window
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
cb_1 cb_1
end type
global dg dg

on dg.create
this.cb_1=create cb_1
this.Control[]={this.cb_1}
end on

on dg.destroy
destroy(this.cb_1)
end on

type cb_1 from commandbutton within dg
integer x = 1019
integer y = 872
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

