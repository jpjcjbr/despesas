require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe DespesasController do

  # This should return the minimal set of attributes required to create a valid
  # Despesa. As you add validations to Despesa, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all despesas as @despesas" do
      despesa = Despesa.create! valid_attributes
      get :index
      assigns(:despesas).should eq([despesa])
    end
  end

  describe "GET show" do
    it "assigns the requested despesa as @despesa" do
      despesa = Despesa.create! valid_attributes
      get :show, :id => despesa.id.to_s
      assigns(:despesa).should eq(despesa)
    end
  end

  describe "GET new" do
    it "assigns a new despesa as @despesa" do
      get :new
      assigns(:despesa).should be_a_new(Despesa)
    end
  end

  describe "GET edit" do
    it "assigns the requested despesa as @despesa" do
      despesa = Despesa.create! valid_attributes
      get :edit, :id => despesa.id.to_s
      assigns(:despesa).should eq(despesa)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Despesa" do
        expect {
          post :create, :despesa => valid_attributes
        }.to change(Despesa, :count).by(1)
      end

      it "assigns a newly created despesa as @despesa" do
        post :create, :despesa => valid_attributes
        assigns(:despesa).should be_a(Despesa)
        assigns(:despesa).should be_persisted
      end

      it "redirects to the created despesa" do
        post :create, :despesa => valid_attributes
        response.should redirect_to(Despesa.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved despesa as @despesa" do
        # Trigger the behavior that occurs when invalid params are submitted
        Despesa.any_instance.stub(:save).and_return(false)
        post :create, :despesa => {}
        assigns(:despesa).should be_a_new(Despesa)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Despesa.any_instance.stub(:save).and_return(false)
        post :create, :despesa => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested despesa" do
        despesa = Despesa.create! valid_attributes
        # Assuming there are no other despesas in the database, this
        # specifies that the Despesa created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Despesa.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => despesa.id, :despesa => {'these' => 'params'}
      end

      it "assigns the requested despesa as @despesa" do
        despesa = Despesa.create! valid_attributes
        put :update, :id => despesa.id, :despesa => valid_attributes
        assigns(:despesa).should eq(despesa)
      end

      it "redirects to the despesa" do
        despesa = Despesa.create! valid_attributes
        put :update, :id => despesa.id, :despesa => valid_attributes
        response.should redirect_to(despesa)
      end
    end

    describe "with invalid params" do
      it "assigns the despesa as @despesa" do
        despesa = Despesa.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Despesa.any_instance.stub(:save).and_return(false)
        put :update, :id => despesa.id.to_s, :despesa => {}
        assigns(:despesa).should eq(despesa)
      end

      it "re-renders the 'edit' template" do
        despesa = Despesa.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Despesa.any_instance.stub(:save).and_return(false)
        put :update, :id => despesa.id.to_s, :despesa => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested despesa" do
      despesa = Despesa.create! valid_attributes
      expect {
        delete :destroy, :id => despesa.id.to_s
      }.to change(Despesa, :count).by(-1)
    end

    it "redirects to the despesas list" do
      despesa = Despesa.create! valid_attributes
      delete :destroy, :id => despesa.id.to_s
      response.should redirect_to(despesas_url)
    end
  end

end
