#!/bin/bash

TEMPLATE_DIR="/home/chef/deployment/templates"


ls  /home/chef/deployment/templates
echo "🔍 검증할 CloudFormation 템플릿 파일 이름을 입력하세요 (예: subnets-template.yaml):"
read TEMPLATE_FILE

TEMPLATE_PATH="${TEMPLATE_DIR}/${TEMPLATE_FILE}"

if [ ! -f "$TEMPLATE_PATH" ]; then
    echo "❌ 오류: 해당 파일이 존재하지 않습니다: $TEMPLATE_PATH"
    exit 1
fi

echo "📄 검증 중: $TEMPLATE_PATH"
aws cloudformation validate-template --template-body file://$TEMPLATE_PATH

if [ $? -eq 0 ]; then
    echo "✅ 템플릿이 유효합니다."
else
    echo "❌ 템플릿 검증 실패. 오류 내용을 확인하세요."
fi

