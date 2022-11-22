class PartyFlatPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end

<<<<<<< HEAD
      def resolve
        scope.all
      end
      
    end
      
    def show?
      true
=======
    def resolve
      scope.all
>>>>>>> 349dcc46dfdfa16d4ae7fa0c4a5cced774fda9a1
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    records.user == user
  end

  def destroy?
    records.user == user
  end
end
