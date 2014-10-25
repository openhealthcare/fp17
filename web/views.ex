defmodule FP17.Views do

  defmacro __using__(_options) do
    quote do
      use Phoenix.View
      import unquote(__MODULE__)

      # This block is expanded within all views for aliases, imports, etc
      import FP17.I18n
      import FP17.Router.Helpers
    end
  end


  @doc """
    Renders a text field with the specified label and name
  """
  def textfield(label, name) do
    """
        <div class="form-group">
            <label for="#{name}">#{label}</label>
            <input type="text" class="form-control" id="#{name}" placeholder="#{label}">
        </div>
    """
  end

  @doc """
    Renders a boostrap button selector (for Y/N questions). Takes a label
    and a name, along with a list of lists.  Each list in the list should
    have the Label/Name for each option.

    e.g. options("Sex", "sex", [["Male", "M"], ["Female", "F"]])
  """
  def options(label, name, optionlist) do
    start = """
            <label for="title">#{label}</label><br/>
            <div class="btn-group" data-toggle="buttons">
    """

    middle = Enum.map optionlist, fn(x) ->
          [lbl, val] = x
          """
            <label class="btn btn-primary">
              <input type="radio" name="#{name}" value="#{val}"> #{lbl}
            </label>
          """
        end


    last = """
            </div>
    """

    start <> Enum.join(middle, "") <> last
  end

  def checkbox(label, name) do
    """
      <label for="#{name}">#{label}</label>
      <div class="btn-group" data-toggle="buttons">
        <label class="btn btn-primary">
          <input type="checkbox" name="#{name}"> Yes
        </label>
      </div>
    """

  end

end


