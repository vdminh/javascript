const
fin='peach.inp';
fon='peach.out';
maxn=1000000;
var
i,j,n,a,b,d,top,z,count:longint;s:qword;
t,k,stack:array[0..100000] of longint;

function ss(x,y,z,t:longint):longint;
     begin
     if x>y then exit(1);
     if x<y then exit(-1);
     if z>t then exit(-1);
     if z<t then exit(1);
     exit(0);

     end;

procedure qs(l,r:longint);
     var  i,j,the,x,y:longint;
     begin
     if l>=r then exit;
     i:=l;j:=r;
     x:=t[(l+r) div 2];
     y:=k[(l+r) div 2];
     repeat
          while ss(x,t[i],y,k[i])=1 do inc(i);
          while ss(x,t[j],y,k[j])=-1 do dec(j);
          if i<=j then
               begin
               the:=t[i];
               t[i]:=t[j];
               t[j]:=the;

               the:=k[i];
               k[i]:=k[j];
               k[j]:=the;
               inc(i);
               dec(j);
               end;
     until i>j;
     if l<j then qs(l,j);
     if i<r then qs(i,r);
     end;

procedure swap(i,j:longint);
     var z:longint;
     begin
     z:=stack[i];
     stack[i]:=stack[j];
     stack[j]:=z;
     end;

procedure upheap(i:longint);
     begin
     if (i=1) or (stack[i]<stack[i div 2]) then exit;
     swap(i, i div 2);
     upheap(i div 2);
     end;

procedure downheap(i:longint);
     var j:longint;
     begin
     j:=i*2;
     if j>top then exit;
     if (j<top) and (stack[j+1]>stack[j]) then inc(j);
     if stack[i]<stack[j] then
        begin
        swap(i,j);
        downheap(j);
        end;
     end;

procedure push(i:longint);
     begin
     inc(top);
     stack[top]:=i;
     upheap(top);
     end;

function pop(i:longint):longint;
     var z:longint;
     begin
     if top=0 then exit(0);
     z:=stack[i];
     stack[i]:=stack[top];

     dec(top);
     upheap(i);
     downheap(i);
     exit(z);
     end;

procedure solve;
     begin
     readln(n,a,b);
     for i:=1 to n do
          begin
          readln(t[i],k[i]);
          end;
     inc(n);
     t[n]:=b;k[n]:=0;
     qs(1,n);z:=0;
     {for i:=1 to n do
          begin
          if (t[i]<b) and (t[i]>=a) then
               begin
               push(k[i]);
               s:=s+pop(1);
               end;
          end;    }
     i:=1;  t[0]:=a-1;
     while t[i]<b do
        begin
        push(k[i]);
        if (t[i]>=a) then
               begin
                for j:=t[i-1]+1 to t[i] do

                        s:=s + pop(1);

               end;
        inc(i);
        end;
     if (top>0) and (s=0) then
          begin
          for j:=a to b-1 do
               s:=s+pop(1) ;
          end;
     write (s);
     end;

begin
assign(input,fin);reset(input);
assign(output,fon);rewrite(output);
solve;
close(input);close(output);
end.
