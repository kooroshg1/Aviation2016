function out = phi3(r)
out = zeros(length(r), 1);
for ir = 1:length(r)
    if abs(r(ir)) <= 0.5
        out(ir) = (1 + sqrt(-3 * r(ir)^2 + 1)) / 3;
    elseif abs(r(ir)) >= 0.5 && abs(r(ir)) <= 1.5
        out(ir) = (5 - 3*abs(r(ir)) - sqrt(-3 * (1 - abs(r(ir)))^2 + 1)) / 6;
    end
end