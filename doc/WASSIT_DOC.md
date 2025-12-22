# 📘 Documentation Système WASSIT (Version figée v3 — ARCHITECTURE DÉFINITIVE)

## 1. Objectif du document

Ce document a pour objectif de **figer définitivement le fonctionnement, l’architecture et la logique du système WASSIT** avant toute implémentation dynamique (Supabase).

Il constitue la **référence contractuelle et technique unique** pour :

* l’UX / UI
* l’architecture Flutter
* la séparation Massar / WASSIT
* la logique de validation
* la conformité légale future

👉 **Aucune logique backend, Supabase ou stockage ne doit être implémentée tant que ce document n’est pas respecté à 100 %.**

---

## 2. Définition générale de WASSIT

**WASSIT** est le système unifié de **collecte des moyens de preuve** du projet QRpruf.

* Il est **unique** (une seule page principale)
* Il est **obligatoire** pour tous les utilisateurs, quel que soit leur Massar
* Il est **indépendant fonctionnellement et structurellement des pages Massar**

> Massar définit le **contexte et le profil** utilisateur.
> **WASSIT collecte les preuves**, de manière unifiée, structurée et vérifiable.

---

## 3. Les 5 moyens WASSIT (canoniques et figés)

Le système WASSIT repose sur **5 moyens fixes**, non extensibles dans la v1 :

1. 🎙️ Audio
2. 📸 Image
3. 🎥 Vidéo
4. 📝 Texte
5. 🗺️ Trajet

❗ Règles absolues :

* les moyens ne changent **ni de nom, ni d’ordre**
* les assets sont figés : `wassit1.png` → `wassit5.png`
* aucun ajout ou suppression n’est autorisé sans version majeure

---

## 4. Architecture globale des pages

### ⚠️ Distinction critique des templates

Le projet QRpruf utilise **deux PageTemplates distincts et non interchangeables** :

* `PageTemplate` → **Massar uniquement**
* `PageTemplateWassit` → **WASSIT uniquement**

❌ Il est interdit d’utiliser `PageTemplate` pour une page WASSIT
❌ Il est interdit d’utiliser `PageTemplateWassit` pour une page Massar

Cette séparation est **structurelle, sémantique et définitive**.

---

### 4.1 Pages concernées

* `dash_wassit.dart`
  → page principale de sélection, saisie et validation intermédiaire des moyens

* `wassit_summary_page.dart`
  → page de récapitulatif et de **validation finale unique**

---

## 5. Structure générale de `DashWassitPage`

### 5.1 Template obligatoire

Toutes les pages WASSIT (actuelles et futures) **doivent obligatoirement utiliser** :

```dart
PageTemplateWassit(
  header: Image.asset('assets/images/header_sec.png'),
  footer: Image.asset('assets/images/footer.png'),
  body: ...,
)
```

* le header et le footer sont **des images canoniques Massar**
* la note légale est **injectée automatiquement par le template**
* aucune page WASSIT ne doit ajouter de `NoteBlock` manuellement

---

La page WASSIT est construite **exclusivement avec `PageTemplate`**, sans exception.

Elle est composée de **3 zones système strictement séparées** :

1. Sélecteur WASSIT (haut)
2. Zone centrale dynamique (un seul moyen à la fois)
3. Zone basse (note + navigation)

---

## 6. Zone 1 — Sélecteur WASSIT (haut de page)

### 6.1 Rôle

* Afficher **en permanence** les 5 icônes WASSIT
* Permettre le **switch de moyen actif**
* Offrir un **feedback visuel immédiat** des moyens déjà validés

---

### 6.2 Comportement

* Cliquer sur une icône :

  * active le moyen
  * affiche **uniquement la page centrale correspondante**

* Les autres moyens :

  * n’existent plus visuellement
  * n’occupent aucun espace

👉 Ce n’est **pas** un accordion multiple.
👉 C’est un **switch de pages internes contrôlé par état**.

---

### 6.3 États visuels des icônes

| État   | Signification                   | Visuel          |
| ------ | ------------------------------- | --------------- |
| Neutre | Aucun enregistrement            | Fond gris clair |
| Actif  | Moyen actuellement affiché      | Fond vert clair |
| Validé | Au moins une donnée enregistrée | Fond vert foncé |

Règles :

