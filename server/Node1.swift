import Foundation
import Redsift
import Jmap

public class Node1: Redsift.RedsiftNode{
  public static func compute(req: ComputeRequest) -> Any?{
    setbuf(stdout, nil)
    let inData = req.in
    print("Hello-Swift-Sift: Node1.swift: data received:", inData.data)
    for dq in inData.data{
      // print("This is what I get \(dq.value!)")
      guard let b = dq.value,
        let jsonString = String(data: b, encoding: .utf8) else{
        print("Error: Could not decode request")
        return nil
      }
      let a: Jmap.Message = Jmap.Message(JSONString: jsonString)!
      print("This is the message \(String(describing: a))")
    }
    return nil
  }
}