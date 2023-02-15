<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <@l.logout/>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="form-group">
                    <form method="post">
                        <input type="text"  name="text" class="form-control mb-2" placeholder="Введите сообщение">
                        <input type="text" name="tag" class="form-control mb-2" placeholder="Тэг">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <button class="btn btn-primary mb-2">Добавить</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form method="post" action="filter" class="d-flex justify-content-around align-items-center">
                    <input type="text" name="filter" class="form-control">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <button class="btn btn-primary m-3">Найти</button>
                </form>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-8">
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
            </div>
        </div>
    </div>


</@c.page>