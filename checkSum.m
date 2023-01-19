function [cs] = checkSum(mess)

cs = rem(sum(mess),256);

end