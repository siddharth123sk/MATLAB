%Version 1.0 by Luis Eduardo Arévalo Oliver //Created by Luis Eduardo Arévalo Oliver for Adem Polat's imaging project.//
%//Harvard - MIT, Brigham and Women's Hospital Research Internship for Khademhosseini's Laboratory, 65 Landsdowne Street, Cambridge MA 02139. July of 2017.

function varargout = imagingtoolGUI(varargin)
% IMAGINGTOOLGUI MATLAB code for imagingtoolGUI.fig
%      IMAGINGTOOLGUI, by itself, creates a new IMAGINGTOOLGUI or raises the existing
%      singleton*.
%
%      H = IMAGINGTOOLGUI returns the handle to a new IMAGINGTOOLGUI or the handle to
%      the existing singleton*.
%
%      IMAGINGTOOLGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMAGINGTOOLGUI.M with the given input arguments.
%
%      IMAGINGTOOLGUI('Property','Value',...) creates a new IMAGINGTOOLGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before imagingtoolGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to imagingtoolGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help imagingtoolGUI

% Last Modified by GUIDE v2.5 27-Jul-2017 14:07:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @imagingtoolGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @imagingtoolGUI_OutputFcn, ...
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


% --- Executes just before imagingtoolGUI is made visible.
function imagingtoolGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to imagingtoolGUI (see VARARGIN)

% Choose default command line output for imagingtoolGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes imagingtoolGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);
clear all;
global s;
s=serial('COM5','Baudrate', 9600);


% --- Outputs from this function are returned to the command line.
function varargout = imagingtoolGUI_OutputFcn(hObject, eventdata, handles) 
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
global s;
fopen(s);
pause(2);
servalue= 'N';
fprintf(s,servalue);
fclose(s);
    
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
fopen(s);
pause(2);
servalue= 'M';
fprintf(s,servalue);
fclose(s);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
fopen(s);
pause(2);
servalue= 'Q';
fprintf(s,servalue);
fclose(s);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
fopen(s);
pause(2);
servalue= 'W';
fprintf(s,servalue);
fclose(s);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
fopen(s);
pause(2);
servalue= 'L';
fprintf(s,servalue);
fclose(s);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
fopen(s);
pause(2);
servalue= 'R';
fprintf(s,servalue);
fclose(s);
% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
fopen(s);
pause(2);
servalue= 'Z';
fprintf(s,servalue);
fclose(s);
% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
fopen(s);
pause(2);
servalue= 'X';
fprintf(s,servalue);
fclose(s);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
fopen(s);
pause(2);
servalue= 'A';
fprintf(s,servalue);
fclose(s);

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
fopen(s);
pause(2);
servalue= 'S';
fprintf(s,servalue);
fclose(s);
