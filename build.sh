i=1;
for f in $( ls )
do
    if [ -d "$f" ];then
        cd "$f";
        mvn compile;
        mvn clean package;
        echo 第$i题结果：;
        java -jar target/$f.jar;
        cd ..;
        let i++;
        echo "输入任意键继续";
        read next;
    fi
done
                                     