# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.nic.hu/schema-1.99/property_contact_company_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.nic.hu.rb'

describe Whois::Answer::Parser::WhoisNicHu, "property_contact_company.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.hu/schema-1.99/property_contact_company.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
    end
    it do
      @parser.registrant_contacts.should have(1).items
    end
    it do
      @parser.registrant_contacts[0].should be_a(_contact)
    end
    it do
      @parser.registrant_contacts[0].type.should         == Whois::Answer::Contact::TYPE_REGISTRANT
    end
    it do
      @parser.registrant_contacts[0].id.should           == nil
    end
    it do
      @parser.registrant_contacts[0].name.should         == "Google, Inc."
    end
    it do
      @parser.registrant_contacts[0].organization.should == "Google, Inc."
    end
    it do
      @parser.registrant_contacts[0].address.should      == "Amphitheatre Pkwy 1600."
    end
    it do
      @parser.registrant_contacts[0].city.should         == "Mountain View"
    end
    it do
      @parser.registrant_contacts[0].zip.should          == "CA-94043"
    end
    it do
      @parser.registrant_contacts[0].state.should        == nil
    end
    it do
      @parser.registrant_contacts[0].country_code.should == "US"
    end
    it do
      @parser.registrant_contacts[0].phone.should        == "+1 650 253 0000"
    end
    it do
      @parser.registrant_contacts[0].fax.should          == "+1 650 253 0001"
    end
    it do
      @parser.registrant_contacts[0].email.should        == nil
    end
  end
end