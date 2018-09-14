=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::AuthenticationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthenticationApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AuthenticationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthenticationApi' do
    it 'should create an instact of AuthenticationApi' do
      expect(@instance).to be_instance_of(SwaggerClient::AuthenticationApi)
    end
  end

  # unit tests for delete_social_login
  # Deletes user&#39;s social account.
  # Deletes a social account from a use&#39;s account.
  # @param account_id The external account number (int) or account ID Guid.
  # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  # @param [Hash] opts the optional parameters
  # @option opts [SocialAccountInformation] :social_account_information 
  # @return [nil]
  describe 'delete_social_login test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_o_auth_token
  # Creates an authorization token.
  # Creates an OAuth2 authorization server token endpoint.
  # @param [Hash] opts the optional parameters
  # @return [OauthAccess]
  describe 'get_o_auth_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_social_logins
  # Gets a list of a user&#39;s social accounts.
  # Retrieves a list of social accounts linked to a user&#39;s account.
  # @param account_id The external account number (int) or account ID Guid.
  # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  # @param [Hash] opts the optional parameters
  # @return [UserSocialIdResult]
  describe 'list_social_logins test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for login
  # Gets login information for a specified user.
  # Retrieves login information for a specified user. Each account that is associated with the login credentials is listed. You can use the returned information to determine whether a user is authenticated and select an account to use in future operations.    The &#x60;baseUrl&#x60; property, returned in the response, is used in all future API calls as the base of the request URL. The &#x60;baseUrl&#x60; property contains the DocuSign server, the API version, and the &#x60;accountId&#x60; property that is used for the login. This request uses your DocuSign credentials to retrieve the account information.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :api_password When set to **true**, shows the account API password in the response.
  # @option opts [String] :embed_account_id_guid 
  # @option opts [String] :include_account_id_guid When set to **true**, shows the account ID GUID in the response.
  # @option opts [String] :login_settings Determines whether login settings are returned in the response.  Valid Values:  * all -  All the login settings are returned.  * none - no login settings are returned.
  # @return [LoginInformation]
  describe 'login test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for revoke_o_auth_token
  # Revokes an authorization token.
  # Revokes an OAuth2 authorization server token. After the revocation is complete, a caller must re-authenticate to restore access.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'revoke_o_auth_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_password
  # Updates the password for a specified user.
  # Updates the password for a specified user.
  # @param login_part Currently, only the value **password** is supported.
  # @param [Hash] opts the optional parameters
  # @option opts [UserPasswordInformation] :user_password_information 
  # @return [nil]
  describe 'update_password test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_social_login
  # Adds social account for a user.
  # Adds a new social account to a user&#39;s account.
  # @param account_id The external account number (int) or account ID Guid.
  # @param user_id The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  # @param [Hash] opts the optional parameters
  # @option opts [SocialAccountInformation] :social_account_information 
  # @return [nil]
  describe 'update_social_login test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end