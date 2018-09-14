=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  # Provides properties that describe a workspace.
  class Workspace
    # 
    attr_accessor :billable_account_id

    # 
    attr_accessor :created

    attr_accessor :created_by_information

    # Utc date and time the comment was last updated (can only be done by creator.)
    attr_accessor :last_modified

    attr_accessor :last_modified_by_information

    # Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later.
    attr_accessor :status

    # The relative URL that may be used to access the workspace.
    attr_accessor :workspace_base_url

    # Text describing the purpose of the workspace.
    attr_accessor :workspace_description

    # The id of the workspace, always populated.
    attr_accessor :workspace_id

    # The name of the workspace.
    attr_accessor :workspace_name

    # The relative URI that may be used to access the workspace.
    attr_accessor :workspace_uri


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'billable_account_id' => :'billableAccountId',
        :'created' => :'created',
        :'created_by_information' => :'createdByInformation',
        :'last_modified' => :'lastModified',
        :'last_modified_by_information' => :'lastModifiedByInformation',
        :'status' => :'status',
        :'workspace_base_url' => :'workspaceBaseUrl',
        :'workspace_description' => :'workspaceDescription',
        :'workspace_id' => :'workspaceId',
        :'workspace_name' => :'workspaceName',
        :'workspace_uri' => :'workspaceUri'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'billable_account_id' => :'String',
        :'created' => :'String',
        :'created_by_information' => :'WorkspaceUser',
        :'last_modified' => :'String',
        :'last_modified_by_information' => :'WorkspaceUser',
        :'status' => :'String',
        :'workspace_base_url' => :'String',
        :'workspace_description' => :'String',
        :'workspace_id' => :'String',
        :'workspace_name' => :'String',
        :'workspace_uri' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'billableAccountId')
        self.billable_account_id = attributes[:'billableAccountId']
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'createdByInformation')
        self.created_by_information = attributes[:'createdByInformation']
      end

      if attributes.has_key?(:'lastModified')
        self.last_modified = attributes[:'lastModified']
      end

      if attributes.has_key?(:'lastModifiedByInformation')
        self.last_modified_by_information = attributes[:'lastModifiedByInformation']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'workspaceBaseUrl')
        self.workspace_base_url = attributes[:'workspaceBaseUrl']
      end

      if attributes.has_key?(:'workspaceDescription')
        self.workspace_description = attributes[:'workspaceDescription']
      end

      if attributes.has_key?(:'workspaceId')
        self.workspace_id = attributes[:'workspaceId']
      end

      if attributes.has_key?(:'workspaceName')
        self.workspace_name = attributes[:'workspaceName']
      end

      if attributes.has_key?(:'workspaceUri')
        self.workspace_uri = attributes[:'workspaceUri']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          billable_account_id == o.billable_account_id &&
          created == o.created &&
          created_by_information == o.created_by_information &&
          last_modified == o.last_modified &&
          last_modified_by_information == o.last_modified_by_information &&
          status == o.status &&
          workspace_base_url == o.workspace_base_url &&
          workspace_description == o.workspace_description &&
          workspace_id == o.workspace_id &&
          workspace_name == o.workspace_name &&
          workspace_uri == o.workspace_uri
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [billable_account_id, created, created_by_information, last_modified, last_modified_by_information, status, workspace_base_url, workspace_description, workspace_id, workspace_name, workspace_uri].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = DocuSign_eSign.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end