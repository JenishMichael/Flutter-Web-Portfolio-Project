import 'package:flutter_web_portfolio_project/constants/project_works.dart';

class ProjectWorksData {
  static List<ProjectWorks> works = [
    ProjectWorks(
      projImg: "assets/image/movieflix.jpg",
      projName: "MovieFlix – A Movie App",
      projDescription:
          "A full-stack movie recommendation platform using Java, Spring Boot, and React. It features microservices, JWT authentication, user login/registration, and favorites. MySQL and MongoDB handle user and movie data, with secure service communication via Feign and Eureka.",
      projTools: [
        "Java",
        "Spring Boot",
        "JWT",
        "MySQL",
        "MongoDB",
        "Microservices",
        "Eureka",
        "API Gateway",
        "Feign",
        "React"
      ],
      projLink: "https://github.com/JenishMichael/MovieAppProject",
    ),
    ProjectWorks(
      projImg: "assets/image/jdbc2.jpeg",
      projName: "Employee Management – JDBC Console App",
      projDescription:
          "A Java-based console app for managing employee records using JDBC. It supports CRUD operations, uses a layered structure with the DAO pattern, and connects to a MySQL database. Ideal for learning JDBC, basic SQL, and object-oriented programming principles.",
      projTools: ["Java", "JDBC", "MySQL", "Console App", "DAO Pattern"],
      projLink: "https://github.com/JenishMichael/EmployeeManagementJDBC",
    ),
    ProjectWorks(
      projImg: "assets/image/sci_cal1.jpg",
      projName: "Scientific Calculator – Flutter App",
      projDescription:
          "A sleek scientific calculator app built with Flutter. It performs basic and scientific operations like sin, cos, square root, and exponent. Designed with a custom user interface and responsive layout, compatible with both Android and iOS devices.",
      projTools: [
        "Flutter",
        "Dart",
        "Custom UI",
        "Responsive Design",
        "Mobile App"
      ],
      projLink:
          "https://github.com/JenishMichael/Flutter-Scientific-Calculator",
    ),
  ];
}
