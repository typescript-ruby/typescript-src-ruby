require 'test/unit'

class TestTypeScriptSrc < Test::Unit::TestCase
  def test_gem_version
    assert { TypeScript::Src::VERSION.kind_of?(String) }
  end

  def test_version
    assert { TypeScript::Src.version.kind_of?(String) }
  end

  def test_package_json_path
    assert { TypeScript::Src.package_json_path.file? }
  end

  def test_license_path
    assert { TypeScript::Src.license_path.file? }
  end

  def test_typescript_path
    assert { TypeScript::Src.typescript_path.directory? }
  end

  def test_tsc_path
    assert { TypeScript::Src.tsc_path.file? }
  end

  def test_js_path
    assert { TypeScript::Src.js_path.file? }
  end

  def test_js_content
    assert { TypeScript::Src.js_content.length > 0 }
  end
end