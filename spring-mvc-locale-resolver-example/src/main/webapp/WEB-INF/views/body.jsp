<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>


<div role="main" class="container">
    <div class="jumbotron">

        <h1><spring:message code="app.page.header"/></h1>
        <p class="lead"><spring:message code="app.page.body"/></p>


        <div class="dropdown">
            <button class="btn btn-danger dropdown-toggle" type="button" id="dropdownMenuButton"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><spring:message code="app.theme.title"/></button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="?theme=pulse"><spring:message code="app.theme.pulse"/></a>
                <a class="dropdown-item" href="?theme=arabic">ar</a>
                <a class="dropdown-item" href="?theme=english">en</a>
                <a class="dropdown-item" href="?theme=cerulean"><spring:message code="app.theme.cerulean"/></a> 
            </div>
        </div>
        <hr/>
        <!-- Dropdown for selecting language -->
        <div class="dropdown" style="float: <spring:message code="app.dir.test"/>;" >
            <button class="btn btn-danger dropdown-toggle" type="button" id="dropdownMenuButton"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><spring:message code="app.lang.title"/></button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="?lang=en"><spring:message code="app.lang.english"/></a> 
                <a class="dropdown-item" href="?lang=hi"><spring:message code="app.lang.hindi"/></a>
                <a class="dropdown-item" href="?lang=cn"><spring:message code="app.lang.chinese"/></a>
                <a class="dropdown-item" href="?lang=ar"><spring:message code="app.lang.arabic"/></a>
            </div>
        </div>

        <br /><br />
        <!--<img src="${pageContext.request.contextPath}/user.png" class="img-position" alt="user"/>-->
        <br />
        <br />
        <table class="table-direction">
            <tr>
                <td><img width="100 px" height="100px" src="${pageContext.request.contextPath}/${userImg}" class="img-position" alt="user"/></td>
                <td><input type="text" /></td>
                <td>${date}</td>
                <td><a href="" data-toggle="modal" data-target="#modal1">content</a></td>
                <td><a href="" data-toggle="modal" data-target="#modal2">content with img</a></td>
                <td><a href="testGet">test get</a></td>
                <td><form action="testPost" method="post"><input class="btn btn-link" type="submit" value="test Post" /></form></td>
                <td><a href="" data-toggle="modal" data-target="#modal3">content</a></td>
                <td>8</td>
            </tr>
        </table>

        <display:table class="table-direction" id="txt"  pagesize="3"  name="userList">
            <display:column property="name" ></display:column>
            <display:column title="insert" ><input type="text"/></display:column>  
            <display:column property="lastName"></display:column>
            <display:column property="nickName"></display:column>
            <display:column property="modernName"></display:column>
            <display:column property="section"></display:column>
            <display:column property="address"></display:column>
        </display:table>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div id="userDetails" class="modal-body">
                <!-- write details here -->
                <p>here we write our content :(</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <!--<button type="button" class="btn btn-primary">Save changes</button>-->
            </div>
        </div>
    </div>
</div>



<!-- Modal -->
<div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div id="userDetails" class="modal-body">
                <!-- write details here -->
                <p>here we write our content :(</p>
                <img src="${pageContext.request.contextPath}/${userImg}" class="img-position" alt="user"/>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="modal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div id="userDetails" class="modal-body">
                <!-- write details here -->

                <img src="${pageContext.request.contextPath}/${userImg}" class="img-position" alt="user"/>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>