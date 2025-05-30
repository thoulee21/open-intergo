# 多模态智能模拟面试评测智能体

本项目是参加 2025 年第十四届中国软件杯大学生软件设计大赛的作品，赛题为"面向高校学生的多模态智能模拟面试评测智能体开发"。

## 项目概述

这是一个面向高校学生的智能模拟面试系统，通过多模态（文本、语音、视频）分析，为用户提供专业的面试评测和建议。系统集成了讯飞星火大模型，能够：

- 模拟真实面试场景与问题
- 分析用户的回答内容、语音、表情和肢体语言
- 提供专业的评测反馈和改进建议
- 帮助学生提高面试技巧和自信心

## 技术栈

- **前端**: Next.js + Ant Design + WebRTC
- **后端**: Python Flask + 讯飞星火大模型
- **数据库**: SQLite
- **多模态处理**: OpenCV, 音频处理库

## 功能特点

1. **智能模拟面试官**：基于讯飞星火大模型，生成针对不同职位类型的专业面试问题
2. **多模态分析**：
   - 文本分析：评估回答内容的专业性、相关性和逻辑性
   - 视频分析：分析面部表情、眼神接触、肢体语言等非语言行为
   - 音频分析：评估语速、语调、清晰度等口头表达能力
3. **个性化评估报告**：生成全面的面试表现评估，包括优势、不足和改进建议
4. **数据持久化**：保存面试历史记录，支持用户查看历史表现和进步

## 如何开始

### 环境要求

- Node.js 16+
- Python 3.8+
- 讯飞星火大模型 API 访问凭证

### 使用 Docker Compose 部署（推荐）

1. 克隆此仓库到您的本地环境

```bash
git clone git@github.com:thoulee21/interview-ai.git
cd interview-ai
```

2. 从模板创建环境变量文件并填入您的讯飞星火 API 凭证

```bash
cp .env.example .env
# 使用您喜欢的编辑器编辑 .env 文件填入凭证
```

3. 使用 Docker Compose 构建并启动服务

```bash
docker compose up -d --build
```

4. 访问应用

   - 前端界面: http://localhost:3000
   - 后端 API: http://localhost:5000/health (健康检查接口)

5. 查看日志（如果需要）

```bash
# 查看前端日志
docker compose logs -f ghcr.io/thoulee21/interview-ai/frontend

# 查看后端日志
docker compose logs -f ghcr.io/thoulee21/interview-ai/backend
```

6. 停止服务

```bash
docker compose down
```

## 在竞赛中的应用

本项目针对 2025 年中国软件杯大学生软件设计大赛 A3 题目"面向高校学生的多模态智能模拟面试评测智能体开发"，主要亮点：

1. **符合赛题要求**：完全使用讯飞星火大模型作为智能核心，支持多模态分析
2. **创新性**：将 AI 技术应用于高校学生面试技能培养的实际场景
3. **实用价值**：帮助学生在舒适的环境中练习面试技能，获取专业反馈
4. **可扩展性**：系统架构支持后续功能扩展和优化

## 工作进度

- [x] 项目架构设计
- [x] 前端基础界面开发
- [x] 后端 API 开发
- [x] 讯飞星火大模型集成
- [x] 基本面试流程实现
- [x] 视频分析算法优化
- [x] 音频分析算法优化
- [ ] 用户体验完善
- [ ] 综合测试与修复

## 未来计划

- **行业知识库集成**：
  - 为不同专业方向的面试提供相关知识点参考

- **实时反馈机制**：
  - 在面试过程中提供实时反馈，而不只是在面试结束后
  - 可以增加面部表情、姿态等实时分析提示
