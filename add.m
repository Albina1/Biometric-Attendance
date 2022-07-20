function varargout = add(varargin)
clc;
% ADD MATLAB code for add.fig
%      ADD, by itself, creates a new ADD or raises the existing
%      singleton*.
%
%      H = ADD returns the handle to a new ADD or the handle to
%      the existing singleton*.
%
%      ADD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADD.M with the given input arguments.
%
%      ADD('Property','Value',...) creates a new ADD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before add_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to add_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help add

% Last Modified by GUIDE v2.5 15-May-2018 13:40:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @add_OpeningFcn, ...
                   'gui_OutputFcn',  @add_OutputFcn, ...
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


% --- Executes just before add is made visible.
function add_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to add (see VARARGIN)

% Choose default command line output for add
handles.output = hObject;
global template;
imshow(template);


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes add wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = add_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function etfullname_Callback(hObject, eventdata, handles)
% hObject    handle to etfullname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fullname;
fullname= get(handles.etfullname,'String');

% Hints: get(hObject,'String') returns contents of etfullname as text
%        str2double(get(hObject,'String')) returns contents of etfullname as a double


% --- Executes during object creation, after setting all properties.
function etfullname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to etfullname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in contactno.
function contactno_Callback(hObject, eventdata, handles)
% hObject    handle to contactno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in shift.
function shift_Callback(hObject, eventdata, handles)
% hObject    handle to shift (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function etdept_Callback(hObject, eventdata, handles)
% hObject    handle to etdept (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global dept;
dept= get(handles.etdept,'String');

% Hints: get(hObject,'String') returns contents of etdept as text
%        str2double(get(hObject,'String')) returns contents of etdept as a double


% --- Executes during object creation, after setting all properties.
function etdept_CreateFcn(hObject, eventdata, handles)
% hObject    handle to etdept (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function etcollegeid_Callback(hObject, eventdata, handles)
% hObject    handle to etcollegeid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global collegeid;
collegeid= str2num(char(get(handles.etcollegeid,'String')));

% Hints: get(hObject,'String') returns contents of etcollegeid as text
%        str2double(get(hObject,'String')) returns contents of etcollegeid as a double


% --- Executes during object creation, after setting all properties.
function etcollegeid_CreateFcn(hObject, eventdata, handles)
% hObject    handle to etcollegeid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function etemail_Callback(hObject, eventdata, handles)
% hObject    handle to etemail (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global email;
email= get(handles.etemail,'String');

% Hints: get(hObject,'String') returns contents of etemail as text
%        str2double(get(hObject,'String')) returns contents of etemail as a double


% --- Executes during object creation, after setting all properties.
function etemail_CreateFcn(hObject, eventdata, handles)
% hObject    handle to etemail (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function etcontactno_Callback(hObject, eventdata, handles)
% hObject    handle to etcontactno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global contactno;
contactno= str2num(char(get(handles.etcontactno,'String')));

% Hints: get(hObject,'String') returns contents of etcontactno as text
%        str2double(get(hObject,'String')) returns contents of etcontactno as a double


% --- Executes during object creation, after setting all properties.
function etcontactno_CreateFcn(hObject, eventdata, handles)
% hObject    handle to etcontactno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function etshift_Callback(hObject, eventdata, handles)
% hObject    handle to etshift (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global shift;
shift= get(handles.etshift,'String');

% Hints: get(hObject,'String') returns contents of etshift as text
%        str2double(get(hObject,'String')) returns contents of etshift as a double


% --- Executes during object creation, after setting all properties.
function etshift_CreateFcn(hObject, eventdata, handles)
% hObject    handle to etshift (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pbregister.
function pbregister_Callback(hObject, eventdata, handles)
% hObject    handle to pbregister (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%global fullname dept collegeid email contactno shift gender;
nam=get(handles.etfullname,'string');
dep=get(handles.etdept,'string');
coid=get(handles.etcollegeid,'string');
coid=str2double(coid);
eml=get(handles.etemail,'string');
cont=get(handles.etcontactno,'string');
cont=str2double(cont);
shft=get(handles.etshift,'string');
%  if(shft=='M')
%     shft=0;
%  else if(shft=='D')
%     shft=1;
%     else
%         msgbox('enter "M" for morning and "D" for day');
%     
gen=get(handles.etgender,'string');
 if isempty(nam)
    msgbox('please enter full name');
    
 else if isempty(dep)
         msgbox('Please enter the valid department');
         
 else if isempty(coid) || ceil(log10(abs(coid))) ~= 6
         msgbox('Please enter valid college id');
         
 else if isempty(eml)
         msgbox('Please enter valid email address');
         
 else if isempty(cont) || ceil(log10(abs(cont)))~=10
         msgbox('Please enter valid contact no');
         
 else if isempty(shft) %|| shft ~= 'M' || shft ~='D' 
         msgbox('please enter valid shift');
         
 else if isempty(gen) %|| gen~='M' || gen~='F'
         msgbox('please enter valid gender');
                  
 else  
 % Database Server
 host = 'localhost';
 % Database Username/Password
 user = 'root';
 password = '';

 % Database Name
 dbName = 'iris_db'; 

 % JDBC Parameters
 jdbcString = sprintf('jdbc:mysql://%s/%s', host, dbName);
 jdbcDriver = 'com.mysql.jdbc.Driver';

 % Set this to the path to your MySQL Connector/J JAR
 javaaddpath('F:\projectwork\mysql-connector-java-5.1.6.jar');

% Create the database connection object
dbConn = database(dbName, user, password, jdbcDriver, jdbcString);
status = isconnection(dbConn);

if status == 1
    %QUERY = 'SELECT * FROM iris_details ';
%[filenames]=fetch(dbConn,QUERY)

        f=fopen('sample.bmp','r');
        img=fread(f,inf,'*uint8');
        fclose(f);
           %global fig;
           %whos fig    
        val= {nam,dep,coid,eml,cont,shft,img};

        tablename='info_details';

        colnames={'fullname','dept','collegeid','email','contactno','shift','gender','iris_template'};
        datainsert(dbConn,tablename,colnames,val);
        close(dbConn);
        
        h=msgbox('Data Inserted Successfully');
       close(handles.figure1);  
else
    msgbox('Cannot Access Databse or Database Connection Error');
end


        
     end
     end
     end
     end
     end
     end
 end

 

% conn=database('irisdatabase','','');
% sqlwrite(conn,teacher,fullname, dept, collegeid, email, contactno, shift);

function pathtext_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pathtext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function tab1Panel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tab1Panel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pbpreview.
% function pbpreview_Callback(hObject, eventdata, handles)
% % hObject    handle to pbpreview (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% % choose which webcam (winvideo-1) and which  mode (YUY2_176x144)
% global vid;
% 
% %vid = videoinput('winvideo', 1,'YUY2_1280x720');
% vid = videoinput('winvideo', 1,'YUY2_640x480');
% % only capture one frame per trigger, we are not recording a video
% vid.FramesPerTrigger = 1;
% % output would image in RGB color space
% vid.ReturnedColorspace = 'rgb';
% % tell matlab to start the webcam on user request, not automatically
% triggerconfig(vid, 'manual');
% % we need this to know the image height and width
% vidRes = get(vid, 'VideoResolution');
% % image width
% imWidth = vidRes(1);
% % image height
% imHeight = vidRes(2);
% % number of bands of our image (should be 3 because it's RGB)
% nBands = get(vid, 'NumberOfBands');
% % create an empty image container and show it on axPreview
% hImage = image(zeros(imHeight, imWidth, nBands), 'parent', handles.axesPreview);
% % begin the webcam preview
% preview(vid, hImage);


% --- Executes on button press in pbcapture.
% function pbcapture_Callback(hObject, eventdata, handles)
% % hObject    handle to pbcapture (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% global vid;
% vid.FramesPerTrigger = 1;
% vid.ReturnedColorspace = 'rgb';
% triggerconfig(vid, 'manual');
% vidRes = get(vid, 'VideoResolution');
% imWidth = vidRes(1);
% imHeight = vidRes(2);
% nBands = get(vid, 'NumberOfBands');
% hImage = image(zeros(imHeight, imWidth, nBands), 'parent', handles.axesPreview);
% preview(vid, hImage);
%  
% % prepare for capturing the image preview
% start(vid); 
% % pause for 1 seconds to give our webcam a "warm-up" time
% pause(1); 
% % do capture!
% trigger(vid);
% % stop the preview
% stoppreview(vid);
% % get the captured image data and save it on capt1 variable
% capt1 = getdata(vid);
% % now write capt1 into file named captured.png
% imwrite(capt1, 'capturedImage.jpg');
% % just dialog that we are done capturing
% %msgbox('Image Capture Completed.');
% closereq;

% % % %b=imread('capturedImage.jpg');
% % % %uiwait(gcf);
% % % E = vision.CascadeObjectDetector('EyePairBig');
% % % I=imread('capturedImage.jpg');
% % % % axes(handles.axes15);
% % % % imshow(I);
% % % BB=step(E,I);
% % % %rectangle('Position',BB,'LineWidth',4,'LineStyle','-','EdgeColor',b);
% % % % axes(handles.axes14);
% % % % imshow(I);
% % % Eyes=imcrop(I,BB);
% % % imwrite(Eyes,'e.jpg');
% % % % axes(handles.axes16);
% % % % imshow(Eyes);
% % % 
% % % a=Eyes(1:end,1:100);
% % % a=Eyes(1:end,1:100,:);
% % % imwrite(a,'c.jpg');
% % % temp=imread('c.jpg');
% % % temp1=imresize(temp,[300,400]);
% % % imwrite(temp1,'temp1.jpg');
% % % %figure,imshow(temp1);
% % % 
% % % textLabel = 'Eye Image';                               
% % % %set(handles.pathtext, 'String', textLabel);
% % % em=imread('temp1.jpg');
% % % % axes(handles.axes6);
% % % % imshow(em);
% % % axes(handles.axesPreview,'IrisImg',em);
% % % 
% % % 
% % % fig=getappdata(handles.tab1panel,'IrisImg');
% % % [local xc yc time]=localisation2(fig,0.2);
% % % [ci cp out time]=thresh(local,50,200);
% % % setappdata(handles.tab1panel,'localImg',local);
% % % setappdata(handles.tab1panel,'IrisParam',ci);
% % % setappdata(handles.tab1panel,'PupilParam',cp);
% % % %subplot(1,2,2),imshow(out);
% % % axes(handles.tab1panel);
% % % imshow(out);
% % % normaliseimg_Callback(hObject, eventdata, handles);
% % % 
% % % %normalization
% % % function normaliseimg_Callback(hObject, eventdata, handles)
% % % % hObject    handle to normaliseimg (see GCBO)
% % % % eventdata  reserved - to be defined in a future version of MATLAB
% % % % handles    structure with handles and user data (see GUIDATA)
% % % img=getappdata(handles.tab1Panel,'localImg');
% % % ci=getappdata(handles.tab1Panel,'IrisParam');
% % % cp=getappdata(handles.tab1Panel,'PupilParam');
% % % [ring,parr]=normaliseiris(img,ci(2),ci(1),ci(3),cp(2),cp(1),cp(3),'normal.bmp',100,300);
% % % parr=adapthisteq(parr);
% % % setappdata(handles.tab1Panel,'normalImg',parr);
% % % %subplot(1,2,2);
% % % axes(handles.axes12);
% % % imshow(parr);
% % % gen_template_Callback(hObject, eventdata, handles);
% % % 
% % % %template generation
% % % function gen_template_Callback(hObject, eventdata, handles)
% % % % hObject    handle to gen_template (see GCBO)
% % % % eventdata  reserved - to be defined in a future version of MATLAB
% % % % handles    structure with handles and user data (see GUIDATA)
% % % norm=getappdata(handles.tab1Panel,'normalImg');
% % % [temp th tv]=gen_templateVVV(norm);
% % % %subplot(1,2,2);
% % % axes(handles.axes13);
% % % imshow(temp);
% % % global template ;
% % % template=temp;


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function etgender_Callback(hObject, eventdata, handles)
% hObject    handle to etgender (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of etgender as text
%        str2double(get(hObject,'String')) returns contents of etgender as a double
global gender;
shift= get(handles.etgender,'String');


% --- Executes during object creation, after setting all properties.
function etgender_CreateFcn(hObject, eventdata, handles)
% hObject    handle to etgender (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
