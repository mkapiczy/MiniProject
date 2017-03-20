function resultVector = addBurstError(dataVector, errorVector, burstLength)
    for m = 1:length(dataVector)
        if(errorVector(m) ~= 0 ) % If there is an error on this bit
            burstEnd = m+burstLength;
            % Check if burst is smaller or equal to data length
            if(burstEnd <= length(dataVector)) 
                for n = m+1:burstEnd
                    if(errorVector(n) == 1)
                        break;
                    end

                    % Flip bit
                    dataVector(n) = ~dataVector(n);
                end
            end
        end
    end
    resultVector = dataVector;
end