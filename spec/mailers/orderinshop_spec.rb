require "rails_helper"

RSpec.describe OrderinshopMailer, type: :mailer do
  describe "received" do
    let(:mail) { OrderinshopMailer.received }

    it "renders the headers" do
      expect(mail.subject).to eq("Received")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "shipped" do
    let(:mail) { OrderinshopMailer.shipped }

    it "renders the headers" do
      expect(mail.subject).to eq("Shipped")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
