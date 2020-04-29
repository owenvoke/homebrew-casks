cask 'helo' do
  version '1.1.0'
  sha256 'a3989ce2e52c1614d729f7b8dcfcf5668292b459f16fd116064732389eeb19bb'

  # helo.fra1.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://helo.fra1.digitaloceanspaces.com/helo/HELO-#{version}.dmg"
  appcast 'https://helo.fra1.digitaloceanspaces.com/helo/latest-mac.yml'
  name 'HELO'
  homepage 'https://usehelo.com/'

  app 'HELO.app'

  auto_updates true

  zap trash: [
               '~/Library/Application Support/HELO',
               '~/Library/Logs/HELO',
               '~/Library/Preferences/de.beyondco.helo.plist',
               '~/Library/Saved Application State/de.beyondco.helo.savedState',
             ]
end