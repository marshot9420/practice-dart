void main() {
  var oldFriends = ["marshot", "tomato"];
  var newFriends = [
    "lewis",
    "ralph",
    "darren",
    for (var friend in oldFriends) "❤ $friend",
  ];
  print(newFriends);
}
