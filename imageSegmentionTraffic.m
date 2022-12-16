clear all;
I = imread('road.png');     
J = imread('roadandcars.png');
K = imabsdiff(I,J);
th = graythresh(K);
L = im2bw(K,th);
Lane1=imcrop(L,[266 0  270 266 ]);
Lane2=imcrop(L,[536 265 270 266]);
Lane3=imcrop(L,[267 537  270 266]);
Lane4=imcrop(L,[0,267,270,266]);
[LabeledIm1,ConnectedObj1] = bwlabel(Lane1,4);
[LabeledIm2,ConnectedObj2] = bwlabel(Lane2,4);
[LabeledIm3,ConnectedObj3] = bwlabel(Lane3,4);
[LabeledIm4,ConnectedObj4] = bwlabel(Lane4,4);
coloredLabels = label2rgb (LabeledIm1, 'hsv', 'k', 'shuffle');
subplot(221),imshow(Lane1),title('Lane1'),
subplot(222),imshow(Lane2),title('Lane2'),
subplot(223),imshow(Lane3),title('Lane3'),
subplot(224),imshow(Lane4),title('Lane4'),

