import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_cis/Screen_task/database.dart';

class doctor_screen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Search',
                      labelStyle: Theme.of(context).textTheme.caption,
                      prefixIcon:Icon( Icons.search,),
                      prefixIconColor: Colors.grey[20],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Icon(Icons.filter_list_sharp,size: 30,color:HexColor('3333FF'),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              child: Expanded(
                 child: ListView.separated(
                   physics: BouncingScrollPhysics(),
                   scrollDirection: Axis.horizontal,
                     itemBuilder: (context,index)=>build_active_item(data[index]),
                     separatorBuilder:(context,index)=> SizedBox(width: 10,),
                     itemCount: data.length,
                 ),
           ),
            ),
            Expanded(
              child: Container(
                child: GridView.count(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1/1.43,
                  children:
                  List.generate(
                    data.length,
                        (index) => build_all_item(context,data[index]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Widget build_active_item(doctor_data model)
{
  return  Stack(
    alignment: AlignmentDirectional.topEnd,
    children: [
      CircleAvatar(
        radius: 38,
        backgroundImage:
        AssetImage(
          '${model.image}',
        ) ,
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: CircleAvatar(
          radius: 7,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 4.5,
            backgroundColor: Colors.green[300],
          ),
        ),
      ),
    ],
  );
}
Widget build_all_item(context,doctor_data model)
{
  return Container(

    decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ) ,
    child:Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('${model.image}'),
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            '${model.name}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            '${model.specialist}',
            style: Theme.of(context).textTheme.caption
          ),
          Row(
            children: [
              Icon(Icons.star,color: Colors.yellowAccent[400],size: 17,),
              Text(
                '${model.reviewer} Review',
                style: Theme.of(context).textTheme.bodyText2
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

