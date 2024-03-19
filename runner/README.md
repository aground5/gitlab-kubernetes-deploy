# Gitlab Runner

## values.yaml

helm 차트를 배포하기 위해 필수적으로 변경해야 하는 사항은 다음이 있습니다.

- gitlabUrl
- runnerRegistrationToken
- runners.config.[runners.cache.s3].ServerAddress

## post-install.sh

helm 차트 배포 이후 minio 접속을 위해 key가 담긴 secret을 배포해야 합니다.

## tls-ca.yaml

runner를 gitlab에 정상 접속 하기 위해 gitlab 배포시 자동 생성된 루트 CA 인증서를 runner namespace에 배포해야 합니다. 

작성된 예시를 참고해 루트 CA 인증서를 배포하세요. configmap의 이름은 변경해선 안됩니다.

gitlab의 주소