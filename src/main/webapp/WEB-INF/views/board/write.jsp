<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-4">
<h2>${student != null ? "학생 수정" : "학생 등록"}</h2>
<form method="post" action="save">
    <input type="hidden" name="id" value="${student.id}" />
    <div class="mb-3">
        <label class="form-label">이름</label>
        <input type="text" name="name" class="form-control" value="${student.name}" required />
    </div>
    <div class="mb-3">
        <label class="form-label">이메일</label>
        <input type="email" name="email" class="form-control" value="${student.email}" required />
    </div>
    <button type="submit" class="btn btn-success">저장</button>
    <a href="list" class="btn btn-secondary">취소</a>
</form>
</body>
</html>