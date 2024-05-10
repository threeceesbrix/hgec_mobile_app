import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hgec_mobile_app/ui/common/ui_helpers.dart';
import 'package:hgec_mobile_app/ui/common/validators.dart';
import 'package:hgec_mobile_app/ui/views/meetings_add/meetings_add_view.form.dart';
import 'package:hgec_mobile_app/ui/widgets/common/custom_text_field/custom_text_field.dart';
import 'package:hgec_mobile_app/ui/widgets/common/menubar/menubar.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'meetings_add_viewmodel.dart';

@FormView(fields: [
  FormTextField(
    name: "Title",
    validator: FormValidators.meetingTitleValidator,
  ),
  FormTextField(name: 'Location')
])
class MeetingsAddView extends StackedView<MeetingsAddViewModel>
    with $MeetingsAddView {
  const MeetingsAddView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MeetingsAddViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Add Meeting'),
          automaticallyImplyLeading: false,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu),
              );
            },
          ),
        ),
        drawer: const Menubar(userName: 'bsadmin'),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: CustomTextField(
                            labelText: 'Title',
                            controller: titleController,
                            width: screenWidthFraction(dividedBy: 2, context) *
                                0.8,
                            required: true,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: screenWidthFraction(dividedBy: 2, context) *
                                0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListTile(
                              visualDensity: VisualDensity.comfortable,
                              leading: Text(
                                DateFormat('d-MMM-yyyy')
                                    .format(viewModel.selectedDate),
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              trailing: const Icon(
                                Icons.calendar_month,
                                // size: 30,
                              ),
                              onTap: () async {
                                viewModel.selectedDate = (await showDatePicker(
                                  context: context,
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime.now(),
                                ))!;
                                viewModel.notifyListeners();
                              },
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            width: screenWidthFraction(dividedBy: 2, context) *
                                0.8,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: DropdownButtonFormField(
                                hint: Text('Project'),
                                items: [],
                                onChanged: null),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width:
                              screenWidthFraction(dividedBy: 2, context) * 0.8,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: DropdownButtonFormField(
                              hint: Text('Type'), items: [], onChanged: null),
                        ),
                        Row(
                          children: [
                            Container(
                              width:
                                  screenWidthFraction(dividedBy: 5, context) *
                                      0.8,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ListTile(
                                visualDensity: VisualDensity.comfortable,
                                leading: Text(
                                  DateFormat('d-MMM-yyyy')
                                      .format(viewModel.selectedDate),
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                trailing: const Icon(
                                  Icons.access_time,
                                  // size: 30,
                                ),
                                onTap: () async {
                                  viewModel.selectedDate =
                                      (await showDatePicker(
                                    context: context,
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime.now(),
                                  ))!;
                                  viewModel.notifyListeners();
                                },
                              ),
                            ),
                            horizontalSpaceMedium,
                            Container(
                              width:
                                  screenWidthFraction(dividedBy: 5, context) *
                                      0.8,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ListTile(
                                visualDensity: VisualDensity.comfortable,
                                leading: Text(
                                  DateFormat('d-MMM-yyyy')
                                      .format(viewModel.selectedDate),
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                trailing: const Icon(
                                  Icons.access_time,
                                  // size: 30,
                                ),
                                onTap: () async {
                                  viewModel.selectedDate =
                                      (await showDatePicker(
                                    context: context,
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime.now(),
                                  ))!;
                                  viewModel.notifyListeners();
                                },
                              ),
                            ),
                          ],
                        ),
                        CustomTextField(
                          labelText: 'Location',
                          controller: titleController,
                          width:
                              screenWidthFraction(dividedBy: 2, context) * 0.8,
                          required: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Column(
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         Flexible(
              //           child: CustomTextField(
              //             labelText: 'Title',
              //             controller: titleController,
              //             width:
              //                 screenWidthFraction(dividedBy: 2, context) * 0.8,
              //             required: true,
              //           ),
              //         ),
              //         Flexible(
              //           child: Container(
              //             width:
              //                 screenWidthFraction(dividedBy: 2, context) * 0.8,
              //             padding: const EdgeInsets.symmetric(horizontal: 10),
              //             decoration: BoxDecoration(
              //               color: Colors.white,
              //               border: Border.all(color: Colors.black, width: 2),
              //               borderRadius: BorderRadius.circular(10),
              //             ),
              //             child: DropdownButtonFormField(
              //                 hint: const Text('Type'),
              //                 items: [],
              //                 onChanged: null),
              //           ),
              //         ),
              //       ],
              //     ),
              //     verticalSpaceLarge,
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         Flexible(
              //           flex: 1,
              //           child: Container(
              //             width:
              //                 screenWidthFraction(dividedBy: 2, context) * 0.8,
              //             decoration: BoxDecoration(
              //               color: Colors.white,
              //               border: Border.all(color: Colors.black, width: 2),
              //               borderRadius: BorderRadius.circular(10),
              //             ),
              //             child: ListTile(
              //               visualDensity: VisualDensity.comfortable,
              //               leading: Text(
              //                 DateFormat('d-MMM-yyyy')
              //                     .format(viewModel.selectedDate),
              //                 style: Theme.of(context).textTheme.bodyLarge,
              //               ),
              //               trailing: const Icon(
              //                 Icons.calendar_month,
              //                 // size: 30,
              //               ),
              //               onTap: () async {
              //                 viewModel.selectedDate = (await showDatePicker(
              //                   context: context,
              //                   firstDate: DateTime(2000),
              //                   lastDate: DateTime.now(),
              //                 ))!;
              //                 viewModel.notifyListeners();
              //               },
              //             ),
              //           ),
              //         ),
              //         Flexible(
              //           child: Row(
              //             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //             children: [
              //               Container(
              //                 width:
              //                     screenWidthFraction(dividedBy: 5, context) *
              //                         0.8,
              //                 decoration: BoxDecoration(
              //                   color: Colors.white,
              //                   border:
              //                       Border.all(color: Colors.black, width: 2),
              //                   borderRadius: BorderRadius.circular(10),
              //                 ),
              //                 child: ListTile(
              //                   visualDensity: VisualDensity.comfortable,
              //                   leading: Text(
              //                     DateFormat('d-MMM-yyyy')
              //                         .format(viewModel.selectedDate),
              //                     style: Theme.of(context).textTheme.bodyLarge,
              //                   ),
              //                   trailing: const Icon(
              //                     Icons.access_time,
              //                     // size: 30,
              //                   ),
              //                   onTap: () async {
              //                     viewModel.selectedDate =
              //                         (await showDatePicker(
              //                       context: context,
              //                       firstDate: DateTime(2000),
              //                       lastDate: DateTime.now(),
              //                     ))!;
              //                     viewModel.notifyListeners();
              //                   },
              //                 ),
              //               ),
              //               // Spacer(),
              //               Container(
              //                 width:
              //                     screenWidthFraction(dividedBy: 5, context) *
              //                         0.8,
              //                 decoration: BoxDecoration(
              //                   color: Colors.white,
              //                   border:
              //                       Border.all(color: Colors.black, width: 2),
              //                   borderRadius: BorderRadius.circular(10),
              //                 ),
              //                 child: ListTile(
              //                   visualDensity: VisualDensity.comfortable,
              //                   leading: Text(
              //                     DateFormat('d-MMM-yyyy')
              //                         .format(viewModel.selectedDate),
              //                     style: Theme.of(context).textTheme.bodyLarge,
              //                   ),
              //                   trailing: const Icon(
              //                     Icons.access_time,
              //                     // size: 30,
              //                   ),
              //                   onTap: () async {
              //                     viewModel.selectedDate =
              //                         (await showDatePicker(
              //                       context: context,
              //                       firstDate: DateTime(2000),
              //                       lastDate: DateTime.now(),
              //                     ))!;
              //                     viewModel.notifyListeners();
              //                   },
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //     verticalSpaceLarge,
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         Flexible(
              //           child: Container(
              //             width:
              //                 screenWidthFraction(dividedBy: 2, context) * 0.8,
              //             padding: const EdgeInsets.symmetric(horizontal: 10),
              //             decoration: BoxDecoration(
              //               color: Colors.white,
              //               border: Border.all(color: Colors.black, width: 2),
              //               borderRadius: BorderRadius.circular(10),
              //             ),
              //             child: DropdownButtonFormField(
              //                 hint: Text('Project'),
              //                 items: [],
              //                 onChanged: null),
              //           ),
              //         ),
              //         Flexible(
              //           child: CustomTextField(
              //             labelText: 'Location',
              //             controller: locationController,
              //             width:
              //                 screenWidthFraction(dividedBy: 2, context) * 0.8,
              //             required: false,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
              verticalSpaceSmall,
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Builder(
                    builder: (context) {
                      final TabController tabController =
                          DefaultTabController.of(context);
                      tabController.addListener(
                        () async {
                          if (!tabController.indexIsChanging) {
                            viewModel.notifyListeners();
                          }
                        },
                      );
                      return Column(
                        children: [
                          const TabBar(
                            tabAlignment: TabAlignment.start,
                            isScrollable: true,
                            tabs: [
                              Tab(
                                text: 'Agenda',
                              ),
                              Tab(
                                text: 'Participants',
                              ),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                Container(
                                  decoration: BoxDecoration(color: Colors.red),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: DataTable(
                                      border:
                                          TableBorder.all(color: Colors.black),
                                      columns: const <DataColumn>[
                                        DataColumn(
                                          label: Expanded(
                                            child: Text(
                                              'SL.No',
                                              style: TextStyle(
                                                  fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Expanded(
                                            child: Text(
                                              'Name',
                                              style: TextStyle(
                                                  fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Expanded(
                                            child: Text(
                                              'Designation',
                                              style: TextStyle(
                                                  fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Expanded(
                                            child: Text(
                                              'Company Name',
                                              style: TextStyle(
                                                  fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Expanded(
                                            child: Text(
                                              'Email',
                                              style: TextStyle(
                                                  fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Expanded(
                                            child: Text(
                                              'Mobile No',
                                              style: TextStyle(
                                                  fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Expanded(
                                            child: Text(
                                              'Attended',
                                              style: TextStyle(
                                                  fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Expanded(
                                            child: Text(
                                              'Actions',
                                              style: TextStyle(
                                                  fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                        ),
                                      ],
                                      rows: const <DataRow>[
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(Text('1')),
                                            DataCell(Text('Shalikh')),
                                            DataCell(Text('Developer')),
                                            DataCell(Text('Gitbitz')),
                                            DataCell(Text(
                                                'shalikhshab00@gmail.com')),
                                            DataCell(Text('9995967046')),
                                            DataCell(Text('Yes')),
                                            DataCell(IconButton(
                                                onPressed: null,
                                                icon: Icon(Icons.delete))),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(Text('1')),
                                            DataCell(Text('Shalikh')),
                                            DataCell(Text('Developer')),
                                            DataCell(Text('Gitbitz')),
                                            DataCell(Text(
                                                'shalikhshab00@gmail.com')),
                                            DataCell(Text('9995967046')),
                                            DataCell(Text('Yes')),
                                            DataCell(IconButton(
                                                onPressed: null,
                                                icon: Icon(Icons.delete))),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(Text('1')),
                                            DataCell(Text('Shalikh')),
                                            DataCell(Text('Developer')),
                                            DataCell(Text('Gitbitz')),
                                            DataCell(Text(
                                                'shalikhshab00@gmail.com')),
                                            DataCell(Text('9995967046')),
                                            DataCell(Text('Yes')),
                                            DataCell(IconButton(
                                                onPressed: null,
                                                icon: Icon(Icons.delete))),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(Text('1')),
                                            DataCell(Text('Shalikh')),
                                            DataCell(Text('Developer')),
                                            DataCell(Text('Gitbitz')),
                                            DataCell(Text(
                                                'shalikhshab00@gmail.com')),
                                            DataCell(Text('9995967046')),
                                            DataCell(Text('Yes')),
                                            DataCell(IconButton(
                                                onPressed: null,
                                                icon: Icon(Icons.delete))),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(Text('1')),
                                            DataCell(Text('Shalikh')),
                                            DataCell(Text('Developer')),
                                            DataCell(Text('Gitbitz')),
                                            DataCell(Text(
                                                'shalikhshab00@gmail.com')),
                                            DataCell(Text('9995967046')),
                                            DataCell(Text('Yes')),
                                            DataCell(IconButton(
                                                onPressed: null,
                                                icon: Icon(Icons.delete))),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(Text('1')),
                                            DataCell(Text('Shalikh')),
                                            DataCell(Text('Developer')),
                                            DataCell(Text('Gitbitz')),
                                            DataCell(Text(
                                                'shalikhssldfjlksdjflksdajlkfjhab00@gmail.com')),
                                            DataCell(Text('9995967046')),
                                            DataCell(Text('Yes')),
                                            DataCell(IconButton(
                                                onPressed: null,
                                                icon: Icon(Icons.delete))),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(Text('1')),
                                            DataCell(Text('Shalikh')),
                                            DataCell(Text('Developer')),
                                            DataCell(Text('Gitbitz')),
                                            DataCell(Text(
                                                'shalikhshab00@gmail.com')),
                                            DataCell(Text('9995967046')),
                                            DataCell(Text('Yes')),
                                            DataCell(IconButton(
                                                onPressed: null,
                                                icon: Icon(Icons.delete))),
                                          ],
                                        ),

                                        // DataRow(
                                        //   cells: <DataCell>[
                                        //     DataCell(Text('Janine')),
                                        //     DataCell(Text('43')),
                                        //     DataCell(Text('Professor')),
                                        //   ],
                                        // ),
                                        // DataRow(
                                        //   cells: <DataCell>[
                                        //     DataCell(Text('William')),
                                        //     DataCell(Text('27')),
                                        //     DataCell(Text('Associate Professor')),
                                        //   ],
                                        // ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              // Expanded(
              //   child: Container(
              //     width: screenWidth(context) * 0.87,
              //     decoration: BoxDecoration(color: Colors.red),
              //   ),
              // ),
            ],
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: screenWidthFraction(dividedBy: 4, context),
              child: OutlinedButton(
                clipBehavior: Clip.hardEdge,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
              ),
            ),
            horizontalSpaceSmall,
            SizedBox(
              width: screenWidthFraction(dividedBy: 4, context),
              child: ElevatedButton(
                clipBehavior: Clip.hardEdge,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Save',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  MeetingsAddViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MeetingsAddViewModel();
}
