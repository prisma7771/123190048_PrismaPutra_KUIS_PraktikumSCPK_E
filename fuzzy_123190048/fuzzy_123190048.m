function varargout = fuzzy_123190048(varargin)
% FUZZY_123190048 MATLAB code for fuzzy_123190048.fig
%      FUZZY_123190048, by itself, creates a new FUZZY_123190048 or raises the existing
%      singleton*.
%
%      H = FUZZY_123190048 returns the handle to a new FUZZY_123190048 or the handle to
%      the existing singleton*.
%
%      FUZZY_123190048('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUZZY_123190048.M with the given input arguments.
%
%      FUZZY_123190048('Property','Value',...) creates a new FUZZY_123190048 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fuzzy_123190048_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fuzzy_123190048_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fuzzy_123190048

% Last Modified by GUIDE v2.5 23-Apr-2021 14:20:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fuzzy_123190048_OpeningFcn, ...
                   'gui_OutputFcn',  @fuzzy_123190048_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before fuzzy_123190048 is made visible.
function fuzzy_123190048_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fuzzy_123190048 (see VARARGIN)

% Choose default command line output for fuzzy_123190048
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fuzzy_123190048 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fuzzy_123190048_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider_style_Callback(hObject, eventdata, handles)
% hObject    handle to slider_style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
slider_style = get (hObject,'Value');
set(handles.editstyle,'String',strcat(num2str(slider_style)));
if slider_style <= 40
    style = 'Buruk';
elseif slider_style >= 40 && slider_style <= 60
    style = 'Cukup';
elseif slider_style >= 60
    style = 'Baik';    
end

set(handles.stringstyle,'String',style);

slider_mechfault = get(handles.slider_mechfault,'Value');

input = [slider_style slider_mechfault];
fis = readfis('fuzzy_123190048');
out = evalfis(input, fis);

set(handles.edit5,'String',strcat(num2str(out)));
set(handles.slider_lolos,'value',out);

slider_lolos = get(handles.slider_lolos,'Value');
if slider_lolos <= 50
    lolos = 'Rendah';
elseif slider_lolos >=50 && slider_lolos <= 70
    lolos = 'Sedang';
elseif slider_lolos >=70
    lolos = 'Tinggi';
end

set(handles.edit6,'String',lolos);


    
    

% --- Executes during object creation, after setting all properties.
function slider_style_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function editstyle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editstyle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editmechfault_Callback(hObject, eventdata, handles)
% hObject    handle to editmechfault (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editmechfault as text
%        str2double(get(hObject,'String')) returns contents of editmechfault as a double


% --- Executes during object creation, after setting all properties.
function editmechfault_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editmechfault (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider_mechfault_Callback(hObject, eventdata, handles)
% hObject    handle to slider_mechfault (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
slider_mechfault = get(hObject,'Value');
set(handles.editmechfault,'String',strcat(num2str(slider_mechfault)));

if slider_mechfault <= 60
    MechFault = 'Baik';
elseif slider_mechfault >=50 && slider_mechfault <= 70
    MechFault = 'Cukup';
elseif slider_mechfault >=70
    MechFault = 'Buruk';
end
set(handles.stringmechfault,'String',MechFault);

slider_style = get(handles.slider_style,'Value');


input = [slider_style slider_mechfault];
fis = readfis('fuzzy_123190048');
out = evalfis(input, fis);

set(handles.edit5,'String',strcat(num2str(out)));
set(handles.slider_lolos,'value',out);

slider_lolos = get(handles.slider_lolos,'Value');
if slider_lolos <= 50
    lolos = 'Rendah';
elseif slider_lolos >=50 && slider_lolos <= 70
    lolos = 'Sedang';
elseif slider_lolos >=70
    lolos = 'Tinggi';
end
set(handles.edit6,'String',lolos);


% --- Executes during object creation, after setting all properties.
function slider_mechfault_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_mechfault (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_lolos_Callback(hObject, eventdata, handles)
% hObject    handle to slider_lolos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_lolos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_lolos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function stringstyle_Callback(hObject, eventdata, handles)
% hObject    handle to stringstyle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stringstyle as text
%        str2double(get(hObject,'String')) returns contents of stringstyle as a double


% --- Executes during object creation, after setting all properties.
function stringstyle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stringstyle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function stringmechfault_Callback(hObject, eventdata, handles)
% hObject    handle to stringmechfault (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stringmechfault as text
%        str2double(get(hObject,'String')) returns contents of stringmechfault as a double


% --- Executes during object creation, after setting all properties.
function stringmechfault_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stringmechfault (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input1 = str2double(get(handles.editstyle,'String'));
input2 = str2double(get(handles.editmechfault,'String'));
if input1 < 0 || input1 >75 || isempty(get(handles.editstyle,'String'))
    input1 = 0;
    set(handles.editstyle,'String',input1);
end

if input2 < 0 || input2 >100 || isempty(get(handles.editmechfault,'String'))
    input2 = 100;
    set(handles.editmechfault,'String',input2);
end
set(handles.slider_style,'value',input1);
set(handles.slider_mechfault,'value',input2);

slider_style = get(handles.slider_style,'Value');
slider_mechfault = get(handles.slider_mechfault,'Value');

if isempty(slider_style)
    style = ' ';
elseif slider_style <= 40
    style = 'Buruk';
elseif slider_style >= 40 && slider_style <= 60
    style = 'Cukup';
elseif slider_style >= 60
    style = 'Baik';    
end
set(handles.stringstyle,'String',style);

if isempty(slider_mechfault)
    MechFault = ' ';
elseif slider_mechfault <= 60
    MechFault = 'Baik';
elseif slider_mechfault >=50 && slider_mechfault <= 70
    MechFault = 'Cukup';
elseif slider_mechfault >=70
    MechFault = 'Buruk';
end
set(handles.stringmechfault,'String',MechFault);

input = [slider_style slider_mechfault];
fis = readfis('fuzzy_123190048');
out = evalfis(input, fis);

set(handles.edit5,'String',strcat(num2str(out)));
set(handles.slider_lolos,'value',out);

slider_lolos = get(handles.slider_lolos,'Value');
if slider_lolos <= 50
    lolos = 'Rendah';
elseif slider_lolos >=50 && slider_lolos <= 70
    lolos = 'Sedang';
elseif slider_lolos >=70
    lolos = 'Tinggi';
end
set(handles.edit6,'String',lolos);



function editstyle_Callback(hObject, eventdata, handles)
% hObject    handle to editstyle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editstyle as text
%        str2double(get(hObject,'String')) returns contents of editstyle as a double
