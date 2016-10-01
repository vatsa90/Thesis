input = dir('C:\Users\Shrivatsa\Documents\MATLAB\SAC\*.xls');  % the folder in which ur classical audio  file exists
for i = 1 : length(input)
    filename = strcat('C:\Users\Shrivatsa\Documents\MATLAB\SAC\',input(i).name);
    Saccade{i} = xlsread(filename);
end


for m=1:32
A{1,m}(:,12)=A{1,m}(:,3)+A{1,m}(:,9)
end


B1=[unique(A{1,15}(:,15)),accumarray((A{1,15}(:,15)),(A{1,15}(:,1)),[],@mean),accumarray((A{1,15}(:,15)),(A{1,15}(:,2)),[],@mean),accumarray((A{1,15}(:,15)),(A{1,15}(:,3)),[],@mean),accumarray((A{1,15}(:,15)),(A{1,15}(:,4)),[],@mean),accumarray((A{1,15}(:,15)),(A{1,15}(:,5)),[],@mean),accumarray((A{1,15}(:,15)),(A{1,15}(:,6)),[],@mean),accumarray((A{1,15}(:,15)),(A{1,15}(:,7)),[],@mean),accumarray((A{1,15}(:,15)),(A{1,15}(:,8)),[],@mean),accumarray((A{1,15}(:,15)),(A{1,15}(:,9)),[],@mean),accumarray((A{1,15}(:,15)),(A{1,15}(:,10)),[],@mean),accumarray((A{1,15}(:,15)),(A{1,15}(:,11)),[],@mean),accumarray((A{1,15}(:,15)),(A{1,15}(:,12)),[],@mean),accumarray((A{1,15}(:,15)),(A{1,15}(:,13)),[],@mean),accumarray((A{1,15}(:,15)),(A{1,15}(:,14)),[],@mean),accumarray((A{1,15}(:,15)),(A{1,15}(:,15)),[],@mean)];





for m=1:32
avgamp{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,1)),[],@mean)];
avgavgv{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,2)),[],@mean)];
avgsacd{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,3)),[],@mean)];
avgpeakv{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,7)),[],@mean)];
avgfix{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,10)),[],@mean)];
avgtotsac{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,11)),[],@mean)];
avgtotd{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,12)),[],@mean)];
end


for m=1:32
avgamp{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,1)),[],@mean)];
avgavgv{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,2)),[],@mean)];
avgsacd{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,3)),[],@mean)];
avgpeakv{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,7)),[],@mean)];
avgfix{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,10)),[],@mean)];
avgtotsac{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,11)),[],@mean)];
avgtotd{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,12)),[],@mean)];
end

for m=1:32
medamp{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,1)),[],@median)];
% medavgv{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,2)),[],@median)];
% medsacd{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,3)),[],@median)];
% medpeakv{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,7)),[],@median)];
% medfix{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,10)),[],@median)];
% medtotsac{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,11)),[],@median)];
% medtotd{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,12)),[],@median)];
end

 for m=1:32
% minamp{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,1)),[],@min)];
% minavgv{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,2)),[],@min)];
% minsacd{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,3)),[],@min)];
% minpeakv{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,7)),[],@min)];
% minfix{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,10)),[],@min)];
% mintotsac{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,11)),[],@min)];
mintotd{m}=[unique(A{1,m}(:,15)),accumarray((A{1,m}(:,15)),(A{1,m}(:,12)),[],@min)];
end



c=1;
m=unique(A{1,28}(:,15));
for i=1:200
    if(any(m==i)==0)
       teight(c)= i;
       c=c+1;
    end
end


for m=1:32
    avgamp{1,m}(:,3)=col;
    avgavgv{1,m}(:,3)=col;
    avgfix{1,m}(:,3)=col;
    avgpeakv{1,m}(:,3)=col;
    avgsacd{1,m}(:,3)=col;
    avgtotd{1,m}(:,3)=col;
    avgtotsac{1,m}(:,3)=col;
end

for m=1:32
    medamp{1,m}(:,3)=col;
%     medavgv{1,m}(:,3)=col;
%     medfix{1,m}(:,3)=col;
%     medpeakv{1,m}(:,3)=col;
%     medsacd{1,m}(:,3)=col;
%     medtotd{1,m}(:,3)=col;
%     medtotsac{1,m}(:,3)=col;
end

for m=1:32
    maxamp{1,m}(:,3)=col;
    maxavgv{1,m}(:,3)=col;
    maxfix{1,m}(:,3)=col;
    maxpeakv{1,m}(:,3)=col;
    maxsacd{1,m}(:,3)=col;
    maxtotd{1,m}(:,3)=col;
    maxtotsac{1,m}(:,3)=col;
end

for m=1:32
    minamp{1,m}(:,3)=col;
    minavgv{1,m}(:,3)=col;
    minfix{1,m}(:,3)=col;
    minpeakv{1,m}(:,3)=col;
    minsacd{1,m}(:,3)=col;
    mintotd{1,m}(:,3)=col;
    mintotsac{1,m}(:,3)=col;
