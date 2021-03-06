# frozen_string_literal: true
module MoodsHelper
  include FormHelper

  def new_mood_props
    new_form_props(mood_form_inputs, moods_path)
  end

  def quick_create_mood_props
    quick_create_form_props(mood_form_inputs, quick_create_moods_path)
  end

  def edit_mood_props
    edit_form_props(mood_form_inputs, mood_path(@mood))
  end

  private

  # rubocop:disable MethodLength
  def mood_form_inputs
    [
      {
        id: 'mood_name',
        type: 'text',
        name: 'mood[name]',
        label: t('common.name'),
        value: @mood.name || nil,
        required: true,
        dark: true
      },
      {
        id: 'mood_description',
        type: 'textarea',
        name: 'mood[description]',
        label: t('common.form.description'),
        value: @mood.description || nil,
        dark: true
      }
    ]
  end
  # rubocop:enable MethodLength
end
