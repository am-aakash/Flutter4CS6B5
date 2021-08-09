class ProfileDao {

  Future createProfile(String name, String email) async{

    await Future.delayed(Duration(seconds: 3));
    return {
      'status': 'fail',
      'data':'data',
      'message' : "successFully Updated",
    };
  }
}