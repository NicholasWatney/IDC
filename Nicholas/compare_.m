function compare(x_, x)

    len_ = length(x_);
    len = length(x);

    if len_ >= len
        llen = len_;
        x = [x, zeros(1, len_ - len)];
    else if len_ < len
        llen = len;
        x_ = [x_, zeros(1, len - len_)];
        end
    end

    subplot(2, 1, 1);
    plot([1:llen], x_, "r-", [1:llen], x, "b--");
    title('Compare Two Input Signal: Red and Blue:');
    ylabel('Value:');
    xlabel('Samples:');
    subplot(2, 1, 2);
    plot([1:llen], abs(x_ - x));
    ylabel('Value Difference:');
    xlabel('Samples:');
end


% 
% 
% for i = 1:10
%     x_(i) = i;
%     x(i) = i + 1;
% end
% compare(x_, x);
% 
% function compare(x_, x)
% 
% 
%     if length(x_) > length(x)
%         length = length(x_)
%         x = [x, zeros(1, length(x_) - length(x))];
%     else if length(x_) < length(x)
%         length = length(x);
%         x = [x_, zeros(1, length(x) - length(x_))];
%     end
% 
%     subplot(1, 2, 1);
%     plot(length, x_, "r", length, x, "b-");
%     subplot(1, 2, 2);
%     plot(length, abs(x_ - x));
%     end
% end
% 
