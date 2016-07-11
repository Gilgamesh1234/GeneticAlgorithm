function G = getgrid(k,d) % k*k개의 전극이 있고 전극 길이가 d인 grid를 만듭니다.
m = k/2; % 정중앙을 (0,0)으로 할 것이기 때문에 편의상 반으로 나눈 값을 사용합니다.

col = (-m:m)*d; % grid의 각 꼭짓점을 -m, -m+d, -m+2d, .... m-2d, m-d, m으로 총 2m+1개를 생성합니다.
row = (-m:m)*d;
n = 2*m+1;
for i = 1 : n-1 
    for j = 1 : n-1
  G{(n-1)-(j-1),i} = [col(i) row(j);col(i+1) row(j+1)]; % 전극의 왼쪽 아래, 오른쪽 위 좌표를 넣어줍니다.
                % G{i,j}가 아니라 index가 복잡하게 된 것은
                 % 전극의 좌표는 왼쪽 아래에서 시작하는데 매트랩의 좌표 지정 방식은 왼쪽 위부터
                 % 시작하기 때문입니다.
    end 
end

end