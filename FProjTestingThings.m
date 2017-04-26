% Gets current time we will be able to use this to update the busy status
% in the GUI
time=clock;
currenthour=time(4);
if currenthour>12
    currenthour=currenthour-12;
    fprintf('%d p.m.\n',currenthour)
end

%brainstorming what the location parameters could be
function data= postion_trackAPItest1(city)        %This will get the user's current position from the API                                                    from the API
endpoint = 'http://ip-api.com/json';
resp = webread(endpoint, 'city', city);
data=resp;
end 
% So now all of our current position information is in a structure called
% resp and it gives us our current lat and long as this :lat":42.3451,"lon":-71.0993
%Let's call the current lat currentlat and the current long currentlong

% Let's say our giant vector of structures is called PlacesData
% Ok so to access the lat coordinates PlacesData.lat and the
% BUlatcoords=PlacesData.lat
% Ok so to access the long coordinates PlacesData.long
% BUlongcoords=PlacesData.long
placesinLatRange=[];% preallocating a vector explained below
for i=numel(BUlatcoords)
    indicesofrelplaces= find(abs(i-currentlat)=0.0001 );%find the indices of lats when current lat is within 0.0001 of the library i
    relevantlats=BUlatcoords(indicesofrelplaces);
    selectionsort(relevantlats)%using those indices and then sortign them by closest to farthest
    %and then we need to find some sort of way to use the relevenant lats
    %and fetch the name of the top three libraries
end

        
        
        
