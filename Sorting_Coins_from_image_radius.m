close all;


RBG = imread('Coin.jpg');
gray = rgb2gray(RBG);
[r,c] = size(gray);

%removing the boundaries
zero = uint8(zeros(r,c));
edges = zero;
edges(3:end-2,3:end-2) = uint8(ones(r-4,c-4));
img = edges.*gray; 

%finding thershold using histogram manually
t = 30;
ip_t = img>t;

res = ip_t;
m = ones(3,3);
zero = logical(zeros(r,c)); %#ok<LOGL>
%sorting on the basis of area and hence radii
k=1;
for i=1:r
	for j=1:c
		if res(i,j)
			p = zero;
			p(i,j) = 1;
			while true
				n = bitand(logical(filter2(m,p)),res);
				if isequal(n,p)
					break
				end
				p = n;
			end
			coins(:,:,k) = p; %#ok<SAGROW>
			res = logical(res-p);
			A(k) = sum(sum(double(p))); %#ok<SAGROW>
			k=k+1;
		end
	end
end

[A,ord]=sort(A);

coins = coins(:,:,ord);
A = A(end-4:end);
%coins contain the coins in sorted order(by area, hence by radius)
coins = coins(:,:,end-4:end);

[a,b,c]=size(coins);



% Figures with respect to increasing radii are plotted
for i=1:c
    
    figure(i)
    p=num2str(i);
    imshow(coins(:,:,i));
    title(p);
end
    
    
    
    




