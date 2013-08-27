function write(filename, text, filemode)
%WRITE Save text ot file
%  Open a text file and write data char into it.

if nargin == 2
    filemode = 'w+';
elseif nargin ~= 3
    error('Expected 3 or 2 arguments. Usage is: write(filename, text, filemode).');
end


fileHandle = fopen(filename, filemode);
fwrite(fileHandle, text, 'char');
fclose(fileHandle);

end

