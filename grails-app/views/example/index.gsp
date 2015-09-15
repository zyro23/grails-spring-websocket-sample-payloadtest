<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>

        <asset:javascript src="jquery" />
        <asset:javascript src="spring-websocket" />

        <script type="text/javascript">
            $(function() { 
                var socket = new SockJS("${createLink(uri: '/stomp')}");
                var client = Stomp.over(socket);

                client.connect({}, function() {});

                $("#payloadtest-button").click(function() {
                    client.send("/app/payloadtest", {}, JSON.stringify({commandId: "12dadf", "data": {}}));
                });
            });
        </script> 
    </head>
    <body>
        <button id="payloadtest-button">hello</button>
        <div id="payloadtest"></div>
    </body>
</html>