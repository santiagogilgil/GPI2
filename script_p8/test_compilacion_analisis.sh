echo "Los test de Sakai:"
mvn -f Escritorio/sakai/kernel test
echo "La compilación de Sakai: "
mvn -f Escritorio/sakai/kernel install
echo "El analisis de código de Sakai:"
~/Escritorio/pmd-bin-7.1.0/bin/pmd check -d Escritorio/sakai/kernel/kernel-test/src/main/java/org/sakaiproject/test/. -R rulesets/java/quickstart.xml -f text
~/Escritorio/pmd-bin-7.1.0/bin/pmd check -d Escritorio/sakai/kernel/kernel-impl -R rulesets/java/quickstart.xml -f text
~/Escritorio/pmd-bin-7.1.0/bin/pmd check -d Escritorio/sakai/kernel/kernel-storage-util -R rulesets/java/quickstart.xml -f text
~/Escritorio/pmd-bin-7.1.0/bin/pmd check -d Escritorio/sakai/kernel/kernel-util -R rulesets/java/quickstart.xml -f text
~/Escritorio/pmd-bin-7.1.0/bin/pmd check -d Escritorio/sakai/kernel/kernel-tim -R rulesets/java/quickstart.xml -f text

