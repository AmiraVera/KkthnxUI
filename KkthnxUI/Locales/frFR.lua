local K, _, L = unpack(select(2, ...))

local _G = _G

local GetLocale = _G.GetLocale

if GetLocale() ~= "frFR" then
    return
end

-- Module Locales
L["%s players"] = "%s joueurs"
L["AP"] = "PP:"
L["AddContactTip"] = "|nModifier la liste de contacts dont vous avez besoin, le format de saisie est 'UnitName-RealmName'.|nVous devez saisir uniquement le nom seulement si l'unité se trouve dans le même royaume que vous.|nVous pouvez personnaliser la couleur du texte pour les classer." -- need translation
L["AddToIgnoreList"] = "%s SpellID %s a été ajouté a la liste des ignorés de AuraWatch. Vous pouvez maintenir CTRL+ALT enfoncées et cliquer sur l'icône de UnitAura pour le supprimer des ignorés."
L["All Buffs Ready"] = "[KkthnxUI] Tous les buffs sont prêts!"
L["Attach List"] = "Liste des pièces jointes:"
L["AttackSpeed"] = "VA"
L["AuraWatch List"] = "Liste personnalisée"
L["AuraWatch Switcher"] = "Bloquer les auras prédéfinies"
L["AuraWatchGUI Tips"] = "|nObtenez plus d'infos en passant la souris sur chaque en-tête d'option.|n|nVous devez recharger l'IU après avoir modifié les paramètres.|n|nVous pouvez maintenir CTRL+ALT enfoncées, et cliquez sur l'icône AuraWatch pour ajouter le sort dans la liste des ignorés, ou cliquez sur l'icône UnitAura pour supprimer le sort des ignorés."
L["AuraWatchGUI Title"] = "KkthnxUI AuraWatch GUI"
L["Auto Quest Disabled Desc"] = "Activer l'acceptation/rendu auto des quêtes. |n|nMaintenez SHIFT désactivera temporairement l'acceptation/rendu automatique"
L["Auto Quest Disabled"] = "Status: |CFFFF0000Disabled|r"
L["Auto Quest Enabled Desc"] = "Désactiver l'acceptation/rendu auto des quêtes. |n|nMaintenez SHIFT désactivera temporairement l'acceptation/rendu automatique"
L["Auto Quest Enabled"] = "Status: |CFF008000Enabled|r"
L["Auto Quest"] = "Quête auto"
L["AutoDepositTip"] = "Cliquez sur le bouton gauche pour déposer vos composants, cliquez sur le bouton droit pour faire un dépôt automatique. Si la bordure du bouton s'affiche, les composants de vos sacs seront déposés automatiquement dès que vous ouvrirez votre Banque."
L["BFA Invasion"] = "Assauts des factions"
L["BN"] = "BN"
L["Bars"] = "Bars"
L["BoE"] = "LqE"
L["BoP"] = "LqR"
L["CD"] = "CD"
L["CPU Usage"] = "Utilisation CPU"
L["Can't Buy Slot"] = "Vous ne pouvez pas achetez plus d'emplacement."
L["Caster Intro"] = "|nFiltrez le caster.|n|njoueur: caster est le joueur.|n|ncible: caster est la cible.|n|nfamilier: caster est le familier.|n|nToutes les auras sont surveillées si vides"
L["Caster"] = "Caster"
L["Changelog"] = "Changelog"
L["Changes Reload"] = "Un ou plusieurs des changements que vous avez effectués nécessitent un rechargement de l'interface."
L["Check Flask Food"] = "Vérifiez vos flacons et votre nourriture"
L["CheckQuestComplete"] = " a été achevée!"
L["CheckQuestInfo"] = "\nEntrez le questID found in Wowhead URL\nhttp://wowhead.com/quest=ID\nExample: /checkquest 12045\n"
L["CheckQuestNotComplete"] = " n'a pas été achevée!"
L["Choose a Type"] = "Vous dévez sélectionner un type."
L["Clear Binds"] = "|CFFFFCC66All raccourci effacé pour|r %s"
L["Collect All"] = "Tout ouvrir"
L["Collect Gold"] = "Récolter l'or"
L["Collect Letters"] = "Recevoir"
L["Collect Memory"] = "Récolter la mémoire"
L["Combat Intro"] = "|nSi coché, le sort ne s'affiche qu'en combat."
L["Combat"] = "Combat"
L["CombatLog"] = "Log"
L["Combo"] = "Com"
L["ContactList"] = "Liste des contacts"
L["Copy Name"] = "Copier le nom"
L["Crit"] = "Crit"
L["Ctrl Key"] = "(Ctrl) "
L["Current Invasion"] = "En cours: "
L["Deficit"] = "Déficit"
L["Delete Mode Enabled"] = "|nVous pouvez détruire l'objet du sac en appuyant sur CTRL+ALT. |n|nLa qualité de l'objet doit être inférieure à |cff0070ddRare|r"
L["Disable to hide areas."] = "Désactiver pour cacher les zones|nque vous n'avez pas encore découvertes."
L["Disband Group"] = "Dissoudre le groupe"
L["Discard KeyBinds"] = "Raccourcis effacés."
L["Discord URL"] = "https://discord.gg/YUmxqQm"
L["Discord"] = "|cff7289daDiscord|r"
L["Download"] = "Télécharger"
L["Duration Intro"] = "|nLe chronomètre est déclenché."
L["Duration*"] = "Durée*"
L["Earned"] = "Gagné.s"
L["Empty Slot"] = "Emplacement vide"
L["Enable to show hidden areas."] = "Permettre de montrer les zones cachées|nque vous n'avez pas encore découvertes."
L["Enchant Aura"] = "Enchantement"
L["Equipement Set"] = "Sets d'armure"
L["Everyone"] = "Tout le monde"
L["ExRT Potion Check"] = "ExRT Vérification des potions"
L["Exalted"] = "Exalté"
L["Existing ID"] = "Le SpellID existe."
L["Experience"] = "Expérience"
L["Extrabar"] = "Barre d'action en plus"
L["FPS"] = "IPS"
L["Favourite Mode Enabled"] = "|nVous pouvez maintenant mettre des objets en favoris|n|nSi l'option 'Filtre des sacs' est activée, l'objet que vous avez sélectionné sera ajouté aux emplacements du filtre des 'Préférences'.|n|nCe n'est pas disponible pour |cff9d9d9dCamelote|r"
L["Favourite Mode"] = "Mode favoris"
L["Fishy Loot"] = "Butin de pêche"
L["FixParty"] = "\n|cff669dff".."Si vous êtes toujours bloqué en groupe, essayez ce qui suit".."|r\n\n|cff00ff001.|r Inviter une personne dans un groupe attendez qu'elle accepte.\n|cff00ff002.|r Convertissez votre groupe en raid.\n|cff00ff003.|r Utilisez à nouveau la commande 'Quitter le groupe'.\n|cff00ff004.|r Invitez de nouveau votre ami(e) à un groupe.\n\n"
L["Flash Intro"] = "|nSi la case est cochée, une lueur de surbrillance s'affichera sur l'icône lorsqu'elle est activée."
L["Flash"] = "Surbrillance"
L["Flask"] = "Fiole"
L["Focus Aura"] = "FocusAura"
L["Food"] = "Nourriture"
L["From"] = "De"
L["General"] = "Général"
L["Get Close"] = "Rapprochez-vous"
L["Get Out"] = "Sortez!"
L["Ghost"] = "Fantôme"
L["Groups"] = "Groupes"
L["Hidden"] = "Caché"
L["Hide Undiscovered Areas"] = "Cacher les zones non découvertes"
L["Hold Shift"] = "Maintenez Shift"
L["Home Latency"] = "Latence domicile"
L["Home Protocol"] = "Protocole domicile"
L["Honor Remaining"] = "Honneur restant:"
L["Honor XP"] = "XP Honneur:"
L["ID Intro"] = "|nSpell ID, doit être un nombre.|n|nVous pouvez obtenir l'ID sur le GameTooltip du sort.|n|nSpellName n'est pas supporté."
L["Incomplete Input"] = "Vous devez remplir tous les * optinos"
L["Incorrect SpellID"] = "SpellID incorrecte."
L["Install"] = "Installer"
L["IntID Intro"] = "|nLe spellID qui déclenche le chronomètre, doit être un nombre.|n|nVous pouvez obtenir l'ID sur le GameTooltip du sort.|n|nSpellName n'est pas supporté."
L["IntID*"] = "Sorts*"
L["InternalCD"] = "CustomCD"
L["Interrupted Message"] = "Interrompu %s's \124cff71d5ff\124Hspell:%d:0\124h[%s]\124h\124r!"
L["Invalid Target"] = "Cible incorrecte"
L["Invite"] = "Inviter"
L["Item Delete Mode"] = "Mode suppression d'objet"
L["Item Placed"] = "%s a déposé %s"
L["ItemID Intro"] = "|nThe item name of the timer that triggered.|n|nThe spellName would take place if blank."
L["ItemID"] = "Nom"
L["Join or Invite"] = "Rejoindre ou inviter"
L["KKUI_CustomBar"] = "CustomBar"
L["Key Binding"] = "Raccourcis"
L["Key Bound To"] = "associée a"
L["Key Index"] = "Index"
L["Keybind Mode"] = "Passez votre souris sur n'importe quel bouton d'action, pour le lier. Appuyez sur la touche Echap ou clic droit pour effacer le lien du bouton d'action actuel."
L["KkthnxUI Help"] = "Aide KkthnxUI"
L["KkthnxUI Outdated"] = "Votre version de KkthnxUI v"..K.Version.." ".."est obsolète."
L["Lack"] = "Manque de"
L["Latency"] = "Latence"
L["Leeeeeroy!"] = "Leeeeeroy!"
L["Left Click"] = "Clic gauche"
L["Legion Invasion"] = "Assauts des factions"
L["Local Time"] = "Heure locale"
L["Loot"] = "Loot"
L["MS"] = "MS"
L["Main Actionbar"] = "Barre d'action principale"
L["Memory Collected"] = "Mémoire collectée"
L["Middle Click"] = "Clic central:"
L["Missing DBM BigWigs"] = "Vous ne pouvez faire ca sans DBM ou BigWigs."
L["MoveUI"] = "DéplacerIU"
L["Next Invasion"] = "Suivante: "
L["No Guild"] = "Aucune guilde"
L["No Key Set"] = "Aucune clef"
L["Paragon"] = "Paragon"
L["Player Aura"] = "PlayerAura"
L["Power"] = "PW"
L["Press To Copy"] = "|nAppuyez sur <CTRL/C> pour copier."
L["Profile"] = "Profil "
L["ProfileDel"] = " Effacé: "
L["ProfileInfo"] = "\n/liste des profils\n/profil #\n/profil effacé #\n\n"
L["ProfileNotFound"] = "Profil introuvable"
L["ProfileSelection"] = "Merci de taper le numéro du profil pour l'utiliser (exemple: /profile 5)"
L["Profiles"] = "Profils"
L["Profit"] = "Profit"
L["Pull ABORTED!"] = "Pull REPORTÉ!"
L["Pulling In"] = "Pull de %s dans %s.."
L["Quick Split"] = "Quick Split"
L["Raid Buff Checker"] = "[KkthnxUI] Vérificateur des Buffs de Raid:"
L["Raid Buff"] = "RaidBuff"
L["Raid Debuff"] = "RaidDebuff"
L["Raid Disbanding"] = "[KkthnxUI] Dissolution du Raid"
L["Rare Spotted"] = "Rare repéré "
L["RareScanner Skin"] = "RareScanner Skin"
L["Realm Time"] = "Heure du royaume"
L["RealmCharacter"] = "Personnages du royaume:"
L["Remaining"] = "Restant:"
L["RemoveFromIgnoreList"] = "%s SpellID %s a été retiré de la liste des ignorés de AuraWatch. Vous pouvez maintenir CTRL+ALT enfoncées et cliquer sur l'icône de UnitAura pour l'ajouter de nouveau aux ignorés."
L["Repaired Failed"] = "Vous n'avez pas assez d'argent pour réparer,|r "
L["Repaired Items Guild"] = "Vos objets ont été réparés en utilisant les fonds de la banque de guilde pour : "
L["Repaired Items"] = "Vos objets ont été réparés pour :|r "
L["Replay"] = "Replay"
L["Reset Details"] = "Reset Details"
L["Reset KkthnxUI"] = "Êtes-vous sûr de vouloir réinitialiser tous les paramètres de ce profil ?"
L["Reset your AuraWatch List?"] = "Êtes-vous sûr d'effacer tous vos groupes de la liste personnalisée ?"
L["Restart Graphics"] = "Une ou plusieurs des modifications que vous avez apportées nécessitent un redémarrage du moteur graphique."
L["Rested"] = "Reposé:"
L["Reveal Hidden Areas"] = "Révélez les zones cachées"
L["Reveal"] = "Révélez"
L["Right Click"] = "Clic Droit"
L["Sapped"] = "Sapped"
L["SappedBy"] = "Sapped by: "
L["Save KeyBinds"] = "Raccourci(s) sauvgardé(s)."
L["Saved Raid(s)"] = "Raid(s) saugardé(s)"
L["Session"] = "Session:"
L["Show Hide Details"] = "Montrer/Masquer Details"
L["Show Hide Skada"] = "Montre/Masquer Skada"
L["Skipped The Cutscene"] = "Passez la cinématique."
L["Slot Intro"] = "|nAfficher le cooldown des objets.|n|ne.g. Enchantement d'ingénierie sur la taille ou la cape.|n|nNe supporte que les bijoux activés."
L["Slot*"] = "Emplacement*"
L["Special Aura"] = "SpecialAura"
L["Spell Cooldown"] = "Cooldown"
L["Spent"] = "Dépensé.s"
L["Split Count"] = "Split Count"
L["Stack Buying Check"] = "Êtes-vous sûr de vouloir acheter |cffff0000une pile|r de ça?"
L["Stack Cap"] = "Stack Caps"
L["Stack Intro"] = "|nCumul de sort, doit être un nombre.|n|nLe sort ne s'affiche qu'une fois qu'il a atteint le cumul que vous avez défini.|n|nLe cumul sera ignoré si il est vide."
L["Stack"] = "Pile"
L["StackSplitEnable"] = "|nCliquez pour séparer les objets empilés dans vos sacs, vous pouvez changer 'split count' pour chaque clic dans la boîte d'édition."
L["Start Stop Countdown"] = "Démarrer/Arrêter le décompte"
L["Stranger"] = "Etranger"
L["Strike"] = "SS"
L["Summon From"] = "L'invocation de"
L["Summon Warning"] = "sera automatiquement acceptée dans 10 secondes, sauf annulation."
L["SwitchMode"] = "Switch Mode"
L["System"] = "System"
L["Target Aura"] = "TargetAura"
L["Targeted By"] = "Ciblé par:"
L["Text Intro"] = "|nAfficher le texte sur le sort|n|nLorsque le sort est activé, il affiche le texte que vous avez défini.|n|nLe texte sera masqué lorsque VALUE est activée ou laissée vide."
L["Text"] = "Texte"
L["This Cutscene Can Not Be Skipped"] = "Cette cinématique ne peut être passée."
L["Timeless Intro"] = "|nSi activé, le timer du sort devrait être caché."
L["Timeless"] = "Timeless"
L["Tips"] = "Astuces"
L["To"] = "To"
L["Toggle KkthnxUI Config"] = "Afficher la config de KkthnxUI"
L["Toggle Quick Menu"] = "Afficher le menu rapide"
L["Totem Intro"] = "|nAfficher la durée du totem dans son emplacement."
L["Totem*"] = "Totem*"
L["TotemSlot"] = "TotemSlot"
L["Trade"] = "Echanger"
L["Trait"] = "Trait"
L["Trigger"] = "Déclencheur"
L["Tutorial Page1"] = "Bienvenue au tutoriel d'installation !|n|nCliquez sur le bouton 'Appliquer' (en bas à droite) pour appliquer certains paramètres par défaut. Cela comprend (entre autres) les Nameplates, les barres d'action, les Unitframes et autres.|n|n|cffff0000CQui sont tous recommandés.|r"
L["Tutorial Page2"] = "Vous êtes passé à l'étape suivante !|n|nNous allons ici charger quelques paramètres utiles pour le Chat ! Ces paramètres sont importants et conçus pour KkthnxUI|n|n|cffff0000ATTENTION:|r|n|n|cff00ccffVous pouvez défiler vers le haut ou le bas du chat en maintenant la touche MAJ enfoncée sur la fenêtre de chat.|r"
L["Tutorial Page3"] = "Toujours là ? Bien !|n|nIl s'agit de la section permettant d'appliquer l'échelle d'interface recommandée en fonction de votre résolution actuelle.|n|nVous pouvez changer cette échelle dans |cffffcc00 les options de configuration de KkthnxUI (Onglet Général)|r plus tard."
L["Tutorial Page4"] = "Enfin, les paramètres de profil de Skada/DBM/BigWigs et quelques autres addOns seront importés si ces addOns sont chargés/activés actuellement.|n|nVous pouvez désactiver les skins dans |cffffcc00les options de configuration de KkthnxUI (Onglet Skins)|r."
L["Tutorial Page5"] = "Eh bien, vous avez réussi à aller jusqu'au bout ! Vous avez terminé le tutoriel.|n|n|cffff0000ATTENTION:|r|n|nVous pouvez facilement définir la focalisation en maintenant les touches SHIFT et clic gauche sur l'unité désirée ;|n|nLa plupart des paramètres peuvent être modifiés dans |cffffcc00les options de configuration de KkthnxUI|r.|r Bonne chance et amusez-vous bien "..K.Name
L["Type Intro"] = "|nAuraID: surveiller le statut des Buff/Debuff.|n|nSpellID: surveiller le cooldown des sorts.|n|nSlotID: surveiller le cooldown des objets.|n|nTotemID: surveiller la durée du totem activé."
L["Type*"] = "Type*"
L["Unit Intro"] = "|nLes informations sur les de l'unité.|n|njoueur: unité est le joueur.|n|ncible: unité est la cible.|n|nfocalisation: unité est la cible focalisée.|n|nfamilier: unité est le familier."
L["Unit*"] = "Unité*"
L["Value Intro"] = "|nSi activé, la valeur du sort doit être visible.|n|ne.g. Le bouclier du prêtre indiquera sa quantité d'absorption restante.|n|nIl a une priorité plus élevée que le TEXTE."
L["Value"] = "Valeur"
L["Vendored Items"] = "Camelote vendues pour: |r "
L["Warning"] = "Attention"
L["Whisper"] = "Dire à"
L["WoW"] = "WoW"
L["World Latency"] = "Latence du monde"
L["World Protocol"] = "Protocole du monde"
L["XP"] = "XP:"

