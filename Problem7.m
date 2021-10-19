function []= Problem7 (vec1,vec2)
%plotFigure: This is a function asking for 2 vectors and will then plot
%their values on a figure


vec1 = input('Input valid vector') 
vec2 = input('Input valid vector')
x=[vec1 ;vec2]
x=x(:)
y=[zeros(size(vec1)); ones(size(vec2))]
y=y(:)
plot(x,y)
title('Plot Vector Function')
xlabel('x axis')
ylabel('y axis')

end

