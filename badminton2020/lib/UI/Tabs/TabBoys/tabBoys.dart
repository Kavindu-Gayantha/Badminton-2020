import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../contactlist/contact_list.dart';
import '../contactlist/modal/contact.dart';

class TabBoys extends StatelessWidget {

  _buildContactlist() {

        return <ContactModal>[
              const ContactModal(
                  fullName: 'Kavindu Gayantha'),
              const ContactModal(
                  fullName: 'Kanishka Deshan'),
              const ContactModal(
                  fullName: 'Madushanka Kahawa'),
              const ContactModal(
                  fullName: 'Tharindu Bandara'),
              const ContactModal(
                  fullName: 'Kasun Gimhana'),
              const ContactModal(
                  fullName: 'Athish Rathnaweera'),
              const ContactModal(
                  fullName: 'Bhagya Ranasinghe'),
              const ContactModal(
                  fullName: 'Kethaka Ranasinghe'),
              const ContactModal(
                  fullName: 'Nipuna Deshan'),
            ];

    
  }
    @override
    Widget build(BuildContext context) {
      
          return Scaffold(body: ContactsList(_buildContactlist()),);
                    
                
    }
          
          
}