DataT=importdata('Data_T.txt')
[N1, N2]=size(DataT)
x=0:100:19900;
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
movie(M,1);