require(testthat)

# laoding a fresh package
if (isNamespaceLoaded ("testTest")) detach (package:testTest, unload = TRUE)
require (testTest)

testEnvir <- testTest:::testEnvir

test_that ("testTestTest", {
    expect_equal (testEnvir$menu, "spam")
    testEnvir$menu <- "eggs"
    expect_equal (testEnvir$menu, "eggs")

    setMenu ("bacon")
    expect_equal (testEnvir$menu, "bacon")   # fails with devtools::test() only
})



