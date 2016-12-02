# popsubplot
Open a subplot in new window by clikcing on it

Example usage:
```
% generate some random subplots
for j=1:3, 
  subplot(3,1,j); hold all; 
  plot(rand(100,10)); 
end; 
popsubplot; % initialize the function. Clicking on subplot will open them in a new window

```
