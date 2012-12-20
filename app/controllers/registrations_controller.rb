class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for (resource)
    list = current_user.lists.create({:name => "all"})
    list.tasks.create({:title => 'Get Started With Split Task', :order => 1})
    root_path
  end

end
