; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_sha256-glue.c_sha256_update_neon.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_sha256-glue.c_sha256_update_neon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha256_state = type { i32 }

@sha256_block_data_order = common dso_local global i64 0, align 8
@CONFIG_PREEMPT = common dso_local global i32 0, align 4
@SHA256_BLOCK_SIZE = common dso_local global i32 0, align 4
@sha256_block_neon = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @sha256_update_neon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha256_update_neon(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sha256_state*, align 8
  %9 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %11 = call %struct.sha256_state* @shash_desc_ctx(%struct.shash_desc* %10)
  store %struct.sha256_state* %11, %struct.sha256_state** %8, align 8
  %12 = call i32 (...) @crypto_simd_usable()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i64, i64* @sha256_block_data_order, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = call i32 @sha256_base_do_update(%struct.shash_desc* %15, i32* %16, i32 %17, i32* %19)
  store i32 %20, i32* %4, align 4
  br label %65

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %48, %21
  %23 = load i32, i32* %7, align 4
  %24 = icmp ugt i32 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @CONFIG_PREEMPT, align 4
  %28 = call i64 @IS_ENABLED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.sha256_state*, %struct.sha256_state** %8, align 8
  %33 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SHA256_BLOCK_SIZE, align 4
  %36 = urem i32 %34, %35
  %37 = add i32 %31, %36
  %38 = load i32, i32* @SHA256_BLOCK_SIZE, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load i32, i32* @SHA256_BLOCK_SIZE, align 4
  %42 = load %struct.sha256_state*, %struct.sha256_state** %8, align 8
  %43 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SHA256_BLOCK_SIZE, align 4
  %46 = urem i32 %44, %45
  %47 = sub i32 %41, %46
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %40, %30, %25
  %49 = call i32 (...) @kernel_neon_begin()
  %50 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i64, i64* @sha256_block_neon, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = call i32 @sha256_base_do_update(%struct.shash_desc* %50, i32* %51, i32 %52, i32* %54)
  %56 = call i32 (...) @kernel_neon_end()
  %57 = load i32, i32* %9, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %22

64:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %14
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.sha256_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @sha256_base_do_update(%struct.shash_desc*, i32*, i32, i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @kernel_neon_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
