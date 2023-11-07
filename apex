1) You are tasked with using Apex in Salesforce, initialize a string variable with your name and country, and then utilize the System.debug statement to log both your name and country.
```
string name;
name = 'Bedriye Sumeyra Iscan';
System.debug('My name is: ' + name);

string country;
country = 'The Netherlands';
System.debug('My country is: ' + country);
```

2) You are tasked with creating a new account in Salesforce with the specified details and then inserting it. Please replace the placeholders with your own information. The account details are as follows:
Account Name: Your Name,
Phone: Your Phone Number,
Website: Any Website,
Description: This is Your Name's account.

```
Account dmlAccount = new Account();
dmlAccount.Name = 'Bedriye Sumeyra';
dmlAccount.Phone = '0614495741';
dmlAccount.Website = 'bs@dml.com';
dmlAccount.Description = 'This is Bedriye Sumeyra\'s account';
insert dmlAccount;
```


3) You are tasked with implementing a login system in Salesforce. The system should display different login messages based on the user's input. The requirements are as follows:
If the correct username and correct password are provided, the system should display "You logged in successfully."
If the correct username is provided but an incorrect password is entered, the system should display "You entered a wrong password."

loginScreen class
```
public class loginScreen {
    public static String loginScreenMethod(String Username, Integer Password) {
        String loginMessage = ' ';

        if (Username == 'BS88' && Password == 1080) {
            loginMessage = 'You logged in successfully.';
        } else if (Username == 'BS88' && Password != 1080) {
            loginMessage = 'You entered a wrong password.';
        }
return loginMessage;
    }
}
```

loginscreenTest class
```
@isTest
public class loginscreenTest {
    @isTest
    public static void test1() {
        String result = loginScreen.loginScreenMethod('BS88', 1080);
        System.assertEquals('You logged in successfully.', result);
    }
    @isTest
    public static void test2() {
        String result = loginScreen.loginScreenMethod('BS88', 1088);
        System.assertEquals('You entered a wrong password.', result);
    }
}

```
