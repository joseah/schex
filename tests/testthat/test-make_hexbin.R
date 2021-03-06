test_that("correct make_hexbin Seurat", {
    expect_equal(class(make_hexbin(pbmc_small, 10,
        dimension_reduction = "PCA"))[1], "Seurat")
})

test_that("done make_hexbin Seurat", {
    expect_equal(length(make_hexbin(pbmc_small, 10,
        dimension_reduction = "PCA")@misc$hexbin[[1]]), 80)
})

test_that("error dimension reduction Seurat", {
    expect_error(make_hexbin(pbmc_small, 10,
        dimension_reduction = "UMAP"))
})

test_that("error class Seurat", {
    sce <- c(1,2,3)
    expect_error(make_hexbin(sce, 10,
        dimension_reduction = "PCA"))
})

test_that("correct class SingleCellExperiment", {
    pbmc_small <- as.SingleCellExperiment(pbmc_small)
    expect_equal(class(make_hexbin(pbmc_small, 10,
        dimension_reduction = "PCA"))[1], "SingleCellExperiment")
})

test_that("correct done SingleCellExperiment", {
    pbmc_small <- as.SingleCellExperiment(pbmc_small)
    expect_equal(length(make_hexbin(pbmc_small, 10,
        dimension_reduction = "PCA")@metadata$hexbin[[1]]), 80)
})

test_that("error dimension reduction SingleCellExperiment", {
    pbmc_small <- as.SingleCellExperiment(pbmc_small)
    expect_error(make_hexbin(pbmc_small, 10,
        dimension_reduction = "UMAP"))
})
