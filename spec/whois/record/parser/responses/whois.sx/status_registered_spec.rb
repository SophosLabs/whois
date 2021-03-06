# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.sx/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.sx.rb'

describe Whois::Record::Parser::WhoisSx, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.sx/status_registered.txt")
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
      @parser.domain.should == "whois.sx"
    end
  end
  describe "#domain_id" do
    it do
      lambda { @parser.domain_id }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_url" do
    it do
      lambda { @parser.referral_url }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_whois" do
    it do
      lambda { @parser.referral_whois }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      @parser.status.should == :registered
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
      @parser.registrar.should be_a(Whois::Record::Registrar)
      @parser.registrar.id.should           == nil
      @parser.registrar.name.should         == "SX Registry S.A."
      @parser.registrar.organization.should == nil
      @parser.registrar.url.should          == "http://registry.sx"
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(Whois::Record::Contact)
      @parser.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should            == nil
      @parser.registrant_contacts[0].name.should          == "SX Registry S.A."
      @parser.registrant_contacts[0].organization.should  == nil
      @parser.registrant_contacts[0].address.should       == nil
      @parser.registrant_contacts[0].city.should          == nil
      @parser.registrant_contacts[0].zip.should           == nil
      @parser.registrant_contacts[0].state.should         == nil
      @parser.registrant_contacts[0].country.should       == nil
      @parser.registrant_contacts[0].country_code.should  == nil
      @parser.registrant_contacts[0].phone.should         == nil
      @parser.registrant_contacts[0].fax.should           == nil
      @parser.registrant_contacts[0].email.should         == nil
    end
  end
  describe "#admin_contacts" do
    it do
      lambda { @parser.admin_contacts }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#technical_contacts" do
    it do
      lambda { @parser.technical_contacts }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(3).items
      @parser.nameservers[0].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[0].name.should == "a.ns.sx"
      @parser.nameservers[0].ipv4.should == nil
      @parser.nameservers[0].ipv6.should == nil
      @parser.nameservers[1].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[1].name.should == "b.ns.sx"
      @parser.nameservers[1].ipv4.should == nil
      @parser.nameservers[1].ipv6.should == nil
      @parser.nameservers[2].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[2].name.should == "c.ns.sx"
      @parser.nameservers[2].ipv4.should == nil
      @parser.nameservers[2].ipv6.should == nil
    end
  end
end
