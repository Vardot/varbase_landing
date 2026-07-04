<?php

declare(strict_types=1);

namespace Drupal\varbase_landing\Hook;

use Drupal\Core\Form\FormStateInterface;
use Drupal\Core\Hook\Attribute\Hook;

/**
 * Hook implementations for the Varbase Landing Page module.
 */
class VarbaseLandingHooks {

  /**
   * Implements hook_form_FORM_ID_alter().
   */
  #[Hook('form_node_landing_page_edit_form_alter')]
  public function formNodeLandingPageEditFormAlter(array &$form, FormStateInterface $form_state, $form_id): void {
    // Add the Varbase Bootstrap Paragraphs default admin styling.
    $form['#attached']['library'][] = 'varbase_bootstrap_paragraphs/vbp-default-admin';
  }

  /**
   * Implements hook_form_FORM_ID_alter().
   */
  #[Hook('form_node_landing_page_form_alter')]
  public function formNodeLandingPageFormAlter(array &$form, FormStateInterface $form_state, $form_id): void {
    // Add the Varbase Bootstrap Paragraphs default admin styling.
    $form['#attached']['library'][] = 'varbase_bootstrap_paragraphs/vbp-default-admin';
  }

}
