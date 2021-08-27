require "test_helper"

class SubheadComponentTest < ViewComponent::TestCase
  def test_render_component
    title = "mocked title"
    description = "mocked description"

    render_inline(SubheadComponent.new(title: title, description: description))
    assert_text(title)
    assert_text(description)
  end
end
