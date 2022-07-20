function varargout = index(varargin)
clc;
% INDEX MATLAB code for index.fig
%      INDEX, by itself, creates a new INDEX or raises the existing
%      singleton*.
%
%      H = INDEX returns the handle to a new INDEX or the handle to
%      the existing singleton*.
%
%      INDEX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INDEX.M with the given input arguments.
%
%      INDEX('Property','Value',...) creates a new INDEX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before index_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to index_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help index

% Last Modified by GUIDE v2.5 18-May-2018 14:27:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @index_OpeningFcn, ...
                   'gui_OutputFcn',  @index_OutputFcn, ...
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


% --- Executes just before index is made visible.
function index_OpeningFcn(hObject, eventdata, handles, varargin)
% clc;
% close all;
% clear variables;
global i;
i=imread('index.jpg');
axes(handles.axes1);
imshow(i);
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to index (see VARARGIN)

% Choose default command line output for index
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes index wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = index_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pbhome.
function pbhome_Callback(hObject, eventdata, handles)
% hObject    handle to pbhome (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pbadd.
function pbadd_Callback(hObject, eventdata, handles)
% hObject    handle to pbadd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
irisTemplate;


% --- Executes on button press in pbscan.
function pbscan_Callback(hObject, eventdata, handles)
% hObject    handle to pbscan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
scan;


% --- Executes on button press in pbsearch.
function pbsearch_Callback(hObject, eventdata, handles)
% hObject    handle to pbsearch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
searchatt;


% --- Executes on button press in pbabout.
function pbabout_Callback(hObject, eventdata, handles)
% hObject    handle to pbabout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
info;


% --- Executes on button press in pbexit.
function pbexit_Callback(hObject, eventdata, handles)
% hObject    handle to pbexit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;
clear variables;
clc;