-- HelpTip Locales
L["ChatHelpTip"] = "Faites défiler plusieurs lignes en maintenant la touche Ctrl enfoncée, et faites défiler vers le haut ou le bas en maintenant la touche Shift enfoncée."
L["MinimapHelpTip"] = "Faites défiler la minimap pour faire un zoom avant ou arrière, cliquez au milieu pour basculer le micro-menu, cliquez à droite pour basculer le menu des pistes."

-- GUI Group Title Locales
L["ActionBar"] = "Barres d'action"
L["Announcements"] = "Annonces"
L["Arena"] = "Arène"
L["AuraWatch"] = "AuraWatch"
L["Auras"] = "Auras"
L["Automation"] = "Automatisation"
L["Boss"] = "Boss"
L["Chat"] = "Chat"
L["DataBars"] = "DataBars"
L["DataText"] = "DataText"
L["Inventory"] = "Inventaire"
L["Minimap"] = "Minimap"
L["Misc"] = "Autres"
L["Nameplate"] = "Nameplate"
L["Party"] = "Groupe"
L["PulseCooldown"] = "PulseCooldown"
L["QuestNotifier"] = "NotificationQuête"
L["Raid"] = "Raid"
L["Skins"] = "Skins"
L["Tooltip"] = "Tooltip"
L["UIFonts"] = "UIFonts"
L["UITextures"] = "UITextures"
L["Unitframe"] = "Unitframe"
L["WorldMap"] = "WorldMap"

