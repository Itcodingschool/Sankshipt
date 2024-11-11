import 'package:bns_vs_ipc/Cubit/BNSS_Cubit/BNSS_State.dart';
import 'package:bloc/bloc.dart';
import 'package:bns_vs_ipc/Cubit/Bns_Cubit/bns_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BnssCubit extends Cubit<BNSS_State> {
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  List<DocumentSnapshot> Bnss_List = [];
  List<DocumentSnapshot> filteredBnssData = [];

  BnssCubit() : super(BNSSInitialState());

  //=============== Stream to listen and show Descending Order ==================
  // ------------ This code is not used -----------------
  Stream<QuerySnapshot<Map<String, dynamic>>> getBnssData() {
    var bnssList = _fireStore.collection("bnss").orderBy('Clause').snapshots();

    return bnssList;
  }

  //=============== get Data from firebase ==================
  void fetchDataFromFirestore() async {
    try {
      QuerySnapshot querySnapshot = await _fireStore.collection('bnss').orderBy("Clause").get();
      Bnss_List = querySnapshot.docs;
      emit(BNSSLoadedState());
    } catch (e) {
      emit(BNSSErrorState());
    }
  }

  void getBNSSData() {
    emit(BNSSLoadingState());
    fetchDataFromFirestore();
  }

  //=============== Search Function ==================
  void searchBNSS(String query) {
    if (query.isNotEmpty) {
      filteredBnssData = Bnss_List.where((DocumentSnapshot element) {
        var Bnss_Data = element.data() as Map<String, dynamic>;

        String clause = Bnss_Data['Clause'].toString().toLowerCase();
        String crPC = Bnss_Data['CrPC'].toString().toLowerCase();
        String title = Bnss_Data['Title'].toString().toLowerCase();
        String desc = Bnss_Data['Description'].toString().toLowerCase();
        String notes = Bnss_Data['Notes'].toString().toLowerCase();

        return clause.contains(query) ||
            crPC.contains(query) ||
            title.contains(query.toLowerCase()) ||
            desc.contains(query.toLowerCase()) ||
            notes.contains(query.toLowerCase());
        // return element['IPC_No']!.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      filteredBnssData = [];
    }
    emit(BNSSLoadedState()); // Emit a state change to reflect the search results
  }
}
