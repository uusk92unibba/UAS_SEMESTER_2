                                 uses crt;
var

pil:char;
data:text;
nama,nim,fax,Prod,isi:string;
a :byte;

procedure menu1;
begin
assign(data,'F:\data.txt');
rewrite(data);
clrscr;
writeln('>> Buat File');
writeln;
writeln('File berhasil dibuat di F:\data.txt');
readkey;
close(data);
end;

procedure input_name ( var nama,nim,fak,Prod : string);
begin
write ('Nama : '); readln(nama);
writeln(data,nama);
write ('Nim : '); readln(nim);
writeln(data,nim);
write ('Fak : '); readln(fak);
writeln(data,fak);
Write('Prody : '); readln(Prod);
writeln(data,Prod);
end;

procedure input(var abs,tgs,q,uts,uas:real );
begin
write('Absen : ');readln(abs);
writeln(data,abs);
write('Tugas : ');readln(tgs);
writeln(data,tgs);
write('Quiz  : ');readln(q);
writeln(data,q);
write('UTS   : ');readln(uts);
writeln(data,uts);
write('UAS   : ');readln(uas);
writeln(data,uas);
end;

procedure lihat;
//var
//isi, : array [1..100] of string;
begin
writeln('nama  : ',isi);
writeln('nim   : ',isi);
writeln('FAk   : ',isi) ;
writeln('Prody : ',isi);
writeln('Absen : ',isi);
writeln('Tugas : ',isi) ;
writeln('Quiz  : ',isi)   ;
writeln('UTS   : ',isi)     ;
writeln('Uas   : ',isi)    ;
end;

procedure menu2;
var
nama,nim,fak,Prod : string;
abs,tgs,q,uts,uas : real ;
begin
assign(data,'F:\data.txt');
append(data);
clrscr;
writeln('>> Input Data');
writeln;
input_name (nama,nim,fak,Prod);
input(abs,tgs,q,uts,uas);
close(data);
end;

procedure menu3;
begin
assign(data,'F:\data.txt');
reset(data);
clrscr;
writeln('>> Lihat Data ');
writeln;
//a:=1;
//while not eof(data) do
begin
readln(data,isi);
//if a mod 2=1 then
begin
lihat;
//end
//else
//begin
//writeln('uts  : ',isi);
writeln;
end;
inc(a);
end;
close(data);
readkey;
end;

procedure menu4;
begin
assign(data,'F:\data.txt');
erase(data);
clrscr;
writeln('>> Hapus File');
writeln;
writeln('File berhasil dihapus');
readkey;
end;

begin
repeat
clrscr;
writeln('Menu UTAMA');
writeln;
writeln('1. Buat File');
writeln('2. Input Data');
writeln('3. Lihat Data');
writeln('4. Hapus File');
writeln('0. Keluar');
writeln;
write('Pilihan : '); pil:=readkey;

case pil of
'1':menu1;
'2':menu2;
'3':menu3;
'4':menu4;
end;
until pil='0';
procedure menu2;
var
nama,nim,fak,Prod : string;
abs,tgs,q,uts,uas : real ;
begin
assign(data,'F:\data.txt');
append(data);
clrscr;
writeln('>> Input Data');
writeln;
input_name (nama,nim,fak,Prod);
input(abs,tgs,q,uts,uas);
close(data);
end;
end.
