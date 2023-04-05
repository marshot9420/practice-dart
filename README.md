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
