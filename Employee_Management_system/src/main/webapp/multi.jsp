<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>experience add</title>
    <script>
        function addRow() {
            var table = document.getElementById("experienceTable");
            var newRow = table.insertRow(table.rows.length);

            var cell1 = newRow.insertCell(0);
            var cell2 = newRow.insertCell(1);
            var cell3 = newRow.insertCell(2);
            var cell4 = newRow.insertCell(3);
            var cell5 = newRow.insertCell(4);

            cell1.innerHTML = '<input type="text" name="companyname[]">';
            cell2.innerHTML = '<input type="text" name="role[]">';
            cell3.innerHTML = '<input type="date" name="dateofjoining[]">';
            cell4.innerHTML = '<input type="date" name="lastdate[]">';
        }

        function registerAll() {
            var tableData = [];
            var table = document.getElementById("experienceTable");

            for (var i = 1; i < table.rows.length; i++) {
                var row = table.rows[i];
                var rowData = {
                		companyname: row.cells[0].querySelector('input').value,
                    role: row.cells[1].querySelector('input').value,
                    dateofjoining: row.cells[2].querySelector('input').value,
                    lastdate: row.cells[3].querySelector('input').value
                };

                tableData.push(rowData);
            }

            fetch('add1', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(tableData)
            })
            .then(response => {
                if (response.redirected) {
                    window.location.href = response.url; // Redirect to the provided URL
                } else {
                    return response.json(); // If not redirected, handle response as JSON
                }
            })
            .then(data => {
                window.location.href = '/datafetch'; // Fallback redirection in case of JSON response
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }

    </script>
</head>
<body>
    <h1>Experience Registration</h1>
    <form action="javascript:void(0);" onsubmit="registerAll()">
        <table id="experienceTable">
            <tr>
                <th>Company Name</th>
                <th>Role</th>
                <th>Joining Date</th>
                <th>Last Date</th>
            </tr>
            <tr>
                <td><input type="text" name="companyname[]"></td>
                <td><input type="text" name="role[]"></td>
                <td><input type="date" name="dateofjoining[]"></td>
                <td><input type="date" name="lastdate[]"></td>
            </tr>
        </table>
        <br>
        <button type="button" onclick="addRow()">Add Row</button>
        <br><br>
        <button type="submit">Register All</button>
    </form>
</body>
</html>