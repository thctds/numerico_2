 function y = newton(f,j,x) 
      step = 1;
      finalstep = 10;
      y   = zeros (2,1);
      tol = 1e-5; 
      while step < finalstep
          d = j(x)\(-f(x));
          y = x + d;
          disp(y);
          step = step + 1;
          exitEarly = true;
          for k=1:length(x)
              if abs(x(k)-y(k))>tol
                  exitEarly=false;
              end
          end
          if exitEarly
              break;
          end          
          x = y;
      end
 end