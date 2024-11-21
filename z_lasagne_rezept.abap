*&---------------------------------------------------------------------*
*& Report z_lasagne_rezept
*&---------------------------------------------------------------------*
*& vegetarian spinach-ricotta lasagna – v1.1 – 11/21/24 – SAP denglish
*&---------------------------------------------------------------------*
REPORT z_lasagne_rezept.
DATA: lt_ingredients TYPE TABLE OF string,
      lt_steps       TYPE TABLE OF string.

INITIALIZATION.
  APPEND '450g Spinat' TO lt_ingredients.
  APPEND '150g Ricottakäse' TO lt_ingredients.
  APPEND 'Bechamel-Sauce' TO lt_ingredients.
  APPEND 'Lasagneblätter' TO lt_ingredients.
  APPEND 'Geriebener Käse (Emmentaler)' TO lt_ingredients.
  APPEND '60g Parmesan gerieben' TO lt_ingredients.
  APPEND '1. Spinat und den geriebenen Ricottakäse mischen' TO lt_steps.
  APPEND '2. Bechamel-Sauce in Backform verteilen' TO lt_steps.
  APPEND '3. Lasagneblätter auslegen' TO lt_steps.
  APPEND '4. Spinat-Käse-Schicht verteilen' TO lt_steps.
  APPEND '5. Lasagneblätter auslegen' TO lt_steps.
  APPEND '6. Bechamel-Sauce verteilen' TO lt_steps.
  APPEND '7. Spinat-Käse-Schicht verteilen' TO lt_steps.
  APPEND '8. Lasagneblätter auslegen' TO lt_steps.
  APPEND '9. Bechamel-Sauce verteilen' TO lt_steps.
  APPEND '10. Geriebenen Käse (Emmentaler) verteilen' TO lt_steps.
  APPEND '11. Parmesan verteilen' TO lt_steps.
  APPEND '12. 25-30 Minuten bei 180 Grad Umluft backen' TO lt_steps.

START-OF-SELECTION.
  WRITE: / '========== Zutaten =========='.
  LOOP AT lt_ingredients INTO DATA(ingredient).
    WRITE: / ingredient.
  ENDLOOP.
  WRITE: / '========== Zubereitung =========='.
  LOOP AT lt_steps INTO DATA(step).
    WRITE: / step.
  ENDLOOP.
