; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_sema_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_sema_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Acquire semaphore timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Acquire semaphore fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nau8825*, i64)* @nau8825_sema_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8825_sema_acquire(%struct.nau8825* %0, i64 %1) #0 {
  %3 = alloca %struct.nau8825*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.nau8825* %0, %struct.nau8825** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %10 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %9, i32 0, i32 1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @down_timeout(i32* %10, i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %17 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_warn(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %8
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %23 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %22, i32 0, i32 1
  %24 = call i32 @down_trylock(i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %29 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_warn(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %21
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @down_timeout(i32*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @down_trylock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
