function varargout = irisTemplate(varargin)
%{
    
    HOW TO CREATE A NEW TAB

    1. Create or copy PANEL and TEXT objects in GUI

    2. Rename tag of PANEL to "tabNPanel" and TEXT for "tabNtext", where N
    - is a sequential number. 
    Example: tab3Panel, tab3text, tab4Panel, tab4text etc.
    
    3. Add to Tab Code - Settings in m-file of GUI a name of the tab to
    TabNames variable

    Version: 1.0
    First created: January 18, 2016
    Last modified: January 18, 2016

    Author: WFAToolbox (http://wfatoolbox.com)

%}

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @irisTemplate_OpeningFcn, ...
                   'gui_OutputFcn',  @irisTemplate_OutputFcn, ...
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




% --- Executes just before irisTemplate is made visible.
function irisTemplate_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to irisTemplate (see VARARGIN)

% Choose default command line output for irisTemplate


handles.output = hObject;
%cla(handles.axes2,'reset');
%set(handles.axes2,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes3,'reset');
set(handles.axes3,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes11,'reset');
set(handles.axes11,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes12,'reset');
set(handles.axes12,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes13,'reset');
set(handles.axes13,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes14,'reset');
set(handles.axes14,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
%cla(handles.axes15,'reset');
% set(handles.axes15,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes16,'reset');
set(handles.axes16,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes6,'reset');
set(handles.axes6,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes28,'reset');
set(handles.axes28,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes29,'reset');
set(handles.axes29,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes30,'reset');
set(handles.axes30,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes31,'reset');
set(handles.axes31,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')


%% Tabs Code
% Settings
TabFontSize = 10;
TabNames = {'Main','Match'};
FigWidth = 0.43;

% Figure resize
set(handles.SimpleOptimizedTab,'Units','normalized')
pos = get(handles. SimpleOptimizedTab, 'Position');
set(handles. SimpleOptimizedTab, 'Position', [pos(1) pos(2) FigWidth pos(4)])

% Tabs Execution
handles = TabsFun(handles,TabFontSize,TabNames);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes irisTemplate wait for user response (see UIRESUME)
% uiwait(handles.SimpleOptimizedTab);

% --- TabsFun creates axes and text objects for tabs
function handles = TabsFun(handles,TabFontSize,TabNames)

% Set the colors indicating a selected/unselected tab
handles.selectedTabColor=get(handles.tab1Panel,'BackgroundColor');
handles.unselectedTabColor=handles.selectedTabColor-0.1;

% Create Tabs
TabsNumber = length(TabNames);
handles.TabsNumber = TabsNumber;
TabColor = handles.selectedTabColor;
for i = 1:TabsNumber
    n = num2str(i);
    
    % Get text objects position
    set(handles.(['tab',n,'text']),'Units','normalized')
    pos=get(handles.(['tab',n,'text']),'Position');

    % Create axes with callback function
    handles.(['a',n]) = axes('Units','normalized',...
                    'Box','on',...
                    'XTick',[],...
                    'YTick',[],...
                    'Color',TabColor,...
                    'Position',[pos(1) pos(2) pos(3) pos(4)+0.01],...
                    'Tag',n,...
                    'ButtonDownFcn',[mfilename,'(''ClickOnTab'',gcbo,[],guidata(gcbo))']);
                    
    % Create text with callback function
    handles.(['t',n]) = text('String',TabNames{i},...
                    'Units','normalized',...
                    'Position',[pos(3),pos(2)/2+pos(4)],...
                    'HorizontalAlignment','left',...
                    'VerticalAlignment','middle',...
                    'Margin',0.001,...
                    'FontSize',TabFontSize,...
                    'Backgroundcolor',TabColor,...
                    'Tag',n,...
                    'ButtonDownFcn',[mfilename,'(''ClickOnTab'',gcbo,[],guidata(gcbo))']);

    TabColor = handles.unselectedTabColor;
end
            
% Manage panels (place them in the correct position and manage visibilities)
set(handles.tab1Panel,'Units','normalized')
pan1pos=get(handles.tab1Panel,'Position');
set(handles.tab1text,'Visible','off')
for i = 2:TabsNumber
    n = num2str(i);
    set(handles.(['tab',n,'Panel']),'Units','normalized')
    set(handles.(['tab',n,'Panel']),'Position',pan1pos)
    set(handles.(['tab',n,'Panel']),'Visible','off')
    set(handles.(['tab',n,'text']),'Visible','off')
end

% --- Callback function for clicking on tab
function ClickOnTab(hObject,~,handles)
m = str2double(get(hObject,'Tag'));

for i = 1:handles.TabsNumber;
    n = num2str(i);
    if i == m
        set(handles.(['a',n]),'Color',handles.selectedTabColor)
        set(handles.(['t',n]),'BackgroundColor',handles.selectedTabColor)
        set(handles.(['tab',n,'Panel']),'Visible','on')
    else
        set(handles.(['a',n]),'Color',handles.unselectedTabColor)
        set(handles.(['t',n]),'BackgroundColor',handles.unselectedTabColor)
        set(handles.(['tab',n,'Panel']),'Visible','off')
    end
end

% --- Outputs from this function are returned to the command line.
function varargout = irisTemplate_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;







%For Matching Panel
%===============================================

% --- Executes on button press in Load button for matching.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%[filename, pathname]=uigetfile('*.*','Choose an image');
%imagetomatch=imread(strcat(pathname,filename));
%setappdata(handles.tab1Panel,'IrisImg',imagetomatch);
%textLabel1 = pathname;
%set(handles.ipath, 'String', textLabel1);
%axes(handles.axes6);
%imshow(imagetomatch);
%global im2m ;
%im2m = imagetomatch;




b=webcam_capture(); 
uiwait(gcf);
E = vision.CascadeObjectDetector('EyePairBig');
I=imread('capturedImage.jpg');
axes(handles.axes15);
imshow(I);
BB=step(E,I);
rectangle('Position',BB,'LineWidth',4,'LineStyle','-','EdgeColor','b');
axes(handles.axes14);
imshow(I);
Eyes=imcrop(I,BB);
imwrite(Eyes,'e.jpg');
axes(handles.axes16);
imshow(Eyes);

a=Eyes(1:end,1:100);
a=Eyes(1:end,1:100,:);
imwrite(a,'c.jpg');
temp=imread('c.jpg');
temp1=imresize(temp,[300,400]);
imwrite(temp1,'temp1.jpg');
%figure,imshow(temp1);

textLabel = 'Eye Image';                               
set(handles.ipath, 'String', textLabel);
em=imread('temp1.jpg');
axes(handles.axes6);
imshow(em);
setappdata(handles.tab1Panel,'IrisImg',em);

global im2m ;
im2m = em;


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)







% --- Executes on button press in loadButton.
function loadButton_Callback(hObject, eventdata, handles)
% hObject    handle to loadButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%[filename, pathname]=uigetfile('*.*','Choose an image');
%fig=imread(strcat(pathname,filename));
%setappdata(handles.tab1Panel,'IrisImg',fig);
%axes(handles.axes2);
%textLabel = pathname;                               
%set(handles.pathtext, 'String', textLabel);
%imshow(fig);
%imwrite(fig,'sample.bmp')


%yo portion ko code le chai image capture garne GUI open garxa ani image
%capture bhayasi main GUI ma ja bata capture garne GUI call bhako ho tei
%control return garxa ra capture garne GUI lai close garxa
b=webcam_capture; %yeha aaunu parne/////////////////////////////
uiwait(gcf);
E = vision.CascadeObjectDetector('EyePairBig');
I=imread('capturedImage.jpg');
axes(handles.axes29);
imshow(I);
BB=step(E,I);
%figure,imshow(I);
rectangle('Position',BB,'LineWidth',4,'LineStyle','-','EdgeColor','b');
axes(handles.axes28);
imshow(I);
Eyes=imcrop(I,BB);
imwrite(Eyes,'e.jpg');
axes(handles.axes30);
imshow(Eyes);

a=Eyes(1:end,1:200);
%a=Eyes(1:end,1:2000,:);
imwrite(a,'c.jpg');
%figure,imshow(a);
temp=imread('c.jpg');
temp1=imresize(temp,[300,400]);
imwrite(temp1,'temp1.jpg');
%figure,imshow(temp1);

textLabel = 'Eye Image';                               
set(handles.pathtext, 'String', textLabel);
em=imread('temp1.jpg');
%axes(handles.axes2);
%imshow(em);
axes(handles.axes31);
imshow(em);
setappdata(handles.tab1Panel,'IrisImg',em);



% --- Executes on button press in startButton.
function startButton_Callback(hObject, eventdata, handles)
% hObject    handle to startButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%first check if the image is selected or not
pt=get(handles.pathtext,'string');
if isempty(pt)
    h=msgbox('Please capture image from webcam first ');  
    %set(h, 'position', [300 300 400 120]); %makes box bigger
    %ah = get( h, 'CurrentAxes' );
    %ch = get( ah, 'Children' );
    %set( ch, 'FontSize', 15 );
    
else
    
fig=getappdata(handles.tab1Panel,'IrisImg');
[local xc yc time]=localisation2(fig,0.2);
[ci cp out time]=thresh(local,50,200);
setappdata(handles.tab1Panel,'localImg',local);
setappdata(handles.tab1Panel,'IrisParam',ci);
setappdata(handles.tab1Panel,'PupilParam',cp);
%subplot(1,2,2),imshow(out);
axes(handles.axes11);
imshow(out);
normaliseimg_Callback(hObject, eventdata, handles);
end


% --- Executes on button press in normaliseimg.
function normaliseimg_Callback(hObject, eventdata, handles)
% hObject    handle to normaliseimg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img=getappdata(handles.tab1Panel,'localImg');
ci=getappdata(handles.tab1Panel,'IrisParam');
cp=getappdata(handles.tab1Panel,'PupilParam');
[ring,parr]=normaliseiris(img,ci(2),ci(1),ci(3),cp(2),cp(1),cp(3),'normal.bmp',100,300);
parr=adapthisteq(parr);
setappdata(handles.tab1Panel,'normalImg',parr);
%subplot(1,2,2);
axes(handles.axes12);
imshow(parr);
gen_template_Callback(hObject, eventdata, handles);


% --- Executes on button press in gen_template.
function gen_template_Callback(hObject, eventdata, handles)
% hObject    handle to gen_template (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
norm=getappdata(handles.tab1Panel,'normalImg');
[temp th tv]=gen_templateVVV(norm);
%subplot(1,2,2);
axes(handles.axes13);
imshow(temp);
global template ;
template=temp;


% --- Executes on button press in addButton.
function addButton_Callback(hObject, eventdata, handles)
% hObject    handle to addButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

pt=get(handles.pathtext,'string');
if isempty(pt)
    h=msgbox('Please capture image from webcam first');
else
add;
end


% --- Executes on button press in resetButton.
function resetButton_Callback(hObject, eventdata, handles)
% hObject    handle to resetButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pathtext, 'String', '');
%cla(handles.axes2,'reset');
%set(handles.axes2,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes3,'reset');
set(handles.axes3,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes11,'reset');
set(handles.axes11,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes12,'reset');
set(handles.axes12,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes13,'reset');
set(handles.axes13,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes28,'reset');
set(handles.axes28,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes29,'reset');
set(handles.axes29,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes30,'reset');
set(handles.axes30,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes31,'reset');
set(handles.axes31,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')


% --- Executes on button press in matchButton.
function matchButton_Callback(hObject, eventdata, handles)
% hObject    handle to matchButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%this is declared to show the details of the matched suspect
global ID;
global NAME;
global ADDRESS;
global AGE;
global CONTACT;
global DESCRIPTION;
global IMAGE;
global stat;


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
javaaddpath('F:\Dukto\Seventh Sem Project Docs\Project Work\mysql-connector-java-5.1.6.jar');

% Create the database connection object
dbConn = database(dbName, user, password, jdbcDriver, jdbcString);
status = isconnection(dbConn);

pth=get(handles.ipath,'string');

if ~isempty(pth)
    
    if status == 1 % checking if the database connection is ok or not
            
        
                %first generate template of the input image
               
                global im2m;
                    [local xc yc , ~]=localisation2(im2m,0.2);
                    [ci, cp out time]=thresh(local,50,200);
                    [ring,parr]=normaliseiris(local,ci(2),ci(1),ci(3),cp(2),cp(1),cp(3),'normal.bmp',100,300);
                    [temp2 th tv]=gen_templateVVV(parr);
                    %display(temp2);
                    % figure;
                    %imshow(temp2);
                   
                               

                %==============================================================================================================
                %Getting the no. of data in a table for loop
                %==============================================================================================================
                curs = exec(dbConn,'SELECT * FROM iris_details');
                curs = fetch(curs);
                numrows = rows(curs);
                %display(numrows);
                %display(curs.Data);
                %t=curs.Data;
                %display(numrows);
                
                
                %==========================================================
                %Looping through the database to match the template
              for i = 1:numrows
                          
                      
                      e=[curs.Data{i,7}];
                       ID=[curs.Data{i,1}];
                            NAME=[curs.Data{i,2}];
                            ADDRESS=[curs.Data{i,3}];
                            AGE=[curs.Data{i,4}];
                            CONTACT=[curs.Data{i,5}];
                            DESCRIPTION=[curs.Data{i,6}];
                            data=double(e);
                                n=size(data);
                                newdata=zeros(n(1),1,'uint8');
                                for i=1:n(1)
                                        if data(i,1)<0
                                         newdata(i,1)=256+double(data(i,1));
                                        else
                                          newdata(i,1)=data(i,1);
                                        end
                                end
                                f=fopen('sample-temp.bmp','w+');
                                fwrite(f,newdata);
                                fclose(f);
                                m=imread('sample-temp.bmp');
                                %imshow(m);
                                
                                % now generate iris code for each eye image from database one by one                                
                                 [local xc yc time]=localisation2(m,0.2);
                                [ci cp out time]=thresh(local,50,200);
                                 [ring,parr]=normaliseiris(local,ci(2),ci(1),ci(3),cp(2),cp(1),cp(3),'normal.bmp',100,300);
                                 [temp3 th tv]=gen_templateVVV(parr);
                                
                    
                   
                    hd=hammingdist(temp3, temp2);
                        
                        if(hd<=0.3)
                           % display(ID);
                            %display(NAME);
                            %display(ADDRESS);
                            %display(AGE);
                            %display(CONTACT);
                            %display(DESCRIPTION);
                            %display(hd);
                            %msgbox('match found');  
                            MatchDescription
                            stat=1;
                            break;

                        else
                            %display('sorry');
                            stat=0;
                            continue;
                            
                        end
                        
                    end
            if(stat==0)
                msgbox('sorry no match found');
            end

    else
                msgbox('Cannot Access Databse or Database Connection Error');
    end
else
             h=msgbox('Please select eye image first');
end




function ipath_Callback(hObject, eventdata, handles)
% hObject    handle to ipath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ipath as text
%        str2double(get(hObject,'String')) returns contents of ipath as a double


% --- Executes during object creation, after setting all properties.


function ipath_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ipath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pathtext_Callback(hObject, eventdata, handles)
% hObject    handle to pathtext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pathtext as text
%        str2double(get(hObject,'String')) returns contents of pathtext as a double


% --- Executes during object creation, after setting all properties.
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


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ipath, 'String', '');
cla(handles.axes14,'reset');
set(handles.axes14,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes15,'reset');
set(handles.axes15,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes16,'reset');
set(handles.axes16,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
cla(handles.axes6,'reset');
set(handles.axes6,'xtick',[],'ytick',[],'Xcolor','w','Ycolor','w')
