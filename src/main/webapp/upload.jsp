<%--Загрузка видео требует разбиения на сегменты и создания манифеста, это немного выходит
    за тематику работы, возможно, если эта работа будет развиваться для следующих курсов
    или диплома, я это автоматизирую.
    Сейчас для загрузки видео его нужно вручную обработать через утилитуб загрузить в папку
    webapp, а в форме указать название папки, в которой оно лежит--%>
<form action="addVideo" method="post">
    <table>
        <tr>
            <td>
                Title
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" name="title">
            </td>
        </tr>
        <tr>
            <td>
                Location
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" name="location">
            </td>
        </tr>
        <tr>
            <td>
                Description
            </td>
        </tr>
        <tr>
            <td>
                <textarea name="description" cols="40" rows="5"></textarea>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit">
            </td>
        </tr>
    </table>
</form>