-- GUI Group Options Description Locals
L["Choose Your Layout"] = "Choisissez votre disposition"
L["Enable ActionBar"] = "Activer les barres d'action"
L["Enable Count"] = "Activer le décompte"
L["Enable CustomBar"] = "Activer CustomBar"
L["Enable Hotkey"] = "Activer raccourci"
L["Enable Macro"] = "Activer macro"
L["Enable MicroBar"] = "Activer MicroBar"
L["Enable MicroBarMouseover"] = "Activer survol MicroBar"
L["Enable OverrideWA"] = "Cacher les cooldowns avec WA"
L["Format Cooldowns As Decimals"] = "Formater les cooldowns en décimales"
L["Mouseover PetBar"] = "Survol barre du familier"
L["Mouseover RightBar 1"] = "Survol barre droite 1"
L["Mouseover RightBar 2"] = "Survol barre droite 2"
L["Mouseover StanceBar"] = "Survol barre des postures"
L["Set CustomBar Button Size"] = "Définir taille des boutons de la CustomBar"
L["Set CustomBar Num Buttons"] = "Définir le nombre de boutons de la CustomBar"
L["Set CustomBar Num PerRow"] = "Définir le nombre de boutons par ligne de la CustomBar"
L["Set MainBars Button Size"] = "Définir taille des boutons de la barre principale"
L["Set RightBars Button Size"] = "Définir taille des boutons des barres droite"
L["Set Stance/Pet Button Size"] = "Définir taille des boutons de la barre du familier/postures"
L["Show Cooldowns"] = "Afficher les Cooldowns"
L["Show PetBar"] = "Afficher barre du familier"
L["Show StanceBar"] = "Afficher barre des postures"

