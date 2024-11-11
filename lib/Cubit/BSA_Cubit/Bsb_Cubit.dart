import 'package:bloc/bloc.dart';
import 'package:bns_vs_ipc/Cubit/BSA_Cubit/Bsb_State.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BsbCubit extends Cubit<BSB_State> {
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  List<DocumentSnapshot> Bsb_List = [];
  List<DocumentSnapshot> filteredBsbData = [];

  BsbCubit() : super(BSBInitialState());

  //=============== Stream to listen and show Descending Order ==================
  // ------------- this code is not used ------------------
  Stream<QuerySnapshot<Map<String, dynamic>>> getBsaData() {
    var bsaList = _fireStore.collection("bsa_vs_isa").orderBy('Clause').snapshots();

    return bsaList;
  }

  //=============== get Data from firebase ==================
  void fetchDataFromFirestore() async {
    try {
      QuerySnapshot querySnapshot = await _fireStore.collection('bsa_vs_isa').orderBy("Clause").get();
      Bsb_List = querySnapshot.docs;
      emit(BSBLoadedState());
    } catch (e) {
      emit(BSBErrorState());
    }
  }

  void getBSBData() {
    emit(BSBLoadingState());
    fetchDataFromFirestore();
  }

  //=============== Search Function ==================
  void searchBSA(String query) {
    if (query.isNotEmpty) {
      filteredBsbData = Bsb_List.where((element) {
          var data = element.data() as Map<String, dynamic>;

        String clause = data['Clause'].toString().toLowerCase();
        String IEA = data['IEA'].toString().toLowerCase();
        String title = data['Title'].toString().toLowerCase();
        String desc = data['Description'].toString().toLowerCase();
        String notes = data['Notes'].toString().toLowerCase();

        return clause.contains(query) ||
            IEA.contains(query) ||
            title.contains(query.toLowerCase()) ||
            desc.contains(query.toLowerCase()) ||
            notes.contains(query.toLowerCase());
        // return element['IPC_No']!.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      filteredBsbData = [];
    }
    emit(BSBLoadedState()); // Emit a state change to reflect the search results
  }
}
