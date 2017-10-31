{ mkDerivation, aeson, async, base, base16-bytestring, bytestring
, containers, cryptohash, either, hedis, hslogger, mtl, network
, random, select, stdenv, stm, tasty, tasty-hspec, text, time
, transformers, unix, unordered-containers, vector
}:
mkDerivation {
  pname = "proxypool";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  doCheck = false;
  libraryHaskellDepends = [
    aeson async base base16-bytestring bytestring containers cryptohash
    either hedis hslogger mtl network select stm text time transformers
    unix unordered-containers vector
  ];
  executableHaskellDepends = [
    aeson async base bytestring hedis hslogger mtl network random text
    transformers unix
  ];
  testHaskellDepends = [
    aeson base base16-bytestring bytestring cryptohash tasty
    tasty-hspec text transformers vector
  ];
  description = "Stratum to Stratum mining proxy";
  license = stdenv.lib.licenses.agpl3;
}
