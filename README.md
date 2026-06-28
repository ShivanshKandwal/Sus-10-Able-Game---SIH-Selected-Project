# 🌿 Sus-10-able — Gamified Environmental Education Platform

> **"We don't just teach sustainability; we make students live it."**
>
> Smart India Hackathon 2025 | Problem Statement ID: 25009 | Theme: Smart Education
> **Team: Jatayu Fan Club**

---

![GIF](https://raw.githubusercontent.com/ShivanshKandwal/Sus-10-Able-Game---SIH-Selected-Project/main/Images_susgame/small%20gif.gif)
[![GitHub Repo](https://img.shields.io/badge/GitHub-Sus--10--Able--Game-black?style=for-the-badge&logo=github)](https://github.com/ShivanshKandwal/Sus-10-Able-Game---SIH-Selected-Project)
[![Latest Release](https://img.shields.io/badge/⬇%20Download-Latest%20Build-blue?style=for-the-badge&logo=github)](https://github.com/ShivanshKandwal/Sus-10-Able-Game---SIH-Selected-Project/releases/latest)
[![Level 1 Gameplay](https://img.shields.io/badge/▶%20Level%201-YouTube-red?style=for-the-badge&logo=youtube)](https://youtu.be/2bvQfSeNm7Q)
[![Level 2 Gameplay](https://img.shields.io/badge/▶%20Level%202-YouTube-red?style=for-the-badge&logo=youtube)](https://youtu.be/6qXBbRSTekk)

---

## Table of Contents

- [Problem Statement](#problem-statement)
- [Our Solution — The Sus-10-able Game](#our-solution--the-sus-10-able-game)
- [Core Features](#core-features)
  - [The Platformer Game](#1-the-platformer-game)
  - [Gamified Quests & Mini-Games](#2-gamified-quests--mini-games)
  - [EcoScan](#3-ecoscan)
  - [E-Learning Hub](#4-e-learning-hub)
- [Technical Architecture](#technical-architecture)
  - [Frontend](#frontend)
  - [Game Engine — Godot](#game-engine--godot)
  - [EcoScan Backend Pipeline](#ecoscan-backend-pipeline)
- [Tech Stack](#tech-stack)
- [Sustainability Score Formula](#sustainability-score-formula)
- [Feasibility & Viability](#feasibility--viability)
- [Impact & Benefits](#impact--benefits)
- [SWOT Analysis](#swot-analysis)
- [Setup & Installation](#setup--installation)
- [Project Structure](#project-structure)
- [References](#references)
- [Team](#team)

---

## Problem Statement

| Field | Detail |
|---|---|
| **Problem Statement ID** | 25009 |
| **Title** | Gamified Environmental Education Platform for Schools and Colleges |
| **Theme** | Smart Education |
| **Category** | Software |
| **Event** | Smart India Hackathon 2025 |
| **Team Name** | Jatayu Fan Club |

Traditional environmental education suffers from three fundamental problems:

- **Passive delivery** — students read or watch, but never *do*
- **Poor retention** — rote-learned facts about sustainability fade within weeks
- **Zero real-world connection** — no bridge between classroom content and everyday behavior

There is a critical need for an integrated platform that transforms environmental learning from a passive experience into an active, measurable, and habit-forming practice.

---

## Our Solution — The Sus-10-able Game

**Sus-10-able** is a full-stack, gamified environmental education ecosystem built to make sustainability tangible for school and college students. It combines a **2D platformer adventure**, **side-quest mini-games**, a **real-world object scanner (EcoScan)**, and an **e-learning hub** — all working together in a single, cohesive platform.

```
Players start the adventure → collect plants, conserve energy,
tackle sustainability challenges → unlock mini-games between levels
→ scan real-world objects with EcoScan → earn rewards, streaks,
leaderboard spots → return to the game with new real-world knowledge
```
![Solution](https://raw.githubusercontent.com/ShivanshKandwal/Sus-10-Able-Game---SIH-Selected-Project/main/Images_susgame/solution.png)

<!-- OVERALL PLATFORM OVERVIEW SCREENSHOT / MIND MAP -->
<!-- Screenshot of the proposed solution mind map from slide 2 -->
<!-- ![Platform Overview](./assets/platform-overview.png) -->

---

## Core Features

### 1. The Platformer Game

The heart of Sus-10-able — a **Godot-powered 2D pixel-art adventure** where the student plays as a character navigating a world filled with real environmental challenges.

**Gameplay Mechanics:**
- **Collect Plants** — biodiversity collection missions that teach plant species and their ecological roles
- **Turn Off Appliances** — energy conservation puzzles where players must identify and switch off unnecessary electrical devices
- **Overcome Obstacles** — sustainability-themed challenges that simulate real-world environmental problems

> The platformer is exported for the web via Godot's HTML5 export, making it instantly accessible from any browser — no installation required.

<!-- PLATFORMER GAME SCREENSHOT -->
![Platformer](https://raw.githubusercontent.com/ShivanshKandwal/Sus-10-Able-Game---SIH-Selected-Project/main/Images_susgame/platformer.png)

![Platformer 2](https://raw.githubusercontent.com/ShivanshKandwal/Sus-10-Able-Game---SIH-Selected-Project/main/Images_susgame/platformer%202.png)


**Gameplay Videos:**
- [Level 1 Walkthrough](https://youtu.be/2bvQfSeNm7Q)
- [Level 2 Walkthrough](https://youtu.be/6qXBbRSTekk)

---

### 2. Gamified Quests & Mini-Games

Between platformer levels, players unlock **interactive mini-games** that reinforce environmental concepts in a fun, memorable way. These act as "side quests" that complement the main story.

| Mini-Game | Concept Reinforced |
|---|---|
| **Eco Word Search** | Environmental vocabulary and terminology |
| **Climate Change Crossword** | Climate science concepts and definitions |
| **Hangman** | Species names, eco-terms |
| **Quizzes** | SDG facts, sustainability knowledge checks |

![Mini Games](https://raw.githubusercontent.com/ShivanshKandwal/Sus-10-Able-Game---SIH-Selected-Project/main/Images_susgame/mini%20games.png)


**Progress System:**
- Rewards and badges for completing quests
- Streaks for daily engagement
- Leaderboard rankings across individual, classroom, and national levels

---

### 3. EcoScan

EcoScan is the **bridge between virtual gameplay and real-world action**. Using their device's camera, players scan everyday objects — plastic bottles, bags, appliances, food packaging — and receive an instant **sustainability report** with:

- An **Eco-Rating score** (0–100).
- **Pros and Cons** of the material
- **Eco-friendly alternatives**
- **Action Tips** for responsible disposal or reduced usage

![EcoScan](https://raw.githubusercontent.com/ShivanshKandwal/Sus-10-Able-Game---SIH-Selected-Project/main/Images_susgame/ecoscan.png)

**How EcoScan Works — 4-Step Pipeline:**

```
Step 1 — Image Submission
Player uses the React/TypeScript frontend to photograph an object.
The image is sent to the Flask backend for analysis.

Step 2 — Production Analysis
The Python Flask backend (hosted on Render) calls the Google
Gemini API to identify the object, calculate a score, and
generate structured sustainability feedback.

Step 3 — Template-Based Generation
A detailed sustainability report (score + pros + cons +
alternatives) is generated by the backend and displayed
in the React UI.

Step 4 — Local Development (GPU Mode)
For GPU-based deployments, a Gemma-3-4B model is served
locally via Ollama in a Docker container and exposed
publicly with an Ngrok tunnel, bypassing external API calls.
```

**Three Modes of EcoScan Operation:**

| Mode | Description | Best For |
|---|---|---|
| **Local Vision LLM** | Gemma model via Ollama + Docker | Development, privacy-first, heavy GPU usage |
| **Centralized Gemini API** | Google Gemini API via Render | Secure, scalable, consistent production use |
| **Direct Gemini API** | User's own API key | Quick prototyping, power-users |

---

### 4. E-Learning Hub

A structured, curriculum-aligned learning portal with three content types — all sourced from expert materials and UN/scientific documents (via NotebookLM) and visualized as mind maps (via Napkin.ai).

| Content Type | Description |
|---|---|
| **Videos** | Expert-curated video modules on Water Conservation, Forest Conservation, Energy Conservation |
| **Mind Maps** | Napkin.ai-generated interconnected concept maps derived from UN documents and scientific reports |
| **Notes** | NotebookLM-synthesized study notes, factually grounded in reliable sources |

**Module Tracks:**
- Water Conservation (Beginner — 15 min)
- Forest Conservation (Intermediate — 12 min)
- Energy Conservation (Intermediate — 20 min)

Each module tracks individual **progress** (completed vs. remaining), ensuring students can pick up where they left off.

![E-Learning](https://raw.githubusercontent.com/ShivanshKandwal/Sus-10-Able-Game---SIH-Selected-Project/main/Images_susgame/e%20learning.png)

![E-Learning 2](https://raw.githubusercontent.com/ShivanshKandwal/Sus-10-Able-Game---SIH-Selected-Project/main/Images_susgame/e%20learning%202.png)

---

## Technical Architecture

### Frontend

The web dashboard, mini-games, and EcoScan UI are all built with a modern React stack:

| Technology | Role |
|---|---|
| **React** | Component-based structure for the game UI, dashboard, and mini-game pages |
| **TypeScript** | Type safety for stable, maintainable code — critical for the special logic in mini-game pages |
| **Tailwind CSS** | Rapid development of custom pixel-styled UI, Eco Scanner interface, and dashboard |

<!-- FRONTEND TECH DIAGRAM SCREENSHOT -->
<!-- Screenshot of the three-column frontend diagram from slide 3 -->
<!-- ![Frontend Architecture](./assets/frontend-arch.png) -->

---

### Game Engine — Godot

The main platformer adventure is built entirely in **Godot Engine 4**, exported for the web.

| Component | Implementation |
|---|---|
| **GDScript** | Godot's built-in scripting language (Python-like syntax) for character logic, scene control, and game interactivity |
| **NPC Interaction** | Custom in-game dialogue boxes where the student meets companion characters who explain eco-concepts |
| **Web Export** | Godot Engine HTML5 export — runs directly in the browser, no download required |
| **Level Design** | 2D pixel-art platformer levels where the player collects plants, turns off appliances, and overcomes environmental obstacles |

<!-- GODOT LEVEL SCREENSHOT -->
<!-- In-game screenshot of the platformer level showing pixel art environment -->
<!-- ![Godot Level Design](./assets/godot-level.png) -->

---

### EcoScan Backend Pipeline

```
┌───────────────────────────────────────────┐
│         React + TypeScript Frontend       │
│   (Camera capture → image upload form)    │
└──────────────────────┬────────────────────┘
                       │ POST /scan (image data)
                       ▼
┌───────────────────────────────────────────┐
│        Python Flask Backend               │
│        (Hosted on Render)                 │
│                                           │
│  ┌─────────────────────────────────────┐  │
│  │         Gemini API Call             │  │
│  │  • Identify object                  │  │
│  │  • Calculate sustainability score   │  │
│  │  • Generate pros/cons/alternatives  │  │
│  └─────────────────────────────────────┘  │
│                                           │
│  OR (local GPU mode):                     │
│  ┌─────────────────────────────────────┐  │
│  │  Gemma-3-4B via Ollama + Docker     │  │
│  │  Exposed publicly via Ngrok tunnel  │  │
│  └─────────────────────────────────────┘  │
└──────────────────────┬────────────────────┘
                       │ JSON response
                       ▼
┌───────────────────────────────────────────┐
│     Sustainability Report Card (React UI) │
│  Score | Pros | Cons | Alternatives | Tips│
└───────────────────────────────────────────┘
```

---

## Tech Stack

| Layer | Technology |
|---|---|
| **Game Engine** | Godot Engine 4 (GDScript, HTML5 web export) |
| **Frontend** | React, TypeScript, Tailwind CSS |
| **Backend** | Python, Flask |
| **AI / Vision** | Google Gemini API, Gemma-3-4B (Ollama) |
| **Deployment** | Render (Flask backend), GitHub Pages (frontend) |
| **Tunneling (dev)** | Ngrok |
| **Containerization** | Docker (local LLM serving) |
| **Content Creation** | NotebookLM (research synthesis), Napkin.ai (mind maps) |
| **Version Control** | GitHub |

---

## Sustainability Score Formula

EcoScan's eco-rating is computed using a **weighted composite formula** across three lifecycle dimensions:

$$\text{Score} = (\text{Material Composition} \times 0.2) + (\text{Lifecycle Model} \times 0.5) + (\text{Disposal Pathway} \times 0.3)$$

| Component | Weight | What It Measures |
|---|---|---|
| **Material Composition** | 20% | Raw material sourcing, renewability, toxicity |
| **Lifecycle Model** | 50% | Environmental impact across the product's full lifecycle |
| **Disposal Pathway** | 30% | Recyclability, biodegradability, landfill vs. compost |

The Lifecycle Model carries the highest weight (50%) because end-to-end environmental impact — from manufacturing to disposal — is the most complete indicator of a product's true sustainability footprint.

---

## Feasibility & Viability

### Why Sus-10-able is Buildable and Scalable

**Open-Source Foundation**
The entire platform is built on open-source tools (Godot, React, Flask) — zero licensing costs, easy to maintain, and simple to scale to new modules, levels, or eco-topics over time.

**Cross-Platform by Default**
Godot's web export + React frontend means the platform runs on any device with a browser — no app store, no installation, no hardware requirement beyond a camera for EcoScan.

**Budget-Friendly AI**
The EcoScan uses reusable prompt templates and supports a local GPU mode (Gemma + Ollama) to eliminate ongoing API costs when deployed at scale.

**Curriculum Aligned**
Content is directly aligned with **NEP 2020** and **UN SDG goals**, meaning adoption by schools requires minimal curriculum restructuring.

### Key Challenges & Solutions

| Challenge | Solution |
|---|---|
| Technical integration across game + web + AI | Open-source modular architecture — components are independently deployable |
| Keeping content educationally accurate | NotebookLM synthesis of UN documents and peer-reviewed sources |
| Sustaining student engagement | Gamified rewards, streaks, and leaderboards at individual → class → national levels |
| EcoScan item recognition accuracy | Real-time guidance + feedback during scanning; multi-mode LLM support |
| Scalability & infrastructure cost | Reusable assets, Render free tier, GitHub Pages, local LLM fallback |

---

## Impact & Benefits

### Learning Retention

Sus-10-able's gamified approach produces significantly longer retention curves than traditional classroom learning, supported by research comparing gamified vs. traditional learning retention over time.

<!-- LEARNING RETENTION CHART -->
<!-- Chart showing Gamified (green) vs Traditional (red) retention curves over time -->
<!-- ![Learning Retention](./assets/retention-chart.png) -->

### Six Impact Pillars

```
┌──────────────────────────────────────────────────────────────────────┐
│  High          Educational    Scalable       Societal     Cost        │
│  Engagement    Alignment      Ecosystem      Benefit      Effective   │
│                                                                       │
│  Story-driven  Aligned with   Individual →   Cultivates   Open-source │
│  platformer +  NEP 2020 &     Classroom →    lifelong     stack;      │
│  side-quest    SDG goals;     National       eco-conscious low-maint; │
│  mini-games    digital-first  leaderboards   sustainability easy for  │
│  keep students gamified                      champions     schools    │
│  hooked while  learning                                               │
│  reinforcing   integrated                                             │
│  concepts.                                                            │
└──────────────────────────────────────────────────────────────────────┘
```

<!-- IMPACT BENEFITS BANNER SCREENSHOT -->
<!-- The 7-icon horizontal arrow banner from slide 5 -->
<!-- ![Impact Pillars](./assets/impact-pillars.png) -->

### Real-World Behavior Change

EcoScan turns in-game learning into real-life eco-actions — students scan everyday objects (bottles, bags, appliances) outside the game and receive immediate feedback, creating a feedback loop between digital learning and physical behavior.

---

## SWOT Analysis

| | Strengths | Weaknesses |
|---|---|---|
| | Boosts engagement with scalable tech | Expensive AI and API dependency |
| | **Opportunities** | **Threats** |
| | CSR funding and government adoption | Competing platforms and tech resistance |

<!-- SWOT DIAGRAM SCREENSHOT -->
<!-- The S/W/O/T four-quadrant graphic from slide 4 -->
<!-- ![SWOT Analysis](./assets/swot.png) -->

### Gamification Effectiveness Scores (Internal Benchmark)

| Feature | Effectiveness Score (out of 10) |
|---|---|
| Gamified SDG Quests | 9 |
| EcoScan (Real-world Scanning) | 7 |
| Godot Game (Platformer Adventure) | 8 |
| SDG-Aligned Curriculum | 6 |
| Static E-learning Modules | 3 |
| Gamification Elements (Leaderboard/Rewards) | (baseline) |

> Gamified quests and the platformer game significantly outperform static e-learning modules in engagement and retention.

<!-- EFFECTIVENESS BAR CHART SCREENSHOT -->
<!-- The bar chart from slide 4 showing scores by feature -->
<!-- ![Effectiveness Chart](./assets/effectiveness-chart.png) -->

---

## Setup & Installation

### Prerequisites

- Node.js 18+ and npm
- Python 3.10+
- Godot Engine 4.x (for game development only; not needed to play via browser)
- Docker (optional — for local GPU/Ollama mode)
- A Google Gemini API key (for EcoScan production mode)

---

### 1. Clone the repository

```bash
git clone https://github.com/ShivanshKandwal/Sus-10-Able-Game---SIH-Selected-Project.git
cd Sus-10-Able-Game---SIH-Selected-Project
```

---

### 2. Download & Run the Latest Build (Recommended)

The easiest way to get the full experience — including the platformer and all mini-games — is via the latest release build:

1. Go to the **[Releases page](https://github.com/ShivanshKandwal/Sus-10-Able-Game---SIH-Selected-Project/releases/latest)**
2. Under **Assets**, download the latest `.zip` build for your platform
3. Extract the zip to any folder
4. Open `index.html` (or the provided executable) in your browser

> **Note:** Mini-games run on localhost. The release build packages everything together so no additional setup is needed for gameplay.

---

### 3. Run the Frontend (React + TypeScript)

```bash
cd frontend
npm install
npm run dev
```

The frontend runs at `http://localhost:5173` by default.

---

### 4. Run the EcoScan Backend (Flask)

```bash
cd backend
pip install -r requirements.txt
export GEMINI_API_KEY="your_key_here"
python app.py
```

The Flask server starts at `http://localhost:5000`.

For public access during development:

```bash
ngrok http 5000
```

---

### 5. Run EcoScan in Local GPU Mode (Ollama + Docker)

```bash
# Pull and run the Gemma model locally
docker pull ollama/ollama
docker run -d -p 11434:11434 ollama/ollama
docker exec -it <container_id> ollama pull gemma3:4b

# Expose locally via Ngrok
ngrok http 11434
```

Update your backend config to point to the Ngrok URL instead of the Gemini API endpoint.

---

### 6. Build / Export the Godot Game

1. Open the `/game` folder in Godot Engine 4
2. Go to **Project → Export → Web (HTML5)**
3. Export to `/frontend/public/game/`
4. The React frontend auto-serves the exported game

---

## Project Structure

```
Sus-10-Able-Game---SIH-Selected-Project/
│
├── frontend/                    # React + TypeScript + Tailwind
│   ├── src/
│   │   ├── components/
│   │   │   ├── Dashboard.tsx    # Progress tracking & leaderboard
│   │   │   ├── EcoScan.tsx      # Camera UI + scan results display
│   │   │   ├── MiniGames/       # Word Search, Crossword, Hangman, Quiz
│   │   │   └── ELearning/       # Video modules + notes + mind maps
│   │   ├── pages/
│   │   └── App.tsx
│   └── public/
│       └── game/                # Godot HTML5 export files
│
├── backend/                     # Python Flask (EcoScan API)
│   ├── app.py                   # Main Flask server + routes
│   ├── gemini_client.py         # Gemini API integration
│   ├── ollama_client.py         # Local LLM (Gemma) integration
│   ├── scorer.py                # Sustainability score formula
│   └── requirements.txt
│
├── game/                        # Godot Engine project
│   ├── scenes/
│   │   ├── Level1.tscn          # Platformer level 1 (collect plants)
│   │   ├── Level2.tscn          # Platformer level 2 (turn off appliances)
│   │   └── NPC/                 # Companion character dialogue scenes
│   ├── scripts/
│   │   ├── Player.gd            # Player movement & interaction logic
│   │   ├── Appliance.gd         # Appliance interaction (E key)
│   │   └── GameManager.gd       # Score & progress tracking
│   └── assets/
│       ├── sprites/             # Pixel art character & environment assets
│       └── audio/               # Sound effects & background music
│
├── assets/                      # README images (add your screenshots here)
│
└── README.md
```

---

## References

1. Godot Engine Documentation — GDScript Basics: https://docs.godotengine.org/en/4.4/tutorials/scripting/gdscript/gdscript_basics.html

2. UN Statistics Division — SDGs Report 2025: https://unstats.un.org/sdgs/report/2025

3. United Nations — Sustainable Development Goals: https://sdgs.un.org/goals

4. React Documentation: https://react.dev/learn

5. Tailwind CSS: https://tailwindcss.com

6. Ministry of Education, India — National Education Policy 2020: https://www.education.gov.in/sites/upload_files/mhrd/files/NEP_Final_English_0.pdf

7. UNESCO — Education for Sustainable Development: https://www.unesco.org/en/sustainable-development/education

---

## Team

**Team Name:** Jatayu Fan Club
**Event:** Smart India Hackathon 2025
**Problem Statement:** 25009 — Gamified Environmental Education Platform for Schools and Colleges

| Member | Role |
|---|---|
| Shivansh Kandwal | Developer , AI&ML engineer , Data scientist |
---

<p align="center">
  Built for Smart India Hackathon 2025 &nbsp;|&nbsp; Theme: Smart Education &nbsp;|&nbsp; PS Category: Software
  <br><br>
  🌱 <em>Turning sustainability education from something students know into something students do.</em>
</p>
