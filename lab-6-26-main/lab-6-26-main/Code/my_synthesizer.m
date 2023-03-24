function y = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)
% Initialize output as empty
y = [];
% Loop over the notes

for ii = 1:length(F_notes)
    div = adsr(1)+adsr(2)+adsr(4)+adsr(5);
for k = 1:5
    if (k~=3)
        adsr(k) = adsr(k)*td_notes(ii)/div;
    end
end
% Compute the time vector and ADSR envelope for this note
[t,env] = envelope (adsr(1),adsr(2),adsr(3),adsr(4),adsr(5),fs);
% Compute the sum of harmonics for this note
xt = harmonics(A,F_notes(ii),P,td_notes,fs);
% Modulate the sum of harmonics with the envelope
xte = xt.*env;
% Add the note to the sequence
y = [y,xte];
end
end
