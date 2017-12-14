describe 'Matcher output' do
  it { expect{ puts "Luís" }.to output.to_stdout}
  it { expect{ print "Luís" }.to output("Luís").to_stdout}
  it { expect{ puts "Luís Felipe" }.to output(/Luís/).to_stdout}

  it { expect{ warn "Luís" }.to output.to_stderr}
  it { expect{ warn "Luís" }.to output("Luís\n").to_stderr}
  it { expect{ warn "Luís Felipe" }.to output(/Luís/).to_stderr}
end
