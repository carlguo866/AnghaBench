; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_des_glue.c_cbc_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_des_glue.c_cbc_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.des_sparc64_ctx = type { i32* }
%struct.blkcipher_walk = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@DES_BLOCK_MASK = common dso_local global i32 0, align 4
@DES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @cbc_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbc_decrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.des_sparc64_ctx*, align 8
  %10 = alloca %struct.blkcipher_walk, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %14 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.des_sparc64_ctx* @crypto_blkcipher_ctx(i32 %15)
  store %struct.des_sparc64_ctx* %16, %struct.des_sparc64_ctx** %9, align 8
  %17 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %10, %struct.scatterlist* %17, %struct.scatterlist* %18, i32 %19)
  %21 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %22 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %21, %struct.blkcipher_walk* %10)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %26 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.des_sparc64_ctx*, %struct.des_sparc64_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.des_sparc64_ctx, %struct.des_sparc64_ctx* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = call i32 @des_sparc64_load_keys(i32* %32)
  br label %34

34:                                               ; preds = %61, %4
  %35 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @DES_BLOCK_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = load i32, i32* %12, align 4
  %57 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = call i32 @des_sparc64_cbc_decrypt(i32* %50, i32* %55, i32 %56, i32* %59)
  br label %61

61:                                               ; preds = %45, %38
  %62 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %66, %struct.blkcipher_walk* %10, i32 %67)
  store i32 %68, i32* %11, align 4
  br label %34

69:                                               ; preds = %34
  %70 = call i32 @fprs_write(i32 0)
  %71 = load i32, i32* %11, align 4
  ret i32 %71
}

declare dso_local %struct.des_sparc64_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @des_sparc64_load_keys(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @des_sparc64_cbc_decrypt(i32*, i32*, i32, i32*) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @fprs_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
