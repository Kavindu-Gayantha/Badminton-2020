import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../contactlist/contact_list.dart';
import '../contactlist/modal/contact.dart';

class TabBoys extends StatelessWidget {

  _buildContactlist() {

        return <ContactModal>[
              const ContactModal(
                  fullName: 'Romain Hoogmoed', email: 'romain.hoogmoed@example.com'),
              const ContactModal(
                  fullName: 'Emilie Olsen', email: 'emilie.olsen@example.com'),
              const ContactModal(
                  fullName: 'Nishant Srivastava', email: 'nishant.srivastava@example.com'),
              const ContactModal(
                  fullName: 'Romain Hoogmoed', email: 'romain.hoogmoed@example.com'),
              const ContactModal(
                  fullName: 'Emilie Olsen', email: 'emilie.olsen@example.com'),
              const ContactModal(
                  fullName: 'Nishant Srivastava', email: 'nishant.srivastava@example.com'),
              const ContactModal(
                  fullName: 'Romain Hoogmoed', email: 'romain.hoogmoed@example.com'),
              const ContactModal(
                  fullName: 'Emilie Olsen', email: 'emilie.olsen@example.com'),
              const ContactModal(
                  fullName: 'Nishant Srivastava', email: 'nishant.srivastava@example.com'),
            ];

    
  }
    @override
    Widget build(BuildContext context) {
      
          return Scaffold(body: ContactsList(_buildContactlist()),);
                    
                
    }
          
          
}