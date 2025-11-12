<script setup>
</script>

<template>
  <div class="page4-wrapper">
    <section class="page4">
      <!-- 第四屏标题与副标题：说明智能知识管理核心价值 -->
      <h2 class="page4__title">
        Smart Knowledge <span>Management</span>
      </h2>
      <p class="page4__subtitle">
        Your knowledge organizes itself—no folders, no manual tagging, just understanding.
      </p>

      <!-- 双列知识管理功能：左侧聚焦自动化整理，右侧展示时间线能力 -->
      <div class="page4__features">
        <div class="page4__feature">
          <!-- 蓝色光晕强调 AI 自动归档 -->
          <div class="page4__halo page4__halo--blue"></div>
          <div class="page4__info">
            <h3 class="page4__feature-title">AI-Powered Organization</h3>
            <p class="page4__feature-description">
              Automatic tagging, semantic structuring, and virtual folders.
            </p>
          </div>
        </div>

        <div class="page4__feature">
          <!-- 紫色光晕突出时间线与人物关联能力 -->
          <div class="page4__halo page4__halo--purple"></div>
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
.page4-wrapper {
  width: 100vw;
  // 与设计保持一致的浅色渐变背景
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
  // 整体居中排版
  text-align: center;

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

  &__features {
    margin: 160px auto 0;
    // 两列布局呈现两个知识管理能力
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 120px;
  }

  &__feature {
    position: relative;
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 48px;
  }

  &__halo {
    // 模拟发光氛围的模糊圆形
    width: 420px;
    height: 420px;
    border-radius: 50%;
    filter: blur(160px);
    opacity: 0.9;
  }

  &__halo--blue {
    background: rgba(149, 198, 255, 0.75);
  }

  &__halo--purple {
    background: rgba(204, 166, 255, 0.75);
  }

  &__info {
    display: flex;
    flex-direction: column;
    gap: 18px;
    max-width: 440px;
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

    &__halo {
      width: 280px;
      height: 280px;
      filter: blur(120px);
    }
  }
}
</style>

