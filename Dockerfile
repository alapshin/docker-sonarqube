FROM sonarqube:6.7.3

# Custom Plugins
ENV ANDROID_PLUGIN_VERSION=1.1 \
    CHECKSTYLE_PLUGIN_VERSION=4.9 \
    FINDBUGS_PLUGIN_VERSION=3.7.0 \
    GITHUB_PLUGIN_VERSION=1.4.2.1027 \
    DETEKT_PLUGIN_VERSION=0.4.1

RUN cd ${SONARQUBE_HOME}/extensions/plugins/ \
    # Android Lint
    && curl --silent --location --output ./sonar-android-plugin-${ANDROID_PLUGIN_VERSION}.jar \
        https://github.com/ofields/sonar-android/releases/download/${ANDROID_PLUGIN_VERSION}/sonar-android-plugin-${ANDROID_PLUGIN_VERSION}.jar \
    # Checkstyle
    && curl --silent --location --output ./sonar-checkstyle-plugin-${CHECKSTYLE_PLUGIN_VERSION}.jar \
        https://github.com/checkstyle/sonar-checkstyle/releases/download/${CHECKSTYLE_PLUGIN_VERSION}/checkstyle-sonar-plugin-${CHECKSTYLE_PLUGIN_VERSION}.jar \
    # Detekt
    && curl --silent --location --output ./sonar-kotlin-${DETEKT_PLUGIN_VERSION}.jar \
        https://github.com/arturbosch/sonar-kotlin/releases/download/${DETEKT_PLUGIN_VERSION}/sonar-kotlin-${DETEKT_PLUGIN_VERSION}.jar \
    # Findbugs
    && curl --silent --location --output ./sonar-findbugs-plugin-${FINDBUGS_PLUGIN_VERSION}.jar \
        https://github.com/spotbugs/sonar-findbugs/releases/download/${FINDBUGS_PLUGIN_VERSION}/sonar-findbugs-plugin-${FINDBUGS_PLUGIN_VERSION}.jar \
    # Github
    && curl --silent --location --output sonar-github-plugin-${GITHUB_PLUGIN_VERSION}.jar \
        https://sonarsource.bintray.com/Distribution/sonar-github-plugin/sonar-github-plugin-${GITHUB_PLUGIN_VERSION}.jar \
    && ls -la ${SONARQUBE_HOME}/extensions/plugins/
