classdef MyCode < handle
    
    properties
        trellisConv,
        costaintLength,
        timeForSingleErrorProbability,
        timeTotal,
        errorRatesForSingleErrorProbability,
        errorTotal,
        name
    end
    
    methods
        function this = MyCode(trellisConvVal, constaintLengthVal, name)
            this.trellisConv = trellisConvVal;
            this.costaintLength = constaintLengthVal;
            this.name = name;
        end
        
        function addErrorRateForSingleErrorProbability(this, errorRate)
            this.errorRatesForSingleErrorProbability = [this.errorRatesForSingleErrorProbability, errorRate];
        end
        
        function addTimeForSingleErrorProbability(this, time)
           this.timeForSingleErrorProbability = [this.timeForSingleErrorProbability, time]; 
        end

        function calculateTimeTotalForCurrentErrorProb(this)
           this.timeTotal = [this.timeTotal, mean(this.timeForSingleErrorProbability)]; 
           this.timeForSingleErrorProbability = [];
        end
        
        function calculateErrorTotalForCurrentErrorProb(this)
           this.errorTotal = [this.errorTotal, mean(this.errorRatesForSingleErrorProbability)];
           this.errorRatesForSingleErrorProbability = [];
        end
    end
    
end

