class Vaccination {
  // Vaccination class that stores the type and date of the vaccine and name of the veterinarian.
  String type;
  DateTime date;
  String vetName;

  /// Constructor
  Vaccination({required this.type, required this.date, required this.vetName});

  /// Factory method to create Vaccination instance from a map.
  factory Vaccination.fromMap(Map<String, dynamic> map) {
    return Vaccination(
      type: map['type'],
      date: DateTime.parse(map['date']),
      vetName: map['vetName'],
    );
  }

  /// Convert Vaccination instance to a map.
  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'date': date.toIso8601String(),
      'vetName': vetName,
    };
  }
}
