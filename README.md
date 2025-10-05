# Cloud Deploy Sample
!codecov
![CI](https://github.com/gswack/cloud-deploy-sample/actions/workflows/ciomation framework...

## Overview
A Python-based web application demonstrating scalable development and modern DevOps practices. It leverages Docker for infrastructure-as-code and GitHub Actions for automated CI/CD pipelines.

## 🧱 Tech Stack
- Docker  
- GitHub Actions (CI/CD)

## ⚙️ CI/CD Overview
This project uses **GitHub Actions** to automate testing and integration.
- The workflow is defined in `.github/workflows/ci.yaml`
- It runs automatically on:
  - Pushes to the `main` branch
  - Pull requests
- It installs dependencies and runs test scripts to ensure code quality
- Test results are visible directly in the GitHub Actions tab
- Failed runs trigger email or GitHub notifications with details about the failure, helping developers quickly identify and resolve issues.

## Installation
Before running the application, make sure you have the following installed:
- Python 3.8+
- Docker
- pip

## Setup Instructions 
```bash
# Clone the repo
git clone https://github.com/gswack/cloud-deploy-sample.git
cd cloud-deploy-sample
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt 
# Run Tests
pytest
# Run Linting
flake8 .
# Run Converate Report
pytest --cov=app --cov-report=xml --cov-report=term
# Run the Python app
python main.py

# Build Docker image
docker build -t gswack/cloud-deploy-sample .

# Run container locally
docker run -p 5000:5000 gswack/cloud-deploy-sample
```

## Project Structure
cloud-deploy-sample/
├── app/                      # Simple web app (Flask or static site)
├── terraform/                
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── cloudformation/           # CloudFormation templates (optional)
│   └── template.yaml
├── .github/workflows/        # CI/CD pipeline
│   └── deploy.yaml
├── README.md

## License
This project is licensed under the MIT License.
You are free to use, modify, and distribute this software with proper attribution.

See the LICENSE file for full details.

## 🤝 Contributions
Contributions are welcome and appreciated! If you'd like to improve this project, feel free to:

- Fork the repository
- Create a new branch (`git checkout -b feature-name`)
- Make your changes
- Submit a pull request

Please ensure your code follows the existing style and passes all tests before submitting.
