function errorRate = transmit (data, trellis, bsc_error_prob, tblen, burstErr, burstLength)
codedData = convenc(data,trellis);
[bscData, errorVector] = bsc(codedData, bsc_error_prob);

if(burstErr == true)
    bscData = addBurstError(bscData, errorVector, burstLength);
end

decodedData = vitdec(bscData,trellis,tblen,'trunc','hard');
errorRate = biterr(data,decodedData) / length(data);
end