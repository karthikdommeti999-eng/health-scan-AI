# HealthScan AI

**Medical Disclaimer**: This application is a prototype for AI-based health risk estimation. It is not a diagnostic tool.

## Deployment Instructions

### Prerequisites
- Python 3.9+
- Node.js 18+

### Quick Start (Windows)
Double click `start_app.bat`.

### Manual Start

**Backend**:
```bash
cd backend
pip install -r requirements.txt
uvicorn app.main:app --reload
```

**Frontend**:
```bash
cd frontend
npm install
npm run dev
```

## Features
- **Arounda UI**: Floating navigation, glassmorphism, rounded aesthetics.
- **AI Scan**: Simulated/Heuristic MobileNet & MediaPipe analysis.
- **Emergency**: Hospital locator logic (mock/proxy).
- **Secure Auth**: JWT based login/register.

## Tech Stack
- Frontend: React, Tailwind CSS, Framer Motion
- Backend: FastAPI, SQLAlchemy, SQLite
- AI: MediaPipe, NumPy
