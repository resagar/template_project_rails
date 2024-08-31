module TwMergeHelper
  def tw_merge(*class_lists)
    @merger = TailwindMerge::Merger.new
    @merger.merge(class_lists)
  end
end
