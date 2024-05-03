import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    //method to add note
    emit(AddNoteLoading());

    try {
      var noteBox = Hive.box<NoteModel>(
          kNotesBox); //we create Hive object to access add method
      await noteBox.add(
          note); //here the object we pass to this method will added to hive
      emit(
          AddNoteSuccess()); //after add done successfuly we do emit to AddNoteSucess state
    } catch (e) {
      emit(AddNoteFailure(errorMessage: e.toString()));
    }
  }
}
