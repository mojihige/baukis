require 'rails_helper'

describe Administrator do
  describe '#password' do
    example '文字列を与えるとhash_passwordが長さ６０の文字列になる' do
      member = StaffMember.new
      member.password = 'baukis'
      expect(member.hashed_password).to be_kind_of(String)
      expect(member.hashed_password.size).to eq(60)
    end

    example 'nilを与えるとnilが設定される' do
      member = StaffMember.new(hashed_password: 'x')
      member.password = nil
      expect(member.hashed_password).to be_nil
    end
  end
end
