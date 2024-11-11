import 'package:bns_vs_ipc/Cubit/Bns_Cubit/bns_state.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:translator/translator.dart';


class BnsCubit extends Cubit<BNS_State> {
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  GoogleTranslator translator = new GoogleTranslator();
  List<DocumentSnapshot> Bns_List = [];
  List<DocumentSnapshot> filteredData = [];
  var TranslateOut;

  BnsCubit() : super(BNSInitialState());

  //=============== Stream to listen and show Descending Order ==================
  // ------------- this code is not used ------------------
  Stream<QuerySnapshot<Map<String, dynamic>>> getBnsData() {
    var bnsList = _fireStore.collection("bns_vs_ipc").orderBy("BNS_Sr_No").snapshots();

    return bnsList;
  }

  //=============== get Data from firebase ==================
  void fetchDataFromFirestore() async {
    try {
      QuerySnapshot querySnapshot = await _fireStore.collection('bns_vs_ipc').orderBy("BNS_Sr_No").get();
      Bns_List = querySnapshot.docs;
      emit(BNSLoadedState());
    } catch (e) {
      emit(BNSErrorState());
    }
  }

  void getBNSData() {
    emit(BNSLoadingState());
    fetchDataFromFirestore();
  }

  //=============== Search Function ==================
  void searchBNS(String query) {
    if (query.isNotEmpty) {
      filteredData = Bns_List.where((DocumentSnapshot element) {
        var data = element.data() as Map<String, dynamic>;

        String ipcNo = data['IPC_No'].toString().toLowerCase();
        String bnsNo = data['BNS_No'].toString().toLowerCase();
        String title = data['Title'].toString().toLowerCase();
        String desc = data['Description'].toString().toLowerCase();
        String update = data['Current_Update'].toString().toLowerCase();

        return ipcNo.contains(query) ||
            bnsNo.contains(query) ||
            title.contains(query.toLowerCase()) ||
            desc.contains(query.toLowerCase()) ||
            update.contains(query.toLowerCase());
        // return element['IPC_No']!.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      filteredData = [];
    }
  }

  // =================== Translator ==========================
  void trans(query) {
    translator.translate(query, to: "hi").then((output) {
      TranslateOut = output;

      return TranslateOut;
    });
  }
}
