<script setup>
// 导入品牌 Logo
import slackLogo from '../assets/slack-logo.svg'
// 导入 Hero 区域顶部对话气泡图标
import heroIconTop from '../assets/HP8-1.png'
// 导入 Footer 区域链接图标
import footerIcon1 from '../assets/HP8-footer-1.png' // Community Stories 图标
import footerIcon2 from '../assets/HP8-footer-2.png' // Pricing & Plans 图标
import footerIcon3 from '../assets/HP8-footer-3.png' // Documentation 图标
</script>

<template>
  <div class="page8-wrapper">
    <section class="page8">
      <!-- Hero Section: 渐变背景横幅，铺满整个屏幕宽度 -->
      <div class="page8__hero">
        <!-- Hero 内部容器：垂直布局，包含图标和文本内容 -->
        <div class="page8__hero-inner">
          <!-- 顶部对话气泡图标：第一行，居中显示 -->
          <div class="page8__hero-icon-top">
            <div class="page8__icon-circle">
              <img :src="heroIconTop" alt="Communication icon" />
            </div>
          </div>

          <!-- 主文本内容容器：包含两行文本 -->
          <div class="page8__hero-content">
            <!-- 第一行文本："Let's discuss your"，"discuss" 为白色高亮 -->
            <div class="page8__hero-line page8__hero-line--first">
              Let's <span class="page8__hero-title-highlight">discuss</span> your
            </div>
            <!-- 第二行文本："vision with your."，包含 Join Discord 按钮和箭头图标 -->
            <div class="page8__hero-line page8__hero-line--second">
              vision 
              <!-- 按钮和箭头图标包装器 -->
              <span class="page8__hero-button-wrapper">
                <!-- Join Discord 按钮：白色背景，渐变文字 -->
                <button class="page8__hero-button">
                  <span class="page8__button-text">Join Discord</span>
                </button>
                <!-- 右侧箭头图标：白色圆形背景，悬停时旋转 -->
                <div class="page8__hero-arrow-icon">
                  <svg width="30" height="30" viewBox="0 0 30 30" fill="none">
                    <path d="M8 8L22 22M22 8V22H8" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                  </svg>
                </div>
              </span> with your.
            </div>
          </div>
        </div>
      </div>

      <!-- Footer Section: 页脚区域，包含品牌信息和导航链接 -->
      <footer class="page8__footer">
        <!-- 左列：Synapnote 品牌信息 -->
        <div class="page8__footer-col page8__footer-col--brand">
          <!-- 品牌组：图标和名称水平排列 -->
          <div class="page8__brand-group">
            <!-- 品牌图标：渐变背景的圆角矩形 -->
            <div class="page8__brand-icon">
              <img :src="slackLogo" alt="Synapnote" />
            </div>
            <h3 class="page8__brand-name">Synapnote</h3>
          </div>
          <!-- 品牌描述文字 -->
          <p class="page8__brand-description">
            Transforming everyday moments into structured knowledge and personal growth.
          </p>
        </div>

        <!-- 右列：Explore More 标题和三个导航链接 -->
        <div class="page8__footer-col page8__footer-col--explore">
          <!-- Explore More 标题：独占一行 -->
          <h4 class="page8__footer-title">Explore More</h4>
          <!-- 链接行：三个链接横向排列，使用 space-between 分布 -->
          <div class="page8__footer-links-row">
            <!-- Community Stories 链接 -->
            <a href="#" class="page8__footer-link">
              <img :src="footerIcon1" alt="Community Stories" />
              <span>Community Stories</span>
            </a>
            <!-- Pricing & Plans 链接 -->
            <a href="#" class="page8__footer-link">
              <img :src="footerIcon2" alt="Pricing & Plans" />
              <span>Pricing & Plans</span>
            </a>
            <!-- Documentation 链接 -->
            <a href="#" class="page8__footer-link">
              <img :src="footerIcon3" alt="Documentation" />
              <span>Documentation</span>
            </a>
          </div>
        </div>
      </footer>
    </section>
  </div>
</template>

<style lang="scss" scoped>
// 页面外层容器
.page8-wrapper {
  width: 100vw;
  background: #ffffff;
  display: flex;
  justify-content: center;
}

