# Gitlab Runner

## values.yaml

helm 차트를 배포하기 위해 필수적으로 변경해야 하는 사항은 다음이 있습니다.

- gitlabUrl
- runnerRegistrationToken
- runners.config.[runners.cache.s3].ServerAddress

## post-install.sh

helm 차트 배포 이후 minio 접속을 위해 key가 담긴 secret을 배포해야 합니다.
