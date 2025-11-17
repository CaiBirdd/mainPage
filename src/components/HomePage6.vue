<script setup>
// 导入卡片和面板背景图片资源
import cardSyncBg from '../assets/HP6-card1.png'
import cardPrivacyBg from '../assets/HP6-card2.png'
import cardPanelBg from '../assets/HP6-card3.png'
</script>

<template>
  <div class="page6-wrapper">
    <section class="page6">
      <div class="page6__visual">
        <!-- 多平台同步特性卡片 -->
        <div class="page6__card page6__card--sync">
          <div
            class="page6__card-media"
            :style="{
              backgroundImage: `url(${cardSyncBg})`
            }"
          ></div>
        </div>
        <div class="page6__card-label page6__card-label--right">
          <div class="page6__card-line page6__card-line--right"></div>
          <span class="page6__card-label-text">Multi-Platform Sync</span>
        </div>

        <!-- 隐私优先特性卡片 -->
        <div class="page6__card page6__card--privacy">
          <div
            class="page6__card-media"
            :style="{
              backgroundImage: `url(${cardPrivacyBg})`
            }"
          ></div>
        </div>
        <div class="page6__card-label page6__card-label--left">
          <div class="page6__card-line page6__card-line--left"></div>
          <span class="page6__card-label-text">Privacy First</span>
        </div>

        <!-- 安全与可访问性特性面板 -->
        <div
          class="page6__panel"
          :style="{
            backgroundImage: `linear-gradient(135deg, rgba(138, 194, 255, 0.92) 0%, rgba(214, 169, 255, 0.92) 100%)`
          }"
        >
          <!-- 面板背景图片 -->
          <div
            class="page6__panel-bg-image"
            :style="{
              backgroundImage: `url(${cardPanelBg})`
            }"
          ></div>

          <div class="page6__panel-header">
            <h3 class="page6__panel-title">Secure &amp; Accessible</h3>
            <p class="page6__panel-subtitle">
              Peace of mind with complete control over your knowledge.
            </p>
          </div>

          <!-- 特性列表 -->
          <ul class="page6__panel-list">
            <li class="page6__panel-item">
              <span class="page6__dot"></span>
              <div class="page6__panel-text">
                <strong>Multi-Platform Sync</strong>
                <span>Access your knowledge across devices.</span>
              </div>
            </li>
            <li class="page6__panel-item">
              <span class="page6__dot"></span>
              <div class="page6__panel-text">
                <strong>Privacy First</strong>
                <span>End-to-end encryption; your data is yours.</span>
              </div>
            </li>
            <li class="page6__panel-item">
              <span class="page6__dot"></span>
              <div class="page6__panel-text">
                <strong>Interoperable</strong>
                <span>Connect with meetings, APIs, and other platforms securely.</span>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </section>
  </div>
</template>

<style lang="scss" scoped>
// 页面外层容器
.page6-wrapper {
  width: 100vw;
  background: #ffffff;
  display: flex;
  justify-content: center;
}