.page8 {
  position: relative;
  width: 100%;
  max-width: 1440px;
  min-height: 1024px;
  padding: 57px 13px 0;
  box-sizing: border-box;
  font-family: 'Microsoft YaHei UI', sans-serif;
  color: #000000;
  display: flex;
  flex-direction: column;
  align-items: center;

  // Hero Section: 渐变背景横幅，铺满整个屏幕宽度
  &__hero {
    position: relative;
    width: 100vw; // 使用视口宽度，铺满整个屏幕
    max-width: none; // 移除最大宽度限制
    height: 452px;
    border-radius: 45px;
    // 渐变背景：从左到右，蓝色到紫色
    background: linear-gradient(90deg, rgba(109, 184, 255, 1) 0%, rgba(208, 157, 255, 1) 100%);
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    // 使用 calc 让 hero 突破父容器的 max-width 限制并居中显示
    // -50vw: 向左移动视口宽度的一半
    // + 50%: 向右移动父容器宽度的一半
    // 这样可以让 hero 从父容器中心点开始，向左右延伸到视口边缘
    margin: 0 calc(-50vw + 50%) 58px;
    overflow: hidden;
  }

  // Hero 内部容器：垂直布局，包含图标和文本内容
  &__hero-inner {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    gap: 20px; // 图标和文本内容之间的间距
    width: 100%;
  }

  // 顶部对话气泡图标容器：第一行，居中显示
  &__hero-icon-top {
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 1;
  }

  // 图标圆形背景：白色圆形，包含对话气泡图标
  &__icon-circle {
    width: 120px; // 白色圆形背景尺寸
    height: 120px;
    border-radius: 50%; // 完全圆形
    background: #ffffff;
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); // 阴影效果
    transition: transform 0.3s ease;
    overflow: hidden; // 隐藏溢出内容

    // 悬停效果：放大
    &:hover {
      transform: scale(1.1);
    }

    // 图标图片：相对圆形背景缩小，留出更多白色背景空间
    img {
      width: 70%; // 图片为圆形背景的 70%，留出 30% 的白色边距
      height: 70%;
      object-fit: contain; // 保持图片比例，完整显示
      display: block;
    }
  }

  // Hero 文本内容容器：垂直布局，包含两行文本
  &__hero-content {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    gap: 0; // 行之间无间距
  }

  // Hero 文本行基础样式：每行文本的通用样式
  &__hero-line {
    font-size: 64px;
    font-weight: 400;
    line-height: 1.5;
    text-align: center;
    color: #000000;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 8px; // 行内元素之间的间距
    white-space: nowrap; // 防止文本换行
  }

  // 第一行文本："Let's discuss your"
  &__hero-line--first {
    margin-bottom: 0;
  }

  // 第二行文本："vision with your."（包含按钮）
  &__hero-line--second {
    margin-top: 0;
  }

  // 高亮文字："discuss" 使用白色显示
  &__hero-title-highlight {
    color: #ffffff;
  }

  // Join Discord 按钮和箭头图标包装器：水平排列
  &__hero-button-wrapper {
    display: inline-flex;
    align-items: center;
    gap: 8px; // 按钮和箭头图标之间的间距
  }

  // Join Discord 按钮：白色背景，圆角按钮
  &__hero-button {
    height: 79px;
    padding: 0 32px;
    border: none;
    border-radius: 50px; // 完全圆角
    background: #ffffff;
    font-family: 'Microsoft YaHei UI', sans-serif;
    cursor: pointer;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    white-space: nowrap; // 防止文字换行
    display: inline-flex;
    align-items: center;
    justify-content: center;

    // 悬停效果：上移并添加阴影
    &:hover {
      transform: translateY(-6px);
      box-shadow: 0 6px 16px rgba(109, 184, 255, 0.3);
    }

    // 点击效果：恢复原位
    &:active {
      transform: translateY(0);
    }
  }

  // 按钮文字：使用渐变效果（蓝色到紫色）
  &__button-text {
    font-size: 24px;
    font-weight: 700;
    line-height: 1.5;
    // 渐变背景：从左到右，蓝色到紫色
    background: linear-gradient(90deg, rgba(109, 184, 255, 1) 0%, rgba(208, 157, 255, 1) 100%);
    // 使用背景裁剪实现渐变文字效果
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
  }

  // 右侧箭头图标：白色圆形背景，包含向上箭头
  &__hero-arrow-icon {
    width: 79px;
    height: 79px;
    border-radius: 50%; // 完全圆形
    background: #ffffff;
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease;
    cursor: pointer;

    // 悬停效果：放大并旋转 -45 度
    &:hover {
      transform: scale(1.1) rotate(-45deg);
    }

    // SVG 箭头图标
    svg {
      color: #000000;
    }
  }

  // Footer 区域：页脚容器，使用 Grid 布局
  &__footer {
    width: 100%;
    max-width: 1413px;
    display: grid;
    grid-template-columns: 372px 1fr; // 两列布局：左列固定宽度，右列自适应
    gap: 73px 102px; // 行间距 73px，列间距 102px
    padding: 0 0 40px;
    align-items: start; // 顶部对齐
  }

  // Footer 列基础样式：垂直布局
  &__footer-col {
    display: flex;
    flex-direction: column;
    gap: 8px; // 列内元素之间的间距
  }

  // 品牌信息列：左列，包含品牌图标、名称和描述
  &__footer-col--brand {
    gap: 8px;
  }

  // 品牌组（图标 + 名称）
  &__brand-group {
    display: flex;
    align-items: center;
    gap: 11px;
    margin-bottom: 8px;
  }

  // 品牌图标容器
  &__brand-icon {
    width: 41px;
    height: 41px;
    border-radius: 10px;
    background: linear-gradient(135deg, rgba(109, 184, 255, 1) 0%, rgba(208, 157, 255, 1) 100%);
    display: flex;
    align-items: center;
    justify-content: center;
    flex-shrink: 0;

    img {
      width: 27px;
      height: 27px;
      display: block;
    }
  }

  // 品牌名称
  &__brand-name {
    margin: 0;
    font-size: 20px;
    font-weight: 400;
    line-height: 1.5;
    color: #000000;
  }

  // 品牌描述
  &__brand-description {
    margin: 0;
    font-size: 16px;
    font-weight: 400;
    line-height: 1.5;
    color: #7E7E7E;
    max-width: 372px;
  }

  // Footer 标题："Explore More"
  &__footer-title {
    margin: 0 0 23px; // 底部间距 23px，与链接行分开
    font-size: 20px;
    font-weight: 400;
    line-height: 1.5;
    color: #000000;
  }

  // Footer 链接：每个导航链接的样式
  &__footer-link {
    display: flex;
    align-items: center;
    gap: 6px; // 图标和文字之间的间距
    font-size: 16px;
    font-weight: 400;
    line-height: 1.5;
    color: #7E7E7E; // 默认灰色
    text-decoration: none;
    transition: color 0.3s ease, transform 0.3s ease;
    margin-bottom: 8px;

    // 悬停效果：文字变黑并向右移动
    &:hover {
      color: #000000;
      transform: translateX(4px);
    }

    // 链接图标：使用图片替代 SVG
    img {
      width: 24px;
      height: 24px;
      flex-shrink: 0; // 防止图标被压缩
      object-fit: contain; // 保持图片比例
      display: block;
    }
  }

  // Explore More 列：右列，包含标题和三个链接
  &__footer-col--explore {
    margin-bottom: 2px; // 微调底部间距
  }

  // Footer 链接行：三个链接横向排列，使用 space-between 均匀分布
  &__footer-links-row {
    justify-content: space-between; // 三个链接均匀分布，两端对齐
    display: flex;
    align-items: center;
    flex-wrap: wrap; // 允许换行（响应式）
    margin-top: -5px; // 微调顶部间距，与标题更紧密
  }
}

