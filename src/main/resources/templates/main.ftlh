<#import "parts/common.ftl" as c>
<@c.page>
        <div class="form-group">
            <form method="post">
                <input type="text"  name="text" class="form-control mb-2" placeholder="Введите сообщение">
                <input type="text" name="tag" class="form-control mb-2" placeholder="Тэг">
                <button class="btn btn-primary mb-2">Добавить</button>
            </form>
        </div>
        <div>Список сообщений</div>
        <#list messages as message>
            <div class="list-item">
                <b>${message.id}</b>
                <span>${message.text}</span>
                <i>${message.tag}</i>
            </div>
        <#else>
            no messages
        </#list>
</@c.page>