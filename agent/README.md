# Gitlab Agent

## values.yaml

helm 차트를 배포하기 위해 필수적으로 변경해야 하는 사항은 다음이 있습니다.

- config.kasAddress
- config.token
- config.caCert

### config.token

token은 gitlab에서 발급할 수 있습니다.