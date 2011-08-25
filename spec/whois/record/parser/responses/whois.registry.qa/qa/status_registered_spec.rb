# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.registry.qa/qa/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.registry.qa.rb'

describe Whois::Record::Parser::WhoisRegistryQa, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.registry.qa/qa/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#disclaimer" do
    it do
      lambda { @parser.disclaimer }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#domain" do
    it do
      @parser.domain.should == "qtel.com.qa"
    end
  end
  describe "#domain_id" do
    it do
      lambda { @parser.domain_id }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_whois" do
    it do
      lambda { @parser.referral_whois }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_url" do
    it do
      lambda { @parser.referral_url }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      @parser.status.should == ["serverDeleteProhibited (Legacy)", "serverRenewProhibited (Legacy)", "serverTransferProhibited (Legacy)"]
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      lambda { @parser.created_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#updated_on" do
    it do
      lambda { @parser.updated_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#expires_on" do
    it do
      lambda { @parser.expires_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should be_a(_registrar)
      @parser.registrar.id.should           == "QatarTelecom"
      @parser.registrar.name.should         == "Qatar Telecom (Qtel) Q. S. C"
      @parser.registrar.organization.should == "Qatar Telecom (Qtel) Q. S. C"
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(_contact)
      @parser.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should           == "QT11734"
      @parser.registrant_contacts[0].name.should         == "DNS Administrator - Qtel Internet Services"
      @parser.registrant_contacts[0].organization.should == nil
      @parser.registrant_contacts[0].address.should      == nil
      @parser.registrant_contacts[0].city.should         == nil
      @parser.registrant_contacts[0].zip.should          == nil
      @parser.registrant_contacts[0].state.should        == nil
      @parser.registrant_contacts[0].country_code.should == nil
      @parser.registrant_contacts[0].phone.should        == nil
      @parser.registrant_contacts[0].fax.should          == nil
      @parser.registrant_contacts[0].email.should        == "Visit portal.registry.qa for Web based WhoIs"
    end
  end
  describe "#admin_contacts" do
    it do
      lambda { @parser.admin_contacts }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(_contact)
      @parser.technical_contacts[0].type.should         == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].id.should           == "QT11734"
      @parser.technical_contacts[0].name.should         == "DNS Administrator - Qtel Internet Services"
      @parser.technical_contacts[0].organization.should == nil
      @parser.technical_contacts[0].address.should      == nil
      @parser.technical_contacts[0].city.should         == nil
      @parser.technical_contacts[0].zip.should          == nil
      @parser.technical_contacts[0].state.should        == nil
      @parser.technical_contacts[0].country_code.should == nil
      @parser.technical_contacts[0].phone.should        == nil
      @parser.technical_contacts[0].fax.should          == nil
      @parser.technical_contacts[0].email.should        == "Visit portal.registry.qa for Web based WhoIs"
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(2).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "ns1.qtel.com.qa"
      @parser.nameservers[0].ipv4.should == "212.77.203.185"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "ns2.qtel.com.qa"
      @parser.nameservers[1].ipv4.should == "213.130.113.101"
    end
  end
end
