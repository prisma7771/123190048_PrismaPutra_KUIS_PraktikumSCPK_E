function varargout = mining_123190048(varargin)
% MINING_123190048 MATLAB code for mining_123190048.fig
%      MINING_123190048, by itself, creates a new MINING_123190048 or raises the existing
%      singleton*.
%
%      H = MINING_123190048 returns the handle to a new MINING_123190048 or the handle to
%      the existing singleton*.
%
%      MINING_123190048('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MINING_123190048.M with the given input arguments.
%
%      MINING_123190048('Property','Value',...) creates a new MINING_123190048 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mining_123190048_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mining_123190048_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mining_123190048

% Last Modified by GUIDE v2.5 23-Apr-2021 13:45:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mining_123190048_OpeningFcn, ...
                   'gui_OutputFcn',  @mining_123190048_OutputFcn, ...
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


% --- Executes just before mining_123190048 is made visible.
function mining_123190048_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mining_123190048 (see VARARGIN)

% Choose default command line output for mining_123190048
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mining_123190048 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mining_123190048_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in show.
function show_Callback(hObject, eventdata, handles)
% hObject    handle to show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('glass.csv','NumHeaderLines',1);
data = readtable('glass.csv',opts);
data1 = table2array(data);
set(handles.tabeldata,'data',data1);


% --- Executes on button press in hide.
function hide_Callback(hObject, eventdata, handles)
% hObject    handle to hide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.tabeldata,'data',{});



function editRl_Callback(hObject, eventdata, handles)
% hObject    handle to editRl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editRl as text
%        str2double(get(hObject,'String')) returns contents of editRl as a double


% --- Executes during object creation, after setting all properties.
function editRl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editRl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editK_Callback(hObject, eventdata, handles)
% hObject    handle to editK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editK as text
%        str2double(get(hObject,'String')) returns contents of editK as a double


% --- Executes during object creation, after setting all properties.
function editK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editCa_Callback(hObject, eventdata, handles)
% hObject    handle to editCa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editCa as text
%        str2double(get(hObject,'String')) returns contents of editCa as a double


% --- Executes during object creation, after setting all properties.
function editCa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editCa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editNa_Callback(hObject, eventdata, handles)
% hObject    handle to editNa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editNa as text
%        str2double(get(hObject,'String')) returns contents of editNa as a double


% --- Executes during object creation, after setting all properties.
function editNa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editNa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editSi_Callback(hObject, eventdata, handles)
% hObject    handle to editSi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editSi as text
%        str2double(get(hObject,'String')) returns contents of editSi as a double


% --- Executes during object creation, after setting all properties.
function editSi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editSi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editBa_Callback(hObject, eventdata, handles)
% hObject    handle to editBa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editBa as text
%        str2double(get(hObject,'String')) returns contents of editBa as a double


% --- Executes during object creation, after setting all properties.
function editBa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editBa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editFe_Callback(hObject, eventdata, handles)
% hObject    handle to editFe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFe as text
%        str2double(get(hObject,'String')) returns contents of editFe as a double


% --- Executes during object creation, after setting all properties.
function editFe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editMg_Callback(hObject, eventdata, handles)
% hObject    handle to editMg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editMg as text
%        str2double(get(hObject,'String')) returns contents of editMg as a double


% --- Executes during object creation, after setting all properties.
function editMg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editAl_Callback(hObject, eventdata, handles)
% hObject    handle to editAl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editAl as text
%        str2double(get(hObject,'String')) returns contents of editAl as a double


