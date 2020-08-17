function plotTrajectories(data,group_id,Step)
%description: plots the groups trajectories together with flakes and
% arena borders


%Input: data - cell array with all information from experiments
%       group_id - integer with id to plot
%       Step - incraments of frame to plot (every frame, every second frame
%       etc'



%Output: 



%...........Local Variable definitions..........
% extract data for ease of use:
app_dis = data{group_id}.flake_app_diss_time;
x = data{group_id}.x;
y = data{group_id}.y;
bordersx = data{group_id}.border_x;
bordersy = data{group_id}.border_y;
flakes_xy = data{group_id}.flake_xy;

%.................Main Function.................
figure();
disp(app_dis(:,2));
tail = 10; % length of tail in frames
for i = 2:Step:max(app_dis(:,2))+10 % finish after the last flake
    temp_tail = min([tail i-1]);
    % plot coordinates
    plot(x(:,i-temp_tail:i)',y(:,i-temp_tail:i)'); hold on;
    % plot borders
    plot(bordersx,bordersy,'k');
    % check which flakes are still not eaten
    ii = i>app_dis(:,1) & i<app_dis(:,2);
    plot(flakes_xy(ii,1),flakes_xy(ii,2),'k.'); % plot flakes
    title(i)
    axis image;
    hold off;
    axis off;
    pause(0.001);
    
end

close;
% plot the image of all trajectories and flakes:
figure();
plot(x(:,1:max(app_dis(:,2)))',y(:,1:max(app_dis(:,2)))');
hold on;
plot(flakes_xy(:,1),flakes_xy(:,2),'k.');
plot(bordersx,bordersy,'k');
axis image;
axis off




%............Call for local functions...........




