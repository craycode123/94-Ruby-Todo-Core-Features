require 'rspec'
require_relative "regular_expressions"

describe "regular_expressions.rb" do
  let(:ssn){ "234-60-1422" }
  let(:arg_with_ssn){ "please don't share this: #{ssn}" }
  let(:arg_without_ssn){ "please confirm your identity: XXX-XX-1422" }
  let(:string_with_ssns){ "234-60-1422, 350-80-0744, 013-60-8762" }
  let(:ssn_regex){ /(\d{3})\D?(\d{2})\D?(\d{4})/ }

  describe "#has_ssn?" do
    it "returns true if it has what looks like a SSN" do
      result = has_ssn?(arg_with_ssn)
      expect(result).to eq true
    end

    it "returns false if it doesn't have a SSN" do
      result = has_ssn?(arg_without_ssn)
      expect(result).to eq false
    end
  end

  describe "#grab_ssn" do
    it "returns an SSN if the string has an SSN" do
      result = grab_ssn(arg_with_ssn)
      expect(result).to eq ssn
    end

    it "returns nil if it doesn't have a SSN" do
      result = grab_ssn(arg_without_ssn)
      expect(result).to eq nil
    end
  end

  describe "#grab_all_ssns" do
    it "returns all SSNs if the string has any SSNs" do
      result = grab_all_ssns(string_with_ssns)
      expected_result = string_with_ssns.split(", ")
      expect(result).to eq expected_result
    end

    it "returns an empty Array if it doesn't have any SSNs" do
      result = grab_all_ssns(arg_without_ssn)
      expect(result).to eq []
    end
  end

  describe "#hide_all_ssns" do
    it "obfuscates any SSNs in the string" do
      result = hide_all_ssns(string_with_ssns)
      expected_result = string_with_ssns.gsub(ssn_regex, 'XXX-XX-\3')
      expect(result).to eq expected_result
    end

    it "does not alter a string without SSNs in it" do
      result = hide_all_ssns(arg_without_ssn)
      expect(result).to eq arg_without_ssn
    end
  end

  describe "#format_ssns" do
    let(:weird_ssn_string){ "234601422, 350.80.0744, 013-60-8762" }

    it "finds and reformat any SSNs in the string" do
      result = format_ssns(weird_ssn_string)
      expect(result).to eq string_with_ssns
    end

    it "does not alter a string without SSNs in it" do
      result = format_ssns(arg_without_ssn)
      expect(result).to eq arg_without_ssn
    end
  end
end