end

for m=1:32
    spamp{1,m}(:,3)=col;
    spavgv{1,m}(:,3)=col;
    spfix{1,m}(:,3)=col;
    sppeakv{1,m}(:,3)=col;
    spsacd{1,m}(:,3)=col;
    sptotd{1,m}(:,3)=col;
    sptotsac{1,m}(:,3)=col;
end



a=100;



for m=1:32
    avgsac{m}(:,1)=avgamp{1,m}(:,2);
    avgsac{m}(:,2)=avgavgv{1,m}(:,2);
    avgsac{m}(:,3)=avgsacd{1,m}(:,2);
    avgsac{m}(:,4)=avgpeakv{1,m}(:,2);
    avgsac{m}(:,5)=avgfix{1,m}(:,2);
    avgsac{m}(:,6)=avgtotsac{1,m}(:,2);
    avgsac{m}(:,7:8)=avgtotd{1,m}(:,2:3);
end
    
for m=1:32
    medsac{m}(:,1)=medamp{1,m}(:,2);
%     medsac{m}(:,2)=medavgv{1,m}(:,2);
%     medsac{m}(:,3)=medsacd{1,m}(:,2);
%     medsac{m}(:,4)=medpeakv{1,m}(:,2);
%     medsac{m}(:,5)=medfix{1,m}(:,2);
%     medsac{m}(:,6)=medtotsac{1,m}(:,2);
%     medsac{m}(:,7:8)=medtotd{1,m}(:,2:3);
end

for m=1:32
    maxsac{m}(:,1)=maxamp{1,m}(:,2);
    maxsac{m}(:,2)=maxavgv{1,m}(:,2);
    maxsac{m}(:,3)=maxsacd{1,m}(:,2);
    maxsac{m}(:,4)=maxpeakv{1,m}(:,2);
    maxsac{m}(:,5)=maxfix{1,m}(:,2);
    maxsac{m}(:,6)=maxtotsac{1,m}(:,2);
    maxsac{m}(:,7:8)=maxtotd{1,m}(:,2:3);
end

for m=1:32
    minsac{m}(:,1)=minamp{1,m}(:,2);
    minsac{m}(:,2)=minavgv{1,m}(:,2);
    minsac{m}(:,3)=minsacd{1,m}(:,2);
    minsac{m}(:,4)=minpeakv{1,m}(:,2);
    minsac{m}(:,5)=minfix{1,m}(:,2);
    minsac{m}(:,6)=mintotsac{1,m}(:,2);
    minsac{m}(:,7:8)=mintotd{1,m}(:,2:3);
end


for m=1:32
    spsac{m}(:,1)=spamp{1,m}(:,2);
    spsac{m}(:,2)=spavgv{1,m}(:,2);
    spsac{m}(:,3)=spsacd{1,m}(:,2);
    spsac{m}(:,4)=sppeakv{1,m}(:,2);
    spsac{m}(:,5)=spfix{1,m}(:,2);
    spsac{m}(:,6)=sptotsac{1,m}(:,2);
    spsac{m}(:,7:8)=sptotd{1,m}(:,2:3);
end


for m=1:32
%     spm{m}=sortrows(spsac{1,m},8);
    mem{m}=sortrows(medsac{1,m},8);
%     avgm{m}=sortrows(avgsac{1,m},8);
%     maxm{m}=sortrows(maxsac{1,m},8);
     minm{m}=sortrows(minsac{1,m},8);
    
end

c1=1
for m=1:32
for i=101:200
    %avglv(c1)=avgm{1,m}(i,:);
    medlv(c1,:)=mem{1,m}(i,:);
   % maxlv(c1)=maxm{1,m}(i,:);
    minlv(c1,:)=minm{1,m}(i,:);
   % splv(c1)=spm{1,m}(i,:);
    c1=c1+1;
end
end

medsacv=sortrows(medlv,8)
minsacv=sortrows(minlv,8)

medsacv=medsacv(:,1:7)
minsacv=minsacv(:,1:7)


medsaca(1:1600,:)=medsacv(1:1600,:)
medsaca(1601:3200,:)=medsacv(3201:4800,:)
medsaca(3201:4800,:)=medsacv(1601:3200,:)
medsaca(4801:6400,:)=medsacv(4801:6400,:)

minsaca(1:1600,:)=minsacv(1:1600,:)
minsaca(1601:3200,:)=minsacv(3201:4800,:)
minsaca(3201:4800,:)=minsacv(1601:3200,:)
minsaca(4801:6400,:)=minsacv(4801:6400,:)

minsacv



c1=1
for m=1:32
for i=1:200
    sac(:,c1)=sacc{1,m}(:,i);
    c1=c1+1;
end
end

sac1=sortrows(sac,2);

sacv=sac1(:,1);
saca(1:1600,1)=sac1(1:1600,1);
saca(1601:3200,1)=sac1(3201:4800,1);
saca(3201:4800,1)=sac1(1601:3200,1);
saca(4801:6400,1)=sac1(4801:6400,1);