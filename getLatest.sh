#!/bin/bash

echo "Pulling latest buildtools..."
curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

echo "Configuring Git..."
git config --global --unset core.autocrlf

echo "Building with latest buildtools..."
java -jar BuildTools.jar

echo "Done building. Copying file to /output"
cp spigot*.jar /output/spigot.jar
