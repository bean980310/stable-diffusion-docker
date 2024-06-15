도커 컨테이너에서 암호화폐 채굴하는 놈들의 표적이 되고 싶지 않으면 아래 사항을 꼭 읽으시오

docker run -d \
  --gpus all \
  -v /workspace \
  -p 2999:2999 \
  -p 3000:3001 \
  -p 3010:3011 \
  -p 3020:3021 \
  -p 6006:6066 \
  -p 8000:8000 \
  -p 8888:8888 \
  -p 9090:9090 \
  -e JUPYTER_PASSWORD=Jup1t3R! \
  -e ENABLE_TENSORBOARD=1 \
  bean980310/stable-diffusion-webui:1.1.0

먼저 실행하고

docker ps

docker exec -it [컨테이너ID] /bin/bash

root@root:/# passwd 
New password: (비밀번호 입력)
Retype new password: (같은 비밀번호 또 입력)
passwd: password updated successfully

apt-get update 실행

apt install sudo

adduser (유저명)
New password: (비밀번호 입력)
Retype new password: (같은 비밀번호 또 입력)
(이하 생략)

su - (유저명)

sudo 권한을 획득하고 싶으면
/etc/sudoers 파일을 열고

%sudo ALL=(ALL:ALL) ALL
바로 밑에
(유저명) ALL=(ALL:ALL) ALL
추가

jupyter notebook/lab 비밀번호도 바꾸는게 좋습니다.

ipython
from notebook.auto import passwd
passwd()
Enter password:(비밀번호 입력)
Verify password:(같은 비밀번호 또 입력)

그러면 암호화된 값이 출력될겁니다.

그리고

.jupyter/jupyter_notebook_config.py
혹은
.jupyter/jupyter_lab_config.py
파일을 열고

c = get_config()
바로 밑에
c.NotebookApp.password = (암호화된 값 넣기)

도커 컨테이너에서 암호화폐 채굴하는 놈들에게 당하기 싫으면 꼭 읽으시오 두번 읽으시오(경험담임)