% --- Executes during object creation, after setting all properties.
function editAl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editnilaik_Callback(hObject, eventdata, handles)
% hObject    handle to editnilaik (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editnilaik as text
%        str2double(get(hObject,'String')) returns contents of editnilaik as a double


% --- Executes during object creation, after setting all properties.
function editnilaik_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editnilaik (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in classify.
function classify_Callback(hObject, eventdata, handles)
% hObject    handle to classify (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Rl = str2double(get(handles.editRl,'String'));
Na = str2double(get(handles.editNa,'String'));
Mg = str2double(get(handles.editMg,'String'));
Al = str2double(get(handles.editAl,'String'));
Si = str2double(get(handles.editSi,'String'));
K = str2double(get(handles.editK,'String'));
Ca = str2double(get(handles.editCa,'String'));
Ba = str2double(get(handles.editBa,'String'));
Fe = str2double(get(handles.editFe,'String'));
NilaiK = str2double(get(handles.editnilaik,'String'));
if isempty(get(handles.editRl,'String'))
    Rl = 0;
    set(handles.editRl,'String',Rl)
end
if isempty(get(handles.editNa,'String'))
    Na = 0;
    set(handles.editNa,'String',Na)
end
if isempty(get(handles.editMg,'String'))
    Mg = 0;
    set(handles.editMg,'String',Mg)
end
if isempty(get(handles.editAl,'String'))
    Al = 0;
    set(handles.editAl,'String',Al)
end
if isempty(get(handles.editSi,'String'))
   Si = 0;
   set(handles.editSi,'String',Si)
end
if isempty(get(handles.editK,'String'))
    K = 0;
    set(handles.editK,'String',K)
end
if isempty(get(handles.editCa,'String'))
    Ca = 0;
    set(handles.editCa,'String',Ca)
end
if isempty(get(handles.editBa,'String'))
    Ba = 0;
    set(handles.editBa,'String',Ba)
end
if isempty(get(handles.editFe,'String'))
    Fe = 0;
    set(handles.editFe,'String',Fe)
end
if isempty(get(handles.editnilaik,'String'))
    NilaiK = 1;
    set(handles.editnilaik,'String',NilaiK)
end
    

sample = [Rl Na Mg Al Si K Ca Ba Fe];

opts = detectImportOptions('glass.csv');
opts.SelectedVariableNames = (1:9);
data2 = readtable('glass.csv',opts);
training = table2array(data2);

opts1 = detectImportOptions('glass.csv');
opts1.SelectedVariableNames = (10);
data3 = readtable('glass.csv',opts1);
group = table2array(data3);

class = fitcknn(training,group,'NumNeighbors',NilaiK);
klasifikasi = predict(class,sample);

set(handles.edit13,'String',klasifikasi);

if klasifikasi == 1
    myImage = imread('windowfloat.jpeg');
    jenisglass = 'Window Float Processed Glass';
elseif klasifikasi == 2
     myImage = imread('wndownonfloat.jpeg');
     jenisglass = 'Window Non Float Processed Glass';
elseif klasifikasi == 3
     myImage = imread('vehiclefloat.jpeg');
     jenisglass = 'Vehicle Float Processed Glass';
elseif klasifikasi == 4
     myImage = imread('vehiclenonfloat.jpeg');
     jenisglass = 'Vehicle Non Float Processed Glass';
elseif klasifikasi == 5
     myImage = imread('container.jpeg');
      jenisglass = 'Container Glass';
elseif klasifikasi == 6
     myImage = imread('tableware.jpeg');
     jenisglass = 'Tableware Glass';
elseif klasifikasi == 7
     myImage = imread('lamphead.jpeg');
     jenisglass = 'Lamphead Glass';
end

handles.axes1 = image(myImage);
axis off
axis image
guidata(hObject,handles);
set(handles.jenis,'String',jenisglass);



% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.editRl,'String','');
set(handles.editNa,'String','');
set(handles.editMg,'String','');
set(handles.editAl,'String','');
set(handles.editSi,'String','');
set(handles.editK,'String','');
set(handles.editCa,'String','');
set(handles.editBa,'String','');
set(handles.editFe,'String','');
set(handles.editnilaik,'String','');
set(handles.edit13,'String','');
set(handles.axes1,'visible','off');
set(handles.jenis,'String','');


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axis off
axis image
% Hint: place code in OpeningFcn to populate axes1
