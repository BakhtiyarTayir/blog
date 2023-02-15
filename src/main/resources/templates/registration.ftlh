<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page >
    <h4>Add new user</h4>
    ${message}
    <@l.login "/registration"/>
</@c.page>