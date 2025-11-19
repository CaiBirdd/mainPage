<script setup>
import { ref, computed } from 'vue'
// 导入所有卡片图片资源
import consultantsImg from '../assets/HP7-consultants.png'
import managersImg from '../assets/HP7-managers.png'
import lawyersImg from '../assets/HP7-lawyers.png'
import teachersImg from '../assets/HP7-teachers.png'
import studentsImg from '../assets/HP7-students.png'
import investorsImg from '../assets/HP7-investors.png'

// 当前显示的卡片索引（从 0 开始）
const currentIndex = ref(0)

// 卡片数据数组，包含所有专业角色的信息
const cards = [
  {
    id: 1,
    title: 'Salespeople/Consultants',
    description: 'Record client interviews and negotiations seamlessly.',
    borderColor: '#6DB8FF', // 蓝色边框
    image: consultantsImg
  },
  {
    id: 2,
    title: 'Managers',
    description: 'Hold meetings and one-on-one sessions efficiently.',
    borderColor: '#D09DFF', // 紫色边框
    image: managersImg
  },
  {
    id: 3,
    title: 'Lawyers',
    description: 'Conduct client meetings and evidence collection.',
    borderColor: '#6DB8FF', // 蓝色边框
    image: lawyersImg
  },
  {
    id: 4,
    title: 'Teachers/Professors',
    description: 'Capture spontaneous knowledge from lectures or meetings.',
    borderColor: '#D09DFF', // 紫色边框
    image: teachersImg
  },
  {
    id: 5,
    title: 'Students',
    description: 'Record class discussions without missing details.',
    borderColor: '#6DB8FF', // 蓝色边框
    image: studentsImg
  },
  {
    id: 6,
    title: 'Investors',
    description: 'Manage vast amounts of information from meetings and research.',
    borderColor: '#6DB8FF', // 蓝色边框
    image: investorsImg
  }
]

// 卡片总数
const totalCards = cards.length
// 同时可见的卡片数量（中间一张 + 左右各一张）
const visibleCards = 3
// 最大索引值（最后一张卡片的索引）
const maxIndex = totalCards - 1

// 计算进度条百分比（当前索引 + 1 除以总数）
const progress = computed(() => {
  return ((currentIndex.value + 1) / totalCards) * 100
})

// 切换到上一张卡片
const goToPrev = () => {
  if (currentIndex.value > 0) {
    currentIndex.value--
  } else {
    // 如果已经是第一张，循环到最后一张
    currentIndex.value = maxIndex
  }
}

// 切换到下一张卡片
const goToNext = () => {
  if (currentIndex.value < maxIndex) {
    currentIndex.value++
  } else {
    // 如果已经是最后一张，循环到第一张
    currentIndex.value = 0
  }
}

// 根据卡片索引计算样式（位置、透明度、缩放等）
// @param {number} index - 卡片的索引
// @returns {object} 包含 transform、opacity、zIndex 等样式属性
const getCardStyle = (index) => {
  // 计算当前卡片相对于中心卡片的偏移量
  let offset = index - currentIndex.value

  // 处理循环显示：如果偏移量超过一半，从另一侧显示（实现无缝循环效果）
  if (Math.abs(offset) > totalCards / 2) {
    if (offset > 0) {
      offset = offset - totalCards
    } else {
      offset = offset + totalCards
    }
  }

  // 计算绝对偏移量
  const absOffset = Math.abs(offset)
  // 判断卡片是否可见（只显示中间卡片及其左右各一张）
  const isVisible = absOffset <= 1

  return {
    // 水平位移：每张卡片间距 420px，中心卡片不缩放，两侧卡片缩小到 0.9
    transform: `translateX(${offset * 420}px) scale(${absOffset === 0 ? 1 : 0.9})`,
    // 透明度：中心卡片完全不透明，两侧卡片 0.7，其他卡片完全透明
    opacity: isVisible ? (absOffset === 0 ? 1 : 0.7) : 0,
    // 层级：中心卡片最高，两侧卡片依次降低
    zIndex: isVisible ? (visibleCards - absOffset) : 0,
    // 指针事件：只有可见的卡片才能交互
    pointerEvents: isVisible ? 'auto' : 'none'
  }
}

</script>

