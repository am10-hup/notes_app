import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var NotesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess());
      await NotesBox.add(note);
    } catch (e) {
      AddNoteFailure(errmessage: e.toString());
    }
  }
}
