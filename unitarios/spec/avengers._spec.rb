class AvengersHeadQuarters

    attr_accessor :list

    def initialize
        self.list = []
    end


    def put(avenger)
        puts self.list.class
        self.list.push(avenger)
    end

end

describe AvengersHeadQuarters do
    it 'deve adicionar um avenger' do
        hq = AvengersHeadQuarters.new

        hq.put('doctor strange')
        expect(hq.list).to eql ['doctor strange']
    end


end