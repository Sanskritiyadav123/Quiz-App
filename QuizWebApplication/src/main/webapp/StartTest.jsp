<%@page import="java.sql.ResultSet"%>
<%@page import="DAO.DBConnect"%>
<%@page import="questionbank.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  
  <style>
  .center {
  margin: 0;
  position: absolute;
  
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}
</style>
  
</head>
<body>
<form action="Result.jsp">
  <jsp:include page="Header.jsp"></jsp:include>
  <%!String subject = "";
  static String[] question;
  static String[][] choice;
  static String[] n;
  static int cnt = 0;
  %>
  
  String t = request.getParameter("t");

  if (t.trim().equals("cn")) {
    subject = "Computer Network";
    session.setAttribute("sub", subject);
    question = new String[10];
    Object qno[] = new UniqueRandomNumber().unique();

    for (int i = 0; i < 10; i++) {
      question[i] = ComputerNetwork.nw[Integer.parseInt(qno[i].toString())];
    }

    choice = new String[10][4];
    for (int i = 0; i < choice.length; i++) {
      for (int j = 0; j < 4; j++) {
        int qn = Integer.parseInt(qno[i].toString());
        choice[i][j] = ComputerNetwork.nwchoice[qn][j];
      }
    }

    n = new String[10];
    for (int i = 0; i < 10; i++) {
      n[i] = ComputerNetwork.nwans[Integer.parseInt(qno[i].toString())];
    }
  
  }
  if (t.trim().equals("oot")) {
    subject = "Object Oriented Technology";
    session.setAttribute("sub", subject);
    question = new String[10];
    Object qno[] = new UniqueRandomNumber().unique();

    for (int i = 0; i < 10; i++) {
      question[i] = oot.oot[Integer.parseInt(qno[i].toString())];
    }

    choice = new String[10][4];
    for (int i = 0; i < choice.length; i++) {
      for (int j = 0; j < 4; j++) {
        int qn = Integer.parseInt(qno[i].toString());
        choice[i][j] = oot.ootchoice[qn][j];
      }
    }

    n = new String[10];
    for (int i = 0; i < 10; i++) {
      n[i] = oot.ootanswer[Integer.parseInt(qno[i].toString())];
    }
  
  }
  
  if (t.trim().equals("ds")) {
    subject = "Data Structure";
    session.setAttribute("sub", subject);
    question = new String[10];
    Object qno[] = new UniqueRandomNumber().unique();

    for (int i = 0; i < 10; i++) {
      question[i] = DataSt.ds[Integer.parseInt(qno[i].toString())];
    }

    choice = new String[10][4];
    for (int i = 0; i < choice.length; i++) {
      for (int j = 0; j < 4; j++) {
        int qn = Integer.parseInt(qno[i].toString());
        choice[i][j] = DataSt.dschoice[qn][j];
      }
    }

    n = new String[10];
    for (int i = 0; i < 10; i++) {
      n[i] = DataSt.dsans[Integer.parseInt(qno[i].toString())];
    }
  
  }
  
  
  
  if (t.trim().equals("se")) {
    subject = "Software Engneering";
    session.setAttribute("sub", subject);
    question = new String[10];
    Object qno[] = new UniqueRandomNumber().unique();

    for (int i = 0; i < 10; i++) {
      question[i] = SE.se[Integer.parseInt(qno[i].toString())];
    }

    choice = new String[10][4];
    for (int i = 0; i < choice.length; i++) {
      for (int j = 0; j < 4; j++) {
        int qn = Integer.parseInt(qno[i].toString());
        choice[i][j] = SE.sechoice[qn][j];
      }
    }

    n = new String[10];
    for (int i = 0; i < 10; i++) {
      n[i] = SE.seans[Integer.parseInt(qno[i].toString())];
    }
  
  }

  if (t.trim().equals("os")) {
    subject = "Operating System";
    session.setAttribute("sub", subject);
    question = new String[10];
    Object qno[] = new UniqueRandomNumber().unique();

    for (int i = 0; i < 10; i++) {
      question[i] = OS.os[Integer.parseInt(qno[i].toString())];
    }

    choice = new String[10][4];
    for (int i = 0; i < choice.length; i++) {
      for (int j = 0; j < 4; j++) {
        int qn = Integer.parseInt(qno[i].toString());
        choice[i][j] = OS.oschoice[qn][j];
      }
    }