clear 

codes = setupCodesData();

%%%%%%SIMULATION%%%%%%
%Settings

burst_error = false;
burst_length = 8;

c1_time_total = []; 
c2_time_total = [];
c3_time_total = [];
conv1_error_total = [];
conv2_error_total = [];
conv3_error_total = [];
bsc_error_prob = 0.1;
number_of_iterations = 2;

while bsc_error_prob < 0.51
   
    for n = 1:number_of_iterations
        
        data = randi([0 1],1000000,1);
        
        for i =1:length(codes)
            tic
            %Error rate
            codes(i).error = [codes(i).error, transmit(data, codes(i).trellis_Conv, bsc_error_prob, codes(i).costaint_Length*5, burst_error, burst_length)];
            codes(i).time = [codes(i).time, toc]; 
        end
      
    end   
    
    %Add avg. time
    for i = 1:length(codes)   
        codes(i).timeTotal = [codes(i).timeTotal, mean(codes(i).time)];
        codes(i).errorTotal = [codes(i).errorTotal, mean(codes(i).error)];
        codes(i).error = [];
        codes(i).time = [];
    end
    
    
    bsc_error_prob = bsc_error_prob + 0.1;
end

figure(1)
subplot(2,1,1)
%Different error prob plot
makeErrorProbPlot(codes);
subplot(2,1,2)
%Time plot
makeTimePlot(codes);

figure(2)
subplot(2,1,1)
%Errors total plot
makeTotalErrorsPlot(codes);

subplot(2,1,2)
%Efficiency plot
makeEfficiencyPlot(codes);


