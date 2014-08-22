class UploadController < ApplicationController
  AWS_ACCESS_KEY_ID = '/jNt+ZVzld+LfeHT4GGh2lFxbKYpwpXf3lZAG4Ev'
  AWS_SECRET_ACCESS_KEY = 'AKIAJZQV2XMCG2OGE64A'

  def sign
    render json: {
      acl: 'public-read',
      awsaccesskeyid: AWS_ACCESS_KEY_ID,
      bucket: 'energyauditapp',
      expires: 10.hours.from_now,
      key: "uploads/#{params[:name]}",
      policy: policy,
      signature: signature,
      success_action_status: '201',
      'Content-Type' => params[:type],
      'Cache-Control' => 'max-age=630720000, public'
    }, status: :ok
  end

  def signature
    Base64.encode64(
      OpenSSL::HMAC.digest(
        OpenSSL::Digest.new('sha1'),
        AWS_SECRET_ACCESS_KEY,
        policy({ secret_access_key: AWS_SECRET_ACCESS_KEY })
      )
    ).gsub(/\n/, '')
  end

  def policy(options = {})
    Base64.encode64(
      {
        expiration: 10.hours.from_now,
        conditions: [
          { bucket: 'energyauditapp' },
          { acl: 'public-read' },
          { expires: 10.hours.from_now },
          { success_action_status: '201' },
          [ 'starts-with', '$key', '' ],
          [ 'starts-with', '$Content-Type', '' ],
          [ 'starts-with', '$Cache-Control', '' ],
          [ 'content-length-range', 0, 524288000 ]
        ]
      }.to_json
    ).gsub(/\n|\r/, '')
  end
end