// 中等屏幕响应式布局（平板设备，宽度 ≤ 1280px）
@media (max-width: 1280px) {
  .page8 {
    padding: 40px 20px 0; // 减少内边距

    // Hero 区域：降低高度，调整圆角
    &__hero {
      width: 100vw; // 使用视口宽度
      margin: 0 calc(-50vw + 50%) 40px; // 突破父容器限制并居中
      height: 380px; // 降低高度
      border-radius: 32px; // 减小圆角
    }

    // 文本行：缩小字体
    &__hero-line {
      font-size: 48px;
    }

    // 按钮：缩小尺寸
    &__hero-button {
      height: 65px;
      font-size: 20px;
      padding: 0 28px;
    }

    // 箭头图标：缩小尺寸
    &__hero-arrow-icon {
      width: 65px;
      height: 65px;
    }

    // 对话气泡图标：缩小尺寸
    &__icon-circle {
      width: 70px;
      height: 70px;
    }

    // Footer：改为单列布局
    &__footer {
      grid-template-columns: 1fr; // 单列布局
      gap: 40px; // 减少间距
    }

    &__footer-col--brand {
      grid-column: 1; // 品牌信息列占据第一列
    }

    // 链接行：添加固定间距（替代 space-between）
    &__footer-links-row {
      gap: 30px; // 链接之间的固定间距
    }
  }
}

// 小屏幕响应式布局（移动设备，宽度 ≤ 768px）
@media (max-width: 768px) {
  .page8 {
    padding: 30px 16px 0; // 进一步减少内边距

    // Hero 区域：进一步降低高度和圆角
    &__hero {
      width: 100vw; // 使用视口宽度
      margin: 0 calc(-50vw + 50%) 40px; // 突破父容器限制并居中
      height: 320px; // 进一步降低高度
      border-radius: 24px; // 进一步减小圆角
    }

    // 对话气泡图标：调整位置（此样式可能不再需要，因为已改为相对定位）
    &__hero-icon-top {
      top: 30px;
    }

    // 对话气泡图标：进一步缩小
    &__icon-circle {
      width: 60px;
      height: 60px;

      // SVG 图标尺寸（如果使用 SVG 时）
      svg {
        width: 36px;
        height: 36px;
      }
    }

    // 文本行：进一步缩小字体，允许换行
    &__hero-line {
      font-size: 32px;
      white-space: normal; // 允许文本换行
    }

    // 按钮和箭头包装器：改为垂直排列
    &__hero-button-wrapper {
      flex-direction: column; // 垂直排列
      gap: 12px; // 增加间距
    }

    // 按钮：进一步缩小尺寸
    &__hero-button {
      height: 56px;
      font-size: 18px;
      padding: 0 24px;
    }

    // 箭头图标：进一步缩小
    &__hero-arrow-icon {
      width: 56px;
      height: 56px;

      svg {
        width: 24px;
        height: 24px;
      }
    }

    // Footer：单列布局，减少间距
    &__footer {
      grid-template-columns: 1fr; // 单列布局
      gap: 32px; // 进一步减少间距
    }

    &__footer-col--brand {
      grid-column: 1; // 品牌信息列占据第一列
    }

    // 品牌描述：移除最大宽度限制
    &__brand-description {
      max-width: 100%; // 允许占满整行
    }
  }
}
</style>

