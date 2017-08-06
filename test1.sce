// This GUI file is generated by guibuilder version 3.0
//////////
f=figure('figure_position',[400,50],'figure_size',[925,688],'auto_resize','on','background',[33],'figure_name','Graphic window number %d');
//////////
delmenu(f.figure_id,gettext('File'))
delmenu(f.figure_id,gettext('?'))
delmenu(f.figure_id,gettext('Tools'))
toolbar(f.figure_id,'off')
handles.dummy = 0;
handles.text1=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0765625,0.7954167,0.1109375,0.1541667],'Relief','default','SliderStep',[0.01,0.1],'String','timeshifting','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','text1','Callback','')
handles.bt1=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0909375,0.6354167,0.0640625,0.09375],'Relief','default','SliderStep',[0.01,0.1],'String','plot','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','bt1','Callback','bt1_callback(handles)')
handles.ax1= newaxes();handles.ax1.margins = [ 0 0 0 0];handles.ax1.axes_bounds = [0.3517647,0.1649832,0.625625,0.725];
handles.edit1=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.021875,0.2,0.2015625,0.26875],'Relief','default','SliderStep',[0.01,0.1],'String','sequence','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','edit1','Callback','')
handles.btn2=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2113290,0.6596296,0.0821786,0.0567340],'Relief','default','SliderStep',[0.01,0.1],'String','clear','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','btn2','Callback','btn2_callback(handles)')


//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////

function bt1_callback(handles)
//Write your callback for  bt1  here
x=handles.edit1.string
messagebox('hello world '+ x)

endfunction


function btn2_callback(handles)
//Write your callback for  btn2  here

endfunction

