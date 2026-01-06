# CloudShip
GitOps 기반 EC2 자동 배포 AWS 포트폴리오 프로젝트  
Git push → GitHub Actions → ECR → SSM → EC2(Docker) 자동 배포

1) 한 줄 요약
GitHub에 코드를 push하면 GitHub Actions가 Docker 이미지를 빌드해 ECR에 푸시하고, 
SSM 명령으로 EC2에서 최신 이미지를 pull하여 컨테이너를 재기동하는 GitOps 자동 배포 파이프라인을 구현했습니다.

2) 핵심 성과 (What I proved)
- IaC: Terraform으로 VPC / Security Group / EC2 / IAM Role을 코드로 관리
- GitOps CI/CD: GitHub Actions로 Build → Push → Deploy 자동화
- 보안 중심 배포: Access Key 없이 OIDC(Web Identity) 로 AWS AssumeRole
- 운영 관점: SSH 없이 SSM 으로 원격 배포(감사/통제 가능한 운영)
