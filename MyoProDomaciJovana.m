function varargout = MyoProDomaciJovana(varargin)
% MYOPRODOMACIJOVANA MATLAB code for MyoProDomaciJovana.fig
%      MYOPRODOMACIJOVANA, by itself, creates a new MYOPRODOMACIJOVANA or raises the existing
%      singleton*.
%
%      H = MYOPRODOMACIJOVANA returns the handle to a new MYOPRODOMACIJOVANA or the handle to
%      the existing singleton*.
%
%      MYOPRODOMACIJOVANA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MYOPRODOMACIJOVANA.M with the given input arguments.
%
%      MYOPRODOMACIJOVANA('Property','Value',...) creates a new MYOPRODOMACIJOVANA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MyoProDomaciJovana_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MyoProDomaciJovana_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MyoProDomaciJovana

% Last Modified by GUIDE v2.5 11-Jan-2022 12:58:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MyoProDomaciJovana_OpeningFcn, ...
                   'gui_OutputFcn',  @MyoProDomaciJovana_OutputFcn, ...
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


% --- Executes just before MyoProDomaciJovana is made visible.
function MyoProDomaciJovana_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MyoProDomaciJovana (see VARARGIN)

% Choose default command line output for MyoProDomaciJovana
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MyoProDomaciJovana wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MyoProDomaciJovana_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function editRotSpeed_Callback(hObject, eventdata, handles)
% hObject    handle to editRotSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editRotSpeed as text
%        str2double(get(hObject,'String')) returns contents of editRotSpeed as a double


% --- Executes during object creation, after setting all properties.
function editRotSpeed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editRotSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editOSpeed_Callback(hObject, eventdata, handles)
% hObject    handle to editOSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editOSpeed as text
%        str2double(get(hObject,'String')) returns contents of editOSpeed as a double


% --- Executes during object creation, after setting all properties.
function editOSpeed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editOSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editLSpeed_Callback(hObject, eventdata, handles)
% hObject    handle to editLSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editLSpeed as text
%        str2double(get(hObject,'String')) returns contents of editLSpeed as a double


% --- Executes during object creation, after setting all properties.
function editLSpeed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editLSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonStop.
function pushbuttonStop_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonStop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cs = checkSum([double('S'),double('T'),double(';')]);
mess = ['>ST;' cs '<'];
komunikacija(mess);
guidata(hObject, handles);

% --- Executes on button press in checkboxV1.
function checkboxV1_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxV1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxV1


% --- Executes on button press in checkboxV2.
function checkboxV2_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxV2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxV2


% --- Executes on button press in checkboxV3.
function checkboxV3_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxV3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxV3


% --- Executes on button press in checkboxV4.
function checkboxV4_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxV4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxV4


% --- Executes on button press in checkboxV5.
function checkboxV5_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxV5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxV5


% --- Executes on button press in checkboxV6.
function checkboxV6_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxV6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxV6


% --- Executes on button press in checkboxV7.
function checkboxV7_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxV7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxV7


% --- Executes on button press in checkboxV8.
function checkboxV8_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxV8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxV8


% --- Executes on button press in pushbuttonVibro.
function pushbuttonVibro_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonVibro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Vib1 = get(handles.checkboxV1,'Value');
Vib2 = get(handles.checkboxV2,'Value');
Vib3 = get(handles.checkboxV3,'Value');
Vib4 = get(handles.checkboxV4,'Value');
Vib5 = get(handles.checkboxV5,'Value');
Vib6 = get(handles.checkboxV6,'Value');
Vib7 = get(handles.checkboxV7,'Value');
Vib8 = get(handles.checkboxV8,'Value');
global x;
x = zeros(1,8);
if Vib1 == 1
    set(handles.editV1T, 'enable', 'on');
    set(handles.editV1I, 'enable', 'on');
    x(1) = 1;
end
if Vib2 == 1
    set(handles.editV2T, 'enable', 'on');
    set(handles.editV2I, 'enable', 'on');
    x(2)=1;
end
if Vib3 == 1
    set(handles.editV3T, 'enable', 'on');
    set(handles.editV3I, 'enable', 'on');
    x(3) =1;
end
if Vib4 == 1
    set(handles.editV4T, 'enable', 'on');
    set(handles.editV4I, 'enable', 'on');
    x(4) = 1;
end
if Vib5 == 1
    set(handles.editV5T, 'enable', 'on');
    set(handles.editV5I, 'enable', 'on');
    x(5) = 1;
end
if Vib6 == 1
    set(handles.editV6T, 'enable', 'on');
    set(handles.editV6I, 'enable', 'on');
    x(6) = 1;
end
if Vib7 == 1
    set(handles.editV7T, 'enable', 'on');
    set(handles.editV7I, 'enable', 'on');
    x(7) = 1;
end
if Vib8 == 1
    set(handles.editV8T, 'enable', 'on');
    set(handles.editV8I, 'enable', 'on');
    x(8) = 1;
