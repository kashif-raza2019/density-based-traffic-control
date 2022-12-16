function [LabeledIM,ConnectedObj] = countobject(L)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
[LabeledIm,ConnectedObj] = bwlabel(L,4);
end

