---
layout: default
permalink: /unit-testing-with-derby
---

# Using Derby as an In-Memory Data Source

<!-- 2/3/2015 -->

While I'm a fan of using mock objects for unit and integration testing, there are times when they do not adequately mimic the functionality of an underlying resource.  Often, this underlying resource is a relational database.  Creating relational databases that persist to disk during testing, however, can be very inconvenient since test failures and filesystem differences can cause tests to behave erratically.  For this reason, quickly creating, using, and destroying databases in memory is frequently a good solution to this problem.  In the Java world, Derby is a popular embedded database that supports in-memory usage.

## Dependencies

To use embedded Derby in a Java project, you'll need to include **derby.jar** in your project.  If you're using [Gradle](http://www.gradle.org), the following dependency can be included in your build script (where **<VERSION>** is the derby version that you wish to use):

	repositories {
		mavenCentral()
	}

	dependencies {
		compile 'org.apache.derby:derby:<VERSION>'
	}

NOTE: In-memory derby was introduced in version 10.5.  Using versions released prior to this will not work.

## Plain JDBC

If you use plain JDBC, creating a connection is easy.  Simply create an instance of **EmbeddedDriver** and create a database connection on-the-fly.  In the following example, the database we are creating is names, **MyDatabase**:

	EmbeddedDriver driver = new EmbeddedDriver();
	Connection conn = driver.connect("jdbc:derby:memory:MyDatabase;create=true", new Properties());

Depending on the scenario, you may want to turn off Derby logging (by default, Derby writes log messages to a file called **derby.log**).  If this is the case, the output can be written to **/dev/null** (or **NUL** on Windows):

	if (System.getProperty("os.name").toLowerCase().contains("windows")) {
		System.setProperty("derby.stream.error.file", "NUL");
	} else {
		System.setProperty("derby.stream.error.file", "/dev/null");
	}

WARNING: Doing this will turn off Derby logging for the entire JVM.  Don't use the above code in production systems or in cases where logging may be desirable!

## Using EmbeddedDatabaseBuilder

If you're using Spring, creating an embedded database is even easier.  As long as Derby is on the classpath, the [EmbeddedDatabaseBuilder](http://docs.spring.io/spring/docs/current/javadoc-api/org/springframework/jdbc/datasource/embedded/EmbeddedDatabaseBuilder.html) allows you to create a database in memory in seconds.

	EmbeddedDatabaseBuilder builder = new EmbeddedDatabaseBuilder();
    EmbeddedDatabase db = builder.setType(EmbeddedDatabaseType.DERBY).addScript("my-setup-script.sql").build();
    JdbcTemplate jdbc = new JdbcTemplate(db);
    // run tests against the database . . .
    db.shutdown();
