function out = stringReversal(inputString)
inputString = input('Please enter your string: ','s');

[reversedString] = inputString(end:-1:1);

out = sprintf('Your reversed string is: %s',reversedString);
end