.page6 {
  position: relative;
  width: 100%;
  max-width: 1440px;
  min-height: 960px;
  padding: 140px 120px 160px;
  box-sizing: border-box;
  font-family: 'Microsoft YaHei UI', sans-serif;
  color: #1f1f1f;

  // 可视化内容区域
  &__visual {
    position: relative;
    width: 100%;
    min-height: 600px;
    transform: scale(0.95);
    transform-origin: center center;
    
    // 标签位置调整变量
    // 向右标签（Multi-Platform Sync）
    --label-right-top: -140px;
    --label-right-left: 358px;
    --label-right-vertical-offset: 0px;
    --label-right-line-width: 320px;
    --label-right-text-gap: 18px;
    
    // 向左标签（Privacy First）
    --label-left-top: 410px;
    --label-left-left: -180px;
    --label-left-vertical-offset: 0px;
    --label-left-line-width: 190px;
    --label-left-text-gap: 18px;
  }

  // 特性卡片基础样式
  &__card {
    position: absolute;
    width: 568px;
    height: 560px;
    border-radius: 32px;
    box-shadow: 5px 24px 46px rgba(71, 90, 150, 0.18);
    background: #f6f0ff;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    overflow: hidden;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    cursor: pointer;

    &:hover {
      transform: translateY(-12px);
      box-shadow: 0 32px 60px rgba(71, 90, 150, 0.28);
    }
  }

  // 多平台同步卡片定位和渐变背景
  &__card--sync {
    top: -270px;
    left: -160px;
    background: linear-gradient(180deg, #ebd8ff 0%, #ebf5ff 100%);
  }

  // 隐私优先卡片定位和渐变背景
  &__card--privacy {
    bottom: -200px;
    left: 80px;
    background: linear-gradient(180deg, #d2d2fd 0%, #e4f0ff 100%);
    z-index: 1;
  }

  // 卡片媒体图片容器
  &__card-media {
    width: 530px;
    height: 320px;
    border-radius: 34px;
    background-position: center;
    background-size: cover;//图片完全覆盖容器
    background-repeat: no-repeat;
    box-shadow: inset 0 0 0 1px rgba(255, 255, 255, 0.45);//内阴影，白色，0.45透明度
  }

  // 卡片标签容器
  &__card-label {
    position: absolute;
    display: flex;
    align-items: center;
    z-index: 10;
    pointer-events: none;
  }

  // 向右的标签（sync卡片）
  // sync卡片：top: -280px, left: -50px, width: 568px, height: 560px
  // 卡片中心垂直位置：-280px + 280px = 0px
  // 卡片右边缘：-50px + 568px = 518px
  &__card-label--right {
    top: var(--label-right-top);
    left: var(--label-right-left);
    transform: translateY(calc(-50% + var(--label-right-vertical-offset)));
    flex-direction: row;
  }

  // 向左的标签（privacy卡片）
  // privacy卡片：bottom: -200px, left: 150px, width: 568px, height: 560px
  // visual min-height: 600px，卡片top = 600 - 560 - 200 = -160px
  // 卡片中心垂直位置：-160px + 280px = 120px
  // 卡片左边缘：150px
  &__card-label--left {
    top: var(--label-left-top);
    left: var(--label-left-left);
    transform: translateY(calc(-50% + var(--label-left-vertical-offset)));
    flex-direction: row-reverse;
  }

  // 连接线
  &__card-line {
    height: 1.5px;
    background: #1f1f1f;
    flex-shrink: 0;
  }

  // 向右的线条宽度
  &__card-line--right {
    width: var(--label-right-line-width);
  }

  // 向左的线条需要翻转方向
  &__card-line--left {
    width: var(--label-left-line-width);
    transform: scaleX(-1);
  }

  // 标签文字
  &__card-label-text {
    font-size: 25px;
    font-weight: 600;
    color: #1f1f1f;
    white-space: nowrap;
  }

  // 向右标签的文字间距
  &__card-label--right &__card-label-text {
    margin-left: var(--label-right-text-gap);
  }

  // 向左标签的文字间距
  &__card-label--left &__card-label-text {
    margin-right: var(--label-left-text-gap);
  }

  // 特性面板容器，包含渐变背景和背景图片
  &__panel {
    position: absolute;
    top: -110px;
    right: -190px;
    width: 920px;
    min-height: 760px;
    padding: 80px 96px;
    border-radius: 48px;
    color: #101010;
    display: flex;
    flex-direction: column;
    gap: 40px;
    box-shadow: 0 32px 60px rgba(110, 132, 198, 0.3);
    overflow: hidden;
  }

  // 面板背景图片容器
  &__panel-bg-image {
    position: absolute;
    top: 0;
    right: 0;
    width: 520px;
    height: 100%;
    background-size: contain;
    background-repeat: no-repeat;
    background-position: right center;
    pointer-events: none;
    z-index: 0;
    transform: scale(1.0526);
    transform-origin: right center;
  }

  // 面板头部区域
  &__panel-header {
    position: relative;
    z-index: 1;
    display: flex;
    flex-direction: column;
    gap: 18px;
  }

  // 面板主标题
  &__panel-title {
    position: relative;
    margin: 0;
    font-size: 60px;
    font-weight: 700;
    line-height: 1.15;
    left: 90px;
  }

  // 面板副标题
  &__panel-subtitle {
    position: relative;
    margin: 0;
    font-size: 22px;
    font-weight: 400;
    line-height: 1.6;
    color: rgba(16, 16, 16, 0.84);
    left: 90px;
  }

  // 特性列表容器
  &__panel-list {
    position: relative;
    z-index: 1;
    margin: 0;
    padding: 0;
    list-style: none;
    display: flex;
    flex-direction: column;
    gap: 32px;
    left: 90px;
  }

  // 特性列表项
  &__panel-item {
    display: flex;
    align-items: flex-start;
    gap: 20px;
  }

  // 列表项前的装饰点
  &__dot {
    width: 20px;
    height: 20px;
    border-radius: 50%;
    background: #ffffff;
    box-shadow: 0 0 0 4px rgba(255, 255, 255, 0.35);
    margin-top: 6px;
    flex-shrink: 0;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    
    &:hover{
      transform: scale(1.3);
      box-shadow: 0 0 0 4px rgba(255, 255, 255, 0.35);
    }
  }

  // 特性文本内容
  &__panel-text {
    display: flex;
    flex-direction: column;
    gap: 8px;
    color: #111111;

    strong {
      font-size: 22px;
      font-weight: 600;
      line-height: 1.4;
    }

    span {
      font-size: 18px;
      font-weight: 400;
      line-height: 1.6;
      color: rgba(17, 17, 17, 0.82);
    }
  }

  // 中等屏幕响应式布局
  @media (max-width: 1280px) {
    padding: 120px 60px 140px;

    &__visual {
      min-height: 880px;
    }

    // 面板改为相对定位，适应中等屏幕
    &__panel {
      position: relative;
      width: 100%;
      right: auto;
      top: 220px;
      margin: 0 auto;
    }

    // 卡片改为相对定位，垂直排列
    &__card {
      position: relative;
      width: 320px;
      height: 230px;
      margin-bottom: 40px;
    }

    &__card--sync,
    &__card--privacy {
      top: auto;
      left: auto;
      bottom: auto;
    }

    &__card-media {
      width: 264px;
      height: 168px;
    }

    &__card-label {
      display: none;
    }
  }

  // 小屏幕响应式布局
  @media (max-width: 768px) {
    padding: 80px 24px 120px;

    &__panel {
      padding: 60px 36px;
      border-radius: 32px;
    }

    &__panel-title {
      font-size: 36px;
    }

    &__panel-subtitle {
      font-size: 18px;
    }

    &__panel-text {
      strong {
        font-size: 18px;
      }

      span {
        font-size: 16px;
      }
    }
  }
}
</style>

