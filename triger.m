global trajanje;
global intenzitet;
global x;
global sve_ok;

trajanje = get([handles.editV1T,handles.editV2T, ...
    handles.editV3T, handles.editV4T,handles.editV5T, ...
    handles.editV6T, handles.editV7T, handles.editV8T],'String');
trajanje = str2double(trajanje);

intenzitet = get([handles.editV1I,handles.editV2I, ...
    handles.editV3I, handles.editV4I,handles.editV5I, ...
    handles.editV6I, handles.editV7I, handles.editV8I],'String');
intenzitet = str2double(intenzitet);

proveri;
if sve_ok
    for i = 1 : 8
            if x(i)
                %%% proverava se da li je kanal aktivan i ako jeste onda se iz
                %%% njega uzimaju vrednosti

                cs = checkSum([double('V'),double('D'),double(';'),i,trajanje(i)]);
                mess = ['>VD;' i trajanje(i) cs '<'];
                komunikacija(mess);
                cs1 = checkSum([double('V'),double('I'),double(';'),i,trajanje(i)]);
                mess1 = ['>VI;' i trajanje(i) cs1 '<'];
                komunikacija(mess1);

            end
    end
end