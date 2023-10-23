# typed: strict
# frozen_string_literal: true

module Types
  class UserType < BaseObject
    # == Interfaces
    implements NodeType

    # == Fields
    field :avatar, ImageType, method: :avatar_blob
    field :email, String, null: false
    field :is_admin, Boolean, null: false, method: :admin?
    field :name, String, null: false
    field :unverified_email, String, method: :unconfirmed_email

    # == Helpers
    sig { override.returns(User) }
    def object = super
  end
end
