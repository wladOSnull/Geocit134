# Geo Citizen


[![Coverage](http://wlados-sonarqube.ddns.net:9000/api/project_badges/measure?project=com.softserveinc%3Ageo-citizen&metric=coverage&token=f9f17518dec24e8ddaf7851e1673547236e2a16f)](http://wlados-sonarqube.ddns.net:9000/dashboard?id=com.softserveinc%3Ageo-citizen)
[![Code Smells](http://wlados-sonarqube.ddns.net:9000/api/project_badges/measure?project=com.softserveinc%3Ageo-citizen&metric=code_smells&token=f9f17518dec24e8ddaf7851e1673547236e2a16f)](http://wlados-sonarqube.ddns.net:9000/dashboard?id=com.softserveinc%3Ageo-citizen)
[![Security Rating](http://wlados-sonarqube.ddns.net:9000/api/project_badges/measure?project=com.softserveinc%3Ageo-citizen&metric=security_rating&token=f9f17518dec24e8ddaf7851e1673547236e2a16f)](http://wlados-sonarqube.ddns.net:9000/dashboard?id=com.softserveinc%3Ageo-citizen)
[![Vulnerabilities](http://wlados-sonarqube.ddns.net:9000/api/project_badges/measure?project=com.softserveinc%3Ageo-citizen&metric=vulnerabilities&token=f9f17518dec24e8ddaf7851e1673547236e2a16f)](http://wlados-sonarqube.ddns.net:9000/dashboard?id=com.softserveinc%3Ageo-citizen)

[![Quality gate](http://wlados-sonarqube.ddns.net:9000/api/project_badges/quality_gate?project=com.softserveinc%3Ageo-citizen&token=f9f17518dec24e8ddaf7851e1673547236e2a16f)](http://wlados-sonarqube.ddns.net:9000/dashboard?id=com.softserveinc%3Ageo-citizen)

___Prerequisites: Ubuntu, Git, Maven3, Tomcat 9___

1) `git clone https://github.com/wladOSnull/Geocit134.git; cd Geocit134`

2) in config file [`~/Geocit134/src/main/resources/application.properties`](https://git.io/vA4Sw)
	you might want to edit following properties
	 * [`front.url`](https://git.io/vARyB) - front url
	 * [`db.url`](https://git.io/vARyu) - db uri (__db must be created manually__)
	 * [`db.username`](https://git.io/vARyo) & [`db.password`](https://git.io/vARyK) - db credentials

3) `mvn install && mv target/citizen.war /usr/share/tomcat9/webapps/ && /usr/share/tomcat9/bin/startup.sh`

4) e.g. <http://localhost:8080/citizen/>

# 

if you want to make changes to frontend 
you have to cd to `~/Ch-058/front-end` dir and run `npm run dev` after successful execution you'll see url.
to generate the production build you have to
 - replace url with tomcat's url (e.g. `'http://localhost:8080/citizen'`) in [`~/Ch-058/front-end/src/main.js`](git.io/vA49U)
 - run `npm run build`, move all files from `~/Ch-058/front-end/dist` to `~/Ch-058/src/main/webapp`
 - in [`~/Ch-058/src/main/webapp/index.html`](https://git.io/vAR9l) put dots (ha-ha) on lines
    * after [`<link href=`](https://git.io/vARrw) 
    * after [`<script type=text/javascript src=`](https://git.io/vARr5)
- then repeat 3rd step of `build and deploy`