* l’état **validé persiste** même après changement de moyen
* si actif + validé → **vert foncé prioritaire**
* aucun compteur ni détail n’est affiché ici

👉 Les détails sont réservés à la page Summary.

---

### 6.4 Libellés sous icônes (obligatoires)

Libellés figés, affichés sous chaque icône :

1. تسجيل المسار
2. بيان مكتوب
3. شريط فيديو
4. لقطة صورة
5. مقطع صوتي

---

## 7. Zone 2 — Page centrale (un seul moyen visible)

### Principe fondamental

> **Un moyen actif = une seule page centrale = aucune coexistence visuelle**

* Audio actif → page Audio uniquement
* Vidéo actif → page Vidéo uniquement
* etc.

---

## 8. Architecture interne PAR MOYEN (CRITIQUE)

### 8.1 Principe de séparation stricte

❌ Aucun block générique partagé
✅ **Chaque moyen possède ses propres blocks dédiés**

Raisons :

* traitements techniques différents
* accès Supabase futurs différents
* permissions différentes
* maintenance isolée

---

## 9. Séparation LIVE / UPLOAD (RÈGLE D’OR)

Pour **chaque moyen**, il existe :

* un block **LIVE**
* un block **UPLOAD** (quand applicable)

❌ Aucun `if (isLive)`
❌ Aucun switch interne

> **Un block = une responsabilité technique unique**

---

## 10. Blocks WASSIT — Structure officielle

### 10.1 Blocks système

* `wassit_selector_block.dart`
* `note_wassit_block.dart`

---

### 10.2 Blocks AUDIO

* `wassit_audio_block.dart`
* `wassit_audio_live_block.dart`
* `wassit_audio_upload_block.dart`

---

### 10.3 Blocks IMAGE

* `wassit_image_block.dart`
* `wassit_image_live_block.dart`
* `wassit_image_upload_block.dart`

---

### 10.4 Blocks VIDÉO

* `wassit_video_block.dart`
* `wassit_video_live_block.dart`
* `wassit_video_upload_block.dart`

---

### 10.5 Blocks TEXTE

* `wassit_text_block.dart`

---

### 10.6 Blocks TRAJET

* `wassit_trajet_block.dart`
* `wassit_trajet_live_block.dart`

---

## 11. Validation interne (par moyen)

* Chaque moyen peut être utilisé **une ou plusieurs fois**
* LIVE et UPLOAD peuvent être combinés
* Le bouton interne du moyen :

  * valide uniquement CE moyen
  * met à jour l’état visuel de l’icône
  * ne déclenche aucune navigation

---

## 12. Validation globale

Dans `DashWassitPage` :

### Bouton global : **التالي / متابعة**

* activé uniquement si **au moins un moyen est validé**
* ouvre **obligatoirement** `wassit_summary_page.dart`

---

## 13. Page Summary — Validation finale

### Objectif

Permettre à l’utilisateur de **relire, vérifier et confirmer définitivement** ses choix.

### Contenu

Exemples :

* مقطع صوتي: 2

  * مباشر
  * رفع ملف

* شريط فيديو: 1 (رفع)

---

### Bouton final

🔒 **تأكيد نهائي**

* unique point d’entrée vers Supabase
* aucune modification UI autorisée à ce stade

---

## 14. Intégration Supabase (hors périmètre v1)

❗ Supabase intervient uniquement :

* après validation finale
* depuis la page Summary
* sans impacter l’UI ni l’architecture WASSIT

---

## 15. Règles d’or WASSIT

1. Un moyen = une page
2. Une page = des blocks spécialisés
3. LIVE ≠ UPLOAD
4. Le statique précède toujours le dynamique
5. L’UI ne dépend jamais du backend
6. Plus de fichiers = moins de dette technique

---

## 16. Statut du document

* ✅ Architecture figée
* ✅ UX validée
* ✅ Templates séparés Massar / WASSIT
* ✅ Implémentation Flutter statique complète
* 🔒 Prêt pour phase dynamique (Supabase)

---

📌 **Ce document fait foi. Toute implémentation WASSIT ou Massar doit respecter strictement la séparation des templates.**

* ✅ Architecture figée
* ✅ UX validée
* ✅ Implémentation Flutter statique complète
* 🔒 Prêt pour phase dynamique (Supabase)

---

📌 **Ce document fait foi. Toute implémentation WASSIT doit s’y conformer strictement.**
