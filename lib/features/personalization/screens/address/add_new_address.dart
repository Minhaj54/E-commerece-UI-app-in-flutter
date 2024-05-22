import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rehla_mart/common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true,title: Text('Add new Address'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Form(child: Column(
            children: [
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: 'Name'),),
              const SizedBox(height: TSize.spaceBtwInputFields,),
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: 'Phone Number'),),
              const SizedBox(height: TSize.spaceBtwInputFields,),
              Row(
                children: [
                  Expanded(child:TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31),labelText: 'Street'),), ),
                  const SizedBox(width: TSize.spaceBtwInputFields,),
                  Expanded(child:TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code),labelText: 'Postal Code'),), ),
                ],
              ),
              const SizedBox(height: TSize.spaceBtwInputFields,),
              Row(
                children: [
                  Expanded(child:TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: 'City'),), ),
                  const SizedBox(width: TSize.spaceBtwInputFields,),
                  Expanded(child:TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: 'State'),), ),
                ],
              ),
              const SizedBox(height: TSize.spaceBtwInputFields,),
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: 'Country'),),
              const SizedBox(height: TSize.defaultSpace,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){},child: const Text('Save'),),
              )
        
            ],
          )),
        ),
      ),
    );
  }
}
