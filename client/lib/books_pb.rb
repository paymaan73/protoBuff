# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: books.proto

require 'google/protobuf'


descriptor_data = "\n\x0b\x62ooks.proto\x12\x05\x62ooks\"!\n\x04\x42ook\x12\n\n\x02id\x18\x01 \x01(\x05\x12\r\n\x05title\x18\x02 \x01(\t\"#\n\x05\x42ooks\x12\x1a\n\x05\x62ooks\x18\x01 \x03(\x0b\x32\x0b.books.Book\"\r\n\x0b\x45mptyParams\"\x14\n\x06\x42ookID\x12\n\n\x02id\x18\x01 \x01(\x05\"\x1f\n\x0c\x42ookNotFound\x12\x0f\n\x07message\x18\x01 \x01(\t2f\n\x0b\x42ookService\x12.\n\x08GetBooks\x12\x12.books.EmptyParams\x1a\x0c.books.Books\"\x00\x12\'\n\x07GetBook\x12\r.books.BookID\x1a\x0b.books.Book\"\x00\x62\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Books
  Book = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("books.Book").msgclass
  Books = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("books.Books").msgclass
  EmptyParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("books.EmptyParams").msgclass
  BookID = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("books.BookID").msgclass
  BookNotFound = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("books.BookNotFound").msgclass
end