end
guidata(hObject, handles);


function editV8T_Callback(hObject, eventdata, handles)
% hObject    handle to editV8T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV8T as text
%        str2double(get(hObject,'String')) returns contents of editV8T as a double


% --- Executes during object creation, after setting all properties.
function editV8T_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV8T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV8I_Callback(hObject, eventdata, handles)
% hObject    handle to editV8I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV8I as text
%        str2double(get(hObject,'String')) returns contents of editV8I as a double


% --- Executes during object creation, after setting all properties.
function editV8I_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV8I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV4T_Callback(hObject, eventdata, handles)
% hObject    handle to editV4T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV4T as text
%        str2double(get(hObject,'String')) returns contents of editV4T as a double


% --- Executes during object creation, after setting all properties.
function editV4T_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV4T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV4I_Callback(hObject, eventdata, handles)
% hObject    handle to editV4I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV4I as text
%        str2double(get(hObject,'String')) returns contents of editV4I as a double


% --- Executes during object creation, after setting all properties.
function editV4I_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV4I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV7T_Callback(hObject, eventdata, handles)
% hObject    handle to editV7T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV7T as text
%        str2double(get(hObject,'String')) returns contents of editV7T as a double


% --- Executes during object creation, after setting all properties.
function editV7T_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV7T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV7I_Callback(hObject, eventdata, handles)
% hObject    handle to editV7I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV7I as text
%        str2double(get(hObject,'String')) returns contents of editV7I as a double


% --- Executes during object creation, after setting all properties.
function editV7I_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV7I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV3T_Callback(hObject, eventdata, handles)
% hObject    handle to editV3T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV3T as text
%        str2double(get(hObject,'String')) returns contents of editV3T as a double


% --- Executes during object creation, after setting all properties.
function editV3T_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV3T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV3I_Callback(hObject, eventdata, handles)
% hObject    handle to editV3I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV3I as text
%        str2double(get(hObject,'String')) returns contents of editV3I as a double


% --- Executes during object creation, after setting all properties.
function editV3I_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV3I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV6T_Callback(hObject, eventdata, handles)
% hObject    handle to editV6T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV6T as text
%        str2double(get(hObject,'String')) returns contents of editV6T as a double


% --- Executes during object creation, after setting all properties.
function editV6T_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV6T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV6I_Callback(hObject, eventdata, handles)
% hObject    handle to editV6I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV6I as text
%        str2double(get(hObject,'String')) returns contents of editV6I as a double


% --- Executes during object creation, after setting all properties.
function editV6I_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV6I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV2T_Callback(hObject, eventdata, handles)
% hObject    handle to editV2T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV2T as text
%        str2double(get(hObject,'String')) returns contents of editV2T as a double


% --- Executes during object creation, after setting all properties.
function editV2T_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV2T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV2I_Callback(hObject, eventdata, handles)
% hObject    handle to editV2I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV2I as text
%        str2double(get(hObject,'String')) returns contents of editV2I as a double


% --- Executes during object creation, after setting all properties.
function editV2I_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV2I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV5T_Callback(hObject, eventdata, handles)
% hObject    handle to editV5T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV5T as text
%        str2double(get(hObject,'String')) returns contents of editV5T as a double


% --- Executes during object creation, after setting all properties.
function editV5T_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV5T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV5I_Callback(hObject, eventdata, handles)
% hObject    handle to editV5I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV5I as text
%        str2double(get(hObject,'String')) returns contents of editV5I as a double


% --- Executes during object creation, after setting all properties.
function editV5I_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV5I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV1T_Callback(hObject, eventdata, handles)
% hObject    handle to editV1T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV1T as text
%        str2double(get(hObject,'String')) returns contents of editV1T as a double


% --- Executes during object creation, after setting all properties.
function editV1T_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV1T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editV1I_Callback(hObject, eventdata, handles)
% hObject    handle to editV1I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editV1I as text
%        str2double(get(hObject,'String')) returns contents of editV1I as a double


% --- Executes during object creation, after setting all properties.
function editV1I_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editV1I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonTrigger.
function pushbuttonTrigger_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonTrigger (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;

x_d = bi2de( x );
cs = checkSum([double('V'), double('A'),double(';'),x_d]);
mess = ['>VA;' x_d cs '<'];
komunikacija(mess);
triger

% --- Executes when selected object is changed in uibuttongroupRezim.
function uibuttongroupRezim_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroupRezim 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.radiobuttonA,'Value') == 1
    set(handles.radiobuttonLateral, 'enable', 'on');
    set(handles.radiobuttonOpp, 'enable', 'on');
    set(handles.radiobuttonRotation, 'enable', 'on');
    cs = checkSum([double('W'),double(';'),double('A')]);
    mess = ['>W;' 'A' cs '<'];
    komunikacija(mess);
