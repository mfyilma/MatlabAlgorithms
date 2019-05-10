function [nd] = days(mo, da, leap)
% I'm finding the number of elapsed days in a year(1 OR 0)
% where mo= months da= days leap= if its a leap year 
% this code will be calculating how many days have elapsed since the start
% of the year to a date inputed by the user. 

if mo==1
    i=0;
elseif mo==2
    i=31;
elseif mo==3
    i=59;
elseif mo==4
    i=90;
elseif mo==5
    i=120;
elseif mo==6 
    i=151;
elseif mo==7
    i=181;
elseif mo==8
    i=212;
elseif mo==9
    i=243;
elseif mo==10
    i=273;
elseif mo==11
    i=304;
else mo==12
    i=334;
end
if leap==1&& mo >= 3
    i=i+1;
end
nd = i+da;
end

