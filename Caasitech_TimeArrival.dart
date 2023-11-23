import 'dart:io';

void main() {
  // The latest time to be at Caasitech is 9:00am for work
  DateTime latestTime = DateTime(9, 0);

  // Let the user input his time of arrival with a form day, month, year, hour and lastely minutes
  print("Enter your time of arrival in the format: dd/mm/yyyy hh:mm");
  String? input = stdin.readLineSync(); // Use String? type to allow null
  if (input != null) {
    // Check if input is not null
    List<String> parts = input.split(" ");
    List<String> date = parts[0].split("/");
    List<String> time = parts[1].split(":");
    int day = int.parse(date[0]);
    int month = int.parse(date[1]);
    int year = int.parse(date[2]);
    int hour = int.parse(time[0]);
    int minute = int.parse(time[1]);

    // Create a DateTime object from the user input
    DateTime arrivalTime = DateTime(year, month, day, hour, minute);

    // Compare the arrival time with the latest time
    int difference = arrivalTime.compareTo(latestTime); // Use compareTo method
    if (difference <= 0) {
      // If the user time is less than or equal to the latest time print “You are early”
      print("You are early");
    } else {
      // If the user time is greater than the latest time print “You are late”
      print("You are late");
      // If the user is late tell him to email his supervisors reason why he is late
      print("Please email your supervisors the reason why you are late");
    }
  } else {
    // If the input is null, print an error message
    print("Invalid input");
  }
}
