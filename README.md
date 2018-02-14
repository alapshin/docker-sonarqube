# SonarQube Docker service

SonarQube docker image with couple of preinstalled plugins and PostgreSQL as
database of choice.

List of preinstalled plugins:
1. [FindBugs][findbugs]
2. [Checkstyle][checkstyle]
3. [Android Lint][androidlint]

## How to use this image
```
docker-compose up
```

After that go to `localhost:9000` and login using default credentials `admin:admin`.


[findbugs]: https://github.com/spotbugs/sonar-findbugs
[checkstyle]: https://github.com/checkstyle/sonar-checkstyle
[androidlint]: https://github.com/ofields/sonar-android
