import 'dart:convert';

import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(List<String> arguments) {

  // 1. dynamic(자료형이 계속 바뀐다) , var(자료형 한 번으로 고정)

  // dynamic aa = '11';
  // aa = 22;

  // var bb = '22';
  // bb = 22;
  // print(aa);

  // 2. const(컴파일 - 소스 내에서 컴파일) , final(런타임 - 빌드 컴파일)

  // const aa = 'image_name';  
  // final bb = DateTime.now();  // DateTime은 빌드 컴파일 될 때 실행이 됨

  // 3. static(글로벌) 시작 - 끝까지 메모리에 유지가 된다.

  // String, bool, 
  // num = (int, double) -> int에 num을 넣으려면 정수를 바꿔줘야 한다


  // String aa = 'hello';
  // bool bb = true;
  
  // int cc = 5;
  // double dd = 5.5;
  
  // num은 자주 사용하지 않음

  // num ee = cc;
  // num ff = dd;

  // cc = ee;

  // DateTime ff = DateTime.now();

  // 4. array 

  // List aa = ['1', '2', '3', '4'];
  // Set bb = {'1', '2', '3', '3'};
  // Map cc = {'key': 'value','key2':'value2'};

  // 5. 제네릭

  // List<String> aa1 = []; // List<E>에서 E는 Java에서 Object와 같음
  // Map<int, DateTime> bb = {1:'asdf'}; // DateTime이 들어가야 할 자리에 String이 들어감.


  // 6. class

  // Car car = Car(name: '소나타'); // 인스턴스화
  // Car2 car2 = Car2('소나타');

  // 7. null-safety(dart 2.0)

  // null이 포함이 가능한 변수에는 변수 뒤에 ?를 붙인다.
  // null이 포함이 안 된 변수에는 그냥 변수만 쓴다.
  // ?를 붙이지 않았는데 null이 어디선가 들어가있다면 코드가 터진다.

  // String? ~ = String + null;

  // String? aa = 'hello';

  // ??

  // aa가 null이면 'hi'로 치환 -> if(aa == null) {a = 'hi'}와 똑같은 논리
  // 특정한 경우에는 if else문으로 null값 처리를 하고 간단한 경우에는 아래처럼 처리
  // String a = aa ?? 'hi';

  // !(주의)
  // 얘는 무조건 null이 아님.
  // 근데도 null이 들어오면 앱이 죽는다.
  // String a = aa!;


  // ?.
  // List<String?>? abc;

  // abc?.length;  // null일 때는 수행이 안 됨

  // late(지금은 정의해놓고 나중에 사용하겠다)
  // late String aa;

  // DateOfWeek aa = DateOfWeek.saturday;

  // String stuName = '정의현';
  // String stuAddress = '선릉';

  // Student stu = Student(Gender.male, name: stuName, address: stuAddress);

  // Gender gender = stu.gender;
  // String name = stu.name;
  // String address = stu.address ?? "주소가 없습니다.";
  // String age = stu.age?.toString() ?? "나이 정보가 없습니다.";

  // print("성별: " + gender.toString().split('.').last);
  // print("이름: " + name);
  // print("주소: " + address);
  // print("나이: " + age);


  // 2. function(단독) vs method(class 안에서)

  // casting

  // 자료형을 변환
  // 업캐스팅 : 자식 자료형 -> 부모 자료형 ex) int -> null (굳이 x)
  // 다운캐스팅 : 부모 자료형 -> 자식 자료형

  // String -> int

  // String a = '5';
  // int b = int.parse(a);
  // double c = double.parse(a);

  // a = c.toString();


  // num -> int

  // num aa = 5.5;
  // int bb = aa.toInt();

  // 연산자

  // print(5 + 2);
  // print(5 - 2);
  // print(7 / 2);
  // print(7 ~/ 2);  // 나눗셈의 몫
  // print(7 % 2);   // 나눗셈의 나머지

  // 유형 확인 연산자(is)
  // print(5 is int);

  // 주석


  /// 설명주석 (설명 달아주면 호출할 때 설명이 보임)
  // Gender.

  // argument(넣는 쪽) - parameter(받는 쪽)

  // record(dart 3.0 이상)
  // (int a, String b) record = (5, 'ab');
  // print(record.$1);
  // print(record.$2);

  // ({double latitude, double longtitude}) record1 = (latitude: 1.123, longtitude: 4.12321);
  // print(record1.latitude);
  // print(record1.longtitude);

  



  // 1. int 데이터를 입력받아 제곱근으로 반환하는 함수
  // 2. 위도(1.11), 경도(2.22)를 반환받는 함수
  // 3. 입력받은 문자열을 거꾸로 출력하는 함수
  // 4. 입력받은 문자열을('male', 'female')을 Gender.male 또는 Gender.female로 변환해서 반환하는 함수

  // print(one(6));
  // print(two());
  // three('azx');
  // print(four('male') ?? Gender.female);

  // String a = '5';
  // int cc = int.parse(a);
  // int dd = a.toInt(); // extension ver


  // Student student2 = Student(gender, name: 'name', address: 'aa');

  // student2.age;

  // print(a);
  // print('$a++');
  // print('${student2.name} ++');

  DateTime abc = DateTime.now();
  // print(abc);
  // print(abc.year);
  // print(abc.month);
  // print(abc.day);
  // print(abc.yyyymmdd());

  
  // call by value, call by reference
  // 값 복사(일반 자료형)
  // 주소 복사(collection 주소 복사)

  // String abcd = 'abcd';
  // print('abcd.hashCode: ${abcd.hashCode}');
  // changeString(abcd);
  // print(abcd);  // 값 변경 x

  // List abcd2 = ['aa'];
  // print('abcd2.hashCode: ${abcd2.hashCode}');
  // addString(abcd2);
  // addString([...abcd2]);  // 새로운 배열을 만들어서 전달
  // print(abcd2); // 값 변경 o

  // 직렬화

  // 1. 데이터 원본
  String jsonData = '{"name":"홍길동", "age": 5}';

  // 2. 1차 가공
  Map<String, dynamic> jsonMap = jsonDecode(jsonData);

  // print(jsonData);
  // print(jsonMap);

  // 3. 2차 가공 역직렬화 (json데이터 -> 모델화)
  // jsonMap -> Student

  Student student = Student.fromMap(jsonMap);

  // print(student.age);
  // print(student.name);

  // 문제

  // class Name : Car

  // String name
  // int modelYear
  // String company
  // bool isElectric

  // fromMap 만들고 factory 클래스 반환

  String jsonData2 = 
  '{"name":"Porsche 911", "modelYear":2023, "company":"porsche", "isElectric": false}';

  Car car = Car.fromJson(jsonData2);

  print(car.name);
  print(car.modelYear);
  print(car.company);
  print(car.isElectric);
  print(car.toJson());
}

