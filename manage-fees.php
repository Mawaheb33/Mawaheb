<?php
include("../dbconnection.php");

if (isset($_GET['delete'])) {
    $id = intval($_GET['delete']);
    $sql = "DELETE FROM fees WHERE FeeID = :id";
    $stmt = $dbh->prepare($sql);
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);
    $stmt->execute();
    header("Location: manage-fees.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <title>إدارة المصروفات</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.rtl.min.css" rel="stylesheet">
    <style>
        body { background: #f8f9fa; font-family: 'Cairo', sans-serif;}
        .container { margin-top: 60px; }
        h2 { color: #007bff; text-align: center; margin-bottom: 25px;}
        .table thead { background: #007bff; color: #fff; }
        @media print {
            body * { visibility: hidden; }
            #printable-table, #printable-table * { visibility: visible; }
            #printable-table { position: absolute; right: 0; top: 0; width: 100%; }
            .no-print { display: none !important; }
        }
    </style>
    <script>
        function printDiv() {
            window.print();
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>إدارة المصروفات</h2>
        <div class="mb-3 text-end no-print">
            <a href="add-fee.php" class="btn btn-primary">إضافة مصروفات</a>
            <button class="btn btn-success" onclick="printDiv()">🖨️ طباعة الجدول</button>
        </div>
        <div class="table-responsive" id="printable-table">
        <table class="table table-bordered table-hover align-middle">
            <thead>
                <tr>
                    <th>الرقم</th>
                    <th>اسم الطالب</th>
                    <th>المبلغ</th>
                    <th>تاريخ الدفع</th>
                    <th>نوع المصروف</th>
                    <th>ملاحظات</th>
                    <th class="no-print">حذف</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $sql = "SELECT f.FeeID, s.StudentName, f.Amount, f.PaymentDate, f.FeeType, f.Notes
                        FROM fees f
                        JOIN tblstudent s ON f.StudentID = s.ID
                        ORDER BY f.PaymentDate DESC";
                $query = $dbh->prepare($sql);
                $query->execute();
                $rows = $query->fetchAll(PDO::FETCH_OBJ);
                foreach ($rows as $row) {
                    echo "<tr>
                        <td>{$row->FeeID}</td>
                        <td>{$row->StudentName}</td>
                        <td>{$row->Amount}</td>
                        <td>{$row->PaymentDate}</td>
                        <td>{$row->FeeType}</td>
                        <td>{$row->Notes}</td>
                        <td class='no-print'>
                            <a href='?delete={$row->FeeID}' class='btn btn-sm btn-danger' onclick=\"return confirm('تأكيد الحذف؟')\">حذف</a>
                        </td>
                    </tr>";
                }
                ?>
            </tbody>
        </table>
        </div>
    </div>
</body>
</html>