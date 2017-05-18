x=0:100:19900;
N1=200;
N2=501;
v = VideoWriter('newfile1.avi');
profiles = VideoWriter.getProfiles()
v.Quality=100;
!v.VideoBitsPerPixel=48;
open(v);
for t=1:N2
plot(DataT(:,t),x);
hold all;
grid on;
xlabel('T, K')
ylabel('Altitude, m')
M(t)=getframe;
writeVideo(v,M(t))
hold off;
end
close(v);
movie(M,N2);