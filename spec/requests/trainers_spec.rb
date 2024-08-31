require 'rails_helper'

RSpec.describe "/trainers", type: :request do
  let(:valid_attributes) {
    {
      name: "Kristin"
    }
  }

  let(:invalid_attributes) {
    {
      name: "",
      phone: "(555) 555-5555",
      email: "kristin@example.com"
    }
  }

  describe "GET /index" do
    it "renders a successful response" do
      Trainer.create! valid_attributes
      get trainers_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      trainer = Trainer.create! valid_attributes
      get trainer_url(trainer)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_trainer_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      trainer = Trainer.create! valid_attributes
      get edit_trainer_url(trainer)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Trainer" do
        expect {
          post trainers_url, params: { trainer: valid_attributes }
        }.to change(Trainer, :count).by(1)
      end

      it "redirects to the created trainer" do
        post trainers_url, params: { trainer: valid_attributes }
        expect(response).to redirect_to(trainer_url(Trainer.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Trainer" do
        expect {
          post trainers_url, params: { trainer: invalid_attributes }
        }.to change(Trainer, :count).by(0)
      end


      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post trainers_url, params: { trainer: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        {
          email: "kristin@not-real.com"
        }
      }

      it "updates the requested trainer" do
        trainer = Trainer.create! valid_attributes
        patch trainer_url(trainer), params: { trainer: new_attributes }
        trainer.reload
        expect(trainer.email).to eq("kristin@not-real.com")
      end

      it "redirects to the trainer" do
        trainer = Trainer.create! valid_attributes
        patch trainer_url(trainer), params: { trainer: new_attributes }
        trainer.reload
        expect(response).to redirect_to(trainer_url(trainer))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        trainer = Trainer.create! valid_attributes
        patch trainer_url(trainer), params: { trainer: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested trainer" do
      trainer = Trainer.create! valid_attributes
      expect {
        delete trainer_url(trainer)
      }.to change(Trainer, :count).by(-1)
    end

    it "redirects to the trainers list" do
      trainer = Trainer.create! valid_attributes
      delete trainer_url(trainer)
      expect(response).to redirect_to(trainers_url)
    end
  end
end
