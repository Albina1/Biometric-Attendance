function varargout = info(varargin)
% INFO MATLAB code for info.fig
%      INFO, by itself, creates a new INFO or raises the existing
%      singleton*.
%
%      H = INFO returns the handle to a new INFO or the handle to
%      the existing singleton*.
%
%      INFO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INFO.M with the given input arguments.
%
%      INFO('Property','Value',...) creates a new INFO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before info_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to info_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help info

% Last Modified by GUIDE v2.5 18-May-2018 14:41:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @info_OpeningFcn, ...
                   'gui_OutputFcn',  @info_OutputFcn, ...
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


% --- Executes just before info is made visible.
function info_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to info (see VARARGIN)

% Choose default command line output for info
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
in=imread('iris_scanning.jpg');
axes(handles.axes1);
imshow(in);


% UIWAIT makes info wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = info_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