L["Accept Invites From Friends & Guild Members"] = "Accepter les invitations d'amis et de membres de votre guilde"
L["Accept PartySync From Friends & Guild Members"] = "Accepter la Synchro. de groupe d'amis et de membres de votre guilde"
L["Alert Group After Instance Resetting"] = "Alerter le groupe après la réinitialisation de l'instance"
L["Announce Interrupts"] = "Annoncer les interruptions"
L["Announce Items Being Placed"] = "Annoncer les objets à placer"
L["Announce Pull Countdown (/pc #)"] = "Annoncer le compte à rebours avant pull (/pc #)"
L["Announce When Sapped"] = "Annoncer quand assomer"
L["Auto Accept Invite Keyword"] = "Accepter auto. des invitations par mot-clé"
L["Auto Accept Resurrect Requests"] = "Accepter auto. les demande de résurrection"
L["Auto Accept Summon Requests"] = "Acceptez auto. les demande d'invocation"
L["Auto Collapse Objective Tracker"] = "Réduire automatiquement le suivi de quête"
L["Auto Release in Battlegrounds & Arenas"] = "Libérer l'esprit auto. dans les Arènes et Champs de bataille"
L["Auto Screenshot Achievements"] = "Capturer un screenshot après un Haut-fait"
L["Auto Select Quest Rewards Best Value"] = "Sélectionner automatiquement la récompense de quête la plus cher"
L["Auto Set Your Role In Groups"] = "Définir auto. votre rôle dans les groupes"
L["Auto Skip All Cinematic/Movies"] = "Passer auto. les cinématiques"
L["Automatically Remove Annoying Buffs"] = "Retirer auto. les buffs inutiles"
L["Blocks Invites From Strangers"] = "Bloquez les invitations des joueurs inconnus"
L["Decline Pet Duels"] = "Refuser les duels de mascottes"
L["Decline PvP Duels"] = "Refuser les duels JcJ"
L["Don't Alert In instances"] = "Ne pas envoyer d'alertes en instance"
L["Enable Event & Rare Alerts"] = "Activer les alertes d'évenement & de rare"
L["Milling, Prospecting & Disenchanting by Alt + Click"] = "Moudre, Prospecter & Désenchanter avec Alt + Clic"
L["Only Tab Target Enemy Players"] = "Cibler seulement les joueurs ennemis avec Tab."
L["Print Alerts In Chat"] = "Ecrire les alertes dans le chat"
L["Say 'Thank You' When Resurrected"] = "Dire 'Merci' quand ressusciter"
L["Say Goodbye After Dungeon Completion."] = "Dire au revoir après avoir terminer le donjon."

