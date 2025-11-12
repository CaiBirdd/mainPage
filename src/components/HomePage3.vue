<script setup>
</script>

<template>
  <div class="page3-wrapper">
    <section class="page3">
      <!-- 第三屏标题：突出功能优势 -->
      <h2 class="page3__title">Powerful Features</h2>

      <div class="page3__layout">
        <!-- 左侧引导文案：强调“Effortless Capture”理念 -->
        <div class="page3__intro">
          <h3 class="page3__intro-title">Effortless <span>Capture</span></h3>
          <p class="page3__intro-description">
            Capture your ideas naturally, without typing or interruption.
          </p>
        </div>

        <!-- 右侧功能点列表：依次展示被动输入、硬件灵活性和开放生态 -->
        <div class="page3__grid">
          <div class="page3__row">
            <!-- 功能卡片一：被动多模态输入配合会议场景图 -->
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

          <div class="page3__row page3__row--reverse">
            <!-- 功能卡片二：可穿戴硬件配合产品矩阵展示 -->
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

          <div class="page3__row">
            <!-- 功能卡片三：开放生态配合跨设备协同画面 -->
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
.page3-wrapper {
  width: 100vw;
  // 渐变背景容器，撑满整屏
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
  // 稍作缩放以留出上下留白空间
  transform: scale(0.95);
  transform-origin: center top;

  &__title {
    margin: 0;
    font-size: 88px;
    font-weight: 500;
    line-height: 1.2em;
    text-align: center;
  }

  &__layout {
    margin-top: 90px;
    // 左右分栏：左侧文案，右侧功能列表
    display: grid;
    grid-template-columns: 480px 1fr;
    gap: 80px;
    align-items: start;
  }

  &__intro {
    position: relative;
    padding-top: 36px;
    padding-left: 16px;
    // 左侧整体偏移以对齐视觉
    transform: translate(-166px, 210px);
  }

  

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

  &__grid {
    display: flex;
    flex-direction: column;
    gap: 48px;
    // 右侧内容整体左移，贴合设计稿
    transform: translateX(-50px);
  }

  &__row {
    display: grid;
    grid-template-columns: 312px 1fr;
    gap: 40px;
    align-items: center;
  }

  &__row--reverse {
    // 反向行用于图文对调
    grid-template-columns: 1fr 312px;
  }

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

  &__media {
    position: relative;
    width: 100%;
    overflow: hidden;
    // 圆形图片阴影与悬停缩放
    box-shadow: 0 20px 44px rgba(136, 170, 255, 0.28);
    transition: transform 0.4s ease;

    &:hover {
      transform: scale(1.2);
    }
  }

  &__media--circle {
    aspect-ratio: 1 / 1;
    border-radius: 50%;
    // 保持与界面背景融合的白色描边
    border: 10px solid rgba(255, 255, 255, 0.75);
  }

  &__media--rounded {
    border-radius: 36px;
    aspect-ratio: 4 / 3;
    border: 8px solid rgba(255, 255, 255, 0.65);
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

