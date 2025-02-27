; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_alg_test_akcipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_alg_test_akcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg_test_desc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.crypto_akcipher = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"alg: akcipher: Failed to load tfm for %s: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alg_test_desc*, i8*, i32, i32)* @alg_test_akcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alg_test_akcipher(%struct.alg_test_desc* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.alg_test_desc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_akcipher*, align 8
  %11 = alloca i32, align 4
  store %struct.alg_test_desc* %0, %struct.alg_test_desc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.crypto_akcipher* @crypto_alloc_akcipher(i8* %12, i32 %13, i32 %14)
  store %struct.crypto_akcipher* %15, %struct.crypto_akcipher** %10, align 8
  %16 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %10, align 8
  %17 = call i64 @IS_ERR(%struct.crypto_akcipher* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %10, align 8
  %22 = call i32 @PTR_ERR(%struct.crypto_akcipher* %21)
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %22)
  %24 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %10, align 8
  %25 = call i32 @PTR_ERR(%struct.crypto_akcipher* %24)
  store i32 %25, i32* %5, align 4
  br label %53

26:                                               ; preds = %4
  %27 = load %struct.alg_test_desc*, %struct.alg_test_desc** %6, align 8
  %28 = getelementptr inbounds %struct.alg_test_desc, %struct.alg_test_desc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %10, align 8
  %35 = load %struct.alg_test_desc*, %struct.alg_test_desc** %6, align 8
  %36 = getelementptr inbounds %struct.alg_test_desc, %struct.alg_test_desc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.alg_test_desc*, %struct.alg_test_desc** %6, align 8
  %39 = getelementptr inbounds %struct.alg_test_desc, %struct.alg_test_desc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.alg_test_desc*, %struct.alg_test_desc** %6, align 8
  %44 = getelementptr inbounds %struct.alg_test_desc, %struct.alg_test_desc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @test_akcipher(%struct.crypto_akcipher* %34, i32 %37, i32 %42, i32 %47)
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %33, %26
  %50 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %10, align 8
  %51 = call i32 @crypto_free_akcipher(%struct.crypto_akcipher* %50)
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %19
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.crypto_akcipher* @crypto_alloc_akcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_akcipher*) #1

declare dso_local i32 @pr_err(i8*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_akcipher*) #1

declare dso_local i32 @test_akcipher(%struct.crypto_akcipher*, i32, i32, i32) #1

declare dso_local i32 @crypto_free_akcipher(%struct.crypto_akcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
