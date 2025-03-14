clear 
close all

dt = dlmread('../data/data_A3_gyr_t.txt');         
data_x = dlmread('../data/data_A3_gyr_x.txt'); 
data_y= dlmread('../data/data_A3_gyr_y.txt'); 
data_z = dlmread('../data/data_A3_gyr_z.txt'); 
data_draw=[data_x data_y data_z] ;

data_sim_x= dlmread('../data/data_A3_sim_gyr_x.txt'); 
data_sim_y= dlmread('../data/data_A3_sim_gyr_y.txt'); 
data_sim_z= dlmread('../data/data_A3_sim_gyr_z.txt'); 
data_sim_draw=[data_sim_x data_sim_y data_sim_z] ;


figure('name', 'gyr')
loglog(dt, data_draw , 'o');
% loglog(dt, data_sim_draw , '-');
xlabel('time:sec');                
ylabel('Sigma:deg/h');             
% legend('x','y','z');      
grid on;                           
hold on;                           
loglog(dt, data_sim_draw , '-');

accdt = dlmread('../data/data_A3_acc_t.txt');         
accdata_x = dlmread('../data/data_A3_acc_x.txt'); 
accdata_y= dlmread('../data/data_A3_acc_y.txt'); 
accdata_z = dlmread('../data/data_A3_acc_z.txt'); 
accdata_draw=[data_x data_y data_z] ;

accdata_sim_x= dlmread('../data/data_A3_sim_acc_x.txt'); 
accdata_sim_y= dlmread('../data/data_A3_sim_acc_y.txt'); 
accdata_sim_z= dlmread('../data/data_A3_sim_acc_z.txt'); 
accdata_sim_draw=[data_sim_x data_sim_y data_sim_z] ;


figure('name', 'acc')
loglog(accdt, accdata_draw , 'o');
% loglog(dt, data_sim_draw , '-');
xlabel('time:sec');                
ylabel('Sigma');             
% legend('x','y','z');      
grid on;                           
hold on;                           
loglog(accdt, accdata_sim_draw , '-');