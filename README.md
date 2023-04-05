# 1.0 - Hello World

main함수

main함수는 모든 Dart 프로그램의 Entry point이다.
main 함수에서 쓴 코드가 호출된다. (만약 main이 없다면 실행이 되지 않음)
dart는 자동으로 세미콜론을 붙여주지 않기 때문에 직접 붙여야 한다. (일부러 세미콜론을 안 쓸 때가 있기 때문)

# 1.1 - The Var Keyword

변수를 만드는 2가지 방법

```
void main() {
var name = "pizza"; // 방법 1
String name = "chicken"; // 방법 2
name = "chicken ";
}
```

함수나 메소드 내부에 지역변수를 선언할 때는 var를 사용하고
class에서 변수나 property를 선언할 때는 타입을 지정해준다.

# 1.2 - Dynamic Type

Dynamic 타입

여러가지 타입을 가질 수 있는 변수에 쓰는 키워드이다. (해당 변수의 타입을 알 수 없을 때 주로 사용)
변수를 선언할 때 dynamic을 쓰거나 값을 지정하지 않으면 dynamic 타입을 가진다.

```
void main(){
dynamic name;
var name2;
}
```

# 1.3 - Nullable Variables

null safety는 개발자가 null 값을 참조할 수 없게 하는 것이다.

다음 코드를 보자.

```dart
bool isEmpty(String string) => string.length == 0;

main(){
isEmpty(null);
}
```

다음과 같은 코드는 어떻게 실행될까?

정답은 NoSuchMethodError를 실행한다. 왜 이렇게 실행될까?
바로 String을 보내야 할 곳에 null을 보냈기 때문이다.
null에는 length라는 속성이 없기 때문이기도 하다.

이와 같은 에러는 컴파일러에서 잡을 수 있는 에러가 아니다.
이런 상황이 발생하지 않도록 null를 삭제하기에는 null 값은 유용하다.

그럼 어떻게 null 값을 참조하는 것을 dart는 어떻게 보호할까?
dart에서는 변수가 null이 될 수 있음을 명확히 표시해야한다.

다음 코드를 보자

```dart
void main(){
String name = "jisoung";
name = null;
}
```

이 코드는 에러가 난다. name이 null 값을 참조할 수 있다고 알려주지 않고 null 값을 참조하기 때문이다.

그러면 다음 코드를 보자.

```dart
void main(){
String? name = "jisoung";
name = null;
}
```

이 코드는 에러가 나지 않는다. 차이점이 보이는가? 바로 `?`를 사용해 이 변수에는 null이 참조될 수 있음을 알려주는 것이다. 만약 `?`를 붙인 변수는 이 변수가 null인지 아닌지 확인해야 한다.

```dart
void main(){
String? name = "jisoung";
name = null;
if(nico != null){
nico.isNotEmpty;
}
}
```

# 1.4 - Final Variables

final 변수

var대신 final로 변수를 만들게 되면 이 변수는 수정할 수 없게 된다. (딱 한 번만 설절될 수 있음)
자바스크립트의 const랑 비슷하다.

```
void main() {
final name = "pizza";
name = "ham"; // 수정 불가

final String username = "tom";
name = "tom2"; // 수정 불가
}
```

# 1.5 - Late Variables

final 키워드는 해당 변수를 상수로 선언
late final 변수는 선언과 초기화를 분리할 수 있다

초기 데이터 없이 먼저 변수를 생성하고 추후에 데이터를 넣을 때 주로 사용한다.
flutter로 data fecthing을 할 때 유용하다.
late 변수를 만들고, API에 요청을 보낸 뒤에 API에서 값을 보내주면 그 응답값을 late변수에 넣어 사용할 수 있다.

```
void main() {
late final String name;

print(name); // name 변수에 접근 불가
}
```

# 1.6 - Constant Variables

const 변수

dart에서 const는 compile-time constant를 만들어준다.
const는 컴파일할 때 알고 있는 값을 사용해야 한다.
만약 어떤 값인지 모르고, 그 값이 API로부터 오거나 사용자가 화면에서 입력해야 하는 값이라면 그건 const가 아닌 final이나 var가 되어야 한다.

```
void main() {
const name = "tom"; // 컴파일 시점에 바뀌지 않는 값
final username=fetchAPI(); // 컴파일 시점에 바뀌는 값
}
```

const: 컴파일 시점에 바뀌지 않는 값 (상수)
final: 컴파일 시점에 바뀌는 값 (API에서 받아온 값, 사용자 입력값)

# 1.7 - Recap

변수를 만드는 2가지 방법

```dart
void main() {
var name = "pizza"; // 방법 1
name = "chicken ";
String name2 = "chicken"; // 방법 2
}
```

final: 값을 재할당하지 못하는 변수를 만듦
dynamic type: 어떤 타입의 데이터가 들어올 지 모를 때 사용함
const: 컴파일 할 때 값을 알고 있는 변수
final: 런타임 중에 만들어질 수 있는 변수
late: final, var, String같은 것들 앞에 써줄 수 있는 수식어로서 어떤 데이터가 올 지 모를 때 사용한다.

# 2.0 - Basic Data Types

기본 데이터 타입

아래 타입을 포함한 거의 대부분의 타입들이 객체로 이루어져 있다. (함수도 객체)
이것이 Dart가 진정한 객체 지향 언어로 불리는 이유이다.

```
void main() {
String name = "tom";
bool isPlay = true;
int age = 10;
double money = 52.55;
num x = 12;
num y = 1.2;
}
```

# 2.1 - Lists

dark에서 lists를 선언하는 것은 두 가지 방법이 있다.

```dart
void main(){
int case1 = [1,2,3,4,5];
List case2 = [1,2,3,4,5];
}
```

만약 vscode나 dartPad를 사용한다면 맨 끝을 쉽표로 마무리하면 유용하다.

```dart
void main(){
int case1 = [
1,
2,
3,
4,
5,
];
}
```

dart의 유용한 점은 `collection if`와 `collection for`을 지원하는 것이다.

collection if를 사용하면 `존재할 수도 안할 수도 있는 요소를 가지고 올 수 있다.`

```dart
void main(){
var giveMeSix = true;
int case1 = [
1,
2,
3,
4,
5,
if(giveMeSix) 6,
];
// 아래와 같은 기능이다.
if(giveMeSix){
case1.add(6);
}
}
```
