function varargout = scan(varargin)
% SCAN MATLAB code for scan.fig
%      SCAN, by itself, creates a new SCAN or raises the existing
%      singleton*.
%
%      H = SCAN returns the handle to a new SCAN or the handle to
%      the existing singleton*.
%
%      SCAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SCAN.M with the given input arguments.
%
%      SCAN('Property','Value',...) creates a new SCAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before scan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to scan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help scan

% Last Modified by GUIDE v2.5 16-May-2018 18:52:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @scan_OpeningFcn, ...
                   'gui_OutputFcn',  @scan_OutputFcn, ...
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


% --- Executes just before scan is made visible.
function scan_OpeningFcn(hObject, eventdata, handles, varargin)
clc;
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to scan (see VARARGIN)

% Choose default command line output for scan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes scan wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = scan_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pbstart.
function pbstart_Callback(hObject, eventdata, handles)
clc;
% hObject    handle to pbstart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b=webcam_capture(); 
uiwait(gcf);
E = vision.CascadeObjectDetector('EyePairBig');
I=imread('capturedImage.jpg');
% axes(handles.axes15);
% imshow(I);
BB=step(E,I);
rectangle('Position',BB,'LineWidth',4,'LineStyle','-','EdgeColor','b');
% axes(handles.axes14);
% imshow(I);
Eyes=imcrop(I,BB);
imwrite(Eyes,'e.jpg');
% axes(handles.axes16);
% imshow(Eyes);

a=Eyes(1:end,1:100);
a=Eyes(1:end,1:100,:);
imwrite(a,'c.jpg');
temp=imread('c.jpg');
temp1=imresize(temp,[300,400]);
imwrite(temp1,'temp1.jpg');
%figure,imshow(temp1);

textLabel = 'Eye Image';                               
% set(handles.ipath, 'String', textLabel);
im2m=imread('temp1.jpg');
% axes(handles.axes6);
% imshow(em);
% setappdata(handles.tab1Panel,'IrisImg',em);


                    [local xc yc , ~]=localisation2(im2m,0.2);
                    [ci, cp out time]=thresh(local,50,200);
                    [ring,parr]=normaliseiris(local,ci(2),ci(1),ci(3),cp(2),cp(1),cp(3),'normal.bmp',100,300);
                    [temp2 th tv]=gen_templateVVV(parr);
axes(handles.axes1);
imshow(temp2);




