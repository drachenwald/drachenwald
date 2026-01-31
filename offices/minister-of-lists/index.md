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
* <a href="https://drive.google.com/file/d/156IvtvR17rpTH8hdAr2KV88zNpQuSd1Z/view?usp=sharing" target="_blank">PDF Version (August 2025)</a>

## Drachenwald Minister of the List's Forms and Tables

Please find below the forms used for running tournaments.

<table>
    <thead>
        <tr>
            <th>What</th>
            <th>XLSX</th>
            <th>PDF</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><b>List form</b></td>
            <td><a href="https://docs.google.com/spreadsheets/d/1epz0_lq23K4CdPGwaDUM37WWvLSv6lm5/edit?usp=drive_link&ouid=118343036018355762309&rtpof=true&sd=true" target="_blank">Download</a></td>
            <td><a href="https://drive.google.com/file/d/1VisJTS9c-cmWQd-WAOgTmhADk64T5eJc/view?usp=drive_link" target="_blank">Download</a></td>
        </tr>
        <tr>
            <td><b>Round Robin table</b></td>
            <td><a href="https://docs.google.com/spreadsheets/d/1ZhJoHAz8ZFYDwfAdnhedZ0Z2WpLjzsK1/edit?usp=drive_link&ouid=118343036018355762309&rtpof=true&sd=true" target="_blank">Download</a></td>
            <td><a href="https://drive.google.com/file/d/1JUUwYFcXZK8XcJ-drKKh-7QuFRiJ_sEm/view?usp=drive_link" target="_blank">Download</a></td>
        </tr>
        <tr>
            <td><b>Single Elimination table</b></td>
            <td><a href="https://docs.google.com/spreadsheets/d/1MptNhPjaEZ5lGp7MoG3KS3h182fmGfEL/edit?usp=drive_link&ouid=118343036018355762309&rtpof=true&sd=true" target="_blank">Download</a></td>
            <td><a href="https://drive.google.com/file/d/1bZgHAp6BYgR7azpiX1x8SyRX-v9u_neK/view?usp=drive_link" target="_blank">Download</a></td>
        </tr>
        <tr>
            <td><b>Double Elimination table</b></td>
            <td><a href="https://docs.google.com/spreadsheets/d/1Arrpbr8CNH3Vh8LsYsSHCjQJmFO8t7q6/edit?usp=drive_link&ouid=118343036018355762309&rtpof=true&sd=true" target="_blank">Download</a></td>
            <td><a href="https://drive.google.com/file/d/1mtC5KgyCSUKU4GjihQ1mlW0R-VNFteR0/view?usp=drive_link" target="_blank">Download</a></td>
        </tr>
    </tbody>
</table>


 
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
            <td>
                {% if mol.contact-info != "" %}
                    <a href="mailto:{{ mol.contact-info }}">{{ mol.sca-name }}</a>
                {% else %}
                    {{ mol.sca-name }}
                {% endif %}
            </td>
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