L["Auto Repair Gear"] = "Réparer auto. l'équipement"
L["Auto Vendor Grays"] = "Vendre la camelote auto."
L["Bags Delete Button"] = "Bags Delete Button"
L["Bags Width"] = "Largeur des sacs"
L["Bank Width"] = "Largeur de la banque"
L["Display Item Level"] = "Afficher le niveau d'objet"
L["Enable Bagbar"] = "Activer la barre des sacs"
L["Enable Inventory"] = "Activer inventaire"
L["Fade Bagbar"] = "Barre des sacs fondue"
L["Filter Anima Items"] = "Filtrer les objets Anima"
L["Filter Collection Items"] = "Filter Collection Items"
L["Filter Consumable Items"] = "Filrer les consommables"
L["Filter EquipSet"] = "Filtrer les sets d'armure"
L["Filter Equipment Items"] = "Filtrer les équipements"
L["Filter Favourite Items"] = "Filtrer les objets favoris"
L["Filter Goods Items"] = "Filtrer les ressources"
L["Filter Items Into Categories"] = "Filtrer les objets en catégories"
L["Filter Junk Items"] = "Filtrer la camelote"
L["Filter Legendary Items"] = "Filtrer les objets légendaires"
L["Filter Quest Items"] = "Filtrer les objets de quête"
L["Gather Empty Slots Into One Button"] = "Rassembler les emplacement vide en un bouton"
L["Show New Item Glow"] = "Mettre les nouveaux objets en surbrillance"
L["Show Upgrade Icon"] = "Afficher l'icône d'amélioration"
L["Slot Icon Size"] = "Dimension des emplacements"
L["Umm Reverse The Sorting"] = "Umm inverser le tri"

L["Auras Reminder (Shout/Intellect/Poison)"] = "Auras Reminder (Shout/Intellect/Poison)"
L["Buff Icon Size"] = "Taille des icônes de Buff"
L["Buffs Grow Right"] = "Buffs Grow Right"
L["Buffs per Row"] = "Buff par ligne"
L["DeBuff Icon Size"] = "Taille des icônes de DeBuff"
L["DeBuffs per Row"] = "DeBuff par ligne"
L["Debuffs Grow Right"] = "Debuffs Grow Right"
L["Enable Auras"] = "Activer Auras"
L["Enable TotemBar"] = "Activer TotemBar"
L["Totems IconSize"] = "Taille des icônes des Totems"
L["Vertical TotemBar"] = "TotemBar verticale"

L["Alert On M+ Quake"] = "Alert On M+ Quake"
L["AuraWatch GUI"] = "AuraWatch GUI"
L["AuraWatch IconScale"] = "Taille des icônes d'AuraWatch"
L["Disable AuraWatch Tooltip (ClickThrough)"] = "Désactiver le Tooltip d'AuraWatch (ClickThrough)"
L["Enable AuraWatch"] = "Activer AuraWatch"
L["Track Auras From Previous Expansions"] = "Suivre les auras des précédentes extensions"

L["Allow Spam From Friends"] = "Autoriser les spams d'amis"
L["Block 'Some' AddOn Alerts"] = "Bloquer 'certaines' alertes d'AddOn"
L["Block Whispers From Strangers"] = "Bloquer les messages privés des étrangers"
L["ChatFilter BlackList"] = "ChatFilter BlackList"
L["ChatFilter WhiteList"] = "ChatFilter WhiteList"
L["Custom Chat Timestamps"] = "Horodatage personnalisé du Chat"
L["Differ Whipser Colors"] = "Couleur différente des messages privés"
L["Disable Chat Language Filter"] = "Désactiver le filtre à obscenité du chat"
L["Enable Chat Filter"] = "Activer le filtre à obscenité du chat"
L["Enable Chat"] = "Activer le Chat"
L["Fade Chat Tabs"] = "Fondu des onglets du chat"
L["Fade Chat Text"] = "Fondu du texte du chat"
L["Fading Chat Visible Time"] = "Temps avant fondu du Chat"
L["Filter Matches Number"] = "Filter Matches Number"
L["Lock Chat Height"] = "Bloquer la hauteur du Chat"
L["Lock Chat Width"] = "Bloquer la largeur du Chat"
L["Lock Chat"] = "Bloquer le Chat"
L["Show Chat Background"] = "Afficher le fond du Chat"
L["Show Chat Loot Icons"] = "Afficher les icônes de loot du Chat"
L["Show Chat Menu Buttons"] = "Afficher les boutons du menu du Chat"
L["Show ItemLevel on ChatFrames"] = "Afficher l'ItemLevel dans le Chat"
L["Stick On Channel If Whispering"] = "Stick On Channel If Whispering"
L["Use Default Channel Names"] = "Utiliser les noms de canaux par défaut"

L["DataBars Height"] = "Hauteur des DataBars"
L["DataBars Width"] = "Largeur des DataBars"
L["Enable DataBars"] = "Activer DataBars"
L["Experience Bar Color"] = "Couleur de la barre d'Experience"
L["Fade DataBars"] = "Fondu DataBars"
L["Honor Bar Color"] = "Couleur de la barre d'Honneur"
L["Pick Text Formatting"] = "Choisissez le formatage du texte"
L["Rested Bar Color"] = "Couleur de la barre de repos"
L["Show Text"] = "Afficher le texte"
L["Track Honor"] = "Suivre l'Honneur"

