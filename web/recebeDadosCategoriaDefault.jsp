<%-- 
    Document   : recebeDadosCategoriaDefault
    Created on : 29 de out de 2020, 10:13:01
    Author     : entra21
--%>

<%@page import="Modelos.Usuario"%>
<%@page import="Modelos.CategoriaDefault"%>
<%
    CategoriaDefault categoriaDefault = new CategoriaDefault();
    /*if (categoria.userExiste(request.getParameter("email"))) {
        //voltar para cadastro
        String msg = "Usuario j� existe";
        response.sendRedirect("informacao.jsp?msg="+msg);
    } else {*/
    categoriaDefault.setDescricao(request.getParameter("descricao"));
    categoriaDefault.setTipo(request.getParameter("tipo"));
    if (categoriaDefault.salvar()) {
        //direciona para a p�gina de informa��es
        String msg = "Categoria Default salva com Sucesso!";
        response.sendRedirect("informacao.jsp?msg=" + msg);
    }
    // }
%>



