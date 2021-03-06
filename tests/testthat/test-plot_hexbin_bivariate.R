test_that("error feature not found plot_hexbin_bivariate Seurat", {
  pbmc_small <- make_hexbin(pbmc_small, 10, dimension_reduction = "PCA")
  expect_error(plot_hexbin_bivariate(pbmc_small, type="counts", 
        mod="RNA", feature="TALDO0"))
})

test_that("error mod not found plot_hexbin_bivariate Seurat", {
    pbmc_small <- make_hexbin(pbmc_small, 10, dimension_reduction = "PCA")
    expect_error(plot_hexbin_bivariate(pbmc_small, type="counts", 
        mod="ADT", feature="TALDO1"))
})

test_that("error no hexbin plot_hexbin_bivariate Seurat", {
    expect_error(plot_hexbin_bivariate(pbmc_small, type="counts", 
         mod="RNA", feature="TALDO1"))
})
