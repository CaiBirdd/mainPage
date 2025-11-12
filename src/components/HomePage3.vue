<script setup>
</script>

<template>
  <div class="page3-wrapper">
    <section class="page3">
      <h2 class="page3__title">Powerful Features</h2>

      <!-- 采用左右分栏布局：左侧为主标题区，右侧为三个功能特性展示 -->
      <div class="page3__layout">
        <!-- 左侧主标题区域，通过 transform 微调位置以匹配设计稿 -->
        <div class="page3__intro">
          <h3 class="page3__intro-title">Effortless <span>Capture</span></h3>
          <p class="page3__intro-description">
            Capture your ideas naturally, without typing or interruption.
          </p>
        </div>

        <!-- 右侧功能特性列表，使用垂直堆叠布局，每个特性包含圆形图片和文字说明 -->
        <div class="page3__grid">
          <!-- 第一行：图片在左，文字在右，展示被动多模态输入能力 -->
          <div class="page3__row">
            <div class="page3__media page3__media--circle">
              <img src="../assets/HP3-1.png" alt="会议中自动记录的设备" />
            </div>
            <div class="page3__row-text">
              <h4 class="page3__feature-title">Passive &amp; Multi-Modal Input</h4>
              <p class="page3__feature-description">
                Always-on audio capture, visual snapshots, and support for files, web links, and social media content.
              </p>
            </div>
          </div>

          <!-- 第二行：使用 reverse 类实现文字在左、图片在右的布局，展示硬件灵活性 -->
          <div class="page3__row page3__row--reverse">
            <div class="page3__row-text">
              <h4 class="page3__feature-title">Flexible Hardware</h4>
              <p class="page3__feature-description">
                Wearable glasses, clips, pendants, watches, or mobile app fallback.
              </p>
            </div>
            <div class="page3__media page3__media--circle">
              <img src="../assets/HP3-2.png" alt="多种智能可穿戴设备" />
            </div>
          </div>

          <!-- 第三行：恢复图片在左、文字在右的布局，展示开放生态能力 -->
          <div class="page3__row">
            <div class="page3__media page3__media--circle">
              <img src="../assets/HP3-3.png" alt="跨设备的协同生态" />
            </div>
            <div class="page3__row-text">
              <h4 class="page3__feature-title">Open Ecosystem</h4>
              <p class="page3__feature-description">
                Integrate existing devices and third-party content seamlessly.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<style lang="scss" scoped>
// 外层容器：使用渐变背景从浅蓝过渡到浅紫，营造柔和视觉氛围
.page3-wrapper {
  width: 100vw;
  background: linear-gradient(180deg, #eaf4ff 0%, #f4ecff 100%);
  display: flex;
  justify-content: center;
}

.page3 {
  position: relative;
  width: 100%;
  max-width: 1440px;
  min-height: 1024px;
  padding: 30px 140px;
  box-sizing: border-box;
  font-family: 'Microsoft YaHei UI', sans-serif;
  color: #1f1f1f;
  // 整体缩放 0.95 倍，为页面上下留出呼吸空间，避免内容过于紧凑
  transform: scale(0.95);
  transform-origin: center top;

  &__title {
    margin: 0;
    font-size: 88px;
    font-weight: 500;
    line-height: 1.2em;
    text-align: center;
  }

  // 主布局容器：使用 Grid 实现左右分栏，左侧固定宽度 480px，右侧自适应
  &__layout {
    margin-top: 90px;
    display: grid;
    grid-template-columns: 480px 1fr;
    gap: 80px;
    align-items: start;
  }

  // 左侧介绍区域：通过 transform 精确调整位置，使其与右侧内容在视觉上对齐
  &__intro {
    position: relative;
    padding-top: 36px;
    padding-left: 16px;
    transform: translate(-166px, 210px);
  }

  // 主标题：Effortless 为黑色，Capture 使用品牌蓝色突出显示
  &__intro-title {
    margin: 0;
    font-size: 72px;
    font-weight: 600;
    line-height: 1.1em;
    letter-spacing: 0.01em;
    white-space: nowrap;

    span {
      color: #64aaff;
    }
  }

  &__intro-description {
    margin: 40px 0 0;
    font-size: 24px;
    font-weight: 400;
    line-height: 1.6em;
    color: #525252;
    max-width: 420px;
  }

  // 右侧功能列表容器：垂直堆叠三个功能项，整体向左偏移 50px 以匹配设计稿
  &__grid {
    display: flex;
    flex-direction: column;
    gap: 48px;
    transform: translateX(-50px);
  }

  // 功能行：使用 Grid 布局，图片固定 312px，文字区域自适应
  &__row {
    display: grid;
    grid-template-columns: 312px 1fr;
    gap: 40px;
    align-items: center;
  }

  // 反向行：调整列宽比例，文字区域在前，图片区域固定 312px
  &__row--reverse {
    grid-template-columns: 1fr 312px;
  }

  // 通过 order 属性调整反向行中元素的视觉顺序，实现图文位置互换
  &__row--reverse .page3__row-text {
    order: 1;
  }

  &__row--reverse .page3__media {
    order: 2;
  }

  &__row-text {
    display: flex;
    flex-direction: column;
    gap: 18px;
  }

  // 功能标题：强制单行显示，避免换行影响布局
  &__feature-title {
    margin: 0;
    font-size: 32px;
    font-weight: 600;
    line-height: 1.3em;
    white-space: nowrap;
  }

  &__feature-description {
    margin: 0;
    font-size: 20px;
    font-weight: 400;
    line-height: 1.6em;
    color: #565656;
  }

  // 媒体容器：添加柔和的蓝色阴影，悬停时放大 1.2 倍增强交互感
  &__media {
    position: relative;
    width: 100%;
    overflow: hidden;
    box-shadow: 0 20px 44px rgba(136, 170, 255, 0.28);
    transition: transform 0.4s ease;

    &:hover {
      transform: scale(1.2);
    }
  }

  // 圆形图片样式：1:1 比例，半透明白色边框与背景融合
  &__media--circle {
    aspect-ratio: 1 / 1;
    border-radius: 50%;
    border: 10px solid rgba(244, 244, 244, 0.75);
  }


  &__media img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
    transition: transform 0.4s ease;
  }
}

@media (max-width: 1280px) {
  .page3 {
    padding: 100px 80px;

    &__layout {
      grid-template-columns: 1fr;
      gap: 60px;
    }

    &__intro {
      max-width: 560px;
    }

    &__grid {
      gap: 40px;
    }

    &__row,
    &__row--reverse {
      grid-template-columns: 1fr;
      gap: 28px;
    }

    &__row--reverse .page3__row-text,
    &__row--reverse .page3__media {
      order: initial;
    }

    &__media {
      max-width: 400px;
    }
  }
}

@media (max-width: 768px) {
  .page3 {
    padding: 80px 24px;

    &__title {
      font-size: 48px;
    }

    &__intro-title {
      font-size: 42px;
    }

    &__intro-description {
      font-size: 18px;
    }

    &__feature-title {
      font-size: 26px;
    }

    &__feature-description {
      font-size: 16px;
    }

    &__media {
      max-width: 320px;
    }
  }
}
</style>

