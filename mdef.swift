import Foundation
import CoreServices.DictionaryServices

func usage() {
	print("lookup term in all dictionaries")
	print()
	print("usage: mdef term")
}

func defn(_ term: String) -> String? {
	let nsstring = term as NSString
	let range = CFRange(location: 0, length: nsstring.length)
	
	guard let def = DCSCopyTextDefinition(nil, nsstring, range) else {
		return nil
	}
	
	return String(def.takeUnretainedValue())
}

if CommandLine.argc < 2 {
	usage()
	exit(1)
}

guard let def = defn(CommandLine.arguments[1]) else {
	print("term not found in dictionary")
	exit(2)
}

print(def)
