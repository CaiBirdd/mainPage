<script setup>
</script>

<template>
  <div class="wrapper">
    <div class="container">
      <!-- 背景装饰 -->
      <div class="bg-decoration">
        <div class="bg-circle blue"></div>
        <div class="bg-circle purple"></div>
      </div>

      <!-- 主标题 -->
      <h2 class="main-title">Why Synapnote?</h2>

      <!-- 副标题 -->
      <p class="subtitle">A new approach to personal knowledge management</p>

      <!-- 功能卡片网格 -->
      <div class="cards-grid">
        <!-- 卡片1: Speak, Don't Type -->
        <div class="card">
          <div class="card-header blue">
            <h3 class="card-title">Speak, Don't Type</h3>
          </div>
          <p class="card-desc">
            Capture your thoughts naturally, without being tied to a desk.
          </p>
        </div>

        <!-- 卡片2: Seamless Real-World Input -->
        <div class="card">
          <div class="card-header purple">
            <h3 class="card-title">Seamless Real-World Input</h3>
          </div>
          <p class="card-desc multi">
            Use our wearable Bluetooth device, or<br />
            your mobile app when the device isn't<br />
            available; capture conversations<br />
            effortlessly.
          </p>
        </div>

        <!-- 卡片3: Knowledge Manages Itself -->
        <div class="card">
          <div class="card-header yellow">
            <h3 class="card-title">Knowledge Manages Itself</h3>
          </div>
          <p class="card-desc multi">
            Forget tagging or folders; AI<br />
            automatically organizes and synthesizes your knowledge.
          </p>
        </div>

        <!-- 卡片4: Insightful Output -->
        <div class="card">
          <div class="card-header green">
            <h3 class="card-title">Insightful Output</h3>
          </div>
          <p class="card-desc">
            Your knowledge talks back: reflect, plan, and grow.
          </p>
        </div>
      </div>
    </div>
  </div>
</template>

<style lang="scss" scoped>
.wrapper {
  position: relative;
  width: 100vw;
  background: #ffffff;
  overflow: hidden;

  .container {
    position: relative;
    width: 100vw;
    background: #ffffff;
    padding: 76px 0;
    overflow: hidden;
    transform: scale(0.95);
    transform-origin: center top;
    margin-bottom: -50px;

    /* 背景装饰 */
    .bg-decoration {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      pointer-events: none;
      z-index: 0;

      .bg-circle {
        position: absolute;
        border-radius: 50%;
        filter: blur(200px);
        opacity: 0.75;

        // 使用相对于容器中心的定位，确保在不同屏幕尺寸下保持固定位置
        // 原始设计在1440px宽度下：蓝圈left为320px，容器中心为720px，距离中心400px
        &.blue {
          width: 748px;
          height: 730px;
          left: calc(50% - 400px);
          top: 172px;
          background: rgba(4, 133, 254, 0.51);
        }

        // 原始设计在1440px宽度下：紫圈left为474px，容器中心为720px，距离中心246px
        &.purple {
          width: 492px;
          height: 492px;
          left: calc(50% - 246px);
          top: 356px;
          background: rgba(212, 163, 255, 0.875);
        }
      }
    }

    /* 主标题 */
    .main-title {
      position: relative;
      z-index: 1;
      margin: 0 auto;
      width: 773px;
      min-height: 127px;
      font-family: 'Microsoft YaHei UI', sans-serif;
      font-size: 96px;
      font-weight: 400;
      line-height: 1.326em;
      color: #000000;
      text-align: center;
    }

    /* 副标题 */
    .subtitle {
      position: relative;
      z-index: 1;
      margin: 3px auto 0;
      width: 824px;
      min-height: 42px;
      font-family: 'Microsoft YaHei UI', sans-serif;
      font-size: 32px;
      font-weight: 400;
      line-height: 1.326em;
      color: #474747;
      text-align: center;
    }

    /* 卡片网格容器 */
    .cards-grid {
      position: relative;
      z-index: 1;
      display: grid;
      grid-template-columns: repeat(2, 490px);
      grid-template-rows: repeat(2, auto);
      gap: 48px 44px;
      justify-content: center;
      margin: 30px auto 0;
      max-width: 1440px;

      /* 卡片 */
      .card {
        width: 490px;
        background: rgba(255, 255, 255, 0.9);
        border: 2px solid #E9E9E9;
        border-radius: 20px;
        box-shadow: 3px 8px 6px 1px rgba(0, 0, 0, 0.16);
        padding: 0;
        overflow: hidden;
        transition: transform 0.3s, box-shadow 0.3s;

        &:hover {
          transform: translateY(-10px);
          box-shadow: 5px 12px 10px 2px rgba(0, 0, 0, 0.2);
        }

        /* 卡片标题栏 */
        .card-header {
          width: 442px;
          height: 80px;
          border-radius: 20px;
          box-shadow: 2px 4px 4px 0px rgba(0, 0, 0, 0.09);
          display: flex;
          align-items: center;
          justify-content: center;
          margin: 20px 20px 0 20px;

          &.blue {
            background: rgba(109, 184, 255, 0.5);
          }

          &.purple {
            background: rgba(208, 157, 255, 0.5);
            margin: 27px 26px 0 26px;
          }

          &.yellow {
            background: rgba(255, 238, 0, 0.5);
            margin: 24px 23px 0 23px;
          }

          &.green {
            background: rgba(37, 212, 24, 0.5);
            margin: 26px 26px 0 26px;
          }

          /* 卡片标题 */
          .card-title {
            margin: 0;
            font-family: 'Microsoft YaHei UI', sans-serif;
            font-size: 24px;
            font-weight: 700;
            line-height: 1.5em;
            letter-spacing: 0.03em;
            color: #000000;
            text-align: center;
            white-space: nowrap;
          }
        }

        /* 卡片描述 */
        .card-desc {
          margin: 0;
          padding: 54px 36px 36px;
          font-family: 'Microsoft YaHei UI', sans-serif;
          font-size: 20px;
          font-weight: 400;
          line-height: 1.35em;
          letter-spacing: 0.03em;
          color: #474747;

          &.multi {
            padding-top: 47px;
          }
        }
      }
    }
  }
}
</style>
