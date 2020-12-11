 <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>freemarker</title>
    <link rel="stylesheet" href="?">
</head>

<body>
    <div class="container">
        <div class="container1">
            <div class="title">
                <h3>${blockTitle1}</h3>
                <p></p>
            </div>
            <div class="body">
                <ul>
                <#attempt>
                <#list modelActions>
                  <#items as modelAction>
                    <li>
                        <span>${modelAction.title}：</span>
                        <span>${modelAction.content}</span>
                    </li>
                  </#items>
                 </#list>
                <#recover>
                    ${.error}
                </#attempt>
                </ul>
            </div>
        </div>

        <div class="container2">
            <div class="title">
                <h3>请求参数说明</h3>
                <p></p>
            </div>
            <div class="body">
                <table>

                    <#attempt>
                    <tr>
                        <#list requestTableTitles as requestTableTitle >
                        <#if requestTableTitle??>
                            <th title='${requestTableTitle}'>${requestTableTitle}</th>
                            <#else>
                             <th></th>
                            </#if> 
                       </#list>
                    </tr>
                        <#list requestParams as requestParam>
                    <tr>
                       <#list requestParam as request >
                          <#if request??>
                            <td title='${request}'>${request}</td>
                            <#else>
                             <td></td>
                            </#if>  
                       </#list>
                    </tr>
                    </#list> 
                    <#recover>
                          ${.error}
                    </#attempt>

                   
                </table>
            </div>
        </div>

        <div class="container3">
            <div class="title">
                <h3>状态码说明</h3>
                <p></p>
            </div>
            <div class="body">
                <table>
                <#attempt>
                     <tr>
                        <#list returnTableTitles as returnTableTitle >
                             <#if returnTableTitle??>
                            <th title='${returnTableTitle}'>${returnTableTitle}</th>
                            <#else>
                             <th></th>
                            </#if>       
                       </#list>
                    </tr>
                         <#list returnResults as returnResult>
                    <tr>
                     <#list returnResult as result>
                           <#if result??>
                            <td title='${result}'>${result}</td>
                            <#else>
                             <td></td>
                            </#if>                                           
                    </#list>
                    </tr>
                    </#list>
                    <#recover>
                        ${.error}
                    </#attempt>
                    
                </table>


            </div>
        </div>

        <div class="container4">
            <div class="title">
                <h3>请求代码示例</h3>
                <p></p>
            </div>
            <div class="body">
                <h4>微服务调用</h4>
                <div class="sub_body">
                <pre>${microservice}</pre>
                </div>
                <h4>REST</h4>
                <div class="sub_body">
                 <pre>${rest}</pre>
                 </div>
            </div>
        </div>

        <div class="container5">
            <div class="title">
                <div class="title">
                    <h3>返回结果示例</h3>
                    <p></p>
                </div>
            </div>
            <div class="body">
               <table>
                    <#attempt>
                    <tr>
                        <#list returnTableExTitles as returnTableExTitle >
                         <#if returnTableExTitle??>
                           <th>${returnTableExTitle}</th>
                            <#else>
                             <th></th>
                            </#if>  
                       </#list>
                    </tr>

                        <#list returnResultsExamples as returnResultsExample>
                    <tr>
                       <#list returnResultsExample as result >
                           <#if result??>
                           <td title = '${result}' >${result}</td>
                            <#else>
                             <td></td>
                            </#if>   
                       </#list>
                    </tr>
                    </#list> 
                    <#recover>
                          ${.error}
                    </#attempt>

                   
                </table>
            </div>
        </div>

    
    </div>

</body>

</html>