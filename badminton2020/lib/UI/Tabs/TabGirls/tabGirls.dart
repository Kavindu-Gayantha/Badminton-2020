import 'package:badminton2020/UI/Tabs/contactlist/contact_list.dart';
import 'package:badminton2020/UI/Tabs/contactlist/modal/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabGirls extends StatelessWidget {

    _buildContactList() {
       return <ContactModal>[
              const ContactModal(
                  fullName: 'Lihini Hiranya'),
              const ContactModal(
                  fullName: 'Nadeesha Mettananda'),
              const ContactModal(
                  fullName: 'Sanduni Ruwanthika'),
              const ContactModal(
                  fullName: 'Sandaru De Silva'),
              const ContactModal(
                  fullName: 'Umasha Nanayakkara'),
              const ContactModal(
                  fullName: 'Kalani Pramodya'),
              const ContactModal(
                  fullName: 'Kasuni'),
             
            ];
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ContactsList(_buildContactList()));
          
      }
    
}