; ModuleID = '/home/carl/AnghaBench/vlc/src/clock/extr_clock.c_vlc_clock_main_CreateMaster.c'
source_filename = "/home/carl/AnghaBench/vlc/src/clock/extr_clock.c_vlc_clock_main_CreateMaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.vlc_clock_cbs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vlc_clock_main_CreateMaster(%struct.TYPE_4__* %0, %struct.vlc_clock_cbs* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.vlc_clock_cbs*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.vlc_clock_cbs* %1, %struct.vlc_clock_cbs** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.vlc_clock_cbs*, %struct.vlc_clock_cbs** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32* @vlc_clock_main_Create(%struct.TYPE_4__* %9, i32 0, %struct.vlc_clock_cbs* %10, i8* %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %47

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @vlc_mutex_lock(i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @vlc_clock_master_reset(i32* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @vlc_clock_set_slave_callbacks(i32* %31)
  br label %33

33:                                               ; preds = %24, %16
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @vlc_clock_set_master_callbacks(i32* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @vlc_mutex_unlock(i32* %44)
  %46 = load i32*, i32** %8, align 8
  store i32* %46, i32** %4, align 8
  br label %47

47:                                               ; preds = %33, %15
  %48 = load i32*, i32** %4, align 8
  ret i32* %48
}

declare dso_local i32* @vlc_clock_main_Create(%struct.TYPE_4__*, i32, %struct.vlc_clock_cbs*, i8*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_clock_master_reset(i32*) #1

declare dso_local i32 @vlc_clock_set_slave_callbacks(i32*) #1

declare dso_local i32 @vlc_clock_set_master_callbacks(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
