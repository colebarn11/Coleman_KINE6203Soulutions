function []= plotFigure (vec1,vec2)
%plotFigure: This is a function asking for 2 vectors and will then plot
%their values on a figure


vec1 = [1 2 3] 
vec2 = [7 8 9]
x=[vec1 ;vec2]
x=x(:)
y=[zeros(size(vec1)); ones(size(vec2))]
y=y(:)
plot(x,y)
title('Plot Vector Function')
xlabel('x axis')
ylabel('y axis')

end

