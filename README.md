# Prerequisite

## Android

Follow https://github.com/calabash/calabash-android/blob/master/documentation/installation.md to install JDK, Android SDK, Ruby, Ant and then calabash-android 

## Tools 
* Guthub Desktop for version control
* Android Studio or Sublime for scripting
* Ansicon for running cucumber
* UIautomatorviewer(under Android SDK) for locating controls 
* Sublime Text for editing Ruby 

上述工具都已上传到百度云盘, http://pan.baidu.com/s/1pLtg5Wf

# Workflow
* Fork the project to your own repro
* Clone your repro to your local machine
* Update your feature file and commit
* Push your local change to your own repro
* Request a pull request to merge your change to the original project

# Scripting Requirement
* Feature的标题格式为 编号_功能名称.feature, 比如 01_login.feature  
  
* 使用Connextra格式来描述feature 
    ```
    In order to [benefit]  
    As a [stakeholder]  
    I wants to [feature]    
    ```  
    
    ```
    In order to simulate login activities  
    As a valid consultant  
    I want to login, logout and re-login  
    ```  
      
* Scenarios的标题格式为 编号 场景描述, 比如 001 I can not log into my app with wrong password  

* 合理使用cucumber的关键字，虽然对于程序而言他们没有任何区别，但是要体现你的思考逻辑 

    |Keyword | Explanation |
    | -----|----|
    | Given（给定)| setup(创建测试所需环境) |
    | When（当）| test（触发被测事件）|
    | Then（则）| assert(断言，验证结果)|

# Tips
* 在开发过程中使用tag, 来运行单一用例，避免重复运行不需要的场景
```
d:\>calabash-android run 116.apk --tags @wip
```    
* 尽量使用declarative(informative)语言来描述场景， 参见01_login_declarative.feature 这样写出来的用例更容易沟通，也更简洁。
* 有些场景下使用imperative(communicative)语言来描述会更加高效，比如需要使用表格来输入多组数据

# Next Goal
* 提高抽象能力，抽象每一个Scenario， 避免在Scenario中将UI操作Step化， 针对用户界面控件的描述属于较低层次的领域描述，应该对其进行合理的抽象提高描述的领域层次
* 提高设计能力，力求每个Scenario都有独立意义，能够不依赖其他任何场景独立运行
* 提高代码能力，使用更加灵活的匹配、正则来实现Step的具体操作，http://coryschires.com/ten-tips-for-writing-better-cucumber-steps/8