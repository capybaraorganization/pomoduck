class Duck {
  String id;
  Duration duration;
  DateTime createdAt;
  bool isCompleted;

  Duck({
    required this.id,
    required this.duration,
    required this.createdAt,
    required this.isCompleted,
  });

  Duck copyWith({
    String? id,
    Duration? duration,
    DateTime? createdAt,
    bool? isCompleted,
  }) {
    return Duck(
      id: id ?? this.id,
      duration: duration ?? this.duration,
      createdAt: createdAt ?? this.createdAt,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'duration': duration.inSeconds,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'isCompleted': isCompleted,
    };
  }

  factory Duck.fromMap(Map<String, dynamic> map) {
    return Duck(
      id: map['id'],
      duration: Duration(seconds: map['duration']),
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt']),
      isCompleted: map['isCompleted'],
    );
  }
}
