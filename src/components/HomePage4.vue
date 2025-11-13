<script setup>
import hp4Gif1 from '../assets/HP4-1.gif'
import hp4Gif2 from '../assets/HP4-2.gif' //时间线与人物关联 gif
</script>

<template>
  <div class="page4-wrapper">
    <section class="page4">
      <!-- 页面标题：Smart Knowledge 为黑色，Management 使用紫色突出品牌色 -->
      <h2 class="page4__title">
        Smart Knowledge <span>Management</span>
      </h2>
      <!-- 副标题：说明知识自动组织的核心价值主张 -->
      <p class="page4__subtitle">
        Your knowledge organizes itself—no folders, no manual tagging, just understanding.
      </p>

      <!-- 功能展示区：使用 Grid 两列布局，左右各展示一个核心功能 -->
      <div class="page4__features">
        <!-- 左侧功能：AI 自动组织，使用蓝色光晕作为视觉焦点 -->
        <div class="page4__feature">
          <div class="page4__halo-container">
            <div class="page4__halo page4__halo--blue"></div>
            <img :src="hp4Gif1" alt="AI 自动组织" class="page4__image1">
          </div>
          <div class="page4__info">
            <h3 class="page4__feature-title">AI-Powered Organization</h3>
            <p class="page4__feature-description">
              Automatic tagging, semantic structuring, and virtual folders.
            </p>
          </div>
        </div>

        <!-- 右侧功能：时间线与人物关联，使用紫色光晕与左侧形成对比 -->
        <div class="page4__feature">
          <div class="page4__halo-container">
            <div class="page4__halo page4__halo--purple"></div>
            <img :src="hp4Gif2" alt="时间线与人物关联" class="page4__image2">
          </div>
          <div class="page4__info">
            <h3 class="page4__feature-title">Timeline &amp; Persona Linking</h3>
            <p class="page4__feature-description">
              Track events, people, and topics over time.
            </p>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<style lang="scss" scoped>
// 外层容器：从浅紫色渐变到纯白，营造轻盈、专业的视觉感受
.page4-wrapper {
  width: 100vw;
  background: linear-gradient(180deg, #f9f4ff 0%, #ffffff 100%);
  display: flex;
  justify-content: center;
}

.page4 {
  width: 100%;
  max-width: 1440px;
  min-height: 960px;
  padding: 140px 140px 160px;
  box-sizing: border-box;
  font-family: 'Microsoft YaHei UI', sans-serif;
  color: #1f1f1f;
  // 所有内容居中对齐，符合知识管理页面的简洁风格
  text-align: center;

  // 主标题：强制单行显示，Management 使用品牌紫色
  &__title {
    margin: 0;
    font-size: 50px;
    font-weight: 600;
    line-height: 1.18em;
    letter-spacing: 0.01em;
    white-space: nowrap;

    span {
      color: #b48af7;
    }
  }

  // 副标题：使用 fit-content 确保文本宽度自适应，配合 margin auto 实现居中
  &__subtitle {
    margin: 20px auto 0;
    max-width: 800px;
    width: fit-content;
    font-size: 28px;
    font-weight: 400;
    line-height: 1.6em;
    color: #585858;
    white-space: nowrap;
    text-align: center;
    margin-left: 10px;
  }

  // 功能展示区：Grid 两列等宽布局，120px 间距保证视觉平衡
  &__features {
    margin: 160px auto 0;
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 120px;
  }

  // 单个功能项：垂直堆叠光晕和文字信息，居中对齐
  &__feature {
    position: relative;
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 48px;
  }

  // 光晕容器：用于定位光晕和图片
  &__halo-container {
    position: relative;
    width: 420px;
    height: 420px;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  // 光晕效果：使用大尺寸圆形 + 强模糊 + 半透明，模拟柔和的光效氛围
  &__halo {
    position: absolute;
    width: 420px;
    height: 420px;
    border-radius: 50%;
    filter: blur(160px);
    opacity: 0.9;
  }

  // 蓝色光晕：对应 AI 自动组织功能，传达科技感
  &__halo--blue {
    background: rgba(149, 198, 255, 0.75);
  }

  // GIF图片样式：居中显示在光晕上
  &__image1 {
    position: absolute;
    width: 550px;
    height: 550px;
    object-fit: contain;
    z-index: 10;
    pointer-events: none;
  }
  
  // 紫色光晕：对应时间线功能，与品牌色呼应
  &__halo--purple {
    background: rgba(204, 166, 255, 0.75);
  }

  &__image2 {
    position: absolute;
    width: 550px;
    height: 550px;
    object-fit: contain;
    z-index: 10;
    pointer-events: none;
  }

  // 文字信息容器：限制最大宽度，保持内容可读性
  &__info {
    display: flex;
    flex-direction: column;
    gap: 18px;
    max-width: 480px;
  }

  &__feature-title {
    margin: 0;
    font-size: 32px;
    font-weight: 600;
    letter-spacing: 0.01em;
  }

  &__feature-description {
    margin: 0;
    font-size: 20px;
    font-weight: 400;
    line-height: 1.6em;
    color: #5d5d5d;
  }
}

@media (max-width: 1280px) {
  .page4 {
    padding: 120px 80px 140px;

    &__title {
      font-size: 64px;
    }

    &__subtitle {
      font-size: 22px;
    }

    &__features {
      gap: 80px;
    }

    &__halo-container {
      width: 360px;
      height: 360px;
    }

    &__halo {
      width: 360px;
      height: 360px;
    }
  }
}

@media (max-width: 768px) {
  .page4 {
    padding: 80px 32px 120px;

    &__title {
      font-size: 42px;
    }

    &__subtitle {
      font-size: 18px;
    }

    &__features {
      margin-top: 100px;
      grid-template-columns: 1fr;
      gap: 64px;
    }

    &__halo-container {
      width: 280px;
      height: 280px;
    }

    &__halo {
      width: 280px;
      height: 280px;
      filter: blur(120px);
    }

    &__image1 {
      width: 150px;
      height: 150px;
    }

    &__image2 {
      width: 150px;
      height: 150px;
    }
  }
}
</style>
