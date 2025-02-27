; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pmag-aa-fb.c_aafb_set_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pmag-aa-fb.c_aafb_set_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aafb_info = type { i32, %struct.aafb_cursor }
%struct.aafb_cursor = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aafb_info*, i32)* @aafb_set_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aafb_set_cursor(%struct.aafb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.aafb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aafb_cursor*, align 8
  store %struct.aafb_info* %0, %struct.aafb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.aafb_info*, %struct.aafb_info** %3, align 8
  %7 = getelementptr inbounds %struct.aafb_info, %struct.aafb_info* %6, i32 0, i32 1
  store %struct.aafb_cursor* %7, %struct.aafb_cursor** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.aafb_info*, %struct.aafb_info** %3, align 8
  %12 = getelementptr inbounds %struct.aafb_info, %struct.aafb_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.aafb_cursor*, %struct.aafb_cursor** %5, align 8
  %15 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.aafb_cursor*, %struct.aafb_cursor** %5, align 8
  %18 = getelementptr inbounds %struct.aafb_cursor, %struct.aafb_cursor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bt431_position_cursor(i32 %13, i32 %16, i32 %19)
  %21 = load %struct.aafb_info*, %struct.aafb_info** %3, align 8
  %22 = getelementptr inbounds %struct.aafb_info, %struct.aafb_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bt431_enable_cursor(i32 %23)
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.aafb_info*, %struct.aafb_info** %3, align 8
  %27 = getelementptr inbounds %struct.aafb_info, %struct.aafb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bt431_erase_cursor(i32 %28)
  br label %30

30:                                               ; preds = %25, %10
  ret void
}

declare dso_local i32 @bt431_position_cursor(i32, i32, i32) #1

declare dso_local i32 @bt431_enable_cursor(i32) #1

declare dso_local i32 @bt431_erase_cursor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
