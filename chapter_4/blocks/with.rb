module Kernel
  def with(resource)
    yield
  ensure
    resource.dispose
  end
end
