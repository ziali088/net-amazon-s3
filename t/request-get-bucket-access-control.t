
use strict;
use warnings;

use Test::More tests => 1 + 1;
use Test::Warnings;

use Shared::Examples::Net::Amazon::S3::Request (
    qw[ behaves_like_net_amazon_s3_request ],
);

behaves_like_net_amazon_s3_request 'get bucket access control' => (
    request_class   => 'Net::Amazon::S3::Request::GetBucketAccessControl',
    with_bucket     => 'some-bucket',

    expect_request_method   => 'GET',
    expect_request_path     => 'some-bucket/?acl',
    expect_request_headers  => { },
    expect_request_content  => '',
);

