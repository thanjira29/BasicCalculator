<%-- 
    Document   : Calculator
    Created on : Oct 28, 2020, 3:51:01 PM
    Author     : 320S-USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>calculator</title>
    </head>
    <body>
        <h1>
             <%              
                    double result = (Double) request.getAttribute("result");
                    String num1Str = request.getParameter("number1");
                    String num2Str = request.getParameter("number2");
                    double num1 = Double.parseDouble(num1Str);
                    double num2 = Double.parseDouble(num2Str);
                    
                if (request.getParameter("button").equals("Add")) {
                    String results = "The result of " + num1 +" + "+num2 +" is: "+result ;
                    out.print(results);
                }
                else if (request.getParameter("button").equals("Sub")) {                  
                    String results = "The result of " + num1 +" - "+num2 +" is: "+result ;
                    out.print(results);
                }
                else if (request.getParameter("button").equals("Mul")) {                   
                    String results = "The result of " + num1 +" * "+num2 +" is: "+result ;
                    out.print(results);
                }
                else if (request.getParameter("button").equals("Div")) {
                    if(num2 == 0.0 ){
                        String results = "The result of " + num1 +" / " +num2 +" is: " + " Error devide by 0" ;
                        out.print(results); 
                    }
                    else{
                        String results = "The result of " + num1 +" / " +num2 +" is: "+result ;
                        out.print(results); 
                    }
                }
             %>
        </h1>    
    </body>
</html>
