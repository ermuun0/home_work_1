class CharModel {
  String? currentValue;
  int? currentIndex;
  String? correctValue;
  bool hintShow;

  CharModel(
      {this.currentValue,
      this.currentIndex,
      this.correctValue,
      this.hintShow = false});

  getCurrentValue() {
    if(correctValue !=null){
      return (currentValue);
    }else(hintShow){
      return(correctValue);
    };

  }
  void clearValue() {
    currentIndex = null;
    currentValue = null;
  }
}