L["Enable Currency Info"] = "Afficher les monnaies"
L["Enable Friends Info"] = "Afficher les infos social"
L["Enable Guild Info"] = "Afficher les infos de guilde"
L["Enable Latency Info"] = "Afficher les infos de latences"
L["Enable Minimap Location"] = "Afficher la localisation de la Minimap"
L["Enable Minimap Time"] = "Afficher l'heure de la Minimap"
L["Enable System Info"] = "Afficher les infos système"

L["Auto Scale"] = "Echelle automatique"
L["Color 'Most' KkthnxUI Borders"] = "Couleur de la plupart des bordures de KkthnxUI"
L["Disable 'Some' Blizzard Tutorials"] = "Désactiver 'quelques' tutoriels Blizzard"
L["Disable Blizzard Error Frame Combat"] = "Désactiver la fenêtre d'erreur Blizzard pendant les combats"
L["Enable Version Checking"] = "Activer la vérification de version"
L["Import Profiles From Other Characters"] = "Importer les profils à partir d'autres personnages"
L["Move Blizzard Frames"] = "Bouger les fenêtres Blizzard"
L["Number Prefix Style"] = "Style du numéro de préfixe"
L["Set UI scale"] = "Définir l'échelle de l'interface"
L["Show Welcome Message"] = "Afficher le message de bienvenue"
L["Textures Color"] = "Couleur des Textures"

L["Auto Confirm Loot Dialogs"] = "Confirmer automatique les fenêtres de butin"
L["Auto Greed Green Items"] = "Cupidité automatique sur les objets verts"
L["Enable Group Loot"] = "Activer le butin de groupe"
L["Enable Loot"] = "Activer butin"
L["Faster Auto-Looting"] = "Butin-Auto plus rapide"

L["Blip Icon Styles"] = "Style de l'icône Blip"
L["Enable Minimap"] = "Activer Minimap"
L["Location Text Style"] = "Style du texte de Location"
L["Minimap Size"] = "Taille de la Minimap"
L["Show Minimap Button Collector"] = "Afficher l'agrégateur de bouton de la Minimap"
L["Show Minimap Calendar"] = "Afficher le calendrier de la Minimap"

L["AFK Camera"] = "AFK Camera"
L["Add Spellbook-Like Tabs On TradeSkillFrame"] = "Ajouter des onglets type livre de sort dans TradeSkillFrame"
L["Auto Emote On Your Killing Blow"] = "Envoyer un emote après un coup fatal"
L["Character/Inspect Gem/Enchant Info"] = "Personnage/Inspecter Gemmes/Enchantements Info"
L["Display Character Frame Full Stats"] = "Afficher les statistiques complètes du personnage"
L["EasyMarking by Ctrl + LeftClick"] = "EasyMarking par Ctrl + LeftClick"
L["Enable Mouse Trail"] = "Activer le tracé de la souris"
L["Enhanced Color Picker"] = "Color Picker amélioré"
L["Enhanced Colors (Friends/Guild +)"] = "Couleurs améliorées (Amis/Guilde +)"
L["Hide BossBanner"] = "Masquer la BossBanner"
L["Hide RaidBoss EmoteFrame"] = "Masquer RaidBoss EmoteFrame"
L["Mouse Trail Color"] = "Couleur du tracé de la souris"
L["Paragon Color"] = "Couleur du Parangon"
L["Paragon Enable"] = "Activer Parangon"
L["Paragon Text Format"] = "Format du texte Parangon"
L["Paragon Toast Fade"] = "Fondu Parangon Toast"
L["Paragon Toast Sound"] = "Son Parangon Toast"
L["Paragon Toast"] = "Parangon Toast"
L["Remove And Hide The TalkingHead Frame"] = "Désactiver et cacher la fenêtre TalkingHead"
L["Show Character/Inspect ItemLevel Info"] = "Afficher Personnage/Inspecter niveau d'objet"
L["Show Slot Durability %"] = "Afficher la durabilité des objets %"
L["Show Wowhead Links Above Questlog Frame"] = "Afficher un lien Wowhead au dessus de la fenêtre de suivi de quête"
L["Show Your Killing Blow Info"] = "Afficher vos informations de vos coups fatals"
L["World Markers Bar"] = "World Markers Bar"

L["Auras Filter Style"] = "Auras Filter Style"
L["Auras Size"] = "Tailel des Auras"
L["Classpower/Healthbar Height"] = "Hauteur de la Barre de ressource/Barre de vie"
L["Colored Custom Units"] = "Colored Custom Units"
L["Custom Color"] = "Couleur Customisée"
L["Enable GCD Ticker"] = "Activer GCD Ticker"
L["Enable Nameplates"] = "Activer les Nameplates"
L["Enable Personal Resource"] = "Activer les ressources Personnelles"
L["Force TankMode Colored"] = "Force TankMode Colored"
L["HealthText FontSize"] = "Taille de la police de la barre de vie"
L["Insecure Color"] = "Couleur d'insécurité"
L["Interacted Nameplate Stay Inside"] = "Interacted Nameplate Stay Inside"
L["Max Auras"] = "Max Auras"
L["NameText FontSize"] = "Taille de la police du nom"
L["Nameplate Height"] = "Hauteur Nameplate"
L["Nameplate Vertical Spacing"] = "Espace vertical de la Nameplate"
L["Nameplate Width"] = "Largeur Nameplate"
L["Nameplete MaxDistance"] = "Distance max Nameplete"
L["Non-Target Nameplate Alpha"] = "Alpha Nameplate non-cible"
L["Non-Target Nameplate Scale"] = "Echelle Nameplate non-cible"
L["Off-Tank Color"] = "Couleur des Off-Tank"
L["Only Visible in Combat"] = "Seulement visible au combat"
L["PlayerPlate IconSize"] = "Taille icône de PlayerPlate"
L["PlayerPlate Powerbar Height"] = "Hauteur barre de ressource PlayerPlate"
L["Quest Progress Indicator"] = "Indicateur de progrès de la Quête"
L["Revert Threat Color If Not Tank"] = "Revert Threat Color If Not Tank"
L["Scale Nameplates for Explosives"] = "Scale Nameplates for Explosives"
L["Secure Color"] = "Secure Color"
L["Show AngryKeystones Progress"] = "Show AngryKeystones Progress"
L["Show Enemy Class Icons"] = "Afficher l'icône de classe des ennemis"
L["Show Friendly ClassColor"] = "Afficher les couleurs de classe des cibles amicales"
L["Show Health Value"] = "Afficher la valeur de santé"
L["Show Hostile ClassColor"] = "Afficher les couleurs de classe des cibles ennemis"
L["Show Only Names For Friendly"] = "Afficher uniquement les noms des cibles amicales"
L["Show Power Value"] = "Show Power Value"
L["Smooth Bars Transition"] = "Transition des barres lissées"
L["Target Nameplate ClassPower"] = "Target Nameplate ClassPower"
L["TargetIndicator Color"] = "TargetIndicator Color"
L["TargetIndicator Style"] = "TargetIndicator Style"
L["Track Personal Class Auras"] = "Track Personal Class Auras"
L["Transition Color"] = "Transition de couleur"
L["Unit Execute Ratio"] = "Unit Execute Ratio"

