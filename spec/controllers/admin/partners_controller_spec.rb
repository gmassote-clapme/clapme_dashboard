require 'rails_helper'

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

RSpec.describe Admin::PartnersController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Admin::Partner. As you add validations to Admin::Partner, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Admin::PartnersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all admin_partners as @admin_partners" do
      partner = Admin::Partner.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:admin_partners)).to eq([partner])
    end
  end

  describe "GET show" do
    it "assigns the requested admin_partner as @admin_partner" do
      partner = Admin::Partner.create! valid_attributes
      get :show, {:id => partner.to_param}, valid_session
      expect(assigns(:admin_partner)).to eq(partner)
    end
  end

  describe "GET new" do
    it "assigns a new admin_partner as @admin_partner" do
      get :new, {}, valid_session
      expect(assigns(:admin_partner)).to be_a_new(Admin::Partner)
    end
  end

  describe "GET edit" do
    it "assigns the requested admin_partner as @admin_partner" do
      partner = Admin::Partner.create! valid_attributes
      get :edit, {:id => partner.to_param}, valid_session
      expect(assigns(:admin_partner)).to eq(partner)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Admin::Partner" do
        expect {
          post :create, {:admin_partner => valid_attributes}, valid_session
        }.to change(Admin::Partner, :count).by(1)
      end

      it "assigns a newly created admin_partner as @admin_partner" do
        post :create, {:admin_partner => valid_attributes}, valid_session
        expect(assigns(:admin_partner)).to be_a(Admin::Partner)
        expect(assigns(:admin_partner)).to be_persisted
      end

      it "redirects to the created admin_partner" do
        post :create, {:admin_partner => valid_attributes}, valid_session
        expect(response).to redirect_to(Admin::Partner.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved admin_partner as @admin_partner" do
        post :create, {:admin_partner => invalid_attributes}, valid_session
        expect(assigns(:admin_partner)).to be_a_new(Admin::Partner)
      end

      it "re-renders the 'new' template" do
        post :create, {:admin_partner => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested admin_partner" do
        partner = Admin::Partner.create! valid_attributes
        put :update, {:id => partner.to_param, :admin_partner => new_attributes}, valid_session
        partner.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested admin_partner as @admin_partner" do
        partner = Admin::Partner.create! valid_attributes
        put :update, {:id => partner.to_param, :admin_partner => valid_attributes}, valid_session
        expect(assigns(:admin_partner)).to eq(partner)
      end

      it "redirects to the admin_partner" do
        partner = Admin::Partner.create! valid_attributes
        put :update, {:id => partner.to_param, :admin_partner => valid_attributes}, valid_session
        expect(response).to redirect_to(partner)
      end
    end

    describe "with invalid params" do
      it "assigns the admin_partner as @admin_partner" do
        partner = Admin::Partner.create! valid_attributes
        put :update, {:id => partner.to_param, :admin_partner => invalid_attributes}, valid_session
        expect(assigns(:admin_partner)).to eq(partner)
      end

      it "re-renders the 'edit' template" do
        partner = Admin::Partner.create! valid_attributes
        put :update, {:id => partner.to_param, :admin_partner => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested admin_partner" do
      partner = Admin::Partner.create! valid_attributes
      expect {
        delete :destroy, {:id => partner.to_param}, valid_session
      }.to change(Admin::Partner, :count).by(-1)
    end

    it "redirects to the admin_partners list" do
      partner = Admin::Partner.create! valid_attributes
      delete :destroy, {:id => partner.to_param}, valid_session
      expect(response).to redirect_to(admin_partners_url)
    end
  end

end
