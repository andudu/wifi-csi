% %��ʽһ���ֳɶ���ļ�
% function f=fminxy(t)
% x=t(1);y=t(2);
% f=x*x*x-y*y*y+2*x*x+x*y;
% end
% %%���ϴ�������fminxy�ļ�
% function [c d]=fcontr(t)
% x=t(1);y=t(2);
% c=x*x+y*y-6;
% d=x*y-2;
% end
% %%�����ļ�����fcontr�ļ�
% >> [x,fval,exitflag]=fmincon('fminxy',[1 2],[],[],[],[],[],[],'fcontr')
% %fmincon(	fun,	x0, A, b,Aeq,beq,lb,ub, nonlcon) A�ǳ�ʼֵ��fmincon�ĳ�ʼֵx0��������ȡ��ֻҪ��֤Ϊʵ�����С�
% x =
%     0.8740     2.2882      %������Сֵʱx,y��ֵ
% fval =
%    -7.7858                        %������Сֵ
% exitflag =
%      1                               %һ��������������������Χ�����ǽ����ȷ

%��ʽ�������ϳ�һ���ļ�
function  x= findOpt(a,b) 
x=fmincon(@(t) fminxy(t),[a b],[],[],[],[],[],[],@(t) fcontr(t));
end
 
function f=fminxy(t)
x=t(1);y=t(2);
f=x*x*x-y*y*y+2*x*x+x*y;
end
 
function [c d]=fcontr(t)
x=t(1);y=t(2);
c=x*x+y*y-6;
d=x*y-2;
end
%���ϴ�������findOpt�ļ�
% >> x=findOpt(2,2)
