global trajanje;
global intenzitet;
global x;
global sve_ok;

sve_ok = 1;
%disp('provera')

broj_iteracija = sum(x);
x_l = logical(x);
trajanja = trajanje(x_l);
intenziteti = intenzitet(x_l);

% prvo proveravamo opsege
for i = 1 : broj_iteracija
        if (trajanja(i) < 1 || trajanja(i) > 100)
            msgbox("Trajanja moraju biti u opsegu od 1 do 100 das")
            sve_ok = 0;
            break
            
        elseif (intenziteti(i) < 1 || intenziteti(i) > 100)
            msgbox("Intenziteti moraju biti u opsegu od 1 do 100 %")
            sve_ok = 0;
            break
                
        end
    
end

%sad proveravamo da nema NaN vrednosti tj da nije nesto ostalo prazno

if sum(isnan(trajanja)) ~= 0 %%% ukoliko postoji bar jedna NaN vrednost
    sve_ok = 0;
    msgbox('Unesite sve vrednosti za amplitude')
end

if sum(isnan(intenziteti)) ~= 0 %%% ukoliko postoji bar jedna NaN vrednost
    sve_ok = 0;
    msgbox('Unesite sve vrednosti za amplitude')
end