L["Animation Scale"] = "Echelle de l'animation"
L["Enable PulseCooldown"] = "Activer PulseCooldown"
L["How Long To Display"] = "Durée d'affichage"
L["Icon Size"] = "Taille des icônes"
L["Minimal Threshold Time"] = "Durée minimale du seuil"
L["Play Sound On Pulse"] = "Jouer un son sur Pulse"

L["Bartender4 Skin"] = "Skin de Bartender4"
L["BigWigs Skin"] = "Skin de BigWigs"
L["ChatBubbles Background Alpha"] = "Alpha du fond des bulles de Chat"
L["ChatBubbles Skin"] = "Skin des bulles de Chat"
L["ChocolateBar Skin"] = "Skin de ChocolateBar"
L["Deadly Boss Mods Skin"] = "Skin de Deadly Boss Mods"
L["Details Skin"] = "Skin de Details"
L["Hekili Skin"] = "Skin d'Hekili"
L["Skada Skin"] = "Skin de Skada"
L["Skin Some Blizzard Frames & Objects"] = "Skin certaines fenêtres Blizzard"
L["Spy Skin"] = "Skin de Spy"
L["TalkingHead Skin"] = "Skin de TalkingHead"
L["TellMeWhen Skin"] = "Skin de TellMeWhen"
L["TitanPanel Skin"] = "Skin de TitanPanel"
L["WeakAuras Skin"] = "Skin de WeakAuras"

L["Abbreviate Guild Names"] = "Abréger les noms des guildes"
L["Conduit Collected Info"] = "Informations recueillies sur les conduits"
L["Follow Cursor"] = "Suivre le curseur"
L["Hide Guild Rank"] = "Cacher le rang de la guilde"
L["Hide Player Title"] = "Cacher le titre du joueur"
L["Hide Tooltip in Combat"] = "Cacher l'info-bulle en combat"
L["Item Icons"] = "Icônes des objets"
L["Quality Color Border"] = "Bordure de couleur en fonction de la qualité"
L["Show Faction Icon"] = "Afficher l'icône de faction"
L["Show Player Targeted By"] = "Afficher 'Joueur Ciblé Par'"
L["Show Roles Assigned Icon"] = "Afficher les icônes de rôle"
L["Show Spec/ItemLevel by SHIFT"] = "Afficher Spec/Niveau d'objet avec SHIFT"
L["Show Tooltip IDs"] = "Afficher l'ID des Tooltip"
L["Show realm name by SHIFT"] = "Afficher le nom du royaume avec SHIFT"

L["Set ActionBar Font"] = "Définir la police de ActionBar"
L["Set Auras Font"] = "Définir la police des Auras"
L["Set Chat Font"] = "Définir la police du Chat"
L["Set DataBars Font"] = "Définir la police des DataBars"
L["Set DataText Font"] = "Définir la police du DataText"
L["Set Filger Font"] = "Définir la police du Filger"
L["Set General Font"] = "Définir la police générale"
L["Set Inventory Font"] = "Définir la police de l'Inventaire"
L["Set Minimap Font"] = "Définir la police de la Minimap"
L["Set Nameplate Font"] = "Définir la police des Nameplate"
L["Set QuestTracker Font"] = "Définir la police du suivi de quête"
L["Set Skins Font"] = "Définir la police de Skins"
L["Set Tooltip Font"] = "Définir la police des info-bulles"
L["Set Unitframe Font"] = "Définir la police des cadres d'unité"
L["Adjust QuestFont Size"] = "Ajuster la taille de la police des quêtes"

L["Set DataBars Texture"] = "Définir la texture des DataBars"
L["Set Filger Texture"] = "Définir la texture du Filger"
L["Set General Texture"] = "Définir la texture générale"
L["Set HealPrediction Texture"] = "Définir la texture de HealPrediction"
L["Set Loot Texture"] = "Définir la texture du Loot"
L["Set Nameplate Texture"] = "Définir la texture des Nameplates"
L["Set QuestTracker Texture"] = "Définir la texture du suivi des quêtes"
L["Set Skins Texture"] = "Définir la texture des Skins"
L["Set Tooltip Texture"] = "Définir la texture de l'info-bulle"
L["Set Unitframe Texture"] = "Définir la texture des barres d'unités"

