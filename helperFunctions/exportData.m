function [ conv1Export, conv2Export, conv3Export ] = exportData (errorProbArr, timeArr, totalErrorArr, efficiencyArr)

%transpose all arrays
errorProbArr = transpose(errorProbArr);
timeArr = transpose(timeArr);
totalErrorArr = transpose(totalErrorArr);
efficiencyArr = transpose(efficiencyArr);

conv1Export = [errorProbArr(1,:); timeArr(1,:); totalErrorArr(1,:); efficiencyArr(1,:)];
conv2Export = [errorProbArr(2,:); timeArr(2,:); totalErrorArr(2,:); efficiencyArr(2,:)];
conv3Export = [errorProbArr(3,:); timeArr(3,:); totalErrorArr(3,:); efficiencyArr(3,:)];

end