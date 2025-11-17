<script setup>
// 导入图片资源
import arrowRight from '../assets/arrow-right.svg'
import slackLogo from '../assets/slack-logo.svg'

</script>

<template>
  <div class="home">
    <!-- 顶部导航栏 -->
    <header class="header">
      <div class="inner">
        <!-- Logo 渐变背景色块 -->
        <div class="glow"></div>
        
        <!-- 品牌标识 -->
        <div class="brand">
          <div class="logo-container">
            <img :src="slackLogo" alt="" class="logo" />
          </div>
          <span class="brand-name">synapnote</span>
        </div>

        <!-- 导航菜单 -->
        <nav class="nav" aria-label="主导航">
          <router-link to="/" class="link">
            Home
          </router-link>
          <router-link to="/community" class="link">
            Community
          </router-link>
          <router-link to="/price" class="link">
            Price
          </router-link>
          <a href="#" class="link">
            Docs
          </a>
        </nav>

        <!-- 登录按钮 -->
        <button class="login" type="button">Log in</button>
      </div>
    </header>

    <!-- 主内容区 -->
    <main class="main">
      <!-- 左侧内容区 -->
      <section class="content">
        <!-- 主标题 -->
        <h1 class="title">
          Passive Generative<br />
          Personal Knowledge<br />
          from real Life
        </h1>

        <!-- 副标题 -->
        <p class="subtitle">
          Experience more. Remember effortlessly.<br />
          Let your life's moments become insights that guide your growth.
        </p>

        <!-- 行动按钮组 -->
        <div class="actions">
          <button class="cta primary" type="button">
            <span>Get Start</span>
            <img :src="arrowRight" alt="" aria-hidden="true" class="arrow" />
          </button>

          <button class="cta secondary" type="button">
            Join Discord Community
          </button>
        </div>
      </section>

      <!-- 右侧视觉区域 -->
      <div class="visual"></div>
    </main>
  </div>
</template>

<style scoped lang="scss">
// 主容器 - 整体尺寸按95%缩放 (1440px * 0.95 = 1368px)
.home {
  position: relative;
  width: 100%;
  max-width: 1368px;
  min-height: 973px;
  margin: 0 auto;
  color: #000;

  // 顶部导航栏 - 横跨全屏宽度
  .header {
    position: absolute;
    left: 50%;
    transform: translateX(-50%);
    top: 0;
    width: 100vw;
    height: 93px;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 0;
    background: #fcfafe;
    z-index: 10;

    // 导航栏内容容器 - 限制最大宽度并居中
    .inner {
      position: relative;
      width: 100%;
      max-width: 1368px;
      height: 93px;
      margin: 0 auto;
    }

    // Logo 渐变背景色块
    .glow {
      position: absolute;
      left: 44px;
      top: 29px;
      width: 39px;
      height: 39px;
      border-radius: 10px;
      background: linear-gradient(135deg, rgb(134, 197, 255) 0%, rgb(228, 198, 255) 100%);
      z-index: 1;
    }

    // 品牌标识区域
    .brand {
      position: absolute;
      left: 95px;
      top: 22px;
      display: flex;
      align-items: center;
      gap: 13px;
      height: 44px;

      // Logo 图标容器 - 叠加在渐变色块上方
      .logo-container {
        position: absolute;
        left: -45px;
        top: 14px;
        width: 26px;
        height: 26px;
        z-index: 3;
      }

      .logo {
        width: 26px;
        height: 26px;
        display: block;
      }

      // 品牌名称文字
      .brand-name {
        font-family: 'Microsoft YaHei UI', sans-serif;
        font-size: 34px;
        font-weight: 700;
        line-height: 44px;
        color: #000;
        text-transform: lowercase;
      }
    }

    // 导航菜单
    .nav {
      position: absolute;
      left: 664px;
      top: 37px;
      display: flex;
      align-items: center;
      gap: 42px;

      // 导航链接
      .link {
        display: inline-block;
        font-family: 'Microsoft YaHei UI', sans-serif;
        font-size: 23px;
        font-weight: 400;
        line-height: 29px;
        color: rgba(82, 82, 82, 0.8);
        text-decoration: none;
        transition: color 0.3s, transform 0.3s;

        &:hover {
          color: #000000;
          transform: scale(1.1);
        }
      }
    }

    // 登录按钮
    .login {
      position: absolute;
      left: 1117px;
      top: 30px;
      width: 155px;
      height: 43px;
      border: none;
      border-radius: 24px;
      background: #000;
      font-family: 'Microsoft YaHei UI', sans-serif;
      font-size: 23px;
      font-weight: 400;
      line-height: 29px;
      color: #fcfafe;
      cursor: pointer;
      transition: opacity 0.3s;

      &:hover {
        opacity: 0.55;
      }
    }
  }

  // 主内容区域
  .main {
    position: absolute;
    left: 0;
    top: 68px;
    width: 100%;
    max-width: 1368px;
    min-height: 880px;

    // 左侧内容区 - 与 header 左对齐
    .content {
      position: absolute;
      left: 0;
      top: 197px;
      z-index: 2;

      // 主标题
      .title {
        margin: 0;
        width: 740px;
        height: 268px;
        font-family: 'Microsoft YaHei UI', sans-serif;
        font-size: 75px;
        font-weight: 400;
        line-height: 86px;
        letter-spacing: -0.03em;
        color: #000;
        position: relative;
        z-index: 2;
      }

      // 副标题
      .subtitle {
        position: absolute;
        left: 0;
        top: 363px;
        margin: 0;
        width: 760px;
        height: 61px;
        font-family: 'Microsoft YaHei UI', sans-serif;
        font-size: 23px;
        font-weight: 400;
        line-height: 31px;
        color: #000;
      }

      // 行动按钮组
      .actions {
        position: absolute;
        left: 0;
        top: 464px;
        display: flex;
        gap: 35px;

        // 按钮基础样式
        .cta {
          height: 67px;
          border-radius: 33px;
          display: inline-flex;
          align-items: center;
          justify-content: center;
          gap: 6px;
          font-family: 'Microsoft YaHei UI', sans-serif;
          font-size: 27px;
          font-weight: 400;
          line-height: 35px;
          cursor: pointer;
          transition: transform 0.3s, box-shadow 0.3s;

          &:hover {
            transform: translateY(-3px);
          }

          // 主要按钮 - 黑色背景
          &.primary {
            min-width: 200px;
            border: 1.5px solid #474747;
            background: rgba(0, 0, 0, 0.8);
            color: #fff;
            padding: 0 43px;
            white-space: nowrap;

            &:hover {
              box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
            }
          }

          // 次要按钮 - 透明背景
          &.secondary {
            min-width: 320px;
            border: 1.5px solid #000;
            background: transparent;
            color: #000;
            padding: 0 43px;
            white-space: nowrap;

            &:hover {
              box-shadow: 0 8px 16px rgba(0, 0, 0, 0.08);
            }
          }

          // 箭头图标
          .arrow {
            width: 31px;
            height: 31px;
            margin-left: 6px;
          }
        }
      }
    }

    // 右侧视觉区域 - 贴屏幕右边
    .visual {
      position: absolute;
      left: auto;
      right: -66px;
      top: 186px;
      width: 782px;
      height: 575px;
      border-radius: 10px 0 0 143px;
      background-image: url('../assets/hero-background.png');
      background-size: cover;
      background-position: center;
      z-index: 1;
    }
  }
}