class Car {
  final String name;
  final int modelYear;
  final String company;
  final bool isElectric;

  Car({
    required this.name,
    required this.modelYear,
    required this.company,
    required this.isElectric,
  });


    // json String -> Map -> Class
    factory Car.fromJson(String json) => Car.fromMap(jsonDecode(json));

    factory Car.fromMap(Map<String, dynamic> map) {
      return Car(
        name: map['name'],
        modelYear: map['modelYear'],
        company: map['company'],
        isElectric: map['isElectric']
        );
    }

    // Class -> Map -> json String

    Map<String, dynamic> toMap(){
      return {
        "name": name,
        "modelYear": modelYear,
        "company": company,
        "isElectric": isElectric        
      };
    }

    String toJson() => jsonEncode(toMap());

    // String toJson(){
    //   return jsonEncode(toMap());
    // }

}

// 값만 던짐
// void changeString(String input) {
//   print('input.hashCode: ${input.hashCode}');
//   input = 'bbb';
//   print('input.hashCode: ${input.hashCode}');
// }

// void addString(List input) {
//   print('Listinput.hashCode: ${input.hashCode}');
//   input.add('bb');
//   print('Listinput.hashCode: ${input.hashCode}');
// }

extension DateTimeExtension on DateTime {
  /// 오늘 날짜에서 연도, 월, 일 가져옴
  /// ```dart
  /// DateTime today = DateTime.now();
  /// int yyyy = today.year;   2023
  /// int mm = today.month;    12
  /// int dd = today.day;      9
  /// ```
  String yyyymmdd() {
    int yyyy = this.year;
    int mm = this.month;
    int dd = this.day;
    return "$yyyy-$mm-$dd";
  }
}

extension StringExtension on String {
  int toInt(){
    return int.parse(this);
  }
}

extension StringExtension2 on String? {
  int toInt(){
    return int.parse(this ?? '0');
  }
}

extension StudentExtension on Student {
  void callNameAndAge() {
    print("name & age");
  }
}

int one(int num) {

  return num * num;
}

({double latitude, double longtitude}) two() {

  ({double latitude, double longtitude}) record = (latitude: 1.1, longtitude: 2.22);

  return record;
}


// 3
three(String aa) {
  print(aa.split("").reversed.join());
}

// 4
Gender? four(String gender) {

  Gender male = Gender.values[0];
  Gender female = Gender.values[1];

  if(gender == 'male') {
    return male;
  }else if(gender == 'female') {
    return female;
  }else {
    return null;
  }

}


// input : x, output : x 
// void 없어도 됨.
void function1() {

}

// input : x , output : o
String function2() {

  return 'hello';
}

// input : o, output : x
void function3(String title) {
  // ..
}

// input : o, output : o
String function4(String name) {
  return 'a';
}

// 열거형

// enum DateOfWeek {
//   monday,
//   tuesday,
//   wendesday,
//   thursday,
//   friday,
//   saturday,
//   sunday
// }

enum Gender{
  /// 남자
  male,
  female
}


// named 파라미터
// class 이름 Student

// gender(enum) / null x / 필수 unNamed
// name(String) / null x / 필수
// address(String) / null o / 필수
// age(int) / null o / 선택


class Student {

  final String name;
  final int? age;

  // 이름 없는 생성자(기본)
  Student({
    required this.name,
    required this.age,
  });

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      name: map['name'],
      age: map['age']
      );
  }

  // 이름 있는 생성자(여러 개 생성 가능)
  // Student.a100({
  // })

}

// named ({...}) Map 형식

// class Car {
//   final String name;  // ?가 없이 그냥 선언이 됐기 때문에 null이 못 들어온다.  
//   final int? age;
//   Car({
//     required this.name, // null이 못 들어오기 때문에 필수로 name에 값이 들어와야 한다는 의미
//     this.age
//   });
// }

// Key값 없이 Value만 들어온다

// class Car2 {
//   final String name;
//   Car2(this.name);
// }
