<script setup>
</script>

<template>
  <div class="wrapper">
    <section class="container">
      <!-- 页面标题：Output 使用黄色，Growth 使用紫色突出显示 -->
      <h2 class="main-title">
        Insightful <span class="highlight yellow">Output</span> &amp; <span class="highlight purple">Growth</span>
      </h2>
      <!-- 副标题：说明将知识转化为洞察和成长的核心价值 -->
      <p class="subtitle">
        Turn captured knowledge into actionable insights, reflections, and long-term growth.
      </p>

      <!-- 三个功能卡片：横向排列展示三个核心能力 -->
      <div class="cards-grid">
        <!-- 卡片一：目标规划 -->
        <div class="card-item">
          <div class="image-box">
            <img
              src="../assets/HP5-1.png"
              alt="目标规划场景"
            />
          </div>
          <h3 class="card-title">Goal Planning</h3>
          <p class="card-desc">
            Weekly plans, actionable insights, and personal growth guidance.
          </p>
        </div>

        <!-- 卡片二：反思式 AI -->
        <div class="card-item">
          <div class="image-box">
            <img
              src="../assets/HP5-2.png"
              alt="知识图谱展示"
            />
          </div>
          <h3 class="card-title">Reflective AI</h3>
          <p class="card-desc">
            Memory Q&amp;A, daily summaries, narrative storylines, and knowledge maps.
          </p>
        </div>

        <!-- 卡片三：时间胶囊与提醒 -->
        <div class="card-item">
          <div class="image-box">
            <img
              src="../assets/HP5-3.png"
              alt="项目时间线管理"
            />
          </div>
          <h3 class="card-title">Time <br/> Capsule &amp; Reminders</h3>
          <p class="card-desc">
            Set future checkpoints, revisit ideas, and track progress.
          </p>
        </div>
      </div>
    </section>
  </div>
</template>

<style lang="scss" scoped>
// 外层容器：浅色渐变背景，从浅蓝紫色过渡到白色
.wrapper {
  width: 100vw;
  background: linear-gradient(180deg, #eff7ff 0%, #f4ecff 50%, #ffffff 100%);
  display: flex;
  justify-content: center;

  .container {
    width: 100%;
    max-width: 1440px;
    min-height: 960px;
    padding: 100px 140px 160px;
    box-sizing: border-box;
    font-family: 'Microsoft YaHei UI', sans-serif;
    color: #1f1f1f;
    text-align: center;

    // 主标题：Output 和 Growth 分别使用黄色和紫色突出显示
    .main-title {
      margin: 0;
      font-size: 52px;
      font-weight: 600;
      line-height: 1.2em;
      letter-spacing: 0.01em;
      white-space: nowrap;

      .highlight {
        &.yellow {
          color: #ffd700;
        }

        &.purple {
          color: #b48af7;
        }
      }
    }

    // 副标题：限制最大宽度，确保文本可读性
    .subtitle {
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
    .cards-grid {
      margin: 120px auto 0;
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 48px;
      max-width: 1200px;

      // 单个卡片：圆角矩形，带阴影，垂直堆叠图片、标题和描述
      .card-item {
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

        // 卡片图片：使用 4:3 比例增加高度，顶部圆角
        .image-box {
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
        .card-title {
          margin: 40px 24px 0;
          font-size: 28px;
          font-weight: 600;
          line-height: 1.3em;
          color: #1f1f1f;
        }

        // 卡片描述：增加底部间距
        .card-desc {
          margin: 20px 24px 40px;
          font-size: 18px;
          font-weight: 400;
          line-height: 1.6em;
          color: #565656;
        }
      }
    }
  }
}

@media (max-width: 1280px) {
  .wrapper .container {
    padding: 120px 80px 140px;

    .main-title {
      font-size: 56px;
    }

    .subtitle {
      font-size: 24px;
    }

    .cards-grid {
      gap: 36px;
    }
  }
}

@media (max-width: 968px) {
  .wrapper .container {
    padding: 100px 60px 120px;

    .main-title {
      font-size: 48px;
      white-space: normal;
    }

    .subtitle {
      font-size: 22px;
    }

    .cards-grid {
      grid-template-columns: 1fr;
      gap: 32px;
      max-width: 600px;
    }
  }
}

@media (max-width: 768px) {
  .wrapper .container {
    padding: 80px 32px 100px;

    .main-title {
      font-size: 36px;
    }

    .subtitle {
      font-size: 18px;
    }

    .cards-grid {
      .card-item {
        .card-title {
          font-size: 24px;
        }
        .card-desc {
          font-size: 16px;
        }
      }
    }
  }
}
</style>