elseif get(handles.radiobuttonM,'Value') == 1
    set(handles.radiobuttonML, 'enable', 'on');
    set(handles.radiobuttonMO, 'enable', 'on');
    set(handles.radiobuttonMR, 'enable', 'on');
    cs = checkSum([double('W'),double(';'),double('M')]);
    mess = ['>W;' 'M' cs '<'];
    komunikacija(mess);
end
guidata(hObject, handles);

% --- Executes when selected object is changed in uibuttongroupAutomat.
function uibuttongroupAutomat_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroupAutomat 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.radiobuttonLateral,'Value') == 1
    cs = checkSum([double('E'),double(';'),double('L')]);
    mess = ['>E;' 'L' cs '<'];
    komunikacija(mess);
elseif get(handles.radiobuttonOpp,'Value') == 1
    cs = checkSum([double('E'),double(';'),double('O')]);
    mess = ['>E;' 'O' cs '<'];
    komunikacija(mess);
elseif get(handles.radiobuttonRotation,'Value') == 1
    cs = checkSum([double('E'),double(';'),double('R')]);
    mess = ['>E;' 'R' cs '<'];
    komunikacija(mess);  
end
guidata(hObject, handles);


% --- Executes when selected object is changed in uibuttongroupRezimManual.
function uibuttongroupRezimManual_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroupRezimManual 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.radiobuttonML,'Value') == 1
    set(handles.radiobuttonLO, 'enable', 'on');
    set(handles.radiobuttonLC, 'enable', 'on');
    set(handles.editLSpeed, 'enable', 'on');
elseif get(handles.radiobuttonMO,'Value') == 1
    set(handles.radiobuttonOC, 'enable', 'on');
    set(handles.radiobuttonOO, 'enable', 'on');
    set(handles.editOSpeed, 'enable', 'on');
elseif get(handles.radiobuttonMR,'Value') == 1
    set(handles.radiobuttonSupinacija, 'enable', 'on');
    set(handles.radiobuttonPronacija, 'enable', 'on');
    set(handles.editRotSpeed, 'enable', 'on');   
end
guidata(hObject, handles);


% --- Executes when selected object is changed in uibuttongroupLateral.
function uibuttongroupLateral_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroupLateral 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.radiobuttonLO,'Value') == 1
    brzina = str2double(get(handles.editLSpeed, 'String'));
    sh = floor(brzina/256);
    sl = rem(brzina,256);
    cs = checkSum([double('L'),double(';'),0,sh,sl]);
    mess = ['>L;' 0 sh sl cs '<'];
    komunikacija(mess);
elseif get(handles.radiobuttonLC,'Value') == 1
    brzina = str2double(get(handles.editLSpeed, 'String'));
    sh = floor(brzina/256);
    sl = rem(brzina,256);
    cs = checkSum([double('L'),double(';'),1,sh,sl]);
    mess = ['>L;' 1 sh sl cs '<'];
    komunikacija(mess);
end
guidata(hObject, handles);

% --- Executes when selected object is changed in uibuttongroupOpp.
function uibuttongroupOpp_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroupOpp 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.radiobuttonOO,'Value') == 1
    brzina = str2double(get(handles.editOSpeed, 'String'));
    sh = floor(brzina/256);
    sl = rem(brzina,256);
    cs = checkSum([double('O'),double(';'),0,sh,sl]);
    mess = ['>O;' 0 sh sl cs '<'];
    komunikacija(mess);
elseif get(handles.radiobuttonOC,'Value') == 1
    brzina = str2double(get(handles.editOSpeed, 'String'));
    sh = floor(brzina/256);
    sl = rem(brzina,256);
    cs = checkSum([double('O'),double(';'),1,sh,sl]);
    mess = ['>O;' 1 sh sl cs '<'];
    komunikacija(mess);
end
guidata(hObject, handles);

% --- Executes when selected object is changed in uibuttongroupRotation.
function uibuttongroupRotation_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroupRotation 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.radiobuttonSupinacija,'Value') == 1
    brzina = str2double(get(handles.editRotSpeed, 'String'));
    sh = floor(brzina/256);
    sl = rem(brzina,256);
    cs = checkSum([double('R'),double(';'),0,sh,sl]);
    mess = ['>R;' 0 sh sl cs '<'];
    komunikacija(mess);
elseif get(handles.radiobuttonPronacija,'Value') == 1
    brzina = str2double(get(handles.editRotSpeed, 'String'));
    sh = floor(brzina/256);
    sl = rem(brzina,256);
    cs = checkSum([double('R'),double(';'),1,sh,sl]);
    mess = ['>R;' 1 sh sl cs '<'];
    komunikacija(mess);
end
guidata(hObject, handles);


% --- Executes on button press in pushbuttonVON.
function pushbuttonVON_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonVON (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cs = checkSum([double('V'), double('O'), double('N'),double(';')]);
mess = ['>VON;' cs '<'];
komunikacija(mess);
