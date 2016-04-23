function [amount] = zipf(filename)
   %read in file and initialize
   fh1 = fopen(filename);
   line = fgetl(fh1);
   words = {};
   while ischar(line)
        %make the line lowercase
        line = lower(line);
        
        %keep only alphanumeric characters and white space
        letterMask = line >= 'a' & line <= 'z' | line >= '0' & line <= '9';
        whiteSpaceMask = line <= ' ';
        line(~letterMask & ~whiteSpaceMask) = ' ';
        
        %split the string by spaces
        temp = strsplit(line, ' ');
        
        %make sure that does not leave a blank string
        if ~all(strcmp(temp,''))
            words = [words temp];
        end
        %update the line
        line = fgetl(fh1);
   end
   %get the unique words
   uniqueWords = unique(words);
   
   %remove any blank characters that made it through
   lengths = cellfun('length',uniqueWords);
   uniqueWords = uniqueWords(lengths > 0);
   
   %initialize counts for frequency
   counts = zeros(1, length(uniqueWords));
   
   %get the frequency for each unique word
   for i = 1:length(uniqueWords)
       counts(i) = sum(strcmpi(words,uniqueWords{i}));
   end
   
   %sort the frequencies in descending order and get the sorted indices
   [sortedFreq, idx] = sort(counts, 'descend');
   
   %sort the words in descending order of frequency
   uniqueWords = uniqueWords(idx);
   
   %find the max frequency
   maxFreq = max(counts);
   
   %normialize the frequencies and round
   sortedFreq = sortedFreq/maxFreq;
   sortedFreq = round(sortedFreq,6);
   
   %create a vector for xData and index out the yData
   xData = 1:min(length(uniqueWords),300);
   yData = sortedFreq(1:min(length(uniqueWords),300));
   
   %plot the data
   plot(xData, yData, 'b');
   hold on
   %creat the vector for the zipf distribution
   zipfY = ones(1,length(xData))./xData;
   plot(xData, zipfY,'r');
   hold off
   [sortedCounts, ~] = sort(counts,'descend');
   twentPer = ceil(0.2*length(sortedCounts));
   inte = cumsum(sortedCounts(1:twentPer));
   inte = inte(end);
   amount = round(inte/sum(counts),4);
   
end