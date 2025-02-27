; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_select_driver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_select_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocap = type { i32, i64, i32* }
%struct.cryptoini = type { i32 }

@CRYPTOCAP_F_HARDWARE = common dso_local global i32 0, align 4
@CRYPTOCAP_F_SOFTWARE = common dso_local global i32 0, align 4
@crypto_drivers_num = common dso_local global i32 0, align 4
@crypto_drivers = common dso_local global %struct.cryptocap* null, align 8
@CRYPTOCAP_F_CLEANUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cryptocap* (%struct.cryptoini*, i32)* @crypto_select_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cryptocap* @crypto_select_driver(%struct.cryptoini* %0, i32 %1) #0 {
  %3 = alloca %struct.cryptoini*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cryptocap*, align 8
  %6 = alloca %struct.cryptocap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cryptoini* %0, %struct.cryptoini** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @CRYPTO_DRIVER_ASSERT()
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  store i32 %15, i32* %7, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @CRYPTOCAP_F_SOFTWARE, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %16, %14
  store %struct.cryptocap* null, %struct.cryptocap** %6, align 8
  br label %19

19:                                               ; preds = %83, %18
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %68, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @crypto_drivers_num, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %20
  %25 = load %struct.cryptocap*, %struct.cryptocap** @crypto_drivers, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %25, i64 %27
  store %struct.cryptocap* %28, %struct.cryptocap** %5, align 8
  %29 = load %struct.cryptocap*, %struct.cryptocap** %5, align 8
  %30 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %24
  %34 = load %struct.cryptocap*, %struct.cryptocap** %5, align 8
  %35 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CRYPTOCAP_F_CLEANUP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %struct.cryptocap*, %struct.cryptocap** %5, align 8
  %42 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %33, %24
  br label %68

48:                                               ; preds = %40
  %49 = load %struct.cryptocap*, %struct.cryptocap** %5, align 8
  %50 = load %struct.cryptoini*, %struct.cryptoini** %3, align 8
  %51 = call i64 @driver_suitable(%struct.cryptocap* %49, %struct.cryptoini* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.cryptocap*, %struct.cryptocap** %6, align 8
  %55 = icmp eq %struct.cryptocap* %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = load %struct.cryptocap*, %struct.cryptocap** %5, align 8
  %58 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.cryptocap*, %struct.cryptocap** %6, align 8
  %61 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56, %53
  %65 = load %struct.cryptocap*, %struct.cryptocap** %5, align 8
  store %struct.cryptocap* %65, %struct.cryptocap** %6, align 8
  br label %66

66:                                               ; preds = %64, %56
  br label %67

67:                                               ; preds = %66, %48
  br label %68

68:                                               ; preds = %67, %47
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %20

71:                                               ; preds = %20
  %72 = load %struct.cryptocap*, %struct.cryptocap** %6, align 8
  %73 = icmp eq %struct.cryptocap* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @CRYPTOCAP_F_SOFTWARE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @CRYPTOCAP_F_SOFTWARE, align 4
  store i32 %84, i32* %7, align 4
  br label %19

85:                                               ; preds = %78, %74, %71
  %86 = load %struct.cryptocap*, %struct.cryptocap** %6, align 8
  ret %struct.cryptocap* %86
}

declare dso_local i32 @CRYPTO_DRIVER_ASSERT(...) #1

declare dso_local i64 @driver_suitable(%struct.cryptocap*, %struct.cryptoini*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
