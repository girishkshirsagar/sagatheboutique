module Spree
  Adjustment.class_eval do

    def calculate_shipping(order)

      ship_address = order.shipping_address
      shipper = { :name => "Nalini Sharma",
                   :company => "Saga",
                   :phone_number => "555-555-5555",
                   :address => "Main Street",
                   :city => "Pune",
                   :state => "Mh",
                   :postal_code => "411044",
                   :country_code => "IN" }


      recipient = { :name => "#{ship_address.firstname} #{ship_address.lastname}",
                     :company => ship_address.company,
                     :phone_number => ship_address.phone,
                     :address => ship_address.address1,
                     :city => ship_address.city,
                     :state => ship_address.state.abbr,
                     :postal_code => ship_address.zipcode,
                     :country_code => ship_address.country.iso,
                     :residential => "true" }

      packages = []
      weight = 0.0
      order.line_items.collect {|x| weight += (x.quantity * x.product.weight.to_f * 2.20)}

      packages << {
        :weight => {:units => "LB", :value => weight},
        :dimensions => {:length => 15, :width => 10, :height => 5, :units => "IN" }
      }

      shipping_options = {
        :packaging_type => "YOUR_PACKAGING",
        :drop_off_type => "REGULAR_PICKUP"
      }

      fedex = Fedex::Shipment.new(:key => '0QhkFymOh41kpR9Y',
                                  :password => '11BxBp1BPVcJZxJvtbuC0JhOP',
                                  :account_number => '510087585',
                                  :meter => '100201185',
                                  :mode => 'test')


      #:service_type => "INTERNATIONAL_PRIORITY",
      rates = {}
      ship_services = fedex.rate(:shipper=>shipper,
                                 :recipient => recipient,
                                 :packages => packages,
                                 :shipping_options => shipping_options)

      ship_services.each do |service|
        rates[service.service_type] = service.total_net_charge.to_f
      end

      p rates

      self.update_column(:amount, rates['INTERNATIONAL_ECONOMY'])
      rates
    end
  end
end
