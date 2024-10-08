require 'rails_helper'

RSpec.describe "/dogs", type: :request do
  let(:valid_attributes) {
    {
      name: "Pepper",
      breed: "Australian Shepherd"
    }
  }

  let(:invalid_attributes) {
    {
      name: "",
      breed: ""
    }
  }

  describe "GET /index" do
    it "renders a successful response" do
      Dog.create! valid_attributes
      get dogs_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      dog = Dog.create! valid_attributes
      get dog_url(dog)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_dog_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      dog = Dog.create! valid_attributes
      get edit_dog_url(dog)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Dog" do
        expect {
          post dogs_url, params: { dog: valid_attributes }
        }.to change(Dog, :count).by(1)
      end

      it "redirects to the created dog" do
        post dogs_url, params: { dog: valid_attributes }
        expect(response).to redirect_to(dog_url(Dog.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Dog" do
        expect {
          post dogs_url, params: { dog: invalid_attributes }
        }.to change(Dog, :count).by(0)
      end


      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post dogs_url, params: { dog: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        {
          registered_name: "Peppermint Patty"
        }
      }

      it "updates the requested dog" do
        dog = Dog.create! valid_attributes
        patch dog_url(dog), params: { dog: new_attributes }
        dog.reload
        expect(dog.registered_name).to eq("Peppermint Patty")
      end

      it "redirects to the dog" do
        dog = Dog.create! valid_attributes
        patch dog_url(dog), params: { dog: new_attributes }
        dog.reload
        expect(response).to redirect_to(dog_url(dog))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        dog = Dog.create! valid_attributes
        patch dog_url(dog), params: { dog: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested dog" do
      dog = Dog.create! valid_attributes
      expect {
        delete dog_url(dog)
      }.to change(Dog, :count).by(-1)
    end

    it "redirects to the dogs list" do
      dog = Dog.create! valid_attributes
      delete dog_url(dog)
      expect(response).to redirect_to(dogs_url)
    end
  end
end
