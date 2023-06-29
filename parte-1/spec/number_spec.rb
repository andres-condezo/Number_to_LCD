require_relative '../src/models/numbers'

describe Zero do
  before :each do
    @zero = Zero.new
  end

  context 'creating new Zero object' do
    it 'should have a specific top_row attribute' do
      expect(@zero.top_row).to eq ' _ '
    end

    it 'should have a specific mid_row attribute' do
      expect(@zero.mid_row).to eq '| |'
    end

    it 'should have a specific bot_row attribute' do
      expect(@zero.bot_row).to eq '|_|'
    end
  end
end

describe One do
  before :each do
    @one = One.new
  end

  context 'creating new One object' do
    it 'should have a specific top_row attribute' do
      expect(@one.top_row).to eq '   '
    end

    it 'should have a specific mid_row attribute' do
      expect(@one.mid_row).to eq '  |'
    end

    it 'should have a specific bot_row attribute' do
      expect(@one.bot_row).to eq '  |'
    end
  end
end

describe Two do
  before :each do
    @two = Two.new
  end

  context 'creating new Two object' do
    it 'should have a specific top_row attribute' do
      expect(@two.top_row).to eq ' _ '
    end

    it 'should have a specific mid_row attribute' do
      expect(@two.mid_row).to eq ' _|'
    end

    it 'should have a specific bot_row attribute' do
      expect(@two.bot_row).to eq '|_ '
    end
  end
end

describe Three do
  before :each do
    @three = Three.new
  end

  context 'creating new Three object' do
    it 'should have a specific top_row attribute' do
      expect(@three.top_row).to eq ' _ '
    end

    it 'should have a specific mid_row attribute' do
      expect(@three.mid_row).to eq ' _|'
    end

    it 'should have a specific bot_row attribute' do
      expect(@three.bot_row).to eq ' _|'
    end
  end
end

describe Four do
  before :each do
    @four = Four.new
  end

  context 'creating new Four object' do
    it 'should have a specific top_row attribute' do
      expect(@four.top_row).to eq '   '
    end

    it 'should have a specific mid_row attribute' do
      expect(@four.mid_row).to eq '|_|'
    end

    it 'should have a specific bot_row attribute' do
      expect(@four.bot_row).to eq '  |'
    end
  end
end

describe Five do
  before :each do
    @five = Five.new
  end

  context 'creating new Five object' do
    it 'should have a specific top_row attribute' do
      expect(@five.top_row).to eq ' _ '
    end

    it 'should have a specific mid_row attribute' do
      expect(@five.mid_row).to eq '|_ '
    end

    it 'should have a specific bot_row attribute' do
      expect(@five.bot_row).to eq ' _|'
    end
  end
end

describe Six do
  before :each do
    @six = Six.new
  end

  context 'creating new Six object' do
    it 'should have a specific top_row attribute' do
      expect(@six.top_row).to eq ' _ '
    end

    it 'should have a specific mid_row attribute' do
      expect(@six.mid_row).to eq '|_ '
    end

    it 'should have a specific bot_row attribute' do
      expect(@six.bot_row).to eq '|_|'
    end
  end
end

describe Seven do
  before :each do
    @seven = Seven.new
  end

  context 'creating new Seven object' do
    it 'should have a specific top_row attribute' do
      expect(@seven.top_row).to eq ' _ '
    end

    it 'should have a specific mid_row attribute' do
      expect(@seven.mid_row).to eq '  |'
    end

    it 'should have a specific bot_row attribute' do
      expect(@seven.bot_row).to eq '  |'
    end
  end
end

describe Eight do
  before :each do
    @eight = Eight.new
  end

  context 'creating new Eight object' do
    it 'should have a specific top_row attribute' do
      expect(@eight.top_row).to eq ' _ '
    end

    it 'should have a specific mid_row attribute' do
      expect(@eight.mid_row).to eq '|_|'
    end

    it 'should have a specific bot_row attribute' do
      expect(@eight.bot_row).to eq '|_|'
    end
  end
end

describe Nine do
  before :each do
    @nine = Nine.new
  end

  context 'creating new Nine object' do
    it 'should have a specific top_row attribute' do
      expect(@nine.top_row).to eq ' _ '
    end

    it 'should have a specific mid_row attribute' do
      expect(@nine.mid_row).to eq '|_|'
    end

    it 'should have a specific bot_row attribute' do
      expect(@nine.bot_row).to eq ' _|'
    end
  end
end