L["Class Color Castbars"] = "Barres d'incantation' aux couleurs de classe"
L["Enable Castbars"] = "Activer les barres d'incantation'"
L["Enable Simple CombatText"] = "Activer les textes de combat simple"
L["Enable Unitframes"] = "Activer les barres d'unités"
L["Fade Unitframes"] = "Fondu des barres d'unités"
L["Health Color Format"] = "Format de couleur de la vie"
L["Hide TargetofTarget Frame"] = "Masquer la cible de la cible"
L["Hide TargetofTarget Level"] = "Masquer le niveau de la cible de la cible"
L["Hide TargetofTarget Name"] = "Masquer le nom de la cible de la cible"
L["Number of Buffs Per Row"] = "Nombre de buffs par ligne"
L["Number of Debuffs Per Row"] = "Nombre de debuffs par ligne"
L["Only Show Your Debuffs"] = "Afficher seulement vos débuffs"
L["Pet's Healing/Damage"] = "Dommages/Soins du familier"
L["Player Castbar Height"] = "Hauteur de la barre d'incantation du joueur"
L["Player Castbar Width"] = "Largeur de la barre d'incantation du joueur"
L["Reaction Color Castbars"] = "Reaction Color Castbars"
L["Show Additional Mana Power (|CFFFF7D0ADruide|r, |CFFFFFFFFPrêtre|r, |CFF0070DEChaman|r)"] = "Afficher le mana additionel (|CFFFF7D0ADruide|r, |CFFFFFFFFPrêtre|r, |CFF0070DEChaman|r)"
L["Show AutoAttack Damage"] = "Afficher les dommages des attaques auto"
L["Show Castbar Latency"] = "Afficher la latence de la barre d'incantation"
L["Show Class Resources"] = "Afficher les ressources de classe"
L["Show Full OverHealing"] = "Afficher l'OverHealing"
L["Show Global Cooldown"] = "Afficher le Global Cooldown"
L["Show HealPrediction Statusbars"] = "Afficher la prédiction de heal sur les Statusbars"
L["Show Health Debuff Highlight"] = "Show Health Debuff Highlight"
L["Show Hots and Dots"] = "Afficher les Hots et Dots"
L["Show Player Frame Buffs"] = "Afficher les buffs du joueur"
L["Show Player Frame Debuffs"] = "Afficher les débuffs du joueur"
L["Show Player Frame Level"] = "Afficher le niveau du joueur"
L["Show Player Frame Name"] = "Afficher le nom du joueur"
L["Show Player Power Prediction"] = "Afficher la prediction d'utilisation de ressource"
L["Show PvP Indicator on Player / Target"] = "Afficher l'indication JcJ sur le joueur/cible"
L["Show Target Frame Buffs"] = "Afficher les buffs de la cible"
L["Show Target Frame Debuffs"] = "Afficher les débuffs de la cible"
L["Show |CFF00FF96Monk|r Stagger Bar"] = "Afficher la barre de report du |CFF00FF96Moine|r"
L["Smooth Bars"] = "Barres fluides"
L["Sound Played When You Are Resurrected"] = "Son joué lors de la résurrection"
L["Target Castbar Height"] = "Hauteur de la barre d'incantation de la cible"
L["Target Castbar Width"] = "Largeur de la barre d'incantation de la cible"
L["Unitframe Portrait Style"] = "Style du portrait du cadre d'unité"
L["Unitframe Swingbar Timer"] = "Unitframe Swingbar Timer"
L["Unitframe Swingbar"] = "Unitframe Swingbar"

L["Enable Party"] = "Activer les groupes"
L["Show Castbars"] = "Afficher les barres d'incantation"
L["Show Highlighted Target"] = "Afficher la cible mise en évidence"
L["Show Party Buffs"] = "Afficher les buffs de groupe"
L["Show Party Pets"] = "Afficher les familiers du groupe"
L["Show Player In Party"] = "Afficher les joueurs dans le groupe"
L["Smooth Bar Transition"] = "Transitions fluides des barres"

L["Enable Boss"] = "Activer boss"

L["Enable Arena"] = "Activer arène"

L["Aura Debuff Icon Size"] = "Taille d'icône des Debuffs Aura"
L["AuraWatch Icon Size"] = "Taille d'icône d'AuraWatch"
L["Enable Raidframes"] = "Activer les fenêtres de raid"
L["Health Format"] = "Format de la vie"
L["Horizontal Raid Frames"] = "Fenêtres de raid horizontales"
L["Number Of Groups to Show"] = "Nombre de groupe affichés"
L["Raidframe Height"] = "Hauteur des fenêtres de raid"
L["Raidframe Width"] = "Largeur des fenêtres de raid"
L["Reverse Raid Frame Growth"] = "Inverser le sens d'agrandissement de la fenêtre de raid"
L["Save Raid Positions Based On Specs"] = "Sauvergarder la position du raid par rapport a votre spécialisation"
L["Show AuraWatch Icons"] = "Afficher les icônes AuraWatch"
L["Show Away/DND Status"] = "Afficher le statut Absent/Ne pas déranger"
L["Show Group Number Team Index"] = "Afficher le numéro de groupe"
L["Show Manabars"] = "Afficher les barres de mana"
L["Show Raid Utility Frame"] = "Afficher la fenêtre utilitaire de raid"

L["Alert QuestProgress In Chat"] = "Alerter votre progression de quête dans le chat"
L["Enable QuestNotifier"] = "Activer la notification de quête"
L["Only Play Complete Quest Sound"] = "Ne jouez que le son en réussite de quête"

L["Alpha When Moving"] = "Alpha When Moving"
L["Fade Worldmap When Moving"] = "Fondu de la carte du monde en mouvement"
L["Show Map Reveal Overlay Shadow"] = "Show Map Reveal Overlay Shadow"
L["Show Player/Mouse Coordinates"] = "Afficher les coordonnées du joueur/souris"
L["Show Smaller Worldmap"] = "Afficher une carte du monde plus petite"
L["Show Zones You Have Yet to Discover"] = "Afficher les zones non découvertes"

-- GUI Config Tooltip Locales
L["AutoScaleTip"] = "Mise à l'échelle automatique de l'IU au pixel près en fonction de votre résolution.|n|nSi vous voulez changer l'échelle manuellement, vous devez désactiver 'Echelle automatique' puis appliquer l'échelle en utilisant le curseur"
L["ExecuteRatioTip"] = "Si le pourcentage de santé de l'unité est inférieur à la valeur plafond d'exécution que vous avez fixée, son nom devient rouge.|n|nL'indicateur d'exécution sera désactivé sur 0."
L["ParagonReputationTip"] = "Remplace les barres exaltées du cadre de réputation par des barres Parangon, que vous pouvez personnaliser vous-même avec les paramètres"
L["UIScaleTip"] = "Modifier l'échelle de l'IU selon vos préférences|n|nSi vous voulez changer l'échelle manuellement, vous devez désactiver 'Echelle automatique' puis appliquer l'échelle en utilisant le curseur"