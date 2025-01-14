; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_tls1_prf.c_kdf_tls1_prf_derive.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_tls1_prf.c_kdf_tls1_prf_derive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32*, i32, i32* }

@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_MISSING_MESSAGE_DIGEST = common dso_local global i32 0, align 4
@PROV_R_MISSING_SECRET = common dso_local global i32 0, align 4
@PROV_R_MISSING_SEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @kdf_tls1_prf_derive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdf_tls1_prf_derive(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %8, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @ERR_LIB_PROV, align 4
  %17 = load i32, i32* @PROV_R_MISSING_MESSAGE_DIGEST, align 4
  %18 = call i32 @ERR_raise(i32 %16, i32 %17)
  store i32 0, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @ERR_LIB_PROV, align 4
  %26 = load i32, i32* @PROV_R_MISSING_SECRET, align 4
  %27 = call i32 @ERR_raise(i32 %25, i32 %26)
  store i32 0, i32* %4, align 4
  br label %59

28:                                               ; preds = %19
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @ERR_LIB_PROV, align 4
  %35 = load i32, i32* @PROV_R_MISSING_SEED, align 4
  %36 = call i32 @ERR_raise(i32 %34, i32 %35)
  store i32 0, i32* %4, align 4
  br label %59

37:                                               ; preds = %28
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @tls1_prf_alg(i32* %40, i32 %43, i32* %46, i32 %49, i32 %52, i64 %55, i8* %56, i64 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %37, %33, %24, %15
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @tls1_prf_alg(i32*, i32, i32*, i32, i32, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
