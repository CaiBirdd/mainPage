<template>
  <!-- 价格页面主容器 -->
  <div class="pricing-container">
    <!-- 背景装饰元素 -->
    <div class="background-decoration"></div>
    
    <!-- 内容包装器 -->
    <div class="content-wrapper">
      <!-- 头部区域：标题和副标题 -->
      <div class="header-section">
        <div class="badge">
          <span class="star-icon">⭐</span>
          <span class="badge-text">Flexible Pricing Options</span>
        </div>
        
        <h1 class="main-title">Simple,Transparent Pricing</h1>
        <p class="subtitle">Start free, upgrade when you need more power</p>
      </div>

      <!-- 切换区域：月度/年度切换开关 这里是三个按钮-->
      <div class="toggle-section">
        <div class="toggle-wrapper">
          <!-- 月度按钮 -->
          <button
            class="toggle-button"
            :class="{ active: pricingPeriod === 'monthly' }"
            @click="togglePricing('monthly')"
          >
            Monthly
          </button>
          <!-- 切换开关：点击可切换月度/年度 -->
          <div class="toggle-switch" @click="togglePricing(pricingPeriod === 'monthly' ? 'yearly' : 'monthly')">
            <div class="toggle-handle" :class="{ 'toggle-right': pricingPeriod === 'yearly' }"></div>
          </div>
          <!-- 年度按钮 -->
          <button
            class="toggle-button"
            :class="{ active: pricingPeriod === 'yearly' }"
            @click="togglePricing('yearly')"
          >
            Yearly
          </button>
          <!-- 节省标签：始终显示在年度按钮右侧 -->
          <div class="save-badge">
            <span class="save-text">Save 16%</span>
          </div>
        </div>
      </div>

      <!-- 价格卡片容器 -->
      <div class="cards-container">
        <!-- Free 价格卡片 -->
        <div class="pricing-card free-card">
          <!-- 卡片头部：方案名称和价格 -->
          <div class="card-header">
            <h2 class="plan-name">Free</h2>
            <div class="price-section">
              <span class="price-amount">$0</span>
              <span class="price-period">/{{ pricingPeriod === 'monthly' ? 'month' : 'year' }}</span>
            </div>
          </div>
          
          <!-- 卡片描述 -->
          <p class="card-description">
            Perfect for getting started with person knowledge management.
          </p>

          <!-- 统计数据区域：用户数、满意度、增长率 -->
          <div class="stats-section">
            <div class="stat-item">
              <img src="../assets/user.png" alt="Users" class="stat-icon" />
              <div class="stat-content">
                <div class="stat-label">Users</div>
                <div class="stat-value">10k＋</div>
              </div>
            </div>
            <div class="stat-item">
              <img src="../assets/happy.png" alt="Happy" class="stat-icon" />
              <div class="stat-content">
                <div class="stat-label">Happy</div>
                <div class="stat-value">92%</div>
              </div>
            </div>
            <div class="stat-item">
              <img src="../assets/growth.png" alt="Growth" class="stat-icon" />
              <div class="stat-content">
                <div class="stat-label">Growth</div>
                <div class="stat-value">＋15%</div>
              </div>
            </div>
          </div>

          <!-- 行动按钮 -->
          <button class="cta-button free-button">
            Get Started Free
            <span class="arrow-icon">→</span>
          </button>

          <!-- 功能列表 -->
          <ul class="features-list">
            <li class="feature-item">
              <span class="check-icon">✓</span>
              <span>Up to 1,000 notes</span>
            </li>
            <li class="feature-item">
              <span class="check-icon">✓</span>
              <span>Voice recording (10 min/month)</span>
            </li>
            <li class="feature-item">
              <span class="check-icon">✓</span>
              <span>Basic AI suggestions</span>
            </li>
            <li class="feature-item">
              <span class="check-icon">✓</span>
              <span>Web & mobile apps</span>
            </li>
            <li class="feature-item">
              <span class="check-icon">✓</span>
              <span>Import from web links</span>
            </li>
            <li class="feature-item">
              <span class="check-icon">✓</span>
              <span>Community support</span>
            </li>
          </ul>
        </div>

        <!-- Pro 价格卡片 -->
        <div class="pricing-card pro-card">
          <!-- 热门标签 -->
          <div class="popular-badge">
            <span class="fire-icon">🔥</span>
            <span>Most Popular</span>
          </div>
          
          <!-- 卡片头部：方案名称和价格 -->
          <div class="card-header">
            <h2 class="plan-name">Pro</h2>
            <div class="price-section">
              <span class="price-amount">$19.9</span>
              <span class="price-period">/{{ pricingPeriod === 'monthly' ? 'month' : 'year' }}</span>
            </div>
          </div>
          
          <!-- 卡片描述 -->
          <p class="card-description">
            For power users who want unlimited knowledge management.
          </p>

          <!-- 统计数据区域：用户数、满意度、增长率 -->
          <div class="stats-section">
            <div class="stat-item">
              <img src="../assets/user-pro.png" alt="Users-pro" class="stat-icon-pro" />
              <div class="stat-content">
                <div class="stat-label">Users</div>
                <div class="stat-value">50k＋</div>
              </div>
            </div>
            <div class="stat-item">
              <img src="../assets/happy-pro.png" alt="Happy-pro" class="stat-icon-pro" />
              <div class="stat-content">
                <div class="stat-label">Happy</div>
                <div class="stat-value">98%</div>
              </div>
            </div>
            <div class="stat-item">
              <img src="../assets/growth-pro.png" alt="Growth-pro" class="stat-icon-pro" />
              <div class="stat-content">
                <div class="stat-label">Growth</div>
                <div class="stat-value">＋45%</div>
              </div>
            </div>
          </div>

          <!-- 行动按钮 -->
          <button class="cta-button pro-button">
            Get Started Free
            <span class="arrow-icon">→</span>
          </button>

          <!-- 功能列表 -->
          <ul class="features-list">
            <li class="feature-item">
              <span class="check-icon">✓</span>
              <span>Unlimited notes</span>
            </li>
            <li class="feature-item">
              <span class="check-icon">✓</span>
              <span>Unlimited voice recording</span>
            </li>
            <li class="feature-item">
              <span class="check-icon">✓</span>
              <span>Advanced AI connections</span>
            </li>
            <li class="feature-item">
              <span class="check-icon">✓</span>
              <span>Wearable device integration</span>
            </li>
            <li class="feature-item">
              <span class="check-icon">✓</span>
              <span>Import from all sources</span>
            </li>
            <li class="feature-item">
              <span class="check-icon">✓</span>
              <span>Xiaohongshu & Obsidian import</span>
            </li>
            <li class="feature-item">
              <span class="check-icon">✓</span>
              <span>Priority support</span>
            </li>
            <li class="feature-item">
              <span class="check-icon">✓</span>
              <span>Advanced search</span>
            </li>
            <li class="feature-item">
              <span class="check-icon">✓</span>
              <span>Custom themes</span>
            </li>
            <li class="feature-item">
              <span class="check-icon">✓</span>
              <span>API access</span>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

