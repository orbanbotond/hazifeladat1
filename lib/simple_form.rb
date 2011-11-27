module SimpleForm
  class FormBuilder

    alias _find_association_reflectio find_association_reflection
    def find_association_reflection(association) #:nodoc:
      if reflection = _find_association_reflectio(association)
        ActiveModelMetadataProxy.new reflection
      end
    end

    class ActiveModelMetadataProxy
      attr_accessor :metadata

      def initialize(metadata)
        @metadata = metadata
      end

      def options
        metadata
      end

      def macro
        case macro = metadata.macro
        when :referenced_in then :belongs_to
        when :references_many then :has_many
        when :references_and_referenced_in_many then :has_and_belongs_to_many
        else macro
        end
      end

      def method_missing(method, *args, &block)
        metadata.send(method, *args, &block)
      end
    end

  end
end