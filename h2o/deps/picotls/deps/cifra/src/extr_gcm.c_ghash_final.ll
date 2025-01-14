; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_gcm.c_ghash_final.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_gcm.c_ghash_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i64, i32 }

@STATE_AAD = common dso_local global i64 0, align 8
@STATE_CIPHER = common dso_local global i64 0, align 8
@STATE_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @ghash_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ghash_final(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [8 x i32], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @STATE_AAD, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @STATE_CIPHER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11, %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = call i32 @ghash_add_pad(%struct.TYPE_5__* %18)
  %20 = load i64, i64* @STATE_INVALID, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %17, %11
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %26, 8
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %29 = call i32 @write64_be(i32 %27, i32* %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %32 = call i32 @ghash_add(%struct.TYPE_5__* %30, i32* %31, i32 32)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 8
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %38 = call i32 @write64_be(i32 %36, i32* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %41 = call i32 @ghash_add(%struct.TYPE_5__* %39, i32* %40, i32 32)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @cf_gf128_tobytes_be(i32 %50, i32* %51)
  ret void
}

declare dso_local i32 @ghash_add_pad(%struct.TYPE_5__*) #1

declare dso_local i32 @write64_be(i32, i32*) #1

declare dso_local i32 @ghash_add(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cf_gf128_tobytes_be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
