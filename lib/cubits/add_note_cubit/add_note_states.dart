


abstract class AddNoteStates {}

class InitialState extends AddNoteStates {}

class AddNoteLoadingState extends AddNoteStates {}
class AddNoteSuccessState extends AddNoteStates {}
class AddNoteFailureState extends AddNoteStates {
  final String errMessage ;
  AddNoteFailureState({
   required this.errMessage,
  });
}
