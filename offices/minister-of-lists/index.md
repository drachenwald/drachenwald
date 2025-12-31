---
title: Minister of the Lists
excerpt: "Here you will find the handbook, forms, tables, contacts and other useful resources to aid you in running tournaments"
toc: true
toc_label: Contents
---

## What does a Minister of the Lists (MOL) do?

The Drachenwald Kingdom Minister of the Lists is responsible for:
* With the help of the Marshals, running fair tournaments
* Educate others in the running tournaments
* Maintaining a roster of trained MOLs willing to run tournaments

The Drachenwald Kingdom Minister of the Lists is NOT responsible for:
* Verifying SCA membership
* Managing the signing of waivers
* Issuing fighting authorisations
* Maintaining the authorisations database.

## Drachenwald Minister of the List's Handbook

Please find below the latest version of the Drachenwald Minister of the List's Handbook.
[https://drive.google.com/file/d/156IvtvR17rpTH8hdAr2KV88zNpQuSd1Z/view?usp=drive_link](https://drive.google.com/file/d/156IvtvR17rpTH8hdAr2KV88zNpQuSd1Z/view?usp=drive_link)

## Ministers of the Lists Roster

Below are listed the Ministers of the Lists who have made it known that they are willing to run tournaments.  Please remember that the good gentles listed below are in no way obligated and have every right to refuse. Should you be unable to contact someone listed below, please contact the Drachenwald Kingdom Minister of the Lists, who will be able to put you in touch.

{% if site.data['mol_roster'] %}
{% assign mol_roster = site.data['mol_roster'].data | sort: "name" %}

{% else %}
{% assign mol_roster = "" %}
The Minister of the Lists roster isn't available right now - please check back later.
{% endif %}

<table>
    <thead>
        <tr>
            <th>SCA Name</th>
            <th>Modern Name</th>
            <th>Shire</th>
            <th>Barony/Principality/Area</th>
        </tr>
    </thead>
    <tbody>
        {% for mol in mol_roster %}
        <tr>
            <td>{{ mol.sca-name }}</td>
            <td>{{ mol.modern-name }}</td>
            <td>{{ mol.local-group }}</td>
            <td>{{ mol.principality-regional-area }}</td>
        </tr>
        {% endfor %}
    </tbody>
</table>


## Online Presence

[Facebook](https://www.facebook.com/groups/dwmol/)

{% include officer-contacts.html regional_contacts=false %}
