function varargout = Motor_motion_control(varargin)
%% paste the following into the command window before running:
% global PSn;
% PSn=serial('COM9','BaudRate',9600);
% fopen(PSn);
% global cam;
% cam=webcam(2);
%%
% Motor_motion_control MATLAB code for Motor_motion_control.fig
%      Motor_motion_control, by itself, creates a new Motor_motion_control or raises the existing
%      singleton*.
%
%      H = Motor_motion_control returns the handle to a new Motor_motion_control or the handle to
%      the existing singleton*.
%
%      Motor_motion_control('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Motor_motion_control.M with the given input arguments.
%
%      Motor_motion_control('Property','Value',...) creates a new Motor_motion_control or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Motor_motion_control_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Motor_motion_control_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Motor_motion_control

% Last Modified by GUIDE v2.5 28-Sep-2020 16:29:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Motor_motion_control_OpeningFcn, ...
                   'gui_OutputFcn',  @Motor_motion_control_OutputFcn, ...
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


% --- Executes just before Motor_motion_control is made visible.
function Motor_motion_control_OpeningFcn(hObject, eventdata, handles, varargin,PS)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Motor_motion_control (see VARARGIN)

% Choose default command line output for Motor_motion_control
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Motor_motion_control wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Motor_motion_control_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
clear all;
%global PSn;
%PSn=serial('COM9','BaudRate',9600);
%fopen(PSn);


% --- Executes on button press in left.
function left_Callback(hObject, eventdata, handles)
% hObject    handle to left (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
right = findobj(0, 'tag', 'right');
left = findobj(0, 'tag', 'left');
backward = findobj(0, 'tag', 'backward');
forward = findobj(0, 'tag', 'forward');
edit1 = findobj(0, 'tag', 'edit1');
set(right,'Enable','off');
set(forward,'Enable','off');
set(backward,'Enable','off');
set(left,'Enable','off');
global PSn;
%fprintf(PSn,"4100");
val = str2num(char(get(edit1,'String')));
fprintf(PSn,strcat('1',num2str(val)));
global x;
x=x-100;
pause(0.5);
set(right,'Enable','on');
set(forward,'Enable','on');
set(backward,'Enable','on');
set(left,'Enable','on');


% --- Executes on button press in right.
function right_Callback(hObject, eventdata, handles)
% hObject    handle to right (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
right = findobj(0, 'tag', 'right');
left = findobj(0, 'tag', 'left');
backward = findobj(0, 'tag', 'backward');
forward = findobj(0, 'tag', 'forward');
edit1 = findobj(0, 'tag', 'edit1');
set(right,'Enable','off');
set(forward,'Enable','off');
set(backward,'Enable','off');
set(left,'Enable','off');
global PSn;
%fprintf(PSn,"2100");
val = str2num(char(get(edit1,'String')));
fprintf(PSn,strcat('3',num2str(val)));
global x;
x=x+100;
pause(0.5);
set(right,'Enable','on');
set(forward,'Enable','on');
set(backward,'Enable','on');
set(left,'Enable','on');


% --- Executes on button press in forward.
function forward_Callback(hObject, eventdata, handles)
% hObject    handle to forward (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
right = findobj(0, 'tag', 'right');
left = findobj(0, 'tag', 'left');
backward = findobj(0, 'tag', 'backward');
forward = findobj(0, 'tag', 'forward');
edit1 = findobj(0, 'tag', 'edit1');
set(right,'Enable','off');
set(forward,'Enable','off');
set(backward,'Enable','off');
set(left,'Enable','off');
global PSn;
%fprintf(PSn,"1100");
val = str2num(char(get(edit1,'String')));
fprintf(PSn,strcat('4',num2str(val)));
global y;
y=y+100;
pause(0.5);
set(right,'Enable','on');
set(forward,'Enable','on');
set(backward,'Enable','on');
set(left,'Enable','on');

% --- Executes on button press in backward.
function backward_Callback(hObject, eventdata, handles)
% hObject    handle to backward (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
right = findobj(0, 'tag', 'right');
left = findobj(0, 'tag', 'left');
backward = findobj(0, 'tag', 'backward');
forward = findobj(0, 'tag', 'forward');
edit1 = findobj(0, 'tag', 'edit1');
set(right,'Enable','off');
set(forward,'Enable','off');
set(backward,'Enable','off');
set(left,'Enable','off');
global PSn;
% fprintf(PSn,"3100");
val = str2num(char(get(edit1,'String')));
fprintf(PSn,strcat('2',num2str(val)));
global y;
y=y-100;
pause(0.5);
set(right,'Enable','on');
set(forward,'Enable','on');
set(backward,'Enable','on');
set(left,'Enable','on');



% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
right = findobj(0, 'tag', 'right');
left = findobj(0, 'tag', 'left');
backward = findobj(0, 'tag', 'backward');
forward = findobj(0, 'tag', 'forward');
edit1 = findobj(0, 'tag', 'edit1');
set(right,'Enable','off');
set(forward,'Enable','off');
set(backward,'Enable','off');
set(left,'Enable','off');
global PSn;
fprintf(PSn,"5900");
set(right,'Enable','on');
set(forward,'Enable','on');
set(backward,'Enable','on');
set(left,'Enable','on');

% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
preview(cam);
% Hint: place code in OpeningFcn to populate axes1



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global cam;
%fig = figure('NumberTitle','off','MenuBar','none');
%fig.Name = 'My Camera';
%set(handles.axes2,'string',fullname);
axes2 = findobj(0, 'tag', 'axes2');
ax = axes2; 
frames = snapshot(cam); 
%global frames;
im = image(axes2,zeros(size(frames),'uint8')); 
axis(ax,'image');
preview(cam,im);
% Hint: place code in OpeningFcn to populate axes1

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes2_CreateFcn(hObject, eventdata, handles)


% --- Executes on button press in scanplate.
function scanplate_Callback(hObject, eventdata, handles)
% hObject    handle to scanplate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
motor_motion3;



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%edit2 = findobj(0, 'tag', 'edit2');
%set; 
