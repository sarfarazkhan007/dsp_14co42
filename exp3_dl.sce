// This GUI file is generated by guibuilder version 3.0
//////////
f=figure('figure_position',[630,76],'figure_size',[872,676],'auto_resize','on','background',[29],'figure_name','Graphic window number %d');
//////////
delmenu(f.figure_id,gettext('File'))
delmenu(f.figure_id,gettext('?'))
delmenu(f.figure_id,gettext('Tools'))
toolbar(f.figure_id,'off')
handles.dummy = 0;

handles.myname=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[16],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2,0.9083333,0.655,0.0833333],'Relief','default','SliderStep',[0.01,0.1],'String','By:- Junaid(15DCO44) Sarfaraz (14CO42)  Ghalib(15DCO54)  Usama(14CO34)','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','myname','Callback','')

handles.xtag1=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[16],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.02375,0.82875,0.06875,0.0541667],'Relief','default','SliderStep',[0.01,0.1],'String','x(n)','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','xtag1','Callback','')

handles.x_axis1= newaxes();handles.x_axis1.margins = [ 0 0 0 0];handles.x_axis1.axes_bounds = [0.4399538,0.1305842,0.4607390,0.2164948];
a1=gca();

handles.valxtextbox=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[16],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.1143187,0.8330241,0.1905312,0.0515464],'Relief','default','SliderStep',[0.01,0.1],'String','Write value of x','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','valxtextbox','Callback','')

handles.plotxbtn=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[16],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0300231,0.7010309,0.1166282,0.0601375],'Relief','default','SliderStep',[0.01,0.1],'String','Plot X','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','plotxbtn','Callback','plotxbtn_callback(handles)')

handles.clearxbtn=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[16],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.1832102,0.7079038,0.1120092,0.0546735],'Relief','default','SliderStep',[0.01,0.1],'String','Clear X','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','clearxbtn','Callback','clearxbtn_callback(handles)')

handles.h_axis1= newaxes();handles.h_axis1.margins = [ 0 0 0 0];handles.h_axis1.axes_bounds = [0.0484988,0.4089347,0.4561201,0.2250859];
b = gca();

handles.htag1=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[16],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.5577367,0.5189003,0.0762125,0.0467010],'Relief','default','SliderStep',[0.01,0.1],'String','h(n)','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','htag1','Callback','')

handles.valhtextbox=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[16],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.6620554,0.5168729,0.2032333,0.0549828],'Relief','default','SliderStep',[0.01,0.1],'String','Write value of h','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','valhtextbox','Callback','')

handles.plothbtn=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[16],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.5577367,0.4003436,0.120485,0.0546735],'Relief','default','SliderStep',[0.01,0.1],'String','Plot H','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','plothbtn','Callback','plothbtn_callback(handles)')

handles.clearhbtn=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[16],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7344111,0.4034708,0.1120092,0.0532646],'Relief','default','SliderStep',[0.01,0.1],'String','Clear H','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','clearhbtn','Callback','clearhbtn_callback(handles)')

handles.ytag1=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[16],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0165820,0.2525773,0.0623557,0.0395189],'Relief','default','SliderStep',[0.01,0.1],'String','y(n)','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','ytag1','Callback','')

handles.convoltextbox=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[16],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0112702,0.0330928,0.1986143,0.1924399],'Relief','default','SliderStep',[0.01,0.1],'String','','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','convoltextbox','Callback','')

handles.conbtn1=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[16],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0847113,0.2574227,0.1108545,0.0529553],'Relief','default','SliderStep',[0.01,0.1],'String','Convol','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','conbtn1','Callback','conbtn1_callback(handles)')

handles.plotconbtn1=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[16],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2344342,0.2574227,0.1154734,0.0546735],'Relief','default','SliderStep',[0.01,0.1],'String','Plot Y','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','plotconbtn1','Callback','plotconbtn1_callback(handles)')

handles.y_axis= newaxes();handles.y_axis.margins = [ 0 0 0 0];handles.y_axis.axes_bounds = [0.4376443,0.7285223,0.4642032,0.2216495];
c=gca();

handles.clearallbtn=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[16],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2378753,0.0512027,0.1189376,0.0567010],'Relief','default','SliderStep',[0.01,0.1],'String','Clear All','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','clearallbtn','Callback','clearallbtn_callback(handles)')

handles.clearybtn=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Noto Sans','FontSize',[16],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2371132,0.1515120,0.1139261,0.0529553],'Relief','default','SliderStep',[0.01,0.1],'String','Clear Y','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','clearybtn','Callback','clearybtn_callback(handles)')


//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////

function plotxbtn_callback(handles)
//Write your callback for  plotxbtn  here
sca(a1);
x1 = get(handles.valxtextbox, "String");
x1 = strsplit(x1, " ");
x1 = strtod(x1);
axes = 0:4;
plot2d3(axes,x1);
replot([0,0,6,10]);

endfunction


function clearxbtn_callback(handles)
//Write your callback for  clearxbtn  here
delete(a1.children);
endfunction


function plothbtn_callback(handles)
//Write your callback for  plothbtn  here
sca(b);
x1 = get(handles.valhtextbox, "String");
x1 = strsplit(x1, " ");
x1 = strtod(x1);
axes = 0:2;
plot2d3(axes,x1);
replot([0,0,4,10]);

endfunction


function clearhbtn_callback(handles)
//Write your callback for  clearhbtn  here
delete(b.children);
endfunction


function conbtn1_callback(handles)
//Write your callback for  conbtn1  here
sca(c);
x1 = get(handles.valxtextbox, "String");
h1 = get(handles.valhtextbox, "String");
//x = strsplit(x, " ");
//x = strtod(x);
y1 = convol(x1,h1);`
handles.convoltextbox.string=String(y1);


endfunction


function plotconbtn1_callback(handles)
//Write your callback for  plotconbtn1  here
sca(c);
x1 = get(handles.valxtextbox, "String");
x1 = strsplit(x1, " ");
x1 = strtod(x1);

h1 = get(handles.valhtextbox, "String");
h1 = strsplit(h1, " ");
h1 = strtod(h1);

y1 = convol(x1,h1)
axes = 0:6;
plot2d3(axes,y1);
replot([0,0,8,80]);

endfunction


function clearallbtn_callback(handles)
//Write your callback for  clearallbtn  here
delete(a1.children);
delete(b.children);
delete(c.children);

endfunction


function clearybtn_callback(handles)
//Write your callback for  clearybtn  here
delete(c.children);

endfunction