// 响应式布局 - 小于1368px时切换为弹性布局
@media (max-width: 1368px) {
  .home {
    width: 100%;
    height: auto;
    min-height: 100vh;

    .header {
      width: 100%;
      position: relative;

      .brand {
        position: relative;
        left: 54px;

        .logo-container {
          left: -47px;
        }
      }

      .nav {
        position: relative;
        left: auto;
        top: auto;
        margin: 0 auto;
      }

      .login {
        position: relative;
        left: auto;
        top: auto;
        margin-left: auto;
        margin-right: 20px;
      }
    }

    .main {
      position: relative;
      width: 100%;
      height: auto;
      display: flex;
      flex-direction: column;
      padding: 40px 20px;

      .content {
        position: relative;
        left: auto;
        top: auto;
        width: 100%;
        max-width: 100%;
        text-align: center;

        .title {
          width: 100%;
          height: auto;
          font-size: clamp(32px, 5vw, 64px);
          line-height: 1.36;
        }

        .subtitle {
          margin-top: 24px;
          width: 100%;
          height: auto;
          max-width: 600px;
          margin-left: auto;
          margin-right: auto;
          font-size: clamp(18px, 2.5vw, 24px);
        }

        .actions {
          margin-top: 32px;
          justify-content: center;
          flex-wrap: wrap;

          .cta {
            &.primary {
              width: auto;
              min-width: 200px;
            }

            &.secondary {
              width: auto;
              min-width: 300px;
            }
          }
        }
      }

      .visual {
        position: relative;
        left: auto;
        top: auto;
        width: 100%;
        max-width: 600px;
        height: 450px;
        margin: 40px auto 0;
        border-radius: 20px;
      }
    }
  }
}

// 移动端适配 - 小于768px
@media (max-width: 768px) {
  .home {
    .header {
      .glow {
        left: 20px;
        top: 20px;
        width: 32px;
        height: 32px;
      }

      .brand {
        left: 28px;
        font-size: 28px;

        .logo-container {
          left: -36px;
          width: 22px;
          height: 22px;
        }

        .logo {
          width: 22px;
          height: 22px;
        }
      }

      .nav {
        gap: 16px;
        font-size: 18px;
        flex-wrap: wrap;
        justify-content: center;
      }

      .login {
        font-size: 18px;
        width: 120px;
        height: 40px;
      }
    }

    .main {
      .content {
        .actions {
          .cta {
            font-size: 20px;
            height: 60px;

            &.primary,
            &.secondary {
              width: 100%;
              max-width: 400px;
            }
          }
        }
      }

      .visual {
        height: 350px;
        border-radius: 16px;
      }
    }
  }
}
</style> 
