require 'mongoid/milia/version'

module Mongoid
  module Milia

    extend ActiveSupport::Concern

    module ClassMethods
      def acts_as_tenant
        field :tenant_id, type: Integer

        default_scope -> { where( tenant_id: Thread.current[:tenant_id] ) }


        # Callbacks

        before_validation(on: create) do |object|
          object.tenant_id = Thread.current[:tenant_id]
          true
        end

        before_save do |object|
          raise ::Milia::Control::InvalidTenantAccess unless object.tenant_id == Thread.current[:tenant_id]
          true
        end

        before_destroy do |object|
          raise ::Milia::Control::InvalidTenantAccess unless object.tenant_id == Thread.current[:tenant_id]
          true
        end
      end
    end
  end
end
