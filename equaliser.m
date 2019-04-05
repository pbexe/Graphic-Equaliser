function varargout = equaliser(varargin)
% EQUALISER MATLAB code for equaliser.fig
%      EQUALISER, by itself, creates a new EQUALISER or raises the existing
%      singleton*.
%
%      H = EQUALISER returns the handle to a new EQUALISER or the handle to
%      the existing singleton*.
%
%      EQUALISER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EQUALISER.M with the given input arguments.
%
%      EQUALISER('Property','Value',...) creates a new EQUALISER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before equaliser_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to equaliser_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help equaliser

% Last Modified by GUIDE v2.5 05-Apr-2019 14:28:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @equaliser_OpeningFcn, ...
                   'gui_OutputFcn',  @equaliser_OutputFcn, ...
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


% --- Executes just before equaliser is made visible.
function equaliser_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to equaliser (see VARARGIN)

% Choose default command line output for equaliser
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes equaliser wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = equaliser_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider10_Callback(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[name,fpath]=uigetfile({'*.*','All Files'},...
  'Select Audio');
  p = pwd;
  cd(fpath);
  [handles.y, handles.Fs]=audioread(name);
  cd(p);
  handles.player = audioplayer(handles.y, handles.Fs);
  apply_Callback(hObject, eventdata, handles)
  guidata(hObject, handles);

  
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
resume(handles.player)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pause(handles.player)



% --- Executes on button press in loadeq.
function loadeq_Callback(hObject, eventdata, handles)
% hObject    handle to loadeq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[name,fpath]=uigetfile({'*.eq'},...
  'Select Equaliser File');
  p = pwd;
  cd(fpath);
  data = load(name, 'data', '-ascii');
  cd(p);
  set(handles.slider1, 'value', data(1))
  set(handles.slider2, 'value', data(2))
  set(handles.slider3, 'value', data(3))
  set(handles.slider4, 'value', data(4))
  set(handles.slider5, 'value', data(5))
  set(handles.slider6, 'value', data(6))
  set(handles.slider7, 'value', data(7))
  set(handles.slider8, 'value', data(8))
  set(handles.slider9, 'value', data(9))
  set(handles.slider10, 'value', data(10))
  apply_Callback(hObject, eventdata, handles);

% --- Executes on button press in saveeq.
function saveeq_Callback(hObject, eventdata, handles)
% hObject    handle to saveeq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = zeros(10, 1);
data(1) = get(handles.slider1, 'value');
data(2) = get(handles.slider2, 'value');
data(3) = get(handles.slider3, 'value');
data(4) = get(handles.slider4, 'value');
data(5) = get(handles.slider5, 'value');
data(6) = get(handles.slider6, 'value');
data(7) = get(handles.slider7, 'value');
data(8) = get(handles.slider8, 'value');
data(9) = get(handles.slider9, 'value');
data(10) = get(handles.slider10, 'value');

[file,p, index] = uiputfile({'*.eq'});
c = pwd;
cd(p);
save(file, 'data', '-ascii');
cd(c);


% --- Executes on button press in apply.
function apply_Callback(hObject, eventdata, handles)
% hObject    handle to apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.loading, 'Visible', 'on');
pause(0); % For some reason the loading text only works when the program pauses for 0 seconds...
y = handles.y;
%% Apply volume
  y = y * get(handles.slider11, 'value');
%% Apply low pass filter to lowest band
  G = (get(handles.slider1, 'value') - 0.5) * 32;
  fcb = 31;
  Q = 3;
  type = 'Base_Shelf';
  [b a] = shelving(G, fcb, handles.Fs, Q, type);
  y = filter(b,a, y);
%% Apply low pass filter to band 2
  G = (get(handles.slider2, 'value') - 0.5) * 32;
  fc = 62;
  fb = 31;
  y = peakfilt(y, 2*fc/handles.Fs, 2*fb/handles.Fs, G);
%% Apply low pass filter to band 3
  G = (get(handles.slider3, 'value') - 0.5) * 32;
  fc = 125;
  fb = 63;
  y = peakfilt(y, 2*fc/handles.Fs, 2*fb/handles.Fs, G);
%% Apply low pass filter to band 4
  G = (get(handles.slider4, 'value') - 0.5) * 32;
  fc = 250;
  fb = 125;
  y = peakfilt(y, 2*fc/handles.Fs, 2*fb/handles.Fs, G);
%% Apply low pass filter to band 5
  G = (get(handles.slider5, 'value') - 0.5) * 32;
  fc = 500;
  fb = 250;
  y = peakfilt(y, 2*fc/handles.Fs, 2*fb/handles.Fs, G);
%% Apply high pass filter to band 6
  G = (get(handles.slider6, 'value') - 0.5) * 32;
  fc = 1000;
  fb = 500;
  y = peakfilt(y, 2*fc/handles.Fs, 2*fb/handles.Fs, G);
%% Apply high pass filter to band 7
  G = (get(handles.slider7, 'value') - 0.5) * 32;
  fc = 2000;
  fb = 1000;
  y = peakfilt(y, 2*fc/handles.Fs, 2*fb/handles.Fs, G);
%% Apply high pass filter to band 8
  G = (get(handles.slider8, 'value') - 0.5) * 32;
  fc = 4000;
  fb = 2000;
  y = peakfilt(y, 2*fc/handles.Fs, 2*fb/handles.Fs, G);
%% Apply high pass filter to band 9
  G = (get(handles.slider9, 'value') - 0.5) * 32;
  fc = 8000;
  fb = 4000;
  y = peakfilt(y, 2*fc/handles.Fs, 2*fb/handles.Fs, G);
%% Apply high pass filter to highest band
  G = (get(handles.slider10, 'value') - 0.5) * 32;
  fcb = 16000;
  Q = 3;
  type = 'Treble_Shelf';
  [b a] = shelving(G, fcb, handles.Fs, Q, type);
  y = filter(b,a, y);
%% Apply Changes
  handles.player = audioplayer(y, handles.Fs);
  yf = fft(y);     
  plot(handles.axes1, y);
  guidata(hObject, handles);
  set(handles.loading, 'Visible', 'off');


% --- Executes on slider movement.
function slider11_Callback(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
