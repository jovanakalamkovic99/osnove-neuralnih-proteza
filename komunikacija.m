function odgovor = komunikacija(komanda)
try
    s1 = serial('COM3','Baudrate',500000);
    fopen(s1);
    fwrite(s1,komanda);
    tic
    while toc < 3
        if s1.BytesAvailable ~= 0
            odgovor = fread(s1,s1.BytesAvailable);
            
            char(odgovor)
            fclose(s1);
            break
        end
    end
catch
    fclose(s1);
end