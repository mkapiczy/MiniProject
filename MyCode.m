classdef MyCode
    %CLASS Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        trellis_Conv,
        costaint_Length,
        time,
        timeTotal,
        error,
        errorTotal
        
    end
    
    methods
        function obj = MyCode(trellis_Conv_val, constaint_Length_val)
            obj.trellis_Conv = trellis_Conv_val;
            obj.costaint_Length = constaint_Length_val;
        end
    end
    
end