<template>
  <!-- 页面外层容器 -->
  <div class="wrapper">
    <section class="container">
      <!-- 主标题：Who Benefits from Synapnote? -->
      <h2 class="main-title">
        Who <span class="highlight">Benefits</span> from Synapnote?
      </h2>
      <!-- 副标题：描述文字 -->
      <p class="subtitle">
        Professionals across industries are transforming how they capture and use knowledge
      </p>

      <!-- 轮播容器 -->
      <div class="carousel-box">
        <!-- 轮播包装器：用于居中和对齐 -->
        <div class="carousel-wrap">
          <!-- 轮播主体：包含所有卡片 -->
          <div class="carousel">
            <!-- 遍历渲染所有卡片 -->
            <div v-for="(card, index) in cards" :key="card.id" class="card-item" :style="{
              ...getCardStyle(index), // 动态计算卡片位置和样式
              borderColor: card.borderColor // 设置卡片边框颜色
            }">
              <!-- 卡片背景图片：铺满整个卡片 -->
              <div class="card-img" :style="{ backgroundImage: `url(${card.image})` }">
              </div>
              <!-- 卡片文字遮罩层：底部渐变遮罩，用于显示白色文字 -->
              <div class="overlay">
                <h3 class="card-title">{{ card.title }}</h3>
                <p class="card-desc">{{ card.description }}</p>
              </div>
            </div>
          </div>
        </div>

        <!-- 导航按钮组：左右切换箭头 -->
        <div class="nav-box">
          <!-- 上一张按钮 -->
          <button class="nav-btn prev" @click="goToPrev" aria-label="Previous">
            <svg width="30" height="30" viewBox="0 0 30 30" fill="none">
              <path d="M18.75 7.5L11.25 15L18.75 22.5" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                stroke-linejoin="round" />
            </svg>
          </button>
          <!-- 下一张按钮 -->
          <button class="nav-btn next" @click="goToNext" aria-label="Next">
            <svg width="30" height="30" viewBox="0 0 30 30" fill="none">
              <path d="M11.25 7.5L18.75 15L11.25 22.5" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                stroke-linejoin="round" />
            </svg>
          </button>
        </div>

        <!-- 进度条：显示当前轮播进度 -->
        <div class="progress-box">
          <div class="progress-bar" :style="{ width: `${progress}%` }">
        </div>
        </div>
      </div>
    </section>
  </div>
</template>

<style lang="scss" scoped>
// 页面外层容器：全屏宽度，白色背景，内容居中
.wrapper {
  width: 100vw;
  background: #ffffff;
  display: flex;
  justify-content: center;

  // 主页面容器
  .container {
    position: relative;
    width: 100%;
    max-width: 1440px; // 最大宽度限制
    min-height: 1024px; // 最小高度
    padding: 94px 113px 160px; // 上下左右内边距
    box-sizing: border-box;
    font-family: 'Microsoft YaHei UI', sans-serif;
    color: #000000;
    display: flex;
    flex-direction: column;
    align-items: center; // 内容水平居中

    // 主标题样式
    .main-title {
      margin: 0 0 14px;
      font-size: 64px;
      font-weight: 700;
      line-height: 1.27;
      text-align: center;
      color: #000000;

      // "Benefits" 文字高亮为蓝色
      .highlight {
        color: #6DB8FF;
      }
    }

    // 副标题样式
    .subtitle {
      margin: 0 0 20px;
      font-size: 24px;
      font-weight: 400;
      line-height: 1.27;
      text-align: center;
      color: #474747;
      max-width: 986px; // 限制最大宽度，避免文字过长
    }

    // 轮播容器：固定高度，隐藏溢出内容
    .carousel-box {
      position: relative;
      width: 100%;
      max-width: 1194px;
      height: 696px;
      overflow: hidden; // 隐藏超出容器的卡片

      // 轮播包装器：用于居中和对齐卡片
      .carousel-wrap {
        position: relative;
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;

        // 轮播主体：包含所有卡片的容器
        .carousel {
          position: relative;
          width: 100%;
          height: 100%;
          display: flex;
          align-items: center;
          justify-content: center;

          // 卡片样式：绝对定位，居中显示
          .card-item {
            position: absolute;
            width: 386px;
            height: 450px;
            border-radius: 41px; // 圆角
            border: 3px solid; // 边框（颜色由动态样式设置）
            background: #ffffff;
            box-shadow: 4px 4px 4px rgba(0, 0, 0, 0.21); // 阴影效果
            left: 50%;
            top: 50%;
            margin-left: -193px; // 向左偏移卡片宽度的一半，实现居中
            margin-top: -300px; // 向上偏移，调整垂直位置
            // 平滑过渡动画
            transition: transform 0.6s cubic-bezier(0.4, 0, 0.2, 1),
              opacity 0.6s ease,
              z-index 0.6s ease;
            cursor: pointer;
            overflow: hidden; // 隐藏溢出内容

            // 悬停效果：增强阴影
            &:hover {
              box-shadow: 6px 8px 12px rgba(0, 0, 0, 0.3);
            }

            // 卡片背景图片：铺满整个卡片
            .card-img {
              position: absolute;
              top: 0;
              left: 0;
              width: 100%;
              height: 100%;
              border-radius: 41px;
              background-size: cover; // 覆盖整个区域
              background-position: center; // 居中显示
              background-repeat: no-repeat;
            }

            // 卡片文字遮罩层：底部渐变遮罩，确保白色文字可读性
            .overlay {
              position: absolute;
              bottom: 0;
              left: 0;
              width: 100%;
              padding: 24px 33px; // 内边距
              // 从底部到顶部的渐变：黑色半透明到透明
              background: linear-gradient(to top, rgba(0, 0, 0, 0.7) 0%, rgba(0, 0, 0, 0.4) 50%, transparent 100%);
              border-radius: 0 0 41px 41px; // 底部圆角
              z-index: 1; // 确保文字在图片上方

              // 卡片标题：白色文字，居中显示
              .card-title {
                margin: 0 0 8px;
                font-size: 27px;
                font-weight: 700;
                line-height: 1.27;
                text-align: center;
                color: #ffffff;
              }

              // 卡片描述：白色文字，左对齐
              .card-desc {
                margin: 0 5px;
                font-size: 20px;
                font-weight: 290;
                line-height: 1.07;
                text-align: left;
                color: #ffffff;
              }
            }
          }
        }
      }

      // 导航按钮组：左右切换按钮容器
      .nav-box {
        position: absolute;
        bottom: 80px; // 距离底部 80px
        left: 50%;
        transform: translateX(-50%); // 水平居中
        display: flex;
        gap: 48px; // 两个按钮之间的间距
        z-index: 10; // 确保按钮在卡片上方

        // 导航按钮基础样式
        .nav-btn {
          width: 79px;
          height: 79px;
          border-radius: 50%; // 圆形按钮
          border: none;
          // 渐变背景：从紫色到蓝色
          background: linear-gradient(270deg, rgba(208, 157, 255, 1) 0%, rgba(109, 184, 255, 1) 100%);
          color: #ffffff;
          cursor: pointer;
          display: flex;
          align-items: center;
          justify-content: center;
          // 过渡动画
          transition: transform 0.3s ease, box-shadow 0.3s ease;
          box-shadow: 0 4px 12px rgba(109, 184, 255, 0.3);

          // 悬停效果：放大并增强阴影
          &:hover {
            transform: scale(1.1);
            box-shadow: 0 6px 16px rgba(109, 184, 255, 0.4);
          }

          // 点击效果：缩小
          &:active {
            transform: scale(0.95);
          }

          // SVG 图标大小
          svg {
            width: 30px;
            height: 30px;
          }

          // 上一张按钮：渐变方向相反
          &.prev {
            background: linear-gradient(90deg, rgb(211, 234, 255) 0%, rgb(227, 196, 255) 100%);
          }
        }
      }

      // 进度条容器
      .progress-box {
        position: absolute;
        bottom: 45px; // 距离底部 45px
        left: 50%;
        transform: translateX(-50%); // 水平居中
        width: 313px;
        height: 10px;
        background: rgba(109, 184, 255, 0.2); // 半透明蓝色背景
        border-radius: 5px;
        overflow: hidden;
        z-index: 10; // 确保在卡片上方

        // 进度条填充：渐变蓝色，宽度动态变化
        .progress-bar {
          height: 100%;
          // 渐变背景：从蓝色到紫色
          background: linear-gradient(90deg, rgba(109, 184, 255, 1) 0%, rgba(208, 157, 255, 1) 100%);
          border-radius: 5px;
          // 宽度变化时的平滑过渡
          transition: width 0.5s cubic-bezier(0.4, 0, 0.2, 1);
        }
      }
    }
  }
}

