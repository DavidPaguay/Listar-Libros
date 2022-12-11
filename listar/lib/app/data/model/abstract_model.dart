abstract class AbstractModel<I> {
  I? id;
  AbstractModel(this.id);

  String getAttributes() {
    return toJson().keys.join(" ");
  }

  Map<String, dynamic> toJson();
}
