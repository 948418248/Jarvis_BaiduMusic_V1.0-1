 # **Jarvis_BaiduMusic_V1.0**

 ## 开发环境 idea  
_里面自带一首歌曲《西海情歌》，如果需要更多歌曲，可以下载MP3及歌词放入MP3的文件夹_

 ## pom文件自带Tomcat插件
```xml
    <plugins>
        <!-- 配置Tomcat插件 -->
        <plugin>
            <groupId>org.apache.tomcat.maven</groupId>
            <artifactId>tomcat7-maven-plugin</artifactId>
            <version>2.2</version>
            <configuration>
                <port>8080</port>
                <path>/music</path>
                <uriEncoding>UTF-8</uriEncoding>
                <server>tomcat7</server>
            </configuration>
        </plugin>
    </plugins>
```
```java
    package com.jarvis.util;
    
    import java.io.BufferedReader;
    import java.io.FileInputStream;
    import java.io.IOException;
    import java.io.InputStreamReader;
    
    import javax.servlet.http.HttpServletRequest;
    
    /**
     * 音乐歌词解析工具类
     * 
     * @author Jarvis
     * @version v1.0
     */
    public class MusicUtil {
        /**
         * 获取音乐歌词
         *
         * 
         * @param request
         * @return String 歌词
         */
        public static String getLrc(HttpServletRequest request) {
    
            StringBuffer buffer = new StringBuffer();
    
            // 获取音乐名称
            String musicName = request.getParameter("name");
            // 获取音乐文件对应的歌词路径
            String filePath = request.getRealPath("mp3") + "/" + musicName + ".lrc";
            FileInputStream fileInputStream = null;
            BufferedReader bReader = null;
            InputStreamReader isr = null;
            // 开始读取歌词文件
            try {
                fileInputStream = new FileInputStream(filePath);
                isr = new InputStreamReader(fileInputStream, "utf-8");
                bReader = new BufferedReader(isr);
                // 建立一个临时文件
                String temp = null;
                while ((temp = bReader.readLine()) != null) {
                    buffer.append(temp);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (bReader != null) {
                    try {
                        bReader.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
    
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
    
                if (isr != null) {
                    try {
                        isr.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
            return buffer.toString();
        }
    
        public static void main(String[] args) {
            System.out.println();
        }
    }
```


可以直接使用该插件启动web服务器    
1. 第一行
2. 第二行
3. 第三行

- 第一行
- 第二行
- 第三行

![image](https://github.com/Jarvis-JunZhu/Jarvis_BaiduMusic_V1.0/blob/master/src/main/webapp/images/m2015032016253154.jpg)


`https://github.com/Jarvis-JunZhu/Jarvis_BaiduMusic_V1.0`
