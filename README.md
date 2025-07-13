# ts-code-share
手動建立
```bash
# 1. 初始化專案和 Git
mkdir ts-code-share && cd ts-code-share
git init
git branch -M main
npx gitignore node

# 2. 建立基本結構
mkdir -p project-a/src project-b/src

# 3. 初始化 project-a
cd project-a
npm init -y
npm install -D typescript @types/node tsx
npx tsc --init

# 4. 初始化 project-b
cd ../project-b
npm init -y
npm install -D typescript @types/node tsx
npx tsc --init

# 5. 回到根目錄並提交初始結構
cd ..
git add .
git commit -m "feat: initial TypeScript monorepo structure"

```
test run
```bash
cd project-b
npm run dev
or
npm run start
```

project-a
會發佈的檔案：  
"files": ["dist/**/*"] - 這行告訴 npm 只包含 dist 目錄下的所有檔案  
"main": "dist/index.js" - 指定套件的入口點  
"types": "dist/index.d.ts" - 指定 TypeScript 型別定義檔案 

```bash
cd project-a
npm run build

npm whoami
npm publish
```

project-b
```bash
npm install @zeviliao/share-project-a
```