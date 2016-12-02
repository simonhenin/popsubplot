function popsubplot(src,event)

if nargin < 2,
    % initilize the figure
    if ~exist('src', 'var') || isempty(src) || ~ishandle(src)
        src = gcf;
    end
    set(findobj(src, 'type', 'line', '-or', 'type', 'image', '-or', 'type', 'bar'), 'hittest', 'on', 'buttondownfcn', @popsubplot);
else
    
    
    src = get(src, 'parent');
    c=copyobj(src,get(src,'Parent'));
    f=figure;
    set(c,'Parent',f);
    ha=gca;
    set(c,'Position','default');
    hay=get(ha,'Ylabel');
    hax=get(ha,'Xlabel');
    NewFontSize=10;
    set(hay,'Fontsize',NewFontSize);
    set(hax,'Fontsize',NewFontSize);
end

end