// 中等屏幕响应式布局（平板设备，宽度 ≤ 1280px）
@media (max-width: 1280px) {
  .wrapper .container {
    padding: 80px 60px 120px; // 减少内边距

    .main-title {
      font-size: 48px; // 缩小标题字体
    }

    .subtitle {
      font-size: 20px; // 缩小副标题字体
      margin-bottom: 60px;
    }

    .carousel-box {
      height: 600px; // 降低轮播容器高度

      // 缩小卡片尺寸
      .card-item {
        width: 280px;
        height: 320px;
        margin-left: -140px; // 调整居中偏移
        margin-top: -160px;

        // 减少遮罩层内边距
        .overlay {
          padding: 20px 24px;

          .card-title {
            font-size: 28px; // 缩小标题字体
          }

          .card-desc {
            font-size: 18px; // 缩小描述字体
          }
        }
      }
    }
  }
}

// 小屏幕响应式布局（移动设备，宽度 ≤ 768px）
@media (max-width: 768px) {
  .wrapper .container {
    padding: 60px 24px 100px; // 进一步减少内边距

    .main-title {
      font-size: 36px; // 进一步缩小标题字体
    }

    .subtitle {
      font-size: 18px; // 进一步缩小副标题字体
      margin-bottom: 40px;
    }

    .carousel-box {
      height: 500px; // 进一步降低轮播容器高度

      // 进一步缩小卡片尺寸
      .card-item {
        width: 240px;
        height: 280px;
        margin-left: -120px; // 调整居中偏移
        margin-top: -140px;

        // 进一步减少遮罩层内边距
        .overlay {
          padding: 16px 20px;

          .card-title {
            font-size: 24px; // 进一步缩小标题字体
          }

          .card-desc {
            font-size: 16px; // 进一步缩小描述字体
          }
        }
      }

      // 调整导航按钮位置和大小
      .nav-box {
        bottom: 100px; // 调整底部距离
        gap: 32px; // 减少按钮间距

        .nav-btn {
          width: 60px; // 缩小按钮尺寸
          height: 60px;

          svg {
            width: 24px; // 缩小图标尺寸
            height: 24px;
          }
        }
      }

      // 调整进度条位置和宽度
      .progress-box {
        width: 240px; // 缩小进度条宽度
        bottom: 80px; // 调整底部距离
      }
    }
  }
}
</style>
