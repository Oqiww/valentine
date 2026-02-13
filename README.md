# 💝 Valentine's Day Interactive Game - Deployment Guide

## 🎮 Game Overview

Sebuah game platformer interaktif bertema Valentine dengan 6 pintu yang merepresentasikan tahun 2021-2026. Setiap pintu berisi pesan romantis khusus untuk pacarmu!

## 📁 Files yang Dibutuhkan

Pastikan semua file berikut ada dalam satu folder:

```
valentine-game/
├── valentine-game.html
├── valentine_background_1770995411136.png
├── door_2021_1770995427128.png
├── door_2022_1770995444216.png
├── door_2023_1770995460386.png
└── door_2024_1770995477908.png
```

## 🎯 Cara Main

### Desktop/Laptop:
- **Arrow Keys** atau **WASD** untuk bergerak kiri/kanan
- **Spacebar** untuk lompat
- Hindari kura-kura hijau (musuh)
- Sentuh pintu untuk membuka pesan romantis!

### iPad/Mobile:
- **Virtual Joystick** (kiri bawah) untuk bergerak
- **Tombol JUMP** (kanan bawah) untuk lompat
- Game sudah dioptimasi untuk iPad Gen 10!

## 🚀 Cara Deploy & Share

### Option 1: GitHub Pages (RECOMMENDED - GRATIS!)

1. **Buat Repository GitHub:**
   ```bash
   cd C:\Codingzzzzz\hewwo
   git init
   git add .
   git commit -m "Valentine's Day Game for my love 💝"
   ```

2. **Push ke GitHub:**
   - Buat repository baru di github.com (nama: valentine-game)
   - Jalankan:
   ```bash
   git remote add origin https://github.com/USERNAME/valentine-game.git
   git branch -M main
   git push -u origin main
   ```

3. **Enable GitHub Pages:**
   - Buka Settings > Pages
   - Source: Deploy from branch
   - Branch: main / (root)
   - Save

4. **Link akan jadi:**
   ```
   https://USERNAME.github.io/valentine-game/valentine-game.html
   ```

### Option 2: Netlify (SUPER MUDAH - GRATIS!)

1. Buka [netlify.com](https://netlify.com)
2. Sign up/Login
3. Drag & drop folder `hewwo` ke Netlify
4. Netlify akan auto-generate link seperti: `https://random-name.netlify.app/valentine-game.html`
5. Bisa custom domain jika mau!

### Option 3: Vercel (GRATIS!)

1. Buka [vercel.com](https://vercel.com)
2. Sign up/Login
3. Import project dari GitHub atau upload folder
4. Deploy!
5. Link: `https://project-name.vercel.app/valentine-game.html`

### Option 4: Local Share (Langsung Test)

Buka file `valentine-game.html` langsung di browser:
```
file:///C:/Codingzzzzz/hewwo/valentine-game.html
```

> ⚠️ **Note:** Untuk share ke pacar, gunakan Option 1, 2, atau 3 agar bisa dibuka dari mana saja!

## 💌 Customize Pesan

Untuk mengubah pesan di setiap pintu, edit file `valentine-game.html` bagian `yearMessages`:

```javascript
const yearMessages = {
    2021: "💝 2021 - Awal Perjalanan Kita\n\n[TULIS PESAN KAMU DISINI]",
    2022: "💝 2022 - [JUDUL]\n\n[PESAN KAMU]",
    // dst...
};
```

## 🎨 Features

✅ 6 pintu romantis (2021-2026)
✅ Gameplay platformer ala Mario Bros
✅ Musuh kura-kura yang berpatroli
✅ Kontrol keyboard & touch (iPad optimized)
✅ Animasi smooth & efek visual cantik
✅ Modal popup untuk pesan romantis
✅ Loading screen dengan animasi
✅ Floating hearts background
✅ Responsive design
✅ Game over & restart system

## 📱 Optimasi iPad Gen 10

Game sudah dioptimasi untuk:
- Resolusi: 2360 x 1640 pixels
- Touch controls dengan virtual joystick
- Responsive canvas sizing
- Smooth 60 FPS gameplay

## 🎁 Tips

1. **Test dulu** sebelum share ke pacar!
2. **Customize pesan** sesuai kenangan kalian
3. **Screenshot** game untuk preview
4. **Share link** dengan pesan romantis tambahan
5. **Bisa dimainkan kapan saja** - link permanent!

## 💝 Selamat Valentine's Day!

Semoga pacarmu suka! Game ini dibuat dengan cinta (dan AI) khusus untukmu 💕

---

**Created with ❤️ using HTML5 Canvas & JavaScript**
