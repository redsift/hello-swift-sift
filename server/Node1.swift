import Foundation
import Redsift
import Jmap

public class Node1: Redsift.RedsiftNode{
  public static func compute(req: ComputeRequest) -> Any?{
    setbuf(stdout, nil)
    let inData = req.in
    print("hello-swift-sift: Node1.swift: data received:", inData.data)
    let ds = inData.data
    for dq in ds{
      // print("This is what I get \(dq.value!)")
      guard let b = dq.value,
        let jsonString = String(data: b, encoding: .utf8) else{
        print("Error: Could not decode request")
        return nil
      }
      print("This is the string \(jsonString)")
      let a: Jmap.Message = Jmap.Message(JSONString: jsonString)!
      print("and this is the message \(String(describing: a))")
    }
    return nil
  }
}