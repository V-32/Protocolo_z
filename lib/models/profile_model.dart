class ProfileModel {
  final String id;
  final String nickname;
  final String? avatarUrl;
  final String? factionId;
  final int reputation;

  ProfileModel({
    required this.id,
    required this.nickname,
    this.avatarUrl,
    this.factionId,
    required this.reputation,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      id: json['id'] as String,
      nickname: json['nickname'] as String,
      avatarUrl: json['avatar_url'] as String?,
      factionId: json['faction_id'] as String?,
      reputation: json['reputation'] as int? ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nickname': nickname,
      'avatar_url': avatarUrl,
      'faction_id': factionId,
      'reputation': reputation,
    };
  }
}