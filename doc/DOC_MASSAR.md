🧠 Principe structurel clé (ajout critique)

Une page ne gère jamais l’espace global.
Toute gestion verticale appartient au système (PageTemplate).

Conséquences directes :

❌ Interdiction d’utiliser Spacer() dans :

Dashboard

Pages Massar

❌ Interdiction d’utiliser Expanded() dans les pages

✅ Les pages fournissent uniquement du contenu

✅ Le template décide :

de la hauteur visible

de la répartition haut / bas

du comportement responsive

👉 Toute tentative de “corriger visuellement” une page avec Spacer est une violation système.

🧱 PageTemplate — Contraintes supplémentaires (ajout)
Header (règle verrouillée)

Le header utilise une hauteur canonique unique

Cette hauteur est imposée par le système, pas par les pages

Hauteur officielle du header QRpruf : 65
Image utilisée : assets/images/header_sec.png


❌ Les pages ne doivent jamais décider de la hauteur du header

❌ Les pages ne doivent jamais wrapper le header

✅ Toute modification du header se fait dans PageTemplate uniquement

Footer & NoteBlock (règle verrouillée)

Le NoteBlock est collé visuellement au footer

Le footer ne doit jamais chevaucher le contenu

Le couple NoteBlock + footer est géré exclusivement par PageTemplate

👉 Aucune page ne doit :

déplacer la note

insérer un footer local

ajuster les espacements bas

🗂️ Dashboard — Règles précises (clarification)
Dashboard (ex : Dash1Page)

❌ N’est PAS une page Massar

❌ Ne doit PAS contenir :

NavBlock

✅ Peut contenir :

NoteBlock (via le template)

TopBarBlock

❌ Ne doit jamais utiliser :

Spacer()

Expanded()

👉 Le Dashboard est un hub de navigation, pas une page à structure contrôlée.

🧩 TopBarBlock — Règle critique (ajout)

Un block ne doit jamais importer un layout.

Interdictions absolues

❌ TopBarBlock ne doit jamais importer :

PageTemplate

un autre layout

❌ Aucun block ne connaît la structure globale

Règle d’or
Layout ➜ peut importer des blocks
Block ➜ ne doit JAMAIS importer un layout


👉 Toute violation peut :

compiler sur mobile

échouer sur Web (dart2js)

🔘 Navigation Dashboard (ajout pratique)

Une image n’est pas un bouton

Toute navigation doit être explicite :

GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => Page()),
    );
  },
)


❌ Interdiction d’images décoratives ambiguës

✅ Tout bouton de navigation doit être volontairement cliquable

🧪 Workflow de validation — version renforcée

Avant de valider une modification :

Identifier si le changement concerne :

le contenu

un bloc

le template

❌ Ne jamais corriger un problème système dans une page

Tester sur :

Dash1

1 page Massar

Vérifier :

Web

Mobile

Si divergence → le système fait foi

🚫 Anti-patterns supplémentaires (issus de l’expérience réelle)

Déplacer la TopBar dans le template

Ajuster le header page par page

Ajouter un Spacer “pour pousser le contenu”

Corriger un bug visuel sans comprendre la hiérarchie

Faire confiance à la maquette contre une page Massar validée

🏁 Conclusion — version renforcée

L’architecture Massar QRpruf est verrouillée, testée et validée en conditions réelles.

Toute nouvelle page Massar doit :

Copier une page Massar existante validée

Changer uniquement :

les textes

les titres

Ne jamais modifier :

la structure

les hauteurs

les blocs

Dans QRpruf, la cohérence inter-pages prime toujours sur une maquette isolée.

✅ État final du système (à conserver)

Massar 1 → 6 validés

Header / Footer verrouillés

Dashboard distinct et sain

Aucun contournement

Architecture prête pour V2 sans refonte