// 当前选择的定价周期：'monthly' 或 'yearly'
const pricingPeriod = ref('monthly')

// 切换定价周期
const togglePricing = (period) => {
  pricingPeriod.value = period
}
</script>

<style lang="scss" scoped>
// 价格页面主容器：全屏布局，居中显示内容
.pricing-container {
  position: relative;
  min-height: 100vh;
  padding: 48px 16px;
  display: flex;
  justify-content: center;
  align-items: center;
  background: #fafafa;
  overflow-x: hidden;

  // 背景装饰元素：模糊的圆形渐变背景，营造氛围感
  .background-decoration {
    position: absolute;
    top: -70px;
    left: -171px;
    width: 595px;
    height: 573px;
    background: linear-gradient(135deg, rgb(83, 172, 255) 0%, rgb(194, 128, 255) 100%);
    border-radius: 50%;
    filter: blur(360px);
    z-index: 0;
  }

  // 内容包装器：限制最大宽度，居中显示所有内容
  .content-wrapper {
    position: relative;
    z-index: 1;
    max-width: 1200px;
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    transform: scale(1.05);

    // 头部区域：包含徽章、主标题和副标题
    .header-section {
      text-align: center;
      margin-bottom: 32px;

      // 徽章：显示"Flexible Pricing Options"，带星星图标
      .badge {
        display: inline-flex;
        align-items: center;
        gap: 6px;
        padding: 6px 16px;
        background: #ffffff;
        border: 2px solid #ede1f8;
        border-radius: 28px;
        box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.25);
        margin-bottom: 16px;

        // 星星图标
        .star-icon {
          font-size: 18px;
        }

        // 徽章文字
        .badge-text {
          font-size: 16px;
          font-weight: 400;
          color: #d09dff;
        }
      }

      // 主标题：使用渐变文字效果（蓝色到紫色）
      .main-title {
        font-size: 51px;
        font-weight: 700;
        line-height: 1.5em;
        background: linear-gradient(90deg, rgba(109, 184, 255, 1) 0%, rgba(208, 157, 255, 1) 100%);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        background-clip: text;
        margin-bottom: 13px;
      }

      // 副标题：描述性文字
      .subtitle {
        font-size: 19px;
        font-weight: 290;
        color: #000000;
        line-height: 1.5em;
      }
    }

    // 切换区域：月度/年度选择器
    .toggle-section {
      margin-bottom: 48px;

      .toggle-wrapper {
        position: relative;
        display: inline-flex;
        align-items: center;
        gap: 8px;
        background: #ffffff;
        border: 2px solid #6db8ff;
        border-radius: 28px;
        padding: 7px 12px;
        box-shadow: 0px 3px 3px rgba(0, 0, 0, 0.25);

        // 切换按钮：Monthly 和 Yearly
        .toggle-button {
          padding: 11px 20px;
          font-size: 16px;
          font-weight: 290;
          color: #000000;
          background: transparent;
          border: none;
          border-radius: 28px;
          cursor: pointer;
          transition: all 0.3s ease;
          white-space: nowrap; //不换换行，

          // 激活状态：蓝色背景，白色文字
          &.active {
            color: #ffffff;
            background: #6db8ff;
          }
        }

        // 切换开关：中间的滑动开关
        .toggle-switch {
          position: relative;
          width: 44px;
          height: 24px;
          background: #6db8ff;
          border-radius: 12px;
          cursor: pointer;
          transition: all 0.3s ease;
          flex-shrink: 0;

          // 开关手柄：白色圆形滑块
          .toggle-handle {
            position: absolute;
            top: 3px;
            left: 3px;
            width: 18px;
            height: 18px;
            background: #ffffff;
            border-radius: 50%;
            transition: all 0.3s ease;
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);

            // 年度选中时，手柄移动到右侧
            &.toggle-right {
              left: calc(100% - 21px);
            }
          }
        }

        // 节省标签：显示年度折扣
        .save-badge {
          display: flex;
          align-items: center;
          margin-left: 4px;
          background: #ffee00;
          border-radius: 28px;
          padding: 3px 10px;
          white-space: nowrap;

          .save-text {
            font-size: 11px;
            font-weight: 290;
            color: #000000;
          }
        }
      }
    }

    // 价格卡片容器
    .cards-container {
      display: flex;
      gap: 32px;
      justify-content: center;
      align-items: flex-start;
      flex-wrap: wrap;

      // 价格卡片基础样式
      .pricing-card {
        position: relative;
        width: 414px;
        padding: 34px 31px;
        border-radius: 28px;
        box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.25);
        display: flex;
        flex-direction: column;

        // Free 卡片：白色背景
        &.free-card {
          background: #ffffff;
        }

        // Pro 卡片：紫色渐变背景
        &.pro-card {
          background: linear-gradient(137deg, rgba(109, 184, 255, 1) 1%, rgba(208, 157, 255, 1) 100%);
          color: #ffffff;
        }

        // 热门标签：Pro 卡片顶部
        .popular-badge {
          position: absolute;
          top: -16px;
          left: 50%;
          transform: translateX(-50%);
          display: flex;
          align-items: center;
          gap: 6px;
          padding: 6px 16px;
          background: linear-gradient(90deg, rgba(255, 238, 0, 1) 0%, rgba(255, 140, 0, 1) 100%);
          border-radius: 32px;
          font-size: 13px;
          font-weight: 400;
          color: #ffffff;
          z-index: 10;

          .fire-icon {
            font-size: 16px;
          }
        }

        // 卡片头部：方案名称和价格
        .card-header {
          margin-bottom: 16px;

          .plan-name {
            font-size: 29px;
            font-weight: 400;
            margin-bottom: 6px;
          }

          .price-section {
            display: flex;
            align-items: baseline;
            gap: 6px;

            // 价格金额
            .price-amount {
              font-size: 67px;
              font-weight: 400;
              line-height: 1.5em;
            }

            // 价格周期：/month 或 /year
            .price-period {
              font-size: 19px;
              font-weight: 290;
            }
          }
        }

        // 卡片描述文字
        .card-description {
          font-size: 13px;
          font-weight: 290;
          line-height: 1.5em;
          margin-bottom: 24px;
        }

        // 功能列表
        .features-list {
          list-style: none;
          margin-bottom: 24px;

          .feature-item {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-bottom: 10px;
            font-size: 12px;
            font-weight: 400;
            line-height: 1.5em;

            // 功能项前的勾选图标
            .check-icon {
              display: inline-flex;
              align-items: center;
              justify-content: center;
              width: 20px;
              height: 20px;
              background: #eaf3fb;
              border-radius: 50%;
              color: #6db8ff;
              font-weight: bold;
              flex-shrink: 0;
            }
          }
        }

        // 统计数据区域
        .stats-section {
          display: flex;
          gap: 10px;
          margin-bottom: 24px;

          .stat-item {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 5px;
            background: rgba(217, 217, 217, 0.15);
            border: 1px solid #d9d9d9;
            border-radius: 12px;

            // Free 卡片统计图标
            .stat-icon {
              width: 22px;
              height: 22px;
              object-fit: contain;
              margin-bottom: 3px;
            }

            // Pro 卡片统计图标
            .stat-icon-pro {
              width: 22px;
              height: 22px;
              object-fit: contain;
              margin-bottom: 3px;
            }

            .stat-content {
              text-align: center;

              // 统计标签：Users, Happy, Growth
              .stat-label {
                font-size: 10px;
                font-weight: 400;
                margin-bottom: 3px;
              }

              // 统计数值：10k+, 92%, +15% 等
              .stat-value {
                font-size: 12px;
                font-weight: 400;
                line-height: 1.33em;
              }
            }
          }
        }

        // 行动按钮：Get Started Free
        .cta-button {
          width: 100%;
          padding: 5px 0;
          font-size: 16px;
          font-weight: 400;
          border: none;
          border-radius: 12px;
          cursor: pointer;
          display: flex;
          align-items: center;
          justify-content: center;
          gap: 6px;
          transition: all 0.3s ease;

          // Free 卡片按钮：蓝紫渐变背景
          &.free-button {
            background: linear-gradient(90deg, rgba(109, 184, 255, 1) 0%, rgba(208, 157, 255, 1) 100%);
            color: #ffffff;

            &:hover {
              opacity: 0.9;
              transform: translateY(-2px);
            }
            margin-bottom: 22px
          }

          // Pro 卡片按钮：白色背景，紫色文字
          &.pro-button {
            background: #ffffff;
            color: rgba(109, 184, 255, 1);

            &:hover {
              opacity: 0.9;
              transform: translateY(-2px);
            }
            margin-bottom: 22px;
          }

          .arrow-icon {
            font-size: 13px;
          }
        }

        // Free card specific styles
        &.free-card {
          .plan-name,
          .price-amount,
          .price-period,
          .card-description,
          .feature-item {
            color: #000000;
          }

          .stat-label {
            color: #939393;
          }

          .stat-value {
            color: #474747;
          }
        }

        // Pro card specific styles
        &.pro-card {
          .plan-name,
          .price-amount,
          .price-period,
          .card-description,
          .feature-item {
            color: #ffffff;
          }

          .check-icon {
            background: rgba(255, 255, 255, 0.3);
            color: #ffffff;
          }

          .stat-label {
            color: #e9e9e9;
          }

          .stat-value {
            color: #ffffff;
          }
        }
      }
    }
  }
}

@media (max-width: 768px) {
  .pricing-container {
    .content-wrapper {
      .header-section {
        .main-title {
          font-size: 32px;
        }

        .subtitle {
          font-size: 16px;
        }
      }

      .cards-container {
        flex-direction: column;
        align-items: center;

        .pricing-card {
          width: 100%;
          max-width: 414px;
        }
      }

      .toggle-section {
        .toggle-wrapper {
          width: 100%;
          max-width: 322px;

          .toggle-button {
            flex: 1;
          }
        }
      }
    }
  }
}
</style>

