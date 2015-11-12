function out = phi4(r)
out = zeros(length(r), 1);
for ir = 1:length(r)
    if abs(r(ir)) <= 1.0
        out(ir) = (3 - 2 * abs(r(ir)) + sqrt(1 + 4 * abs(r(ir)) - 4 * r(ir)^2)) / 8;
    elseif abs(r(ir)) >= 1.0 && abs(r(ir)) <= 2.0
        out(ir) = (5 - 2 * abs(r(ir)) - sqrt(-7 + 12 * abs(r(ir)) - 4 * r(ir)^2)) / 8;
    end
end