<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check-in Cảm Xúc</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #f0f4f8;
            color: #2d3748;
        }

        .container {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #4299e1;
            text-align: center;
        }

        .emotion-group {
            margin: 20px 0;
        }

        .emotion-item {
            margin: 10px 0;
            padding: 12px;
            background: #ebf8ff;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
        }

        .emotion-item:hover {
            background: #bee3f8;
        }

        button {
            background: #4299e1;
            color: white;
            border: none;
            padding: 12px 24px;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            margin-top: 20px;
        }

        .note {
            margin-top: 30px;
            padding: 15px;
            background: #fff5f5;
            border-radius: 8px;
            color: #c53030;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>HÔM NAY BẠN THẾ NÀO? 💭</h1>
        
        <div class="emotion-group" id="emotionGroup">
            <div class="emotion-item">
                <input type="checkbox" id="happy"> <label for="happy">😊 Vui vẻ</label>
            </div>
            <div class="emotion-item">
                <input type="checkbox" id="sad"> <label for="sad">😢 Buồn</label>
            </div>
            <div class="emotion-item">
                <input type="checkbox" id="angry"> <label for="angry">😠 Tức giận</label>
            </div>
            <div class="emotion-item">
                <input type="checkbox" id="fear"> <label for="fear">😨 Sợ hãi</label>
            </div>
            <div class="emotion-item">
                <input type="checkbox" id="stress"> <label for="stress">😰 Căng thẳng</label>
            </div>
        </div>

        <button onclick="handleSubmit()">GỬI CẢM XÚC</button>
        
        <div class="note">
            <strong>Lưu ý:</strong> Trang web này không thay thế cho tư vấn chuyên nghiệp. Nếu bạn đang gặp vấn đề nghiêm trọng, hãy tìm kiếm sự giúp đỡ từ các chuyên gia tâm lý.
        </div>
    </div>

    <script>
        function handleSubmit() {
            const emotions = [];
            document.querySelectorAll('input[type="checkbox"]:checked').forEach(checkbox => {
                emotions.push(checkbox.nextElementSibling.textContent.trim());
            });

            let message = "Cảm ơn bạn đã chia sẻ! ";
            
            if(emotions.length === 0) {
                message += "Hãy dành thời gian lắng nghe bản thân nhé 💖";
            } else {
                message += `Bạn đang cảm thấy: ${emotions.join(', ')}. `;
                
                const recommendations = {
                    '😢 Buồn': ['Nghe nhạc yêu thích', 'Viết nhật ký', 'Gọi cho bạn thân'],
                    '😠 Tức giận': ['Tập thể dục', 'Thở sâu 4-7-8', 'Viết ra giấy'],
                    '😨 Sợ hãi': ['Tập trung vào hiện tại', 'Liệt kê giải pháp', 'Trò chuyện với ai đó'],
                    '😰 Căng thẳng': ['Thiền 5 phút', 'Uống trà ấm', 'Xem video ASMR']
                };

                message += "\n\nGợi ý cho bạn:\n";
                emotions.forEach(emotion => {
                    if(recommendations[emotion]) {
                        message += `• ${emotion}: ${recommendations[emotion].join(' → ')}\n`;
                    }
                });
            }

            alert(message);
        }
    </script>
</body>
</html>
