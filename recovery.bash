#!/bin/bash

# Название выходного файла
REPORT_FILE="notebook_recovery_report.txt"

# Очистить/создать отчет
echo "📘 Jupyter Notebook Recovery Report" > "$REPORT_FILE"
echo "Generated on: $(date)" >> "$REPORT_FILE"
echo "======================================" >> "$REPORT_FILE"

# Ищем .ipynb файлы
echo -e "\n📂 Searching for *.ipynb files..." >> "$REPORT_FILE"
find / -type f -name "*.ipynb" -exec ls -lh --time-style=long-iso {} \; 2>/dev/null >> "$REPORT_FILE"

# Ищем файлы внутри .ipynb_checkpoints
echo -e "\n🕵️ Checking .ipynb_checkpoints..." >> "$REPORT_FILE"
find / -type d -name ".ipynb_checkpoints" -exec find {} -type f -name "*.ipynb" \; 2>/dev/null >> "$REPORT_FILE"

# Ищем возможные временные jupyter notebook файлы в /tmp
echo -e "\n🕒 Temp files in /tmp..." >> "$REPORT_FILE"
ls -lh /tmp | grep ipynb >> "$REPORT_FILE" 2>/dev/null

# Ищем возможные PyCharm временные файлы
echo -e "\n🧠 Checking PyCharm system directory..." >> "$REPORT_FILE"
find ~/.PyCharm*/system/ -type f -name "*.ipynb" 2>/dev/null >> "$REPORT_FILE"

echo -e "\n✅ Done. Check $REPORT_FILE for results."
