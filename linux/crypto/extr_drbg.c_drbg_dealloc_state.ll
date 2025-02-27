; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_dealloc_state.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_dealloc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbg_state = type { i32, i32*, i32*, i32*, i64, i32*, i32*, i32*, i32*, i32* }

@CONFIG_CRYPTO_FIPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbg_state*)* @drbg_dealloc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbg_dealloc_state(%struct.drbg_state* %0) #0 {
  %2 = alloca %struct.drbg_state*, align 8
  store %struct.drbg_state* %0, %struct.drbg_state** %2, align 8
  %3 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %4 = icmp ne %struct.drbg_state* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %47

6:                                                ; preds = %1
  %7 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %8 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %7, i32 0, i32 9
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @kzfree(i32* %9)
  %11 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %12 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %11, i32 0, i32 9
  store i32* null, i32** %12, align 8
  %13 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %14 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %13, i32 0, i32 8
  store i32* null, i32** %14, align 8
  %15 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %16 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %15, i32 0, i32 7
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @kzfree(i32* %17)
  %19 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %20 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %19, i32 0, i32 7
  store i32* null, i32** %20, align 8
  %21 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %22 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %21, i32 0, i32 6
  store i32* null, i32** %22, align 8
  %23 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %24 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kzfree(i32* %25)
  %27 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %28 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %27, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %30 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %32 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %34 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load i32, i32* @CONFIG_CRYPTO_FIPS, align 4
  %36 = call i64 @IS_ENABLED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %6
  %39 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %40 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kzfree(i32* %41)
  %43 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %44 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.drbg_state*, %struct.drbg_state** %2, align 8
  %46 = getelementptr inbounds %struct.drbg_state, %struct.drbg_state* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  br label %47

47:                                               ; preds = %5, %38, %6
  ret void
}

declare dso_local i32 @kzfree(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
