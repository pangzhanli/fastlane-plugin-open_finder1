describe Fastlane::Actions::OpenFinder1Action do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The open_finder1 plugin is working!")

      Fastlane::Actions::OpenFinder1Action.run(nil)
    end
  end
end
