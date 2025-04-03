# DMS Hypothesis Testing

This repository presents a comprehensive pipeline for data-driven hypothesis testing of social media engagement metrics using statistical tools, with a focus on the **Multilevel regression analysis**, **T-tests**, **ANOVA**, **Mann-Whitney U**, and **Kruskal-Wallis**.

---

## 📦 Use Case

The project analyzes engagement data from travel brands (`local` and `international`) on Instagram, combining exploratory data analysis, data cleaning, feature engineering, and statistical analysis to determine whether key performance indicators like **likes** or **comments** differ significantly across brand types.

---

## 📁 Project Structure

```
dms-hypothesis-testing-master/
│
├── final_analysis.ipynb              # Main notebook for analysis and testing
├── final.xlsx                        # Initial dataset
├── final_with_new_features.xlsx      # Cleaned, produced and unified dataset for testing
├── data/                             # Raw datasets per brand and type
├── requirements.txt                  # Python dependencies
└── README.MD                         # Project documentation
```

---

## 🧪 Statistical Tools

### ✅ Two-sample testing
- **Automatic selection** between:
  - T-test (with normality & equal variance)
  - Mann-Whitney U test (non-parametric)

### ✅ Multiple-sample testing
- **Automatic selection** between:
  - ANOVA (parametric)
  - Kruskal-Wallis test (non-parametric)

### ✅ Multilevel regression analysis
- **Linear** regression
- **Poisson** regression

---

## 📊 Dataset Highlights

- 📅 Date range: 2012–2025  
- 📈 Source: Instagram posts from 14+ travel-related accounts  
- 🎯 Target variables:
  - `number_of_likes` and `number_of_comments`
- 📈 Initially has **21604** rows
- 🧹 Cleaned to **18,536** rows after outlier and null handling  

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/semwett0301/dms-hypothesis-testing.git
cd dms-hypothesis-testing
```

### 2. Set up the Python environment

```bash
python -m venv env
source env/bin/activate  # On Windows: env\Scripts\activate
pip install -r requirements.txt
```

### 3. Launch the notebook

```bash
jupyter notebook
```

Then open `final_analysis.ipynb` to follow the full process.

---

## 🧹 Feature Engineering

- Standardized column names
- Removed non-informative or redundant features:
  - `profile`, `profile_id`, `network`, `engagement`, `reactions_comments_shares`
- New features:
  - `message_length`
  - `contains_mention`
  - `has_personal_word`
  - `weekday`
  - `hour_of_day`
  - `content_type` (e.g., Reel vs Photo)
- Outlier removal with IQR method
- String matching for user mentions
- Categorical grouping for brand type (local vs. international)

---

## 📚 New features

- `message_length`: Number of characters in the post
- `contains_mention`: Boolean indicating whether the post contains a tagged user (`@`)
- `has_personal_word`: Indicates whether the post includes personal pronouns (e.g., "I", "we", "you")
- `day of the week + weekend / weekday`: Day of the week the post was published
- `hour_of_day`: Hour extracted from the timestamp
- `content_type`: Derived from the link (e.g., “post”, “reel”, “tv”) to categorize content format



