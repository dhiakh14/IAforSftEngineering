# 🏗️ BuildFlow – Intelligent Construction Management System

## 🔍 Présentation Générale

**BuildFlow** est une application web intelligente de **gestion de projets de construction**, développée avec **Spring Boot**, **Angular** et des **modèles d’intelligence artificielle** intégrés via **Flask**.  
Elle permet de planifier les tâches, visualiser les dépendances via un **diagramme de Gantt**, gérer les **factures**, et interagir avec des **assistants IA** pour automatiser les analyses et recommandations.

---

## ⚙️ Fonctionnalités Principales

### 🧩 Gestion des Tâches
- Création, modification et suppression de tâches.  
- Suivi de l’avancement et calcul automatique du statut (*en avance, à temps, en retard*).  
- Génération de **recommandations IA** pour optimiser la planification.

### 🧮 Gestion des Factures
- Suivi des **montants**, **dates d’émission** et **dates d’échéance**.  
- Calcul automatique du **retard de paiement**.  
- Prédiction de la **date d’échéance** à l’aide d’un modèle IA de **régression linéaire**.

### 🤖 Intelligence Artificielle Intégrée
BuildFlow intègre plusieurs modèles IA entraînés et déployés dans un environnement **Flask – Spring Boot – Angular** :
1. **Modèle XGBoost** – Prédiction de la **durée d’une tâche** selon sa description, son effectif et sa complexité.  
2. **Modèle de Régression Linéaire** – Prédiction de la **date d’échéance d’une facture** selon le montant et la date d’émission.  
3. **Modèle YOLOv8** – **Détection de sécurité des travailleurs** (port du casque et du gilet) via Deep Learning.

Chaque modèle IA est encapsulé dans une **API Flask REST**, intégrée à **Spring Boot** et consommée par **Angular** pour une interaction fluide.

---

## 🧠 API IA Intégrées

### 💬 API Gemini – Chatbot de Gestion de Tâches
- Permet à l’utilisateur de poser des questions telles que :  
  > « Quelles tâches sont urgentes cette semaine ? »  
  > « Quelles sont les priorités du projet ? »  
- Analyse les données internes du projet et répond grâce au langage naturel.  
- Fonctionne avec des **prompts globaux et spécifiques** pour adapter les réponses selon le contexte.

### 🧾 API IA de Chatbot Comptable
- Permet de dialoguer avec un **assistant comptable virtuel** :  
  > « Combien de factures sont en retard ce mois-ci ? »  
  > « Quel est le montant total des factures payées en septembre ? »  
- L’IA analyse la question, interroge la base via **Spring Boot**, et renvoie la réponse sous forme de texte structuré.  
- Cette API ajoute une **dimension intelligente et interactive** à la gestion financière.

---

## 🧪 Tests Unitaires et Fonctionnels

### 🎯 Objectif
Assurer la **fiabilité, la robustesse et la qualité logicielle** du système via des tests **boîte blanche (unitaires)** et **boîte noire (fonctionnels)**.

### 🧰 Outils Utilisés
- **JUnit 5 & Mockito** : tests unitaires des services Spring Boot.  
- **GitHub Copilot** : génération assistée des classes de test.  
- **JaCoCo** : mesure du taux de couverture du code.  
- **Cucumber & Gherkin** : rédaction et exécution de scénarios fonctionnels lisibles.

### 🧱 Exemples de tests
- `TaskServiceTest` : validation du CRUD des tâches et de la prédiction via API Flask.  
- `AuthenticationServiceTest` : tests d’inscription, d’activation et d’authentification utilisateur.  

**Exemple de scénario Gherkin :**
```gherkin
Feature: Connexion de l'utilisateur
  Scenario: Connexion réussie
    Given l'utilisateur "john@example.com" avec mot de passe "1234"
    When il se connecte avec les identifiants corrects
    Then il est redirigé vers "/dashboard"
