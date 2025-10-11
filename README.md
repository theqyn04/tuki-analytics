# 🎯 MTP Data Analytics Project

Dự án phân tích dữ liệu YouTube channel của Sơn Tùng M-TP, mô phỏng một data pipeline hoàn chỉnh từ thu thập dữ liệu đến visualization.

## 📌 Mục tiêu học tập

- Hiểu quy trình lấy dữ liệu từ API → lưu trữ → chuyển đổi → orchestrate → visualize
- Thực hành trọn bộ kỹ năng của một Data Analyst/Engineer: từ ingestion đến dashboard
- Làm quen với Snowflake, dbt, Airflow, Power BI trong một dự án mini thực tế
- Có repo mẫu chuẩn chỉnh để áp dụng cho project riêng

> ⚠️ **Lưu ý**: Chỉ phục vụ mục đích học tập / nghiên cứu. Không thương mại hóa.

## 🛠️ Yêu cầu kiến thức

Để theo dõi project này, bạn nên có:

- Biết cơ bản Python 🐍 (requests, pandas)
- Làm quen với API (YouTube Data API v3)
- Hiểu sơ về SQL để query trong Snowflake
- Nắm khái niệm dbt (bronze → silver → gold)
- Biết dùng Docker/Airflow thì càng tốt
- Có thêm Power BI để dựng dashboard phân tích 🎨

## 🧩 Tech Stack & Tính năng chính

| Component | Technology | Features |
|-----------|------------|----------|
| **Data Source** | YouTube Data API v3 | Crawl data: video, playlist, view, like, comment |
| **Warehouse** | Snowflake | Lưu trữ dữ liệu dạng warehouse |
| **Transformation** | dbt | Pipeline theo 3 layer: Bronze → Silver → Gold |
| **Orchestration** | Airflow + Cosmos | DAG orchestration tự động hóa |
| **Visualization** | Power BI | Dashboard trực quan |

## 🏗️ Kiến trúc tổng quan
son-tung-mtp-analytics/
├── python-get-data/ # Crawl dữ liệu YouTube API
├── snowflake-create-wh/ # Script khởi tạo Snowflake
├── dbt_youtube/ # dbt project (Bronze/Silver/Gold)
├── dbt_youtube_dag/ # Airflow DAG (Cosmos/Astronomer)
├── power-bi-dashboard/ # Power BI report
├── imgs/ # Hình minh hoạ setup & dashboard
└── README.md # Hướng dẫn chi tiết


## 🔄 Data Pipeline Flow

### 1. 🔍 Source – YouTube API
- Nguồn dữ liệu chính: YouTube Data API v3
- Lấy thông tin: video, playlist, channel stats (view, like, subscriber, duration, publishedAt...)
- Kết quả: dữ liệu thô dạng JSON → convert sang CSV

### 2. 🐍 Python – Crawl & Ingestion
- Sử dụng `google-api-python-client` + `pandas`
- Script Jupyter Notebook gọi API, phân trang & lưu dữ liệu
- Xuất ra CSV → dùng làm seed cho dbt

### 3. ❄️ Snowflake – Data Warehouse
- Toàn bộ CSV được load vào Snowflake
- Tạo Warehouse, Database, Schema bằng script SQL
- Nơi lưu trữ & quản lý dữ liệu gốc

### 4. 📐 dbt – Transformation (Bronze → Silver → Gold)

| Layer | Mục đích |
|-------|----------|
| **Bronze** | Giữ nguyên raw data |
| **Silver** | Clean & chuẩn hóa (đổi kiểu dữ liệu, clean cột) |
| **Gold** | Bảng phục vụ phân tích |

**Gold Models:**
- `g_channel_overview`
- `g_video_rankings` 
- `g_upload_heatmap`
- `g_duration_distribution`

### 5. ⚙️ Airflow + Cosmos – Orchestration
- Pipeline được orchestrate bằng Airflow (Astronomer Runtime)
- Dùng Cosmos để tích hợp dbt vào DAG
- **Workflow:**
  1. Crawl dữ liệu → load Snowflake
  2. Chạy dbt transform
  3. Refresh dashboard

### 6. 📊 Power BI – Visualization
- Kết nối Snowflake, chọn bảng Gold
- **Dashboard components:**
  - Ranking video theo view/like
  - Heatmap thời gian upload
  - Mix thể loại content
  - Biểu đồ phân bố thời lượng video

