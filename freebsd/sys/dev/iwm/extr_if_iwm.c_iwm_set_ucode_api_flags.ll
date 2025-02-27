; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_set_ucode_api_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_set_ucode_api_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_ucode_capabilities = type { i32 }
%struct.iwm_ucode_api = type { i32, i32 }

@IWM_NUM_UCODE_TLV_API = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"api flags index %d larger than supported by driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, i32*, %struct.iwm_ucode_capabilities*)* @iwm_set_ucode_api_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_set_ucode_api_flags(%struct.iwm_softc* %0, i32* %1, %struct.iwm_ucode_capabilities* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwm_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.iwm_ucode_capabilities*, align 8
  %8 = alloca %struct.iwm_ucode_api*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.iwm_ucode_capabilities* %2, %struct.iwm_ucode_capabilities** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.iwm_ucode_api*
  store %struct.iwm_ucode_api* %14, %struct.iwm_ucode_api** %8, align 8
  %15 = load %struct.iwm_ucode_api*, %struct.iwm_ucode_api** %8, align 8
  %16 = getelementptr inbounds %struct.iwm_ucode_api, %struct.iwm_ucode_api* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32toh(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.iwm_ucode_api*, %struct.iwm_ucode_api** %8, align 8
  %20 = getelementptr inbounds %struct.iwm_ucode_api, %struct.iwm_ucode_api* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32toh(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @IWM_NUM_UCODE_TLV_API, align 4
  %25 = call i32 @howmany(i32 %24, i32 32)
  %26 = icmp uge i32 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %29 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %4, align 4
  br label %57

33:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %53, %33
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 32
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.iwm_ucode_capabilities*, %struct.iwm_ucode_capabilities** %7, align 8
  %45 = getelementptr inbounds %struct.iwm_ucode_capabilities, %struct.iwm_ucode_capabilities* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = mul i32 32, %48
  %50 = add i32 %47, %49
  %51 = call i32 @setbit(i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %43, %37
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %34

56:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %27
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @setbit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
