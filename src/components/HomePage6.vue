<script setup>
import cardSyncBg from '../assets/HP6-card1.png'
import cardPrivacyBg from '../assets/HP6-card2.png'
import cardPanelBg from '../assets/HP6-card3.png'
</script>

<template>
  <div class="page6-wrapper">
    <section class="page6">
      <div class="page6__visual">
        <div class="page6__card page6__card--sync">
          <div
            class="page6__card-media"
            :style="{
              backgroundImage: `url(${cardSyncBg})`
            }"
          ></div>
          <span class="page6__card-caption">Multi-Platform Sync</span>
        </div>

        <div class="page6__card page6__card--privacy">
          <div
            class="page6__card-media"
            :style="{
              backgroundImage: `url(${cardPrivacyBg})`
            }"
          ></div>
          <span class="page6__card-caption">Privacy First</span>
        </div>

        <div
          class="page6__panel"
          :style="{
            '--page6-panel-img': `url(${cardPanelBg})`
          }"
        >
          <div class="page6__panel-header">
            <h3 class="page6__panel-title">Secure &amp; Accessible</h3>
            <p class="page6__panel-subtitle">
              Peace of mind with complete control over your knowledge.
            </p>
          </div>

          <ul class="page6__panel-list">
            <li class="page6__panel-item">
              <span class="page6__dot"></span>
              <div class="page6__panel-text">
                <strong>Multi-Platform Sync</strong>
                <span>Access your knowledge across devices.</span>
              </div>
            </li>
            <li class="page6__panel-item">
              <span class="page6__dot"></span>
              <div class="page6__panel-text">
                <strong>Privacy First</strong>
                <span>End-to-end encryption; your data is yours.</span>
              </div>
            </li>
            <li class="page6__panel-item">
              <span class="page6__dot"></span>
              <div class="page6__panel-text">
                <strong>Interoperable</strong>
                <span>Connect with meetings, APIs, and other platforms securely.</span>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </section>
  </div>
</template>

<style lang="scss" scoped>
.page6-wrapper {
  width: 100vw;
  background: #ffffff;
  display: flex;
  justify-content: center;
}

.page6 {
  position: relative;
  width: 100%;
  max-width: 1440px;
  min-height: 960px;
  padding: 140px 120px 160px;
  box-sizing: border-box;
  font-family: 'Microsoft YaHei UI', sans-serif;
  color: #1f1f1f;

  &__visual {
    position: relative;
    width: 100%;
    min-height: 600px;
  }

  &__card {
    position: absolute;
    width: 568px;
    height: 360px;
    border-radius: 32px;
    box-shadow: 0 24px 46px rgba(71, 90, 150, 0.18);
    background: #f6f0ff;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    overflow: hidden;
  }

  &__card--sync {
    top: -40px;
    left: 0;
    background: linear-gradient(180deg, #f6edff 0%, #f0f8ff 100%);
  }

  &__card--privacy {
    bottom: -40px;
    left: 90px;
    background: linear-gradient(180deg, #f6f6ff 0%, #eef5ff 100%);
  }

  &__card-media {
    width: 312px;
    height: 196px;
    border-radius: 24px;
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
    box-shadow: inset 0 0 0 1px rgba(255, 255, 255, 0.45);
  }

  &__card-caption {
    margin-top: 18px;
    font-size: 18px;
    font-weight: 600;
    letter-spacing: 0.04em;
    color: #2f2f2f;
  }

  &__panel {
    position: absolute;
    top: -110px;
    right: -300px;
    width: 920px;
    min-height: 760px;
    padding: 80px 96px;
    border-radius: 48px;
    background:
      linear-gradient(135deg, rgba(138, 194, 255, 0.92) 0%, rgba(214, 169, 255, 0.92) 100%),
      var(--page6-panel-img);
    background-repeat: no-repeat, no-repeat;
    background-size: cover, 520px auto;
    background-position: center, calc(100% - 32px) center;
    color: #101010;
    display: flex;
    flex-direction: column;
    gap: 40px;
    box-shadow: 0 32px 60px rgba(110, 132, 198, 0.3);
  }

  &__panel-header {
    display: flex;
    flex-direction: column;
    gap: 18px;
  }

  &__panel-title {
    margin: 0;
    font-size: 64px;
    font-weight: 700;
    line-height: 1.15;
  }

  &__panel-subtitle {
    margin: 0;
    font-size: 22px;
    font-weight: 400;
    line-height: 1.6;
    color: rgba(16, 16, 16, 0.84);
  }

  &__panel-list {
    margin: 0;
    padding: 0;
    list-style: none;
    display: flex;
    flex-direction: column;
    gap: 28px;
  }

  &__panel-item {
    display: flex;
    align-items: flex-start;
    gap: 20px;
  }

  &__dot {
    width: 16px;
    height: 16px;
    border-radius: 50%;
    background: #ffffff;
    box-shadow: 0 0 0 4px rgba(255, 255, 255, 0.35);
    margin-top: 6px;
    flex-shrink: 0;
  }

  &__panel-text {
    display: flex;
    flex-direction: column;
    gap: 8px;
    color: #111111;

    strong {
      font-size: 22px;
      font-weight: 600;
      line-height: 1.4;
    }

    span {
      font-size: 18px;
      font-weight: 400;
      line-height: 1.6;
      color: rgba(17, 17, 17, 0.82);
    }
  }

  @media (max-width: 1280px) {
    padding: 120px 60px 140px;

    &__visual {
      min-height: 880px;
    }

    &__panel {
      position: relative;
      width: 100%;
      right: auto;
      top: 220px;
      margin: 0 auto;
    }

    &__card {
      position: relative;
      width: 320px;
      height: 230px;
      margin-bottom: 40px;
    }

    &__card--sync,
    &__card--privacy {
      top: auto;
      left: auto;
      bottom: auto;
    }

    &__card-media {
      width: 264px;
      height: 168px;
    }
  }

  @media (max-width: 768px) {
    padding: 80px 24px 120px;

    &__panel {
      padding: 60px 36px;
      border-radius: 32px;
    }

    &__panel-title {
      font-size: 36px;
    }

    &__panel-subtitle {
      font-size: 18px;
    }

    &__panel-text {
      strong {
        font-size: 18px;
      }

      span {
        font-size: 16px;
      }
    }
  }
}
</style>

