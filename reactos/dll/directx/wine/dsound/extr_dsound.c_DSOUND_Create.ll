; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound.c_DSOUND_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound.c_DSOUND_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"(%s, %p)\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@IID_IDirectSound = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@DS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"IDirectSound_IDirectSound_Create failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"IDirectSoundImpl_Create failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DSOUND_Create(i32 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @debugstr_guid(i32 %8)
  %10 = load i64*, i64** %5, align 8
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9, i64* %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @IsEqualIID(i32 %12, i32* @IID_IUnknown)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @IsEqualIID(i32 %16, i32* @IID_IDirectSound)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i64*, i64** %5, align 8
  store i64 0, i64* %20, align 8
  %21 = load i64, i64* @E_NOINTERFACE, align 8
  store i64 %21, i64* %3, align 8
  br label %49

22:                                               ; preds = %15, %2
  %23 = call i32 (...) @setup_dsound_options()
  %24 = call i64 @IDirectSoundImpl_Create(i32* %6)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @DS_OK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load i64*, i64** %5, align 8
  %31 = call i64 @IDirectSound_IDirectSound_Create(i32 %29, i64* %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i64*, i64** %5, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @IDirectSound_IDirectSound_AddRef(i64 %37)
  br label %43

39:                                               ; preds = %28
  %40 = call i32 @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @IDirectSound8_Release(i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  br label %47

44:                                               ; preds = %22
  %45 = call i32 @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i64*, i64** %5, align 8
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %43
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %3, align 8
  br label %49

49:                                               ; preds = %47, %19
  %50 = load i64, i64* %3, align 8
  ret i64 %50
}

declare dso_local i32 @TRACE(i8*, i32, i64*) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local i32 @IsEqualIID(i32, i32*) #1

declare dso_local i32 @setup_dsound_options(...) #1

declare dso_local i64 @IDirectSoundImpl_Create(i32*) #1

declare dso_local i64 @IDirectSound_IDirectSound_Create(i32, i64*) #1

declare dso_local i32 @IDirectSound_IDirectSound_AddRef(i64) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @IDirectSound8_Release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
