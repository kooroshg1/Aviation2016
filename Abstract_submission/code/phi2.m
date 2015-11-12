function out = phi2(r)
out = zeros(length(r), 1);
for ir = 1:length(r)
    if abs(r(ir)) <= 1.0
        out(ir) = 1 - abs(r(ir));
    end
end