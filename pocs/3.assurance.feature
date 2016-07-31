Feature: Alice/Bob story - REST ANeIS style
    As a participant in the eInvoicing protocol
    I need various assurances that can be mechanically verified
    So I can drive trust towards the edge of the network
        
    Scenario: Seller Gateway validates low-trust eInvoice package
        Given "Alice" is the Seller
	And "AliceFS" is the SellerFinancialSoftware
	When "Alice" generates an eInvoice for "Bob" using "AliceFS"
	And "pkg" is the low-trust eInvoice package generated by "AliceFS"
	Then "pkg" contains an encrypted payload
	And "pkg" contains a recipient identifier
	And "pkg" contains a recipient identifier type

    Scenario: Buyer Financial Software validates eInvoice
        Given "Alice" is the Seller
	And "AliceGW" is the SellerFinancialSoftware
	