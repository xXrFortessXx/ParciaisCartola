<%@page import="com.rfs.parciaiscartola.keys.ParciaisCartolaKeys"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="<c:url value="/resourses/css/theme_home.css" />" rel="stylesheet">
		<script type="text/javascript" src="resourses/js/Scripts.js"></script>
		<meta name="description" content="Parciais Cartola - O site do Parciais Cartola é um desenvolvimento autônomo e tem como objetivo acompanhar a pontuação dos jogadores durante a rodada e também facilitar o acompanhamento da liga propria:'O Ultimo é Viado(UEV)'">
		<meta name="author" content="Rodrigo Fortes Souza">
		<meta name="reply-to" content="rodrigo.fortes.souza@hotmail.com">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Ligas - Parciais Cartola</title>
		<script type="text/javascript">
			function redirectDetailLiga(index)
		      {
				debugger;
				document.getElementById("idInputIndexLiga").setAttribute('value', index); 
				document.getElementById("idFormDetailLiga").submit();
		      }
		</script>
	</head>
	
	<body>
	  <nav class="navbar navbar-expand-md fixed-top bg-primary navbar-light">
	    <div class="container">
	      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent" aria-controls="navbar2SupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
	      <div class="collapse navbar-collapse justify-content-center" id="navbar2SupportedContent">
	        <ul class="navbar-nav">
	          <li class="nav-item text-gray-dark">
	            <a class="nav-link text-white" href=<%=ParciaisCartolaKeys.INIT_ACTION_BACK%>>Home</a>
	          </li>
	        </ul>
	      </div>
	    </div>
	  </nav>
	  <div class="p-5">
	    <div class="container">
	      <div class="row">
	        <div class="col-md-12">
	          <h1 class="mb-4 text-primary text-center">Ligas</h1>
	        </div>
	      </div>
	    </div>
	    <form id="idFormDetailLiga" name="formDetailLiga" action=<%=ParciaisCartolaKeys.DETALHE_LIGAS%>>
		    <div class="container">
		      <div class="row">
		        <div class="col-md-12">
		          <table class="table">
		            <thead></thead>
		            <tbody>
		            	<c:forEach var="liga" items="${usuarioBean.jogadores}" varStatus="index">
							<tr>
	                			<td class="bg-faded" style="border-left: 2px solid gray; width: 200px;">
	                				<a id="${index.index}" onclick="redirectDetailLiga(this.id)" href=#><img src="${liga.foto}" style="width: 150px;"></a>
                				</td>
		                		<td class="bg-faded" style="vertical-align: middle; display: table-cell; 
		                		text-align: left; font-family: Roboto-Regular; font-size: xx-large;">
		                			<a id="${index.index}" style="color: black !important;" onclick="redirectDetailLiga(this.id)" href=#>${liga.apelido}</a>
	                			</td>
		                		<td class="bg-faded" style="border-right: 2px solid gray; vertical-align: middle; display: table-cell; 
		                		text-align: left; font-family: Roboto-Regular; font-size: xx-large; color: black;">
		                			<strong>Pos. </strong>${liga.pontuacao}
	                			</td>
		            		</tr>
		            		<input type="hidden" name="indexLiga" id="idInputIndexLiga" value="">
						</c:forEach>
		            </tbody>
		          </table>
		        </div>
		      </div>
		    </div>
	    </form>
	  </div>
	</body>
</html>