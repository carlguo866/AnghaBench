; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_ice1724_get_route_val.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_ice1724_get_route_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@snd_ice1724_get_route_val.xlate = internal constant [8 x i8] c"\00\FF\01\02\FF\FF\03\04", align 1
@ROUTE_PLAYBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ice1724_get_route_val(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %9 = load i32, i32* @ROUTE_PLAYBACK, align 4
  %10 = call i32 @ICEMT1724(%struct.snd_ice1712* %8, i32 %9)
  %11 = call i64 @inl(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i64, i64* %6, align 8
  %14 = zext i32 %12 to i64
  %15 = lshr i64 %13, %14
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = and i64 %16, 7
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* @snd_ice1724_get_route_val.xlate, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %7, align 1
  %21 = load i8, i8* %7, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 255
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 (...) @snd_BUG()
  store i32 0, i32* %3, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %24
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @inl(i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
