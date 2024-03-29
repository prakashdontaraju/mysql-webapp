# Web App To Quickly Know Proteins Associated With Diseases

## Business Case

The scientists in our company (customers) require a web application to view protein, gene and disease information as well as generate customized reports.

This information is otherwise retrieved manually from multiple resources specified below. 

### Focus

prod_p2p is a web application that provides this information and allows to generate customized reports. I developed this web application by engineering a MySQL database from the below data sources and utilizing PHP, HTML & CSS.

### Data Sources

* [The Universal Protein Resource (UniProt)](https://www.uniprot.org/uniprot/)
* [HUGO Gene Nomenclature Committee at the European Bioinformatics Institute (HGNC)](https://www.genenames.org/)
* [Online Mendelian Inheritance in Man (OMIM)](http://omim.org/)
* [Disease Ontology (DO)](http://disease-ontology.org/)

I selected a few diseases and utilized the associated protein and gene data. All data belongs to these entities.

## Process

* Noted business requirements in detail (iterative process)

* Collected data from the 4 data sources

* Performed Data Modeling
  - Conceptual Data Model
  - Logical Data Model
  - Physical Data Models

* Applied Data Normalization
  - First Normal Form
  - Second Normal Form
  - Third Normal Form

* Engineered a MySQL Database
  - Transformed & Loaded Data (local .csv to MySQL database)
  - Validated foreign keys among tables & created SQL Views
  - Built custom Functions & Stored Procedures to include in reports

* Optimized MySQL Performance
  - Database structure
  - SQL statements

* Developed the Website
  - PHP
  - HTML & CSS

### Home Page

<img src="https://github.com/prakashdontaraju/mysql-webapp/blob/master/webapp_p2p/p2p_images/2.PNG">

### Entity-Relationship Diagram

<img src="https://github.com/prakashdontaraju/mysql-webapp/blob/master/webapp_p2p/p2p_images/6.PNG">

## Implementation

### Tools

```
Browser       Chrome or any other
Servers       Web server, database server, PHP server
XAMPP         5.6.32/PHP 5.6.32 or newer
MySQL         MySQL Workbench
Text Editor   VS Code or any other
```

### Deployment

Instructions to successfully deploy my web application:

* Run Apache server and MySQL server on XAMPP
* Unzip [webapp_p2p.zip](https://github.com/prakashdontaraju/mysql-webapp/blob/master/webapp_p2p/webapp_p2p.zip) contents into htdocs sub-folder within the installed xampp folder
* Launch MySQL Workbench and create a DBA user by running the following code in MySQL Workbench:

```
-- username: DBAuser & password: Xampp64097
CREATE USER 'DBAuser'@'localhost' IDENTIFIED BY 'Xampp640697';

-- to use custom username & password: change content in DbConnection.php file using a text editor

-- grant database administrator privileges to the created DBAuser
GRANT ALL PRIVILEGES ON * . * TO 'DBAuser'@'localhost';
```

* Open the script [prod_p2p_bk](https://github.com/prakashdontaraju/mysql-webapp/blob/master/webapp_p2p/prod_p2p_bk.sql) from the contents of the unzipped folder
* Run the script on MySQL Workbench to import the prod_p2p database 
* The restored prod_p2p database has views, functions and stored procedures required to generate reports from the web application
* To check if the database is properly connected open: http://localhost/webapp_p2p/DbConnection.php
* A successful deployment of the database shows a blank screen as below:

<img src="https://github.com/prakashdontaraju/mysql-webapp/blob/master/webapp_p2p/p2p_images/1.PNG">

* If you do not see a blank screen:
  - Open the DbConnection.php file from the contents of the unzipped folder
  - Verify if details such as username & password are correct

* If you see a blank screen:
  - visit the home page: http://localhost/webapp_p2p/ProjectPresentation.php
  - use other aspects of my web application

## Reports

<img src="https://github.com/prakashdontaraju/mysql-webapp/blob/master/webapp_p2p/p2p_images/9.PNG">

### Report 1: Gene Details

<img src="https://github.com/prakashdontaraju/mysql-webapp/blob/master/webapp_p2p/p2p_images/10.PNG">

### Report 2: Protein Synonym Information

<img src="https://github.com/prakashdontaraju/mysql-webapp/blob/master/webapp_p2p/p2p_images/11.PNG">

### Reports 3 to 6: Protein, Disease & Database data reports

<img src="https://github.com/prakashdontaraju/mysql-webapp/blob/master/webapp_p2p/p2p_images/12.PNG">

## App Documentation

I included further details about data set, deployment & usage instructions, practical applications and future work [here](https://github.com/prakashdontaraju/mysql-webapp/blob/master/webapp_p2p/app_documentation.md).

## Connect With Me

**Prakash Dontaraju** [LinkedIn](https://www.linkedin.com/in/prakashdontaraju) [Twitter](https://twitter.com/WittyGrit) [Medium](https://medium.com/@wittygrit)
