farid = imread('farid.jpg');
figure(1); imshow(farid);
title('Citra Bewarna/Asli');

p = rgb2gray(farid);
figure(2); imshow(p);
title('Citra Keabuan');

q = edge(p,'sobel');
figure(3); imshow(q);
title('Sobel');

r = edge(p,'prewitt');
figure(4); imshow(r);
title('Prewitt');

s = edge(p,'roberts');
figure(5); imshow(s);
title('Roberts');

t = edge(p,'Log');
figure(6); imshow(t);
title('Laplacian');

u = edge(p,'canny');
figure(7); imshow(u);
title('Canny');

%COMPAS 4 POLA MATA ANGIN
%CN = UTARA
CN = [1 1 1; 1 -2 1; -1 -1 -1];
%CS = SELATAN
CS = [-1 -1 -1; 1 -2 1; 1 1 1];
%CE = TIMUR
CE = [-1 1 1; -1 -2 1; -1 1 1];
%CW = BARAT
CW = [1 1 -1; 1 -2 -1; 1 1 -1];

%COMPAS UTARA
figure(8); imshow(conv2(p,CN,'same'));
title('Utara');

%COMPAS SELATAN
figure(9); imshow(conv2(p,CS,'same'));
title('Selatan');

%COMPAS TIMUR
figure(10); imshow(conv2(p,CE,'same'));
title('Timur');

%COMPAS BARAT
figure(11); imshow(conv2(p,CW,'same'));
title('Barat');

%ISOTROPIC
horizontal = [-1 0 1; -sqrt(2) 0 sqrt(2); -1 0 1];
vertikal = [-1 -sqrt(2) -1; 0 0 0; 1 sqrt(2) 1];

%ISOTROPIC HORIZONTAL
figure(12); imshow(conv2(p,horizontal,'same'));
title('Horizontal');

%ISOTROPIC VERTIKAL
figure(13); imshow(conv2(p,vertikal,'same'));
title('Vertikal');
