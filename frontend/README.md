# 智能模拟面试系统 - 前端界面

这是一个基于Next.js的智能模拟面试系统前端应用，通过AI技术提供面试模拟、实时分析和反馈功能。

## 项目简介

智能模拟面试系统是一个帮助求职者提升面试能力的现代化Web应用。它利用多模态AI技术（视频和语音分析）对用户在模拟面试中的表现进行全方位评估，并提供专业的反馈和改进建议。

## 主要功能

- 📝 **面试设置**: 选择职位类型和难度级别，定制化面试体验
- 📹 **视频面试模拟**: 支持实时摄像头录制，模拟真实面试场景
- 🎙 **多模态分析**: 分析视频表现（眼神接触、表情等）和语音表现（语速、清晰度等）
- 🤖 **AI评估**: 对每个问题的回答进行专业评估，提供详细反馈
- 📊 **综合报告**: 生成面试总结报告，包含优势、弱点和改进建议
- 👨‍💼 **管理界面**: 支持管理员查看和分析面试会话数据

## 技术栈

- **框架**: [Next.js](https://nextjs.org/) (App Router)
- **UI组件**: [Ant Design](https://ant.design/)
- **视频处理**: React Webcam
- **内容渲染**: ReactMarkdown
- **状态管理**: React Hooks
- **网络请求**: Axios

## 快速开始

### 开发环境

1. 克隆仓库

```bash
git clone <仓库地址>
cd interview-ai/frontend
```

2. 安装依赖

```bash
npm install
# 或
yarn install
# 或
pnpm install
```

3. 运行开发服务器

```bash
npm run dev
# 或
yarn dev
# 或
pnpm dev
```

4. 打开浏览器访问 [http://localhost:3000](http://localhost:3000)

### 环境变量配置

创建`.env.local`文件，添加以下环境变量:

```
NEXT_PUBLIC_API_URL=http://localhost:5000/api
```

## 构建与部署

### 生产环境构建

```bash
npm run build
# 或
yarn build
# 或
pnpm build
```

### 启动生产服务器

```bash
npm start
# 或
yarn start
# 或
pnpm start
```

### Docker部署

项目根目录包含Dockerfile，可以使用以下命令构建和运行Docker容器：

```bash
# 构建Docker镜像
docker build -t interview-ai-frontend .

# 运行容器
docker run -p 3000:3000 interview-ai-frontend
```

## 项目结构

```
frontend/
├── src/
│   ├── app/             # 页面组件 (App Router)
│   ├── components/      # 可复用组件
│   ├── services/        # API服务
│   ├── types/           # TypeScript类型定义
│   └── utils/           # 工具函数
├── public/              # 静态资源
└── ...配置文件
```

## 相关项目

- [后端API服务](../backend/README.md)

## 贡献指南

1. Fork 项目
2. 创建功能分支 (`git checkout -b feature/amazing-feature`)
3. 提交更改 (`git commit -m 'Add some amazing feature'`)
4. 推送到分支 (`git push origin feature/amazing-feature`)
5. 创建Pull Request

## 许可证

[MIT License](LICENSE)
