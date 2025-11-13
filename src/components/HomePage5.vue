<script setup>
</script>

<template>
  <div class="page5-wrapper">
    <section class="page5">
      <!-- 页面标题：Output 使用黄色，Growth 使用紫色突出显示 -->
      <h2 class="page5__title">
        Insightful <span class="page5__title--yellow">Output</span> &amp; <span class="page5__title--purple">Growth</span>
      </h2>
      <!-- 副标题：说明将知识转化为洞察和成长的核心价值 -->
      <p class="page5__subtitle">
        Turn captured knowledge into actionable insights, reflections, and long-term growth.
      </p>

      <!-- 三个功能卡片：横向排列展示三个核心能力 -->
      <div class="page5__cards">
        <!-- 卡片一：目标规划 -->
        <div class="page5__card">
          <div class="page5__card-image">
            <img
              src="../assets/HP5-1.png"
              alt="目标规划场景"
            />
          </div>
          <h3 class="page5__card-title">Goal Planning</h3>
          <p class="page5__card-description">
            Weekly plans, actionable insights, and personal growth guidance.
          </p>
        </div>

        <!-- 卡片二：反思式 AI -->
        <div class="page5__card">
          <div class="page5__card-image">
            <img
              src="../assets/HP5-2.png"
              alt="知识图谱展示"
            />
          </div>
          <h3 class="page5__card-title">Reflective AI</h3>
          <p class="page5__card-description">
            Memory Q&amp;A, daily summaries, narrative storylines, and knowledge maps.
          </p>
        </div>

        <!-- 卡片三：时间胶囊与提醒 -->
        <div class="page5__card">
          <div class="page5__card-image">
            <img
              src="../assets/HP5-3.png"
              alt="项目时间线管理"
            />
          </div>
          <h3 class="page5__card-title">Time <br/> Capsule &amp; Reminders</h3>
          <p class="page5__card-description">
            Set future checkpoints, revisit ideas, and track progress.
          </p>
        </div>
      </div>
    </section>
  </div>
</template>

<style lang="scss" scoped>
// 外层容器：浅色渐变背景，从浅蓝紫色过渡到白色
.page5-wrapper {
  width: 100vw;
  background: linear-gradient(180deg, #eff7ff 0%, #f4ecff 50%, #ffffff 100%);
  display: flex;
  justify-content: center;
}

.page5 {
  width: 100%;
  max-width: 1440px;
  min-height: 960px;
  padding: 100px 140px 160px;
  box-sizing: border-box;
  font-family: 'Microsoft YaHei UI', sans-serif;
  color: #1f1f1f;
  text-align: center;

  // 主标题：Output 和 Growth 分别使用黄色和紫色突出显示
  &__title {
    margin: 0;
    font-size: 52px;
    font-weight: 600;
    line-height: 1.2em;
    letter-spacing: 0.01em;
    white-space: nowrap;

    .page5__title--yellow {
      color: #ffd700;
    }

    .page5__title--purple {
      color: #b48af7;
    }
  }

  // 副标题：限制最大宽度，确保文本可读性
  &__subtitle {
    margin: 20px auto 0;
    max-width: 900px;
    width: fit-content;
    font-size: 22px;
    font-weight: 400;
    line-height: 1.6em;
    color: #585858;
    text-align: center;
  }

  // 卡片容器：使用 Grid 三列等宽布局，响应式适配
  &__cards {
    margin: 120px auto 0;
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 48px;
    max-width: 1200px;
  }

  // 单个卡片：圆角矩形，带阴影，垂直堆叠图片、标题和描述
  &__card {
    background: rgba(255, 255, 255, 0.95);
    border-radius: 24px;
    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.12);
    padding: 0;
    overflow: hidden;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    display: flex;
    flex-direction: column;

    &:hover {
      transform: translateY(-18px);
      box-shadow: 0 12px 32px rgba(0, 0, 0, 0.18);
    }
  }

  // 卡片图片：使用 4:3 比例增加高度，顶部圆角
  &__card-image {
    width: 100%;
    aspect-ratio: 4 / 3;
    overflow: hidden;
    background: #f5f5f5;

    img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      display: block;
    }
  }

  // 卡片标题：增加上下间距
  &__card-title {
    margin: 40px 24px 0;
    font-size: 28px;
    font-weight: 600;
    line-height: 1.3em;
    color: #1f1f1f;
  }

  // 卡片描述：增加底部间距
  &__card-description {
    margin: 20px 24px 40px;
    font-size: 18px;
    font-weight: 400;
    line-height: 1.6em;
    color: #565656;
  }
}

@media (max-width: 1280px) {
  .page5 {
    padding: 120px 80px 140px;

    &__title {
      font-size: 56px;
    }

    &__subtitle {
      font-size: 24px;
    }

    &__cards {
      gap: 36px;
    }
  }
}

@media (max-width: 968px) {
  .page5 {
    padding: 100px 60px 120px;

    &__title {
      font-size: 48px;
      white-space: normal;
    }

    &__subtitle {
      font-size: 22px;
    }

    &__cards {
      grid-template-columns: 1fr;
      gap: 32px;
      max-width: 600px;
    }
  }
}

@media (max-width: 768px) {
  .page5 {
    padding: 80px 32px 100px;

    &__title {
      font-size: 36px;
    }

    &__subtitle {
      font-size: 18px;
    }

    &__card-title {
      font-size: 24px;
    }

    &__card-description {
      font-size: 16px;
    }
  }
}
</style>

