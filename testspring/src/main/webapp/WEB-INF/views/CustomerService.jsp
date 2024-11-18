<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order History</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }
        .header {
            background: #343a40;
            color: #fff;
            padding: 15px 20px;
            font-size: 18px;
            font-weight: bold;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            text-align: left;
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }
        th {
            background: #f1f1f1;
            font-weight: bold;
        }
        td {
            font-size: 14px;
        }
        .status {
            font-weight: bold;
            padding: 5px 10px;
            border-radius: 5px;
            display: inline-block;
        }
        .status.canceled {
            background: #ffcccc;
            color: #d9534f;
        }
        .status.returned {
            background: #d9edf7;
            color: #31708f;
        }
        .status.exchanged {
            background: #dff0d8;
            color: #3c763d;
        }
        .action {
            text-align: center;
        }
        .action button {
            background: #007bff;
            color: #fff;
            border: none;
            padding: 8px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
        }
        .action button:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">취소 / 반품 / 교환 내역</div>
        <table>
            <thead>
                <tr>
                    <th>주문번호</th>
                    <th>상품명</th>
                    <th>상태</th>
                    <th>요청일</th>
                    <th>액션</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>#123456</td>
                    <td>블랙 오버핏 티셔츠</td>
                    <td><span class="status canceled">취소 완료</span></td>
                    <td>2024-11-15</td>
                    <td class="action">
                        <button>상세보기</button>
                    </td>
                </tr>
                <tr>
                    <td>#123457</td>
                    <td>화이트 스니커즈</td>
                    <td><span class="status returned">반품 진행 중</span></td>
                    <td>2024-11-16</td>
                    <td class="action">
                        <button>상세보기</button>
                    </td>
                </tr>
                <tr>
                    <td>#123458</td>
                    <td>그레이 후드 집업</td>
                    <td><span class="status exchanged">교환 완료</span></td>
                    <td>2024-11-10</td>
                    <td class="action">
                        <button>